# AssemblyScript - Imports externes (@external)

> **Question QCM:** as_q16 (@external import)

## Concept

Le décorateur `@external` permet d'importer des fonctions depuis l'environnement
JavaScript dans AssemblyScript. C'est l'équivalent de `import` en WAT.

### Syntaxe

```typescript
// Import depuis le module "env" (par défaut)
@external("env", "log")
declare function log(value: i32): void;

// Import depuis un module personnalisé
@external("console", "logString")
declare function logString(ptr: usize): void;
```

### Points clés

1. **`@external(module, name)`** : Spécifie le module et le nom de la fonction
2. **`declare`** : Indique que la fonction est implémentée à l'extérieur
3. **Types** : Seuls les types WASM sont supportés (i32, i64, f32, f64, v128)

## Fichiers

- `assembly/index.ts` : Code AssemblyScript avec `@external`
- `index.html` : Fournit les fonctions importées via l'objet imports

## Exécution

```bash
npm install
npm run asbuild
npm start
```

Ouvrir http://localhost:3000 dans le navigateur.
