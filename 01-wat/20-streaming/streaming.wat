;; streaming.wat - Module simple pour démonstration du streaming
;;
;; Ce module est utilisé pour démontrer WebAssembly.instantiateStreaming()
;; qui compile le module pendant le téléchargement.

(module
    ;; Fonction simple pour vérifier que le module fonctionne
    (func $add (export "add") (param $a i32) (param $b i32) (result i32)
        (i32.add (local.get $a) (local.get $b))
    )

    ;; Fonction pour retourner une constante
    (func $getAnswer (export "getAnswer") (result i32)
        (i32.const 42)
    )
)
