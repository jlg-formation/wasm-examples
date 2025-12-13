# AssemblyScript - Gestion des erreurs (assert et abort)

> **Question QCM associée:** as_q19 - Comment gère-t-on les erreurs et
> exceptions en AssemblyScript ?

## Concept clé

AssemblyScript ne supporte pas `try/catch/finally` car WebAssembly n'a pas
encore de gestion native des exceptions (proposition en cours).

À la place, on utilise :

- **`assert(condition, message?)`** : Vérifie une condition, appelle `abort()`
  si elle est fausse
- **`abort(message?, fileName?, line?, column?)`** : Termine immédiatement
  l'exécution avec une erreur fatale

## Comportement

Quand `assert()` échoue ou `abort()` est appelé :

1. Le runtime WASM déclenche un **trap** (arrêt brutal)
2. JavaScript reçoit une exception `RuntimeError`
3. L'exécution du module est interrompue

## Exécution

```bash
# Compiler
npm install
npm run asbuild

# Exécuter (Node.js)
node wrapper.mjs

# Ouvrir dans le navigateur
# Servir index.html avec un serveur local
```

## Fichiers

- `assembly/index.ts` : Code AssemblyScript avec assert/abort
- `wrapper.mjs` : Test Node.js avec gestion des erreurs
- `index.html` : Démonstration interactive dans le navigateur
