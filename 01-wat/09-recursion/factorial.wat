(module
    (func $factorial (export "factorial") (param $input i32) (result i32)
        (local.get $input)
        i32.eqz
        if
            i32.const 1 ;; return 1
            return
        end

        (local.get $input) ;; n
        (local.get $input)
        i32.const 1
        i32.sub ;; n-1
        call $factorial ;; (n-1)!
        i32.mul ;; n*((n-1)!)
    )
)