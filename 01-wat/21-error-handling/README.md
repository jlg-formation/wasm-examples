# 21-error-handling - Gestion des erreurs WebAssembly

> **Question QCM associée:** runtime_q10 - Gestion des erreurs WASM

## Concept

L'API JavaScript WebAssembly définit trois types d'erreurs spécifiques :

| Erreur         | Quand ?                            | Exemple                          |
| -------------- | ---------------------------------- | -------------------------------- |
| `CompileError` | Module invalide (binaire malformé) | Magic number incorrect           |
| `LinkError`    | Imports non satisfaits             | Fonction importée manquante      |
| `RuntimeError` | Erreur pendant l'exécution         | `unreachable`, division par zéro |

## Hiérarchie des erreurs

```
Error
└── WebAssembly.CompileError   // Compilation échouée
└── WebAssembly.LinkError      // Liaison échouée
└── WebAssembly.RuntimeError   // Exécution échouée
```

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
=== Test 1: CompileError ===
✅ CompileError attrapé: WebAssembly.compile(): ...

=== Test 2: LinkError ===
✅ LinkError attrapé: WebAssembly.instantiate(): ...

=== Test 3: RuntimeError ===
✅ RuntimeError attrapé: unreachable
```

## Références

- [MDN - WebAssembly Errors](https://developer.mozilla.org/en-US/docs/WebAssembly/JavaScript_interface/Exception)
