;; valid-module.wat - Module valide sans imports pour tests
;;
;; Utilisé pour démontrer RuntimeError uniquement

(module
    ;; Fonction qui déclenche un trap avec unreachable
    (func $triggerTrap (export "triggerTrap")
        unreachable  ;; Déclenche RuntimeError
    )

    ;; Fonction normale
    (func $ok (export "ok") (result i32)
        (i32.const 42)
    )
)
