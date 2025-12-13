# AssemblyScript - SIMD (v128)

> **Question QCM:** as_q18 (Support SIMD v128)

## Concept

SIMD (Single Instruction, Multiple Data) permet d'effectuer des opérations sur
plusieurs valeurs simultanément. AssemblyScript supporte les opérations SIMD via
le type `v128` (vecteur 128 bits).

### Avantages SIMD

- **Performance** : 4x plus rapide pour les opérations sur f32, i32
- **Cas d'usage** : Graphiques, traitement audio/vidéo, calculs scientifiques

### Types de vecteurs

| Type    | Contenu                    | Opérations typiques        |
| ------- | -------------------------- | -------------------------- |
| `v128`  | 4×i32, 4×f32, 2×i64, 2×f64 | add, mul, min, max         |
| `i32x4` | 4 entiers 32 bits          | Addition vectorielle       |
| `f32x4` | 4 floats 32 bits           | Multiplication vectorielle |

## Fichiers

- `assembly/index.ts` : Opérations SIMD en AssemblyScript
- `index.html` : Comparaison performance SIMD vs scalaire

## Exécution

```bash
npm install
npm run asbuild
npm start
```

Ouvrir http://localhost:3000 dans le navigateur.

## Note

SIMD nécessite un navigateur compatible (Chrome 91+, Firefox 89+, Safari 16.4+).
