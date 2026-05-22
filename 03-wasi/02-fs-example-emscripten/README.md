# Emscripten vers WASI pour Wasmtime

Cet exemple montre qu'Emscripten peut compiler un programme C en un module
WebAssembly autonome, executable par `wasmtime`, sans glue code JavaScript.

Le code utilise `main(argc, argv)` pour recuperer les arguments, puis appelle
directement les syscalls WASI `path_open`, `fd_write` et `fd_close` via
`wasi/api.h`. Cela permet de voir explicitement les imports WASI lies au
filesystem hote.

Le programme lit deux arguments :

- le contenu a ecrire ;
- le nom du fichier cible.

Il ecrit ensuite le contenu dans le fichier, affiche un message sur `stderr` et
retourne un code de sortie non nul en cas d'erreur.

## Fichiers

- `write_file.c` : programme C compile avec Emscripten.
- `Makefile` : build, desassemblage WAT, execution et nettoyage.
- `dist/write_file.wasm` : module WASM autonome.
- `dist/write_file.wat` : version textuelle pour inspecter les imports.
- `dist/out/` : repertoire hote utilise pendant la demonstration.

## Build

```sh
make build
```

La cible compile avec :

```sh
emcc write_file.c -o dist/write_file.wasm -sSTANDALONE_WASM
```

Le flag `-sSTANDALONE_WASM` demande a Emscripten de produire un module autonome,
prevu pour un environnement WASI plutot qu'un runtime JavaScript.

## Execution avec Wasmtime

```sh
make run
```

La cible `run` :

- cree `dist/out/` sur la machine hote ;
- se place dans ce repertoire ;
- lance `wasmtime` en preouvrant `.` via `--dir .` ;
- appelle le module avec `bonjour` et `message.txt`.

Apres execution, le fichier suivant existe sur l'hote :

```sh
dist/out/message.txt
```

Tu peux personnaliser l'appel :

```sh
make run CONTENT='salut wasm' FILENAME=note.txt
```

## Pourquoi le fichier est ecrit sur l'hote

Le module n'a pas un acces libre au systeme de fichiers. WASI impose un modele
de sandbox : le runtime decide quels repertoires du systeme hote sont visibles.

Ici, `wasmtime --dir .` autorise explicitement le repertoire courant, qui est
`dist/out/` au moment de l'execution. Le module peut donc creer `message.txt`
dans ce repertoire, mais pas ecrire ailleurs.

## Voir les imports WASI

Le build genere aussi une version textuelle du module :

```sh
make build
grep 'wasi_snapshot_preview1' dist/write_file.wat
```

Tu peux egalement ouvrir directement `dist/write_file.wat`.

Les imports les plus interessants dans cet exemple sont :

- `args_sizes_get` et `args_get` pour recuperer les arguments ;
- `path_open` pour creer ou ouvrir le fichier cible dans le repertoire preouvert ;
- `fd_write` pour les messages envoyes sur `stderr` et pour l'ecriture du contenu ;
- `fd_close` pour fermer le descripteur.

Selon la version d'Emscripten, tu peux aussi voir `fd_seek`, ajoute par le code
de support de la libc meme si l'exemple n'appelle pas directement ce syscall.

## Verification manuelle

```sh
make build
make run
cat dist/out/message.txt
```

Test d'erreur :

```sh
wasmtime --dir dist/out dist/write_file.wasm
```

Le module affiche alors son message d'usage et retourne un code non nul.