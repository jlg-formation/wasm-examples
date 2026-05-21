# Emscripten - wrapper TypeScript

## Concept clé

Le module WebAssembly reste compilé depuis du C via Emscripten, mais le code de
pilotage côté JavaScript peut être écrit en TypeScript pour bénéficier d'un
typage explicite sur les appels et les objets exposés au wrapper.

Ici, l'exemple passe par **Embind** et `--emit-tsd` pour demander à Emscripten
de générer un fichier de déclarations TypeScript à partir des bindings C++.

## Ce que montre cet exemple

- appel d'une fonction simple sur des entiers (`add_ints`)
- appel d'une fonction sur des flottants (`average3`)
- passage et retour de chaînes via `std::string`
- passage et retour d'une structure `Point` typée côté TypeScript

## Exécution

```bash
make run
```

La commande :

1. installe TypeScript localement via `npm install`
2. compile le code C++ avec `em++`, Embind et `--emit-tsd`
3. transpile `wrapper.ts` en `wrapper.js`
4. exécute la démonstration avec Node.js

Le build génère aussi `dist/bindings.d.ts`, utilisé directement par TypeScript
pour typer l'import du module Emscripten.

## Fichiers

- `interop.cpp` : fonctions C++ et bindings Embind exportés vers Emscripten
- `wrapper.ts` : wrapper TypeScript qui charge le module généré
- `tsconfig.json` : configuration de transpilation TypeScript
- `package.json` : dépendance locale vers TypeScript
- `Makefile` : orchestration du build et de l'exécution

## Note sur les types générés

`--emit-tsd` ne devine pas les types C tout seul. Les déclarations TypeScript
proviennent des bindings Embind déclarés dans `interop.cpp`. C'est ce binding
explicite qui permet à Emscripten de générer un type `Point` exploitable côté
TypeScript.
