# 23-strings - Passer des chaînes entre JS et WASM

> **Question QCM associée:** runtime_q14 - Comment passer une chaîne de caractères à WASM ?

## Concept

WebAssembly ne supporte pas nativement les chaînes. Il faut :

1. **Encoder** la chaîne en octets (UTF-8)
2. **Écrire** ces octets dans la mémoire WASM
3. **Passer** l'adresse et la longueur à la fonction WASM
4. **Décoder** les octets côté JS pour lire une chaîne de WASM

## Encodage/Décodage

```javascript
// JS → WASM : encoder la chaîne
const encoder = new TextEncoder();
const bytes = encoder.encode("Hello");

// WASM → JS : décoder les octets
const decoder = new TextDecoder();
const string = decoder.decode(bytes);
```

## Schéma mémoire

```
Mémoire WASM:
┌────────────────────────────────────────┐
│ ... │ H │ e │ l │ l │ o │ ... │
│     │ 72│101│108│108│111│     │
└────────────────────────────────────────┘
        ↑
      offset (adresse passée à WASM)
```

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
=== JS → WASM ===
Chaîne envoyée: "Hello, WASM!"
Longueur calculée par WASM: 12

=== WASM → JS ===
Chaîne lue depuis WASM: "Hello from WASM"
```

## Références

- [MDN - TextEncoder](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder)
- [MDN - TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder)
