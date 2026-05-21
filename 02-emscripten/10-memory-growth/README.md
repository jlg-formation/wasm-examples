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
# Build growth: mémoire initiale 1 MB, croissance autorisée jusqu'à 64 MB
emcc -sINITIAL_MEMORY=1MB -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=64MB app.c -o app.js
```

## Exécution

```bash
make run
```

Le wrapper compare deux builds avec la même mémoire initiale (1 MB) :

- build `growth` : `-sALLOW_MEMORY_GROWTH=1`
- build `fixed` : `-sALLOW_MEMORY_GROWTH=0`

Il affiche explicitement le nombre de pages WASM avant et après une tentative
d'allocation de 10 MB.

## ⚠️ Impact sur les performances

Quand `ALLOW_MEMORY_GROWTH=1` est activé :

- Les vues `HEAP*` peuvent devenir invalides après un `grow`
- Il faut les réobtenir après chaque allocation importante
- Légère pénalité de performance

## Fichiers

- `memory-growth.c` : Allocation et écriture dans chaque page pour rendre la
  croissance observable
- `Makefile` : Compilation comparative `growth` vs `fixed` avec la même mémoire
  initiale
- `wrapper.mjs` : Mesure des pages WASM avant/après pour démontrer la différence
