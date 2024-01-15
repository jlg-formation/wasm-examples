(module
    (import "console" "log" (func $log (param f64)))
    (global $pi (import "js" "global") f64)

    (func $showPi (export "showPi") 
        global.get $pi
        call $log
    )
)