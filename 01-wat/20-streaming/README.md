# 20-streaming - WebAssembly.instantiateStreaming

> **Questions QCM associées:** runtime_q6, runtime_q17 - instantiateStreaming et ses avantages

## Concept

`WebAssembly.instantiateStreaming()` compile et instancie un module WebAssembly directement depuis une source streamable (comme `fetch()`), sans attendre le téléchargement complet.

## Avantages par rapport à `WebAssembly.instantiate()`

| Méthode                  | Téléchargement  | Compilation          | Performance     |
| ------------------------ | --------------- | -------------------- | --------------- |
| `instantiate(buffer)`    | Complet d'abord | Après téléchargement | Plus lent       |
| `instantiateStreaming()` | En parallèle    | Pendant le streaming | **Plus rapide** |

## Syntaxe

```javascript
// Méthode optimisée (streaming)
const { instance } = await WebAssembly.instantiateStreaming(
  fetch("module.wasm"),
  importObject
);

// Méthode classique (non-streaming)
const response = await fetch("module.wasm");
const buffer = await response.arrayBuffer();
const { instance } = await WebAssembly.instantiate(buffer, importObject);
```

## Prérequis

Le serveur doit retourner le bon Content-Type :

```
Content-Type: application/wasm
```

⚠️ Sans ce header, `instantiateStreaming` échouera.

## Exécution

```bash
make build
make run
```

## Note importante

Cet exemple utilise un serveur HTTP car `instantiateStreaming` nécessite une Response HTTP.
En Node.js sans serveur, on simule avec un fichier local via `WebAssembly.instantiate`.

## Références

- [MDN - instantiateStreaming](https://developer.mozilla.org/en-US/docs/WebAssembly/JavaScript_interface/instantiateStreaming_static)
- [WebAssembly Streaming Compilation](https://v8.dev/blog/wasm-code-caching)
