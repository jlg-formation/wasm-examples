;; bigint.wat - Démonstration des types i64 avec BigInt
;;
;; Question QCM: Comment JavaScript gère-t-il les types i64 de WebAssembly ?
;; Réponse: JavaScript utilise BigInt pour représenter les i64

(module
    ;; Addition de deux i64
    (func $add64 (export "add64") (param $a i64) (param $b i64) (result i64)
        (i64.add (local.get $a) (local.get $b))
    )

    ;; Multiplication de deux i64
    (func $mul64 (export "mul64") (param $a i64) (param $b i64) (result i64)
        (i64.mul (local.get $a) (local.get $b))
    )

    ;; Retourne un grand nombre (au-delà de Number.MAX_SAFE_INTEGER)
    ;; MAX_SAFE_INTEGER = 9007199254740991
    ;; On retourne 9007199254740993 (MAX_SAFE_INTEGER + 2)
    (func $getLargeNumber (export "getLargeNumber") (result i64)
        (i64.const 9007199254740993)
    )

    ;; Factorielle avec i64 (peut calculer des valeurs plus grandes)
    (func $factorial64 (export "factorial64") (param $n i64) (result i64)
        (if (result i64) (i64.le_s (local.get $n) (i64.const 1))
            (then (i64.const 1))
            (else
                (i64.mul
                    (local.get $n)
                    (call $factorial64 (i64.sub (local.get $n) (i64.const 1)))
                )
            )
        )
    )
)
