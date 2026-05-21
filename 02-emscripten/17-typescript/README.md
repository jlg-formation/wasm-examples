# Emscripten - wrapper TypeScript

## Concept clé

Le module WebAssembly reste compilé depuis du C via Emscripten, mais le code de
pilotage côté JavaScript peut être écrit en TypeScript pour bénéficier d'un
typage explicite sur les appels, les structures manipulées en mémoire et les
helpers d'interopération.

## Ce que montre cet exemple

- appel d'une fonction simple sur des entiers (`add_ints`)
- appel d'une fonction sur des flottants (`average3`)
- passage de chaînes C et récupération d'une chaîne allouée côté WASM
- passage d'une structure C `Point` en mémoire et récupération d'une structure
	résultat

## Exécution

```bash
make run
```

La commande :

1. installe TypeScript localement via `npm install`
2. compile le code C avec `emcc`
3. transpile `wrapper.ts` en `wrapper.js`
4. exécute la démonstration avec Node.js

## Fichiers

- `interop.h` : structure `Point` et prototypes de l'API C
- `interop.c` : implémentation des fonctions C exportées vers Emscripten
- `wrapper.ts` : wrapper TypeScript qui charge le module généré
- `tsconfig.json` : configuration de transpilation TypeScript
- `package.json` : dépendance locale vers TypeScript
- `Makefile` : orchestration du build et de l'exécution

## Note sur les types TypeScript

Avec une API C classique exposée via `cwrap`, Emscripten ne génère pas de type
TypeScript pour les structures C. Le type `Point` et l'interface du module sont
donc décrits manuellement dans `wrapper.ts`, tandis que la structure réelle est
encodée dans la mémoire linéaire WebAssembly.
