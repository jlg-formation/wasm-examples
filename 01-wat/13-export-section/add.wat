(module
    (export "integerAdd" (func $integer_add))
    (export "floatAdd" (func $float_add))
    (func $integer_add (param $a i32) (param $b i32) (result i32)
        (i32.add (local.get $a) (local.get $b))
    )
    (func $float_add (param $a f64) (param $b f64) (result f64)
        local.get $a
        local.get $b
        f64.add
    )
)
