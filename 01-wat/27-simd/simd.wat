;; simd.wat - Démonstration SIMD avec des vecteurs i32x4

(module
    (memory (export "memory") 1)

    ;; Additionne deux vecteurs de 4 entiers 32 bits stockés en mémoire.
    ;; left, right et dest sont des offsets en octets dans la mémoire WASM.
    (func $add_vectors (export "addVectors")
        (param $left i32)
        (param $right i32)
        (param $dest i32)
        (v128.store
            (local.get $dest)
            (i32x4.add
                (v128.load (local.get $left))
                (v128.load (local.get $right))
            )
        )
    )

    ;; Multiplie deux vecteurs de 4 flottants 32 bits stockés en mémoire.
    (func $mul_f32_vectors (export "mulF32Vectors")
        (param $left i32)
        (param $right i32)
        (param $dest i32)
        (v128.store
            (local.get $dest)
            (f32x4.mul
                (v128.load (local.get $left))
                (v128.load (local.get $right))
            )
        )
    )

    ;; Replie un vecteur i32x4 vers un scalaire pour obtenir une somme simple.
    (func $sum_lanes (export "sumLanes") (param $offset i32) (result i32)
        (i32.add
            (i32.add
                (i32x4.extract_lane 0 (v128.load (local.get $offset)))
                (i32x4.extract_lane 1 (v128.load (local.get $offset)))
            )
            (i32.add
                (i32x4.extract_lane 2 (v128.load (local.get $offset)))
                (i32x4.extract_lane 3 (v128.load (local.get $offset)))
            )
        )
    )
)