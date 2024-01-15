(module
    (memory 1)
    (data (i32.const 0) "\00\01\02\05\08\0D\15\22\37")

    (func (export "fibonacciGetAfter") (param $index i32) (result i32)
        local.get $index
        i32.load8_u
    )
)