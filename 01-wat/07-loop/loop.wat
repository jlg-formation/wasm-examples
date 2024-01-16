(module
    (import "console" "log" (func $log (param i32)))
    (func (export "loop") (param $start i32) (param $end i32)
        (local $i i32) ;; create a local variable named $var
        (local.set $i (local.get $start))  ;; set $var to 10
        (
            loop $my_loop
            ;; print $i
            local.get $i
            call $log

            ;; add one to $i
            local.get $i
            i32.const 1
            i32.add
            local.set $i

            ;; if $i is less than $end branch to loop
            local.get $i
            local.get $end
            i32.lt_s
            br_if $my_loop
        )
    )
)