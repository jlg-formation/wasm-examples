(module
    ;; this is a monoline comment 
    (func $integer_add (export "integerAdd") (param $a i32) (param $b i32) (result i32)
        (i32.add (local.get $a) (local.get $b))
    )
    (; and this is 
    a multiline comment ;)
    (func $float_add (export "floatAdd") (param $a f64) (param $b f64) (result f64)
        local.get $a
        local.get $b
        f64.add
    )
)