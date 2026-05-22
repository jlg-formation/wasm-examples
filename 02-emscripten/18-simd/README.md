# Emscripten - SIMD automatique

## Concept cle

Cet exemple montre qu'un meme source C peut produire deux modules WebAssembly
differents :

- une version scalaire, compilee sans SIMD ;
- une version SIMD, compilee avec `-msimd128`.

Le code C ne contient pas d'intrinsics manuels. La demonstration repose sur une
boucle d'addition de vecteurs que LLVM peut auto-vectoriser quand la cible
WebAssembly autorise les instructions SIMD.

## Ce que montre l'exemple

- un build Emscripten scalaire et un build Emscripten SIMD a partir du meme
  fichier `simd.c`
- une comparaison fonctionnelle entre les deux variantes
- une execution sous Node.js via `wrapper.mjs`
- une execution navigateur via `index.html`
- une verification locale du binaire SIMD avec `wasm2wat`

## Execution

```bash
make build
make run
```

La commande `make run` :

1. compile les variantes `dist/scalar.mjs` et `dist/simd.mjs`
2. charge les deux modules dans Node.js
3. execute le meme noyau d'addition de vecteurs
4. compare les checksums et affiche un micro-benchmark indicatif

## Demo navigateur

```bash
make serve
```

Puis ouvrir `http://localhost:3000`.

La page charge les deux modules Emscripten, execute la meme sequence de calcul
et affiche les temps moyens, minimums et maximums.

## Verification de la presence de SIMD

```bash
make inspect
```

Cette cible desassemble `dist/simd.wasm` et filtre les instructions contenant
`v128`, `f32x4` ou `i32x4`.

On peut aussi lancer manuellement :

```bash
wasm2wat dist/simd.wasm | grep -E "v128|f32x4|i32x4"
```

Le point pedagogique important est le suivant : `-msimd128` autorise la
generation de SIMD, mais la preuve finale reste l'inspection du module genere.

## Fichiers

- `simd.c` : noyau C auto-vectorisable
- `Makefile` : build scalaire, build SIMD, execution et inspection
- `wrapper.mjs` : comparaison sous Node.js
- `index.html` : demo navigateur
- `app.mjs` : chargement des modules et affichage des resultats dans la page
- `dist/` : artefacts generes par Emscripten
