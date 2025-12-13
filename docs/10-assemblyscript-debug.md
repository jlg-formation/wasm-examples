# Déboguer AssemblyScript avec les Source Maps

> **Question QCM associée**: `as_q9`  
> _Quel outil permet de déboguer du code AssemblyScript dans le navigateur ?_  
> **Réponse**: Les source maps générées par le compilateur permettant de voir le code AS original.

## Concept

Le compilateur AssemblyScript génère des **source maps** (fichiers `.wasm.map`) qui permettent aux DevTools du navigateur d'afficher le code source AssemblyScript original lors du débogage, plutôt que le bytecode WASM brut.

## Configuration dans asconfig.json

```json
{
  "targets": {
    "debug": {
      "outFile": "build/debug.wasm",
      "sourceMap": true,
      "debug": true
    }
  }
}
```

### Options clés

| Option            | Description                                 |
| ----------------- | ------------------------------------------- |
| `sourceMap: true` | Génère un fichier `.wasm.map`               |
| `debug: true`     | Préserve les noms de fonctions et variables |

## Utilisation

### 1. Compiler en mode debug

```bash
npm run asbuild:debug
```

Cela génère :

- `build/debug.wasm` - Le module compilé
- `build/debug.wasm.map` - Les source maps

### 2. Déboguer dans Chrome DevTools

1. Ouvrir l'onglet **Sources** dans DevTools
2. Naviguer vers le fichier `.ts` original dans l'arborescence
3. Poser des **breakpoints** directement dans le code AssemblyScript
4. Inspecter les variables locales et la pile d'appels

## Fichiers générés

```
build/
├── debug.wasm          # Module WASM avec métadonnées debug
├── debug.wasm.map      # Source map pointant vers les .ts
├── debug.wat           # Version texte (optionnel)
└── debug.js            # Bindings JavaScript
```

## Ressources

- [AssemblyScript - Debugging](https://www.assemblyscript.org/debugging.html)
- [Chrome DevTools - WebAssembly Debugging](https://developer.chrome.com/docs/devtools/wasm/)
