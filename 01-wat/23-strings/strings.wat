;; strings.wat - Manipulation de chaînes via la mémoire
;;
;; Question QCM: Comment passer une chaîne de caractères à WASM ?
;; Réponse: Via la mémoire partagée (adresse + longueur)

(module
    ;; Mémoire partagée pour les chaînes
    (memory $mem (export "memory") 1)

    ;; Données initialisées : une chaîne stockée en mémoire
    ;; "Hello from WASM" en UTF-8 à l'offset 256
    (data (i32.const 256) "Hello from WASM")

    ;; Retourne l'offset de la chaîne pré-stockée
    (func $getStringOffset (export "getStringOffset") (result i32)
        (i32.const 256)
    )

    ;; Retourne la longueur de la chaîne pré-stockée
    (func $getStringLength (export "getStringLength") (result i32)
        (i32.const 15)  ;; "Hello from WASM" = 15 caractères
    )

    ;; Calcule la longueur d'une chaîne à partir d'une adresse
    ;; (cherche le premier octet nul, style C)
    (func $strlen (export "strlen") (param $ptr i32) (result i32)
        (local $len i32)
        (local.set $len (i32.const 0))

        (block $break
            (loop $continue
                ;; Si l'octet courant est 0, sortir
                (br_if $break
                    (i32.eqz
                        (i32.load8_u (i32.add (local.get $ptr) (local.get $len)))
                    )
                )
                ;; Incrémenter la longueur
                (local.set $len (i32.add (local.get $len) (i32.const 1)))
                ;; Continuer
                (br $continue)
            )
        )

        (local.get $len)
    )

    ;; Convertit une chaîne en majuscules (modifie en place)
    (func $toUpperCase (export "toUpperCase") (param $ptr i32) (param $len i32)
        (local $i i32)
        (local $char i32)

        (local.set $i (i32.const 0))

        (block $break
            (loop $continue
                ;; Si i >= len, sortir
                (br_if $break (i32.ge_u (local.get $i) (local.get $len)))

                ;; Charger le caractère
                (local.set $char
                    (i32.load8_u (i32.add (local.get $ptr) (local.get $i)))
                )

                ;; Si c'est une minuscule (97-122), convertir en majuscule
                (if (i32.and
                        (i32.ge_u (local.get $char) (i32.const 97))
                        (i32.le_u (local.get $char) (i32.const 122))
                    )
                    (then
                        (i32.store8
                            (i32.add (local.get $ptr) (local.get $i))
                            (i32.sub (local.get $char) (i32.const 32))
                        )
                    )
                )

                ;; Incrémenter i
                (local.set $i (i32.add (local.get $i) (i32.const 1)))
                (br $continue)
            )
        )
    )
)
