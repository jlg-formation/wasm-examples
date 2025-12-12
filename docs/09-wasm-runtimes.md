# Runtimes WebAssembly hors navigateur

> **Questions QCM associées:** runtime_q8 (Wasm3 pour IoT), runtime_q19 (Wasmer)

## Vue d'ensemble

WebAssembly peut s'exécuter en dehors du navigateur grâce à différents runtimes. Chacun a ses spécificités.

## Principaux runtimes

### Wasmtime (Bytecode Alliance)

| Caractéristique  | Valeur                    |
| ---------------- | ------------------------- |
| **Organisation** | Bytecode Alliance         |
| **Langage**      | Rust                      |
| **WASI**         | ✅ Support complet        |
| **Usage**        | Production, serveurs      |
| **Performance**  | Compilation JIT optimisée |

```bash
# Installation
curl https://wasmtime.dev/install.sh -sSf | bash

# Exécution
wasmtime run hello.wasm
```

**Lien:** [wasmtime.dev](https://wasmtime.dev/)

---

### Wasmer

| Caractéristique  | Valeur                    |
| ---------------- | ------------------------- |
| **Organisation** | Wasmer, Inc.              |
| **Langage**      | Rust                      |
| **WASI**         | ✅ Support complet        |
| **Usage**        | Cloud, conteneurs, edge   |
| **Spécificité**  | Registre de packages WAPM |

```bash
# Installation
curl https://get.wasmer.io -sSfL | sh

# Exécution
wasmer run hello.wasm

# Utiliser un package du registre
wasmer run python/python
```

**Lien:** [wasmer.io](https://wasmer.io/)

---

### Wasm3 (IoT et embarqué)

| Caractéristique | Valeur                              |
| --------------- | ----------------------------------- |
| **Type**        | Interpréteur (pas de JIT)           |
| **Taille**      | ~64 KB                              |
| **Usage**       | **IoT, microcontrôleurs, embarqué** |
| **Plateformes** | Arduino, ESP32, Raspberry Pi Pico   |
| **Performance** | ~10x plus lent que natif            |

```bash
# Compilation pour embarqué
# Wasm3 est une bibliothèque C, intégrée dans le firmware

# Exemple Arduino
#include <wasm3.h>
```

**Caractéristiques clés pour IoT:**

- ✅ Pas de compilation JIT (économie mémoire)
- ✅ Empreinte mémoire minimale
- ✅ Portable sur architectures limitées
- ✅ Démarrage instantané

**Lien:** [github.com/wasm3/wasm3](https://github.com/wasm3/wasm3)

---

### WasmEdge

| Caractéristique  | Valeur                     |
| ---------------- | -------------------------- |
| **Organisation** | CNCF (Cloud Native)        |
| **Usage**        | Cloud, Kubernetes, edge AI |
| **Spécificité**  | Extensions AI/ML intégrées |

```bash
# Installation
curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash

# Exécution
wasmedge run hello.wasm
```

**Lien:** [wasmedge.org](https://wasmedge.org/)

---

## Comparatif

| Runtime  | JIT | Taille | WASI | Usage principal      |
| -------- | --- | ------ | ---- | -------------------- |
| Wasmtime | ✅  | ~15 MB | ✅   | Production, serveurs |
| Wasmer   | ✅  | ~20 MB | ✅   | Cloud, packages      |
| Wasm3    | ❌  | ~64 KB | ⚠️   | **IoT, embarqué**    |
| WasmEdge | ✅  | ~10 MB | ✅   | Cloud native, AI     |

## Quand utiliser quel runtime ?

- **Serveur/Cloud:** Wasmtime ou Wasmer
- **IoT/Embarqué:** **Wasm3** (le seul viable pour microcontrôleurs)
- **Kubernetes:** WasmEdge
- **Expérimentation:** Wasmer (registre WAPM pratique)

## Références

- [WebAssembly Runtimes Comparison](https://nicovr.nl/posts/wasm-runtimes/)
- [Bytecode Alliance](https://bytecodealliance.org/)
