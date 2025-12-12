# Temps de démarrage WebAssembly

> **Question QCM : q16**  
> Quel avantage offre le temps de démarrage de WebAssembly par rapport à JavaScript ?

## Réponse

Le **format binaire compact** de WebAssembly permet un **parsing et une compilation plus rapides** que le parsing du code source JavaScript.

## Pourquoi WASM démarre plus vite

### 1. Format binaire vs texte

| Aspect  | JavaScript                    | WebAssembly              |
| ------- | ----------------------------- | ------------------------ |
| Format  | Texte source                  | Binaire précompilé       |
| Parsing | Analyse lexicale + syntaxique | Décodage linéaire simple |
| Taille  | Volumineux (texte)            | Compact (binaire)        |

### 2. Décodage en un seul passage

Le format binaire WASM est conçu pour être **décodé en un seul passage** (single-pass):

- Structure prévisible
- Types explicites (pas d'inférence)
- Validation intégrée au décodage

### 3. Streaming compilation

Les navigateurs peuvent **compiler pendant le téléchargement** :

```javascript
// Compilation streamée : commence avant la fin du téléchargement
const { instance } = await WebAssembly.instantiateStreaming(
  fetch("module.wasm")
);
```

## Comparaison de démarrage

```
JavaScript:
  Téléchargement → Parsing → Compilation → Optimisation → Exécution
  [====texte====] [=parse=] [==compile==] [===JIT===]   [run]

WebAssembly:
  Téléchargement + Compilation → Exécution
  [=binaire=======compile======] [run]
```

## Mesures typiques

| Métrique                       | JavaScript     | WebAssembly          |
| ------------------------------ | -------------- | -------------------- |
| Parsing                        | ~1 Mo/s        | ~10+ Mo/s            |
| Compilation initiale           | Variable (JIT) | Rapide et prévisible |
| Temps au premier octet exécuté | Plus long      | Plus court           |

## Cas d'usage

Le démarrage rapide de WASM est crucial pour :

- **Applications lourdes** (jeux, CAO)
- **Cold start** (serverless, edge computing)
- **Mobile** (CPU moins puissant)

## Liens

- Article Google : https://v8.dev/blog/liftoff
- Mozilla Baseline : https://hacks.mozilla.org/2018/01/making-webassembly-even-faster-firefoxs-new-streaming-and-tiering-compiler/
