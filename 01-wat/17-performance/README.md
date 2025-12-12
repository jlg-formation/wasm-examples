# Performance Demo - Applications bénéficiaires de WebAssembly

Cet exemple démontre les types d'applications qui bénéficient le plus de WebAssembly grâce à ses performances proches du natif.

## Question QCM associée

**q17** : Quelles applications bénéficient le plus de WebAssembly ?

## Concepts démontrés

- Calculs intensifs (traitement d'images, compression)
- Jeux vidéo (physique, rendu)
- Édition multimédia (audio, vidéo)
- Applications scientifiques (simulations)

## Fichiers

| Fichier           | Description                                   |
| ----------------- | --------------------------------------------- |
| `performance.wat` | Module WAT avec exemple de calcul intensif    |
| `wrapper.mjs`     | Wrapper JavaScript avec mesure de performance |
| `Makefile`        | Compilation WAT → WASM                        |

## Compilation et exécution

```bash
make
node wrapper.mjs
```

## Résultat attendu

Le script compare les performances de calculs entre JavaScript pur et WebAssembly, montrant l'avantage de WASM pour les opérations intensives.
