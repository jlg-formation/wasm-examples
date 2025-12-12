;; binary.wat - Module minimal pour examiner la structure binaire WASM
;;
;; Ce module minimal permet d'examiner les 8 premiers octets
;; d'un fichier .wasm :
;;   - Magic number: 0x00 0x61 0x73 0x6D ("\0asm")
;;   - Version: 0x01 0x00 0x00 0x00 (version 1)

(module
    ;; Une fonction simple pour avoir un module valide
    (func $noop (export "noop"))
)
