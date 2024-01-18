(module
    ;; Here we forgot to name thee fist parameter.
    ;; The only way to reference it is by a number (parameter start at 0).
    ;; Even if the parameter is named (ex: $b) it can be referred by its index number.
    (func $integer_add (export "integerAdd") (param  i32) (param $b i32) (result i32)
        (i32.add (local.get 0) (local.get 1))
    )
    (func $float_add (export "floatAdd") (param $a f64) (param $b f64) (result f64)
        local.get $a
        local.get $b
        f64.add
    )
)