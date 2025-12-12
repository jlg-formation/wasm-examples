(module
    (func $integer_add (export "integerAdd") (param $a i32) (param $b i32) (result i32)
        (i32.add (local.get $a) (local.get $b))
    )
    
    (func $float_add (export "floatAdd") (param $a f64) (param $b f64) (result f64)
        local.get $a
        local.get $b
        f64.add
    )

    (func $interger64_add (export "integer64Add") (param $a i64) (param $b i64) (result i64)
        local.get $a
        local.get $b
        i64.add
    )
)
