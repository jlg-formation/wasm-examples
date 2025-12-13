# Emscripten - Croissance mémoire dynamique

> **Question QCM associée:** em_q14 - Comment permettre à un module Emscripten
> d'augmenter sa mémoire dynamiquement ?

## Concept clé

Par défaut, la mémoire WASM a une taille fixe. Pour permettre la croissance
dynamique, utilisez :

```bash
emcc -sALLOW_MEMORY_GROWTH=1 ...
```

## Options de configuration mémoire

| Flag                    | Description                         | Défaut |
| ----------------------- | ----------------------------------- | ------ |
| `-sALLOW_MEMORY_GROWTH` | Permet à la mémoire de grandir      | 0      |
| `-sINITIAL_MEMORY`      | Mémoire initiale en octets          | 16 MB  |
| `-sMAXIMUM_MEMORY`      | Mémoire maximale (si growth activé) | 2 GB   |
| `-sSTACK_SIZE`          | Taille de la pile                   | 64 KB  |

## Exemple

```bash
# Permettre la croissance jusqu'à 256 MB
emcc -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=256MB app.c -o app.js
```

## Exécution

```bash
make build
node wrapper.mjs
```

## ⚠️ Impact sur les performances

Quand `ALLOW_MEMORY_GROWTH=1` est activé :

- Les vues `HEAP*` peuvent devenir invalides après un `grow`
- Il faut les réobtenir après chaque allocation importante
- Légère pénalité de performance

## Fichiers

- `memory-growth.c` : Allocations dynamiques dépassant la mémoire initiale
- `Makefile` : Compilation avec et sans croissance mémoire
- `wrapper.mjs` : Démonstration de la croissance
