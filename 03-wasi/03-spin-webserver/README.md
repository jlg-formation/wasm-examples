# Spin Web Server en Rust

Cet exemple montre comment livrer un petit site web avec Spin et un composant
WebAssembly ecrit en Rust.

Le projet sert :

- trois pages HTML simples ;
- une feuille de style CSS ;
- un script JavaScript ;
- une image SVG locale ;
- une route API `/api/message` qui renvoie du JSON.

## Objectif pedagogique

L'objectif est de montrer une structure Spin minimale mais complete :

- `spin.toml` declare le trigger HTTP et le composant Wasm ;
- `src/main.rs` implemente le routage HTTP en Rust ;
- `assets/` contient le mini site et ses ressources ;
- `Makefile` fournit des commandes courtes, proches des autres exemples du
  depot.

Pour garder l'exemple stable et lisible, les assets sont servis par le composant
Rust lui-meme. Cela evite de dependre d'une configuration de fichiers statiques
qui varie davantage selon les versions de Spin, tout en montrant clairement le
lien entre requete HTTP et reponse Wasm.

## Arborescence

```text
03-spin-webserver/
├── Cargo.toml
├── Makefile
├── README.md
├── assets/
│   ├── about.html
│   ├── app.js
│   ├── contact.html
│   ├── images/
│   │   └── spin-wasm.svg
│   ├── index.html
│   └── styles.css
├── spin.toml
└── src/
    └── main.rs
```

## Prerequis

### 1. Rust

Le depot utilise deja Rust sur d'autres exemples. Il faut disposer de `cargo` et
de `rustup`.

Ajouter la cible Wasm attendue par le template Spin actuel :

```sh
rustup target add wasm32-wasip2
```

### 2. Spin

Verifier que Spin est installe :

```sh
spin --version
```

Si la commande n'existe pas, utiliser la documentation officielle :

- https://spinframework.dev/

Depuis ce dossier, vous pouvez aussi installer le binaire Linux directement :

```sh
make install-spin
```

Le binaire est alors place dans `~/.local/bin/spin`, qui doit etre present dans
votre `PATH`.

## Build

Compiler uniquement le composant Wasm :

```sh
make build
```

Cela produit le fichier Wasm cible dans :

```text
target/wasm32-wasip2/release/spin_webserver_example.wasm
```

## Execution locale

Lancer l'application Spin :

```sh
make run
```

Si `make run` echoue avec `spin: No such file or directory`, cela signifie que
la CLI Spin n'est pas installee ou n'est pas visible dans le `PATH`.

Par defaut, Spin expose l'application sur :

- http://127.0.0.1:3000/

Pages a tester :

- http://127.0.0.1:3000/
- http://127.0.0.1:3000/about.html
- http://127.0.0.1:3000/contact.html

## Tester l'API

En ligne de commande :

```sh
curl http://127.0.0.1:3000/api/message
```

Reponse attendue :

```json
{
  "message": "Bonjour depuis Spin et un composant Wasm en Rust.",
  "runtime": "Spin",
  "trigger": "HTTP",
  "site": "static + api"
}
```

Le fichier `assets/app.js` appelle aussi cette route avec `fetch()` depuis les
pages HTML.

## Verification rapide

Une fois `spin up` lance, verifier :

1. le chargement correct de la page d'accueil ;
2. la navigation entre les trois pages ;
3. l'affichage de l'image SVG ;
4. le chargement du CSS ;
5. l'appel reussi a `/api/message` depuis l'interface ;
6. la meme route via `curl`.

## Commandes utiles

Verifier la compilation Rust sans lancer Spin :

```sh
make check
```

Nettoyer les artefacts :

```sh
make clean
```

## Points de lecture

- `spin.toml` : manifeste Spin et commande de build.
- `src/main.rs` : routage HTTP et generation des reponses.
- `assets/` : contenu statique du mini site.
