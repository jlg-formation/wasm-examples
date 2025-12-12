# 18-binary-format - Structure binaire WASM

> **Question QCM associée:** q20 - Magic number 0x00 61 73 6D

## Concept

Chaque fichier `.wasm` commence par un **magic number** (nombre magique) qui identifie le format :

```
0x00 0x61 0x73 0x6D = "\0asm" (4 octets)
```

Suivi de la **version** du format :

```
0x01 0x00 0x00 0x00 = version 1 (4 octets)
```

Ces 8 premiers octets forment l'en-tête de tout module WebAssembly binaire.

## Structure d'un module .wasm

```
┌─────────────────────────────────────┐
│ Magic Number: 0x00 0x61 0x73 0x6D   │ ← "\0asm"
├─────────────────────────────────────┤
│ Version: 0x01 0x00 0x00 0x00        │ ← Version 1
├─────────────────────────────────────┤
│ Section 1 (Type)                    │
├─────────────────────────────────────┤
│ Section 2 (Import)                  │
├─────────────────────────────────────┤
│ Section 3 (Function)                │
├─────────────────────────────────────┤
│ ...                                 │
└─────────────────────────────────────┘
```

## Exécution

```bash
# Compiler le WAT en WASM
make build

# Exécuter l'exemple (analyse du binaire)
make run

# Voir les octets hexadécimaux du fichier
xxd binary.wasm | head -1
```

## Résultat attendu

```
Magic Number: 0061736d (corresponds to "\0asm")
Version: 01000000 (version 1)
Module is valid WebAssembly!
```

## Références

- [WebAssembly Binary Format](https://webassembly.github.io/spec/core/binary/modules.html)
- [Module Structure](https://webassembly.github.io/spec/core/binary/modules.html#binary-module)
