# Extensions VS Code pour WebAssembly

> **Question QCM associée:** wat_q11 - Quelle extension VS Code facilite l'édition de fichiers WAT ?

## Extensions recommandées

### 1. WebAssembly (officielle)

**ID:** `dtsvet.vscode-wasm`

L'extension principale pour travailler avec WebAssembly dans VS Code :

- ✅ Coloration syntaxique pour `.wat`
- ✅ Coloration syntaxique pour `.wasm` (vue hexadécimale)
- ✅ Support des fichiers binaires `.wasm`

## Outils complémentaires

### WABT (WebAssembly Binary Toolkit)

Outils en ligne de commande essentiels :

```bash
# Installation via npm
npm install -g wabt

# Ou via Homebrew (macOS)
brew install wabt
```

**Commandes principales:**

| Commande        | Description                    |
| --------------- | ------------------------------ |
| `wat2wasm`      | Compile WAT → WASM             |
| `wasm2wat`      | Décompile WASM → WAT           |
| `wasm-objdump`  | Affiche les sections du module |
| `wasm-validate` | Valide un module WASM          |

### Tâches VS Code

Créez un fichier `.vscode/tasks.json` pour automatiser la compilation :

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Compile WAT",
      "type": "shell",
      "command": "wat2wasm",
      "args": [
        "${file}",
        "-o",
        "${fileDirname}/${fileBasenameNoExtension}.wasm"
      ],
      "group": "build",
      "problemMatcher": []
    }
  ]
}
```

## Liens utiles

- [WABT GitHub](https://github.com/WebAssembly/wabt)
- [VS Code Marketplace - WebAssembly](https://marketplace.visualstudio.com/search?term=webassembly&target=VSCode)
- [WebAssembly Specification](https://webassembly.github.io/spec/)
