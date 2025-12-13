# 25-bigint - BigInt pour les types i64

> **Question QCM associée:** runtime_q18 - Comment JavaScript gère-t-il les types i64 de WebAssembly ?

## Concept

WebAssembly supporte les entiers 64 bits (`i64`), mais JavaScript utilise `Number` (53 bits max pour les entiers).

La solution : **BigInt** - JavaScript convertit automatiquement les `i64` en `BigInt`.

## Syntaxe

```javascript
// Appeler une fonction WASM qui retourne i64
const result = add64(10n, 20n); // Utiliser le suffixe 'n'
console.log(result); // 30n (BigInt)

// Conversion
const num = Number(result); // BigInt → Number (attention perte précision)
const big = BigInt(42); // Number → BigInt
```

## Limites

| Type     | Plage                                 |
| -------- | ------------------------------------- |
| `Number` | -(2^53 - 1) à 2^53 - 1 (safe integer) |
| `i64`    | -(2^63) à 2^63 - 1                    |
| `BigInt` | Illimitée                             |

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
=== Test 1: Addition i64 ===
10n + 20n = 30n
Type du résultat: bigint

=== Test 2: Grands nombres ===
9007199254740993n (au-delà de Number.MAX_SAFE_INTEGER)
```

## Références

- [MDN - BigInt](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt)
- [WebAssembly JS BigInt Integration](https://github.com/nicknisi/webassembly-examples)
