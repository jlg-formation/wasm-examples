# 26-feature-detect - Détection du support WebAssembly

> **Question QCM associée:** runtime_q20 - Comment vérifier si WebAssembly est supporté ?

## Concept

Avant d'utiliser WebAssembly, il faut vérifier que le navigateur/runtime le supporte.

## Méthodes de détection

### Méthode 1: Vérifier l'objet global (recommandée)

```javascript
if (typeof WebAssembly === "object") {
  // WebAssembly est supporté
}
```

### Méthode 2: Vérifier les méthodes spécifiques

```javascript
if (typeof WebAssembly?.instantiate === "function") {
  // instantiate est disponible
}
```

### Méthode 3: Feature detection complète

```javascript
const features = {
  basic: typeof WebAssembly === "object",
  streaming: typeof WebAssembly?.instantiateStreaming === "function",
  bigInt: /* test i64 */,
  simd: /* test v128 */,
};
```

## Support navigateurs

| Navigateur | Version minimum |
| ---------- | --------------- |
| Chrome     | 57+             |
| Firefox    | 52+             |
| Safari     | 11+             |
| Edge       | 16+             |
| Node.js    | 8.0+            |

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
=== Détection WebAssembly ===
WebAssembly supporté: true
instantiate: true
instantiateStreaming: true
compile: true
validate: true
```

## Références

- [MDN - WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly)
- [Can I Use - WebAssembly](https://caniuse.com/wasm)
