# 24-validate - Validation de modules WebAssembly

> **Question QCM associée:** runtime_q15 - WebAssembly.validate()

## Concept

`WebAssembly.validate()` vérifie si un buffer contient un module WebAssembly valide **sans l'instancier**.

## Utilisation

```javascript
const isValid = WebAssembly.validate(wasmBytes);
// true si le module est valide, false sinon
```

## Cas d'usage

- ✅ Vérifier un module avant de l'instancier
- ✅ Valider des modules uploadés par les utilisateurs
- ✅ Tester la compilation sans exécution
- ✅ Détecter les fichiers corrompus

## Différence avec compile()

| Méthode      | Valide ? | Compile ? | Erreur si invalide  |
| ------------ | -------- | --------- | ------------------- |
| `validate()` | ✅       | ❌        | Retourne `false`    |
| `compile()`  | ✅       | ✅        | Lève `CompileError` |

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
=== Test 1: Module valide ===
Le module est valide: true

=== Test 2: Module invalide (magic number incorrect) ===
Le module est valide: false

=== Test 3: Module vide ===
Le module est valide: false
```

## Références

- [MDN - WebAssembly.validate()](https://developer.mozilla.org/en-US/docs/WebAssembly/JavaScript_interface/validate_static)
