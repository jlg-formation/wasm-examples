# Emscripten - Compilation multi-fichiers

> **Question QCM associée:** em_q18 - Comment lier plusieurs fichiers C/C++ avec
> Emscripten ?

## Concept clé

Emscripten peut compiler plusieurs fichiers sources en un seul module WASM,
exactement comme un compilateur C traditionnel.

## Méthodes de compilation

### 1. Tous les fichiers en une seule commande

```bash
emcc main.c utils.c math.c -o app.js
```

### 2. Compilation séparée puis liaison

```bash
# Compiler chaque fichier en .o
emcc -c main.c -o main.o
emcc -c utils.c -o utils.o
emcc -c math.c -o math.o

# Lier les fichiers objets
emcc main.o utils.o math.o -o app.js
```

### 3. Avec un Makefile (recommandé)

Voir le Makefile de cet exemple.

## Exécution

```bash
make build
node wrapper.mjs
```

## Structure du projet

```
12-multifile/
├── main.c        # Point d'entrée
├── math_ops.c    # Opérations mathématiques
├── math_ops.h    # Header pour math_ops
├── utils.c       # Fonctions utilitaires
├── utils.h       # Header pour utils
├── Makefile
└── wrapper.mjs
```

## Fichiers

- `main.c` : Fonctions exportées utilisant les autres modules
- `math_ops.c/h` : Module d'opérations mathématiques
- `utils.c/h` : Module utilitaire
