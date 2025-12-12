;; error-handling.wat - Module pour démontrer les erreurs runtime
;;
;; Ce module contient des fonctions qui déclenchent des RuntimeError
;; pour démontrer la gestion des erreurs en JavaScript.

(module
    ;; Import requis pour démontrer LinkError
    (import "env" "requiredFunction" (func $required))
    
    ;; Fonction qui déclenche un trap avec unreachable
    (func $triggerTrap (export "triggerTrap")
        unreachable  ;; Déclenche RuntimeError
    )

    ;; Fonction normale pour vérifier que le module fonctionne
    (func $ok (export "ok") (result i32)
        (i32.const 42)
    )
)
