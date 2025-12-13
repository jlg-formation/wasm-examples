# Emscripten - emmake pour projets Makefile

> **Question QCM associée:** port_q2 - Comment utiliser emmake pour compiler un
> projet avec Makefile ?

## Concept clé

**emmake** exécute `make` avec les variables d'environnement configurées pour
Emscripten. C'est la commande standard pour compiler des projets natifs.

## Usage de base

```bash
# Au lieu de:
make

# Utilisez:
emmake make
```

## Que fait emmake ?

emmake définit automatiquement :

- `CC=emcc`
- `CXX=em++`
- `AR=emar`
- `RANLIB=emranlib`
- `LD=emcc`

## Exemple pratique

Ce dossier simule un projet avec un Makefile natif :

```bash
# Compilation native (si disponible)
make native

# Compilation WebAssembly avec emmake
make wasm

# Test
node wrapper.mjs
```

## Workflow typique

```bash
# 1. Télécharger le projet
git clone https://github.com/example/lib.git
cd lib

# 2. Compiler avec emmake
emmake make

# 3. Lier les fichiers objets
emcc *.o -o lib.js -sEXPORTED_FUNCTIONS=...
```

## Notes importantes

- emmake ne modifie pas le Makefile original
- Certains Makefiles peuvent nécessiter des ajustements
- Les flags spécifiques à une plateforme peuvent poser problème
