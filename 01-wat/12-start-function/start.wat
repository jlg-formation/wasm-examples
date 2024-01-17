(module
    (import "console" "log" (func $log))
    (start $start)
    (func $start 
        call $log
    )
)