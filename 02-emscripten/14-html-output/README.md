# Emscripten - Sortie HTML vs JS

> **Question QCM associée:** em_q20 - Quelle est la différence entre `-o
> app.js` et `-o app.html` ?

## Concept clé

L'extension du fichier de sortie détermine ce qu'Emscripten génère :

| Extension | Fichiers générés              | Usage                    |
| --------- | ----------------------------- | ------------------------ |
| `.js`     | `app.js` + `app.wasm`         | Intégration personnalisée |
| `.html`   | `app.html` + `app.js` + `app.wasm` | Page de test standalone   |

## Sortie `.js` (production)

```bash
emcc app.c -o app.js
```

Génère uniquement le glue code JavaScript. Vous devez créer votre propre HTML
pour l'intégrer.

## Sortie `.html` (développement)

```bash
emcc app.c -o app.html
```

Génère une page HTML complète avec :

- Canvas pour graphiques
- Textarea pour stdout/stderr
- Chargement automatique du module

## Exécution

```bash
# Compiler les deux versions
make build

# Tester la version HTML
make serve
# Puis ouvrir http://localhost:3000/dist/app.html

# Tester la version JS avec un wrapper custom
node wrapper.mjs
```

## Fichiers

- `app.c` : Code source simple
- `dist/app.js` + `dist/app.wasm` : Sortie JS
- `dist/app.html` + `dist/app-html.js` + `dist/app-html.wasm` : Sortie HTML
