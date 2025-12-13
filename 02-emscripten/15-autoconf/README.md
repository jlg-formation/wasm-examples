# Emscripten - emconfigure et Autoconf

> **Questions QCM associées:** port_q1, port_q8 - Comment utiliser emconfigure
> pour porter des projets Autoconf/Automake ?

## Concept clé

**emconfigure** est un wrapper Emscripten qui configure l'environnement pour
porter des projets utilisant le système de build Autoconf/Automake.

## Workflow de portage Autoconf

```bash
# 1. Configurer le projet pour Emscripten
emconfigure ./configure

# 2. Compiler avec emmake
emmake make

# 3. Lier en WebAssembly
emcc libfoo.a -o foo.js
```

## Que fait emconfigure ?

Il définit les variables d'environnement :

- `CC=emcc` (compilateur C)
- `CXX=em++` (compilateur C++)
- `AR=emar` (archiveur)
- `RANLIB=emranlib` (indexeur)

## Exemple pratique

Ce dossier contient un mini-projet avec Autoconf simulé :

```bash
make build
node wrapper.mjs
```

## Outils Emscripten pour le portage

| Outil       | Usage                        |
| ----------- | ---------------------------- |
| emconfigure | Configure un projet Autoconf |
| emmake      | Exécute make avec emcc       |
| emcmake     | Configure un projet CMake    |
| emar        | Crée des archives .a         |
| emranlib    | Indexe les archives          |

## Ressources

- [Porting Guide](https://emscripten.org/docs/porting/guidelines/index.html)
- [Building Projects](https://emscripten.org/docs/compiling/Building-Projects.html)
