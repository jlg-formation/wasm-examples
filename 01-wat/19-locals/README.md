# 19-locals - Variables locales en WAT

> **Question QCM associée:** wat_q17 - Comment déclare-t-on une variable locale en WAT ?

## Concept

En WAT, les variables locales sont déclarées avec l'instruction `local` dans une fonction.
Elles sont accessibles via `local.get` et modifiables via `local.set` ou `local.tee`.

## Syntaxe

```wat
(func $example
    ;; Déclaration de variables locales
    (local $counter i32)      ;; Variable locale nommée
    (local $temp f64)         ;; Autre variable locale
    (local i32 i32)           ;; Deux variables anonymes i32

    ;; Utilisation
    (local.set $counter (i32.const 10))  ;; Assigner une valeur
    (local.get $counter)                  ;; Lire la valeur
    (local.tee $counter (i32.const 5))   ;; Assigner ET retourner la valeur
)
```

## Instructions

| Instruction | Description                               |
| ----------- | ----------------------------------------- |
| `local`     | Déclare une variable locale               |
| `local.get` | Lit la valeur d'une variable locale       |
| `local.set` | Écrit une valeur dans une variable locale |
| `local.tee` | Écrit ET laisse la valeur sur la pile     |

## Différence param vs local

- **`param`** : Paramètre de fonction (fourni par l'appelant)
- **`local`** : Variable locale (initialisée à 0)

## Exécution

```bash
make build
make run
```

## Résultat attendu

```
swap(10, 20) = [20, 10]
sum_with_accumulator(5) = 15
```

## Références

- [WAT Local Variables](https://developer.mozilla.org/en-US/docs/WebAssembly/Reference/Variables)
