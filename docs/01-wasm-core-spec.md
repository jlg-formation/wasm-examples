# La spécification WebAssembly Core

> **Question QCM : q13**  
> Quel est le rôle principal de la spécification WebAssembly Core ?

## Réponse

La spécification **WebAssembly Core** décrit le **format binaire**, le **jeu d'instructions** et la **sémantique d'exécution** du standard WebAssembly.

## Contenu de la spécification Core

### 1. Format binaire (.wasm)

La spec définit précisément la structure d'un fichier `.wasm` :

```
Magic Number: 0x00 0x61 0x73 0x6D ("\0asm")
Version:      0x01 0x00 0x00 0x00 (version 1)
Sections:     Type, Import, Function, Table, Memory, Global, Export, Start, Element, Code, Data
```

### 2. Format textuel (.wat)

La représentation textuelle en S-expressions :

```wat
(module
  (func (export "add") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add))
```

### 3. Jeu d'instructions

| Catégorie  | Exemples                         |
| ---------- | -------------------------------- |
| Numériques | `i32.add`, `i64.mul`, `f32.sqrt` |
| Mémoire    | `i32.load`, `i32.store`          |
| Contrôle   | `block`, `loop`, `br`, `call`    |
| Variables  | `local.get`, `global.set`        |

### 4. Types

- **Valeurs** : `i32`, `i64`, `f32`, `f64`
- **Références** : `funcref`, `externref`
- **Fonctions** : `(param ...) (result ...)`

### 5. Sémantique d'exécution

- Machine à pile (stack machine)
- Mémoire linéaire bornée
- Validation avant exécution
- Déterminisme (résultats identiques partout)

## Documents officiels

| Document                                         | Description                  |
| ------------------------------------------------ | ---------------------------- |
| [Core Spec](https://www.w3.org/TR/wasm-core-1/)  | Spécification principale W3C |
| [JS API](https://www.w3.org/TR/wasm-js-api-1/)   | Interface JavaScript         |
| [Web API](https://www.w3.org/TR/wasm-web-api-1/) | Intégration navigateur       |

## Liens

- Spécification officielle : https://webassembly.github.io/spec/core/
- W3C Recommendation : https://www.w3.org/TR/wasm-core-1/
- GitHub : https://github.com/WebAssembly/spec
