# Plan d'implementation

## Objectif

Creer un exemple montrant qu'un programme C compile avec Emscripten vers
WebAssembly, importe des fonctions WASI, et peut etre execute par `wasmtime`
sans runtime JavaScript.

Le programme doit :

- lire 2 arguments de ligne de commande ;
- ecrire le premier argument dans un fichier dont le nom est donne par le second
  argument ;
- afficher un message de succes ou d'erreur ;
- retourner un code de sortie non nul en cas d'echec ;
- permettre d'observer les imports WASI generes.

## Contraintes retenues

- Execution finale uniquement avec `wasmtime`.
- Le fichier ecrit doit etre cree sur la machine hote, via un repertoire
  explicitement autorise par `wasmtime` (`--dir` ou equivalent), afin de
  respecter le sandbox WASI.
- L'organisation doit rester proche des exemples de `02-emscripten/` : source C,
  `Makefile`, `README.md`, artefacts dans un sous-dossier dedie.
- Le niveau pedagogique vise est avance, avec un focus sur les imports WASI et
  le role du runtime.

## Hypothese technique

L'approche la plus simple est de compiler un programme C avec un point d'entree
`main`, sans glue JavaScript, en produisant directement un module `.wasm`
compatible avec `wasmtime`. Le programme utilisera les appels standard de la
libc (`fopen`, `fwrite`, `fclose`, `fprintf`) afin de faire apparaitre les
imports WASI lies aux arguments, aux sorties standard et au systeme de fichiers.

## Fichiers a produire

- `write_file.c` : programme principal en C.
- `Makefile` : compilation, desassemblage WAT, execution et nettoyage.
- `README.md` : explications d'usage, commandes, sandbox fichier, lecture des
  imports.
- `dist/write_file.wasm` : module genere.
- `dist/write_file.wat` : version desassemblee pour inspection.
- `dist/out/` : repertoire hote preouvert pour la demonstration d'ecriture.

## Etapes d'implementation

### 1. Ecrire le programme C minimal

Implementer un `main(int argc, char **argv)` qui :

- verifie la presence de 2 arguments utilisateur ;
- ouvre le fichier cible en ecriture ;
- ecrit le contenu fourni ;
- affiche un message de succes sur `stderr` ;
- affiche une erreur sur `stderr` et retourne `1` en cas d'echec.

Points d'attention :

- utiliser des messages explicites pour distinguer erreur d'usage et erreur I/O
  ;
- garder le code volontairement simple afin que les imports observes restent
  lisibles.

### 2. Definir la commande de compilation Emscripten

Configurer le `Makefile` pour produire un `.wasm` exploitable par `wasmtime`.

Le build devra :

- creer un dossier `dist/` ;
- compiler `write_file.c` avec `emcc` ;
- produire un binaire `.wasm` plutot qu'un couple JS + WASM ;
- conserver des symboles ou options utiles a l'analyse si necessaire ;
- generer ensuite `dist/write_file.wat` via `wasm2wat`.

Le plan de verification devra confirmer que le module resulte bien en imports
WASI et non en dependances a un glue code JavaScript.

### 3. Definir le scenario d'execution Wasmtime

Ajouter une cible `run` dans le `Makefile` qui :

- cree un repertoire hote de demonstration, par exemple `dist/out/` ;
- lance `wasmtime` avec un repertoire preouvert ;
- passe 2 arguments d'exemple au programme ;
- laisse un fichier visible sur l'hote apres execution.

Exemple attendu du scenario :

- contenu : `bonjour` ;
- fichier : `message.txt` ;
- resultat hote : `dist/out/message.txt` contenant `bonjour`.

### 4. Documenter les imports WASI observes

Le `README.md` devra expliquer :

- pourquoi le module ne peut pas acceder librement au systeme de fichiers hote ;
- comment `wasmtime` expose explicitement un repertoire a travers le sandbox
  WASI ;
- comment generer et lire `dist/write_file.wat` ;
- quels imports WASI sont les plus pertinents dans cet exemple.

Imports a commenter en priorite :

- gestion des arguments (`args_*`) ;
- ecriture standard (`fd_write`) ;
- ouverture/creation/fermeture de fichiers (`path_open`, `fd_write`, `fd_close`)
  ;
- eventuellement recuperation d'erreurs ou metadonnees si presentes via la libc.

### 5. Aligner la structure avec les exemples existants

Le dossier doit rester coherent avec `02-emscripten/` :

- un `Makefile` simple avec cibles `build`, `run`, `clean` ;
- un unique fichier source C ;
- un `README.md` concis mais utile ;
- pas de JavaScript de demonstration puisque l'execution cible est `wasmtime`.

## Validation prevue

Les verifications a executer apres implementation sont :

1. `make build` : verifier la compilation et la generation du `.wat`.
2. `make run` : verifier l'execution avec `wasmtime`.
3. `cat dist/out/message.txt` : verifier le contenu ecrit sur l'hote.
4. inspection de `dist/write_file.wat` : verifier la presence des imports WASI.
5. test d'erreur : lancer le module sans arguments suffisants et verifier le
   code de sortie.

## Risques et points de vigilance

- Certaines options Emscripten peuvent produire un artefact pense pour un
  environnement JavaScript plutot qu'un module directement exploitable par
  `wasmtime`.
- Selon la version d'Emscripten, les imports observes peuvent inclure davantage
  de fonctions WASI que le strict minimum attendu.
- Le chemin de fichier passe en argument devra etre compatible avec le
  repertoire preouvert par `wasmtime` ; il faudra donc documenter clairement le
  repertoire racine visible par le module.

## Resultat attendu

Un exemple pedagogique avance qui montre simultanement :

- la compilation d'un programme C avec Emscripten ;
- l'execution du module avec `wasmtime` ;
- l'ecriture dans un fichier sur l'hote via un repertoire autorise ;
- la correspondance entre code C standard et imports WASI visibles dans le
  `.wat`.
