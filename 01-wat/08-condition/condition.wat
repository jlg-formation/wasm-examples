(module
    (func (export "getSign") (param $input i32) (result i32)
        (local.get $input)
        i32.eqz
        if
            i32.const 0 ;; return 0
            return
        end

        (local.get $input)
        i32.const 0
        i32.gt_s (if (then i32.const 1 return)) ;; return 1

        i32.const -1 ;; return -1
    )
)