# Installation d'Emscripten

> **Questions QCM associées:**
>
> - em_q4 - Comment installer et configurer l'environnement Emscripten ?
> - port_q7 - Quelle variable d'environnement pointe vers l'installation
>   Emscripten ?

## Réponse rapide

- **Installation** : Via le SDK `emsdk` (Emscripten SDK)
- **Variable d'environnement** : `EMSDK` pointe vers le répertoire
  d'installation

---

## Installation pas à pas

### 1. Cloner le SDK

```bash
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
```

### 2. Installer la dernière version

```bash
# Télécharger et installer
./emsdk install latest

# Activer pour la session courante
./emsdk activate latest

# Configurer les variables d'environnement
source ./emsdk_env.sh    # Linux/macOS
# ou
emsdk_env.bat            # Windows
```

### 3. Vérifier l'installation

```bash
emcc --version
# emcc (Emscripten gcc/clang-like replacement...) 3.x.x

which emcc
# /path/to/emsdk/upstream/emscripten/emcc
```

---

## Variables d'environnement

Après `source emsdk_env.sh`, ces variables sont définies :

| Variable     | Description                  | Exemple                     |
| ------------ | ---------------------------- | --------------------------- |
| `EMSDK`      | Répertoire racine du SDK     | `/home/user/emsdk`          |
| `EMSDK_NODE` | Chemin vers Node.js embarqué | `/home/user/emsdk/node/...` |
| `EM_CONFIG`  | Fichier de configuration     | `/home/user/.emscripten`    |
| `PATH`       | Inclut `emcc`, `em++`, etc.  | -                           |

### Rendre permanent

Ajoutez dans votre `~/.bashrc` ou `~/.zshrc` :

```bash
# Emscripten SDK
export EMSDK="/path/to/emsdk"
source "$EMSDK/emsdk_env.sh" 2>/dev/null
```

---

## Commandes principales

| Commande      | Description                           |
| ------------- | ------------------------------------- |
| `emcc`        | Compilateur C → WASM                  |
| `em++`        | Compilateur C++ → WASM                |
| `emmake`      | Wrapper pour `make`                   |
| `emcmake`     | Wrapper pour `cmake`                  |
| `emconfigure` | Wrapper pour `./configure` (autoconf) |
| `emrun`       | Serveur local pour tester             |

---

## Exemple de compilation

```bash
# Compiler un fichier C simple
emcc hello.c -o hello.js

# Compiler avec optimisations
emcc -O3 hello.c -o hello.js

# Générer un fichier HTML avec player intégré
emcc hello.c -o hello.html

# Exporter des fonctions spécifiques
emcc -sEXPORTED_FUNCTIONS='["_add","_multiply"]' \
     -sEXPORTED_RUNTIME_METHODS='["ccall","cwrap"]' \
     lib.c -o lib.js
```

---

## Installation Docker (alternative)

```bash
# Image officielle
docker pull emscripten/emsdk

# Compiler depuis Docker
docker run --rm -v $(pwd):/src emscripten/emsdk emcc hello.c -o hello.js
```

---

## Structure du SDK

```
emsdk/
├── emsdk              # Script principal
├── emsdk_env.sh       # Variables d'environnement
├── upstream/
│   ├── emscripten/    # Compilateur (emcc, em++)
│   └── bin/           # Outils Clang/LLVM
└── node/              # Node.js embarqué
```

---

## Dépannage

### Problème : `emcc` non trouvé

```bash
# Réactiver l'environnement
cd /path/to/emsdk
source ./emsdk_env.sh
```

### Problème : Version obsolète

```bash
# Mettre à jour
./emsdk update
./emsdk install latest
./emsdk activate latest
```

### Problème : Cache corrompu

```bash
# Nettoyer le cache
emcc --clear-cache
```

---

## Ressources

- [Documentation officielle](https://emscripten.org/docs/getting_started/downloads.html)
- [GitHub emscripten-core/emsdk](https://github.com/emscripten-core/emsdk)
- [Docker Hub emscripten/emsdk](https://hub.docker.com/r/emscripten/emsdk)
