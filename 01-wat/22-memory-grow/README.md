# 22-memory-grow - Croissance dynamique de la mémoire

> **Question QCM associée:** runtime_q12 - memory.grow()

## Concept

La mémoire WebAssembly peut croître dynamiquement avec `memory.grow` (côté WAT) ou `memory.grow()` (côté JS).

## Instructions

| Instruction/Méthode | Côté | Description                                   |
| ------------------- | ---- | --------------------------------------------- |
| `memory.grow`       | WAT  | Augmente la mémoire de N pages (64 KB)        |
| `memory.size`       | WAT  | Retourne la taille actuelle en pages          |
| `memory.grow(n)`    | JS   | Augmente de n pages, retourne ancienne taille |
| `memory.buffer`     | JS   | Accède au ArrayBuffer (change après grow!)    |

## ⚠️ Important

Après `memory.grow()`, le `ArrayBuffer` est **détaché**. Il faut récupérer une nouvelle référence :

```javascript
const oldBuffer = memory.buffer;
memory.grow(1);
// oldBuffer est maintenant détaché !
const newBuffer = memory.buffer; // Nouvelle référence requise
```

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
Taille initiale: 1 page(s) (65536 octets)
Croissance de 2 pages...
Nouvelle taille: 3 page(s) (196608 octets)
```

## Références

- [MDN - Memory.grow()](https://developer.mozilla.org/en-US/docs/WebAssembly/JavaScript_interface/Memory/grow)
