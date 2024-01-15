(module
;; Limitation: We can import only one memory.
;; Here the memory is imported from the JS World.
    (import "js" "memory" (memory 1))
    (import "console" "log" (func $log (param i32 i32)))
    (data (i32.const 0) "Hello World from WAT!")

    (func (export "writeHello")
        i32.const 0  ;; pass offset 0 to log
        i32.const 21  ;; pass length 21 to log
        call $log
    )
)