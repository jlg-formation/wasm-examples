;; validate.wat - Module simple pour tester WebAssembly.validate()
;;
;; Ce module est utilisé pour démontrer la validation de modules.

(module
    ;; Une fonction minimale pour avoir un module valide
    (func $noop (export "noop"))
)
