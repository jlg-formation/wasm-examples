# Plan d'implementation

## Objectif

Creer un exemple pedagogique montrant comment livrer un petit site web via un
composant WebAssembly execute avec Spin.

L'exemple doit :

- utiliser Spin comme framework HTTP pour WebAssembly ;
- etre implemente en Rust, sans concepts avances ;
- servir un mini site avec 2 a 3 pages statiques ;
- inclure des assets statiques HTML, CSS, JavaScript et image ;
- exposer une route API simple `/api/message` ;
- etre executable localement avec `spin up`.

## Contraintes retenues

- Public cible : intermediaire.
- Plateforme cible : Linux.
- Le code Rust doit rester simple et lisible.
- L'exemple doit rester coherent avec la structure des autres dossiers de
  `03-wasi/` : peu de fichiers, un `README.md`, un `Makefile` et un point
  d'entree clair.
- Le `README.md` devra etre pedagogique, avec des etapes explicites pour
  installer, lancer et verifier l'exemple.

## Hypothese technique

L'approche la plus simple consiste a creer une application Spin avec un
composant HTTP en Rust qui :

- repond sur `/api/message` avec une charge JSON tres simple ;
- delegue le service des fichiers statiques a la configuration Spin ;
- sert un repertoire `assets/` contenant les pages et ressources du mini site.

Cela permet de separer clairement :

- la logique HTTP dynamique dans le composant Rust ;
- le contenu statique dans des fichiers faciles a inspecter ;
- la configuration de routage dans `spin.toml`.

## Fichiers a produire

- `src/main.rs` : composant HTTP Spin en Rust.
- `Cargo.toml` : definition du package Rust et dependances minimales.
- `spin.toml` : manifeste Spin, routes HTTP et montage des fichiers statiques.
- `Makefile` : cibles simples pour verifier, lancer et nettoyer si necessaire.
- `README.md` : guide pas a pas pour installer Spin et lancer l'exemple.
- `assets/index.html` : page d'accueil.
- `assets/about.html` : page secondaire de demonstration.
- `assets/contact.html` ou equivalent : troisieme page simple.
- `assets/styles.css` : style du mini site.
- `assets/app.js` : script front appelant `/api/message`.
- `assets/images/` : image(s) utilisee(s) dans le site.

## Structure cible

Le dossier devrait converger vers une organisation simple de ce type :

```text
03-spin-webserver/
├── brief.md
├── PLAN.md
├── README.md
├── Makefile
├── Cargo.toml
├── spin.toml
├── src/
│   └── main.rs
└── assets/
    ├── index.html
    ├── about.html
    ├── contact.html
    ├── styles.css
    ├── app.js
    └── images/
```

## Etapes d'implementation

### 1. Initialiser le composant Spin en Rust

Creer le squelette Rust minimal pour un composant HTTP Spin.

Le composant devra :

- accepter une requete HTTP sur `/api/message` ;
- renvoyer une reponse JSON simple, par exemple un message de bienvenue ;
- fixer explicitement le `content-type` approprie ;
- eviter toute logique metier complexe pour garder le focus sur Spin.

Points d'attention :

- choisir uniquement les dependances necessaires ;
- preferer un handler unique, court et lisible ;
- documenter le lien entre le code Rust et la route exposee par Spin.

### 2. Definir le manifeste Spin

Configurer `spin.toml` pour declarer l'application et ses routes.

Le manifeste devra couvrir :

- le composant HTTP Rust ;
- la route dynamique `/api/message` ;
- la mise a disposition des fichiers statiques sous `/` ou un prefixe simple ;
- les commandes de build necessaires au composant.

Le choix du routage doit permettre de comprendre rapidement :

- ce qui est servi directement comme fichier statique ;
- ce qui passe par le composant Wasm ;
- comment Spin combine les deux mecanismes dans une meme application.

### 3. Construire le mini site statique

Produire 2 a 3 pages HTML reliees entre elles par une navigation simple.

Le site devra au minimum inclure :

- une page d'accueil presentant l'exemple ;
- une page secondaire expliquant le role de Spin ou de WASI ;
- une page de demonstration ou contact avec appel JavaScript vers l'API ;
- une feuille de style unique ;
- un script JavaScript simple ;
- au moins une image locale servie comme asset statique.

Le JavaScript devra :

- appeler `fetch('/api/message')` ;
- afficher la reponse dans la page ;
- gerer proprement un echec reseau basique.

### 4. Aligner l'ergonomie avec les autres exemples du depot

Ajouter un `Makefile` simple pour uniformiser l'usage avec les autres dossiers.

Les cibles visees sont :

- `make run` pour lancer `spin up` ;
- `make build` si une etape explicite de build est utile ;
- `make check` ou equivalent pour les verifications de base ;
- `make clean` uniquement si des artefacts locaux doivent etre supprimes.

L'objectif n'est pas de masquer Spin, mais d'offrir des commandes courtes et
coherentes avec le reste du repository.

### 5. Rediger la documentation pedagogique

Le `README.md` devra expliquer pas a pas :

- ce qu'est Spin dans le contexte WASI/WebAssembly ;
- les prerequis d'installation minimaux ;
- comment lancer l'exemple localement ;
- quelles URLs ouvrir dans le navigateur ;
- comment verifier la route `/api/message` ;
- ou se trouvent les fichiers statiques et la logique Rust.

La documentation devra aussi expliciter la separation des responsabilites :

- Rust pour la route dynamique ;
- fichiers `assets/` pour le site statique ;
- `spin.toml` pour l'assemblage final.

## Validation prevue

Les verifications a executer apres implementation sont :

1. verifier que `spin` est installe et disponible ;
2. lancer `make run` ou `spin up` depuis le dossier de l'exemple ;
3. ouvrir la page d'accueil et verifier le chargement du CSS, du JavaScript et
   de l'image ;
4. naviguer entre les 2 a 3 pages statiques ;
5. appeler `/api/message` depuis le navigateur ou `curl` et verifier la reponse
   JSON ;
6. verifier que le script front consomme correctement cette API et affiche le
   resultat dans l'interface.

## Risques et points de vigilance

- La syntaxe exacte de `spin.toml` depend de la version de Spin installee ; il
  faudra donc viser une configuration stable et simple.
- Le service des assets statiques peut etre gere de plusieurs manieres dans Spin
  ; il faudra choisir celle qui reste la plus pedagogique.
- L'exemple doit rester suffisamment petit pour etre lu rapidement, sans perdre
  la distinction entre partie statique et partie dynamique.
- Si Spin n'est pas installe sur la machine, il faudra documenter clairement le
  prealable sans alourdir excessivement l'exemple.

## Resultat attendu

Un exemple `03-spin-webserver/` autonome et coherent avec le reste du depot,
montrant comment :

- executer une application web Wasm avec Spin ;
- servir un mini site statique ;
- exposer une petite route API en Rust ;
- lancer et verifier l'ensemble localement avec un parcours simple.
