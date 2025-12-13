# Emscripten - Debug avec Source Maps

> **Questions QCM associées:**
>
> - em_q15 - Comment déboguer du code C/C++ compilé avec Emscripten ?
> - port_q16 - Comment déboguer une librairie portée vers WASM ?

## Concept clé

Emscripten peut générer des **source maps** permettant de déboguer le code C/C++
original directement dans le navigateur.

## Options de debug

| Flag               | Description                                 |
| ------------------ | ------------------------------------------- |
| `-g`               | Inclut les symboles de debug (basique)      |
| `-g3`              | Debug complet avec noms de variables        |
| `-gsource-map`     | Génère un fichier .wasm.map (source map)    |
| `-gseparate-dwarf` | DWARF dans fichier séparé (Chrome DevTools) |
| `-sASSERTIONS=1`   | Active les assertions runtime               |
| `-sASSERTIONS=2`   | Assertions détaillées                       |
| `-sSAFE_HEAP=1`    | Vérifie les accès mémoire                   |

## Exécution

```bash
# Compiler en mode debug
make build-debug

# Compiler en mode release (pour comparaison)
make build-release

# Servir localement (requis pour source maps)
make serve
# Ouvrir http://localhost:8080
```

## Debug dans Chrome DevTools

1. Ouvrir les DevTools (F12)
2. Aller dans l'onglet "Sources"
3. Activer "Enable JavaScript source maps" dans Settings
4. Le code C/C++ apparaît dans les sources !

## Fichiers

- `debug.c` : Code C avec bugs volontaires pour tester le debug
- `Makefile` : Compilation debug vs release
- `index.html` : Interface pour tester dans le navigateur
