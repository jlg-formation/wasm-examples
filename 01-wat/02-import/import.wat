(module
    ;; Import 3 functions from the JS world.
    (import "hello" "log" (func $log (param f64)))
    (import "world" "cos" (func $cos (param f64) (result f64)))
    (import "world" "sin" (func $sin (param f64) (result f64)))
    (func 
        $logTan 
        (export "tan") 
        (param $a f64)
        local.get $a
        call $sin
        local.get $a
        call $cos
        f64.div
        call $log
    )
)