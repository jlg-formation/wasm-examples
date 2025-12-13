;; feature-detect.wat - Module minimal pour tester la détection
;;
;; Ce module est utilisé pour vérifier que WebAssembly fonctionne.

(module
    ;; Fonction simple pour confirmer le support
    (func $isSupported (export "isSupported") (result i32)
        (i32.const 1)  ;; Retourne true
    )

    ;; Fonction i64 pour tester le support BigInt
    (func $testI64 (export "testI64") (result i64)
        (i64.const 42)
    )
)
