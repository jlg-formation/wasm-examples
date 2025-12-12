;; memory-grow.wat - Démonstration de la croissance mémoire
;;
;; Question QCM: Comment augmenter la mémoire d'un module WASM ?
;; Réponse: Avec memory.grow (WAT) ou memory.grow() (JS)

(module
    ;; Déclarer une mémoire de 1 page (64 KB) exportée
    ;; Maximum de 10 pages pour limiter la croissance
    (memory $mem (export "memory") 1 10)

    ;; Retourne la taille actuelle de la mémoire en pages
    (func $getMemorySize (export "getMemorySize") (result i32)
        memory.size
    )

    ;; Augmente la mémoire de N pages
    ;; Retourne l'ancienne taille en pages, ou -1 si échec
    (func $growMemory (export "growMemory") (param $pages i32) (result i32)
        (memory.grow (local.get $pages))
    )

    ;; Écrit une valeur à une adresse donnée
    (func $writeValue (export "writeValue") (param $addr i32) (param $value i32)
        (i32.store (local.get $addr) (local.get $value))
    )

    ;; Lit une valeur à une adresse donnée
    (func $readValue (export "readValue") (param $addr i32) (result i32)
        (i32.load (local.get $addr))
    )
)
