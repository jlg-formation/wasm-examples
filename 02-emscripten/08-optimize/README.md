# Emscripten - Niveaux d'optimisation

> **Question QCM associée:** em_q10 - Quels sont les différents flags
> d'optimisation (-O0 à -O3) d'Emscripten et leur impact ?

## Concept clé

Emscripten utilise les mêmes niveaux d'optimisation que GCC/Clang :

| Flag  | Description                 | Taille   | Vitesse     | Compilation |
| ----- | --------------------------- | -------- | ----------- | ----------- |
| `-O0` | Aucune optimisation (debug) | Grande   | Lente       | Rapide      |
| `-O1` | Optimisations basiques      | Moyenne  | Moyenne     | Rapide      |
| `-O2` | Optimisations standard      | Petite   | Rapide      | Moyenne     |
| `-O3` | Optimisations agressives    | Petite   | Très rapide | Lente       |
| `-Os` | Optimise pour la taille     | Minimale | Rapide      | Moyenne     |
| `-Oz` | Taille minimale absolue     | Minimale | Moyenne     | Moyenne     |

## Exécution

```bash
# Compiler avec différents niveaux
make build-all

# Comparer les tailles
make compare

# Exécuter les benchmarks
node wrapper.mjs
```

## Fichiers

- `compute.c` : Fonction de calcul pour le benchmark
- `Makefile` : Compilation avec tous les niveaux d'optimisation
- `wrapper.mjs` : Comparaison des performances
