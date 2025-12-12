# asm.js : le prédécesseur de WebAssembly

> **Question QCM : q15**  
> Quelle technologie WebAssembly a-t-il remplacée comme solution de calcul performant dans les navigateurs ?

## Réponse

**asm.js**, un sous-ensemble optimisable de JavaScript développé par Mozilla, a précédé et inspiré WebAssembly.

## Qu'est-ce qu'asm.js ?

asm.js (2013) était un sous-ensemble strict de JavaScript conçu pour :

- Être **optimisable** par les moteurs JavaScript
- Servir de **cible de compilation** pour C/C++
- Offrir des performances **proches du natif**

## Exemple de code asm.js

```javascript
function Module(stdlib, foreign, heap) {
  "use asm"; // Directive magique pour le moteur JS

  var HEAP32 = new stdlib.Int32Array(heap);

  function add(a, b) {
    a = a | 0; // Annotation de type : entier 32 bits
    b = b | 0;
    return (a + b) | 0;
  }

  return { add: add };
}
```

### Annotations de type

| Annotation  | Signification           |
| ----------- | ----------------------- |
| `x \| 0`    | Entier 32 bits signé    |
| `+x`        | Nombre flottant 64 bits |
| `fround(x)` | Nombre flottant 32 bits |

## Limitations d'asm.js

| Problème     | Impact                            |
| ------------ | --------------------------------- |
| Format texte | Fichiers volumineux, parsing lent |
| Validation   | À chaque chargement de page       |
| Typage       | Annotations verboses et fragiles  |
| Débogage     | Code généré illisible             |

## Comparaison asm.js vs WebAssembly

| Aspect          | asm.js             | WebAssembly            |
| --------------- | ------------------ | ---------------------- |
| Format          | Texte (JavaScript) | Binaire compact        |
| Parsing         | Lent (texte)       | Rapide (binaire)       |
| Validation      | À chaque fois      | Une seule fois         |
| Taille          | Volumineux         | Compact                |
| Standardisation | Mozilla uniquement | W3C (tous navigateurs) |

## Transition vers WebAssembly

1. **2013** : Mozilla lance asm.js
2. **2015** : Annonce de WebAssembly (reprend les concepts d'asm.js)
3. **2017** : Support WebAssembly dans tous les navigateurs majeurs
4. **Aujourd'hui** : asm.js est obsolète, WebAssembly est le standard

## Emscripten : le pont

Emscripten compilait initialement vers asm.js, puis a ajouté le support WebAssembly :

```bash
# Avant (asm.js)
emcc file.c -o output.js

# Maintenant (WebAssembly par défaut)
emcc file.c -o output.js  # Génère output.wasm
```

## Liens

- Article original asm.js : https://asmjs.org/
- Annonce WebAssembly : https://brendaneich.com/2015/06/from-asm-js-to-webassembly/
