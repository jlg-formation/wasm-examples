# Outils d'analyse de taille des modules WASM

> **Question QCM associée:** as_q20 - Quel outil permet d'analyser la taille et
> la composition d'un module AssemblyScript compilé ?

## Réponse

Des outils comme **wasm-opt** (Binaryen), **Twiggy**, ou **wasm-size**
permettent d'analyser la taille, les sections et les fonctions d'un module WASM
compilé.

---

## Outils principaux

### 1. wasm-opt (Binaryen)

**Binaryen** est la suite d'outils officielle pour manipuler le WebAssembly.

```bash
# Installation
npm install -g binaryen

# Afficher les features utilisées
wasm-opt --print-features module.wasm

# Analyser et optimiser
wasm-opt -O3 module.wasm -o module-optimized.wasm

# Afficher les statistiques
wasm-opt --metrics module.wasm
```

**Options utiles :**

| Option              | Description                         |
| ------------------- | ----------------------------------- |
| `--print-features`  | Liste les features WASM utilisées   |
| `--metrics`         | Affiche des métriques sur le module |
| `-O0` à `-O4`       | Niveaux d'optimisation              |
| `--print-functions` | Liste toutes les fonctions          |

### 2. Twiggy

**Twiggy** est un profileur de taille spécialisé pour WASM.

```bash
# Installation (nécessite Rust)
cargo install twiggy

# Analyser la taille par fonction
twiggy top module.wasm

# Afficher l'arbre de dépendances
twiggy paths module.wasm

# Trouver les fonctions non utilisées
twiggy garbage module.wasm
```

**Commandes principales :**

| Commande     | Description                                      |
| ------------ | ------------------------------------------------ |
| `top`        | Les plus grandes fonctions                       |
| `paths`      | Chemin d'appel vers une fonction                 |
| `garbage`    | Fonctions potentiellement inutilisées            |
| `diff`       | Comparer deux versions d'un module               |
| `dominators` | Arbre de dominance (qui retient quoi en mémoire) |

### 3. wasm-size (wasm-tools)

```bash
# Installation
cargo install wasm-tools

# Taille par section
wasm-tools objdump module.wasm --section-sizes
```

### 4. wabt (WebAssembly Binary Toolkit)

```bash
# Installation
npm install -g wabt

# Désassembler en WAT lisible
wasm2wat module.wasm -o module.wat

# Afficher les informations du module
wasm-objdump -h module.wasm    # Headers
wasm-objdump -x module.wasm    # Toutes les sections
wasm-objdump -d module.wasm    # Désassemblage
```

---

## Analyse avec Node.js

On peut aussi analyser un module directement en JavaScript :

```javascript
import { readFile } from "fs/promises";

const buffer = await readFile("module.wasm");
const module = await WebAssembly.compile(buffer);

// Taille brute
console.log(`Taille: ${buffer.byteLength} octets`);

// Exports disponibles
const exports = WebAssembly.Module.exports(module);
console.log("Exports:", exports);

// Imports requis
const imports = WebAssembly.Module.imports(module);
console.log("Imports:", imports);
```

---

## Sections d'un module WASM

Un module WASM contient plusieurs sections analysables :

| Section    | Contenu                            |
| ---------- | ---------------------------------- |
| `type`     | Signatures des fonctions           |
| `import`   | Fonctions/mémoire importées        |
| `function` | Déclarations de fonctions          |
| `table`    | Tables de références               |
| `memory`   | Configuration mémoire              |
| `global`   | Variables globales                 |
| `export`   | Symboles exportés                  |
| `code`     | Corps des fonctions (le plus gros) |
| `data`     | Données initialisées               |
| `custom`   | Métadonnées (source maps, etc.)    |

---

## Bonnes pratiques pour réduire la taille

1. **Utiliser les optimisations** : `-O3` ou `--shrinkLevel 2` (AssemblyScript)
2. **Supprimer les assertions** : `--noAssert` en release
3. **Tree shaking** : N'exporter que le nécessaire
4. **Éviter les strings** : Elles ajoutent du poids
5. **Utiliser Twiggy** : Pour identifier le code mort

---

## Ressources

- [Binaryen GitHub](https://github.com/WebAssembly/binaryen)
- [Twiggy Documentation](https://rustwasm.github.io/twiggy/)
- [WABT GitHub](https://github.com/WebAssembly/wabt)
- [AssemblyScript Optimization](https://www.assemblyscript.org/compiler.html#optimization)
