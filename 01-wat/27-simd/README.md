# 27-simd - Instructions SIMD en WAT

> **Question QCM associée:** as_q18 - Quel type représente les vecteurs SIMD
> dans WebAssembly ?

## Concept

SIMD signifie **Single Instruction, Multiple Data**. Une seule instruction agit
sur plusieurs valeurs en parallèle.

Dans WebAssembly, le type SIMD est `v128` : un registre de 128 bits qui peut
être interprété comme :

- 4 entiers `i32`
- 4 flottants `f32`
- 2 entiers `i64`
- 2 flottants `f64`

Cet exemple montre :

- une addition vectorielle `i32x4.add` sur 4 entiers en parallèle,
- une multiplication vectorielle `f32x4.mul` sur 4 flottants en parallèle.

## Point important côté JavaScript

L'API JavaScript de WebAssembly ne permet pas de passer ou de récupérer un
`v128` directement.

Le pattern courant est donc :

1. écrire les données dans la mémoire linéaire WASM,
2. faire `v128.load`,
3. appliquer les instructions SIMD,
4. faire `v128.store`,
5. relire le résultat depuis `memory.buffer`.

## Instructions illustrées

```wat
(v128.load ...)
(i32x4.add ...)
(f32x4.mul ...)
(v128.store ...)
(i32x4.extract_lane 0 ...)
```

## Schéma mémoire avant/après

Les offsets sont exprimés en octets. Chaque vecteur SIMD occupe 16 octets = 4
lanes de 32 bits.

### Zone mémoire utilisée

```text
Offset  0..15   : vecteur i32 A      = [1, 2, 3, 4]
Offset 16..31   : vecteur i32 B      = [10, 20, 30, 40]
Offset 32..47   : résultat i32       = [11, 22, 33, 44]

Offset 48..63   : vecteur f32 A      = [1.5, 2.0, 3.5, 4.0]
Offset 64..79   : vecteur f32 B      = [2.0, 0.5, 4.0, 1.25]
Offset 80..95   : résultat f32       = [3.0, 1.0, 14.0, 5.0]
```

### Avant l'appel WASM

```text
memory.buffer
|  i32 A  |  i32 B  |  vide   |  f32 A  |  f32 B  |  vide   |
| 0..15   | 16..31  | 32..47  | 48..63  | 64..79  | 80..95  |
```

### Après l'appel WASM

```text
memory.buffer
|  i32 A  |  i32 B  | i32 A+B |  f32 A  |  f32 B  | f32 A*B |
| 0..15   | 16..31  | 32..47  | 48..63  | 64..79  | 80..95  |
```

Concrètement, JavaScript écrit les lanes dans `memory.buffer`, la fonction WAT
charge ces 16 octets avec `v128.load`, applique l'opération SIMD, puis réécrit
les 16 octets de résultat avec `v128.store`.

## Exécution

```bash
make run
```

## Résultat attendu

```text
=== Test 1: Addition SIMD i32x4 ===
Vecteur A: [ 1, 2, 3, 4 ]
Vecteur B: [ 10, 20, 30, 40 ]
Résultat: [ 11, 22, 33, 44 ]

=== Test 2: Réduction scalaire ===
Somme des lanes = 110

=== Test 3: Multiplication SIMD f32x4 ===
Vecteur F32 A: [ 1.5, 2, 3.5, 4 ]
Vecteur F32 B: [ 2, 0.5, 4, 1.25 ]
Résultat F32: [ 3, 1, 14, 5 ]
```

## Cas d'usage typiques

- traitement d'image,
- audio et vidéo,
- calcul scientifique,
- algorithmes de compression,
- jeux et moteurs physiques.

## Références

- [MDN - WebAssembly SIMD](https://developer.mozilla.org/en-US/docs/WebAssembly/Reference/SIMD)
- [WebAssembly SIMD proposal](https://github.com/WebAssembly/simd)
