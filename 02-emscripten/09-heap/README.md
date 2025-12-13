# Emscripten - Accès mémoire avec HEAP

> **Question QCM associée:** em_q13 - Comment accéder directement à la mémoire
> WASM depuis JavaScript avec Emscripten ?

## Concept clé

Emscripten expose la mémoire linéaire via des **vues typées** (TypedArrays) :

| Vue       | Type C     | Taille   | Plage            |
| --------- | ---------- | -------- | ---------------- |
| `HEAP8`   | `int8_t`   | 1 octet  | -128 à 127       |
| `HEAPU8`  | `uint8_t`  | 1 octet  | 0 à 255          |
| `HEAP16`  | `int16_t`  | 2 octets | -32768 à 32767   |
| `HEAPU16` | `uint16_t` | 2 octets | 0 à 65535        |
| `HEAP32`  | `int32_t`  | 4 octets | -2^31 à 2^31-1   |
| `HEAPU32` | `uint32_t` | 4 octets | 0 à 2^32-1       |
| `HEAPF32` | `float`    | 4 octets | Flottant 32 bits |
| `HEAPF64` | `double`   | 8 octets | Flottant 64 bits |

## Utilisation

```javascript
// Lire un entier 32 bits à l'adresse 100
const value = Module.HEAP32[100 / 4]; // Division par 4 (taille int32)

// Écrire un flottant 64 bits à l'adresse 200
Module.HEAPF64[200 / 8] = 3.14159; // Division par 8 (taille double)
```

⚠️ **Important** : L'index est en nombre d'éléments, pas en octets !

## Exécution

```bash
make build
node wrapper.mjs
```

## Fichiers

- `heap.c` : Fonctions C manipulant la mémoire
- `Makefile` : Compilation avec exports HEAP
- `wrapper.mjs` : Démonstration des accès HEAP en JavaScript
