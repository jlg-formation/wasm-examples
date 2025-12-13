# AssemblyScript - Tableaux typés (Arrays)

> **Question QCM:** as_q14 (Tableau typé Int32Array), as_q17 (StaticArray vs
> Array)

## Concept

AssemblyScript offre plusieurs types de tableaux :

- **`StaticArray<T>`** : Taille fixe, alloué à la compilation, plus performant
- **`Array<T>`** : Taille dynamique, peut grandir/rétrécir, overhead de gestion
- **`Int32Array`, `Float64Array`, etc.** : Tableaux typés compatibles avec
  JavaScript

### Différences clés

| Caractéristique | StaticArray | Array        | Int32Array       |
| --------------- | ----------- | ------------ | ---------------- |
| Taille          | Fixe        | Dynamique    | Fixe             |
| Performance     | ⭐⭐⭐      | ⭐⭐         | ⭐⭐⭐           |
| Interop JS      | Via mémoire | Via loader   | TypedArray natif |
| Méthodes        | Basiques    | push/pop/etc | Basiques         |

## Fichiers

- `assembly/index.ts` : Code AssemblyScript avec les différents types de
  tableaux
- `index.html` : Interface de démonstration

## Exécution

```bash
npm install
npm run asbuild
npm start
```

Ouvrir http://localhost:3000 dans le navigateur.
