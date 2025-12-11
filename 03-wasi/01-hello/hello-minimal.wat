(module
  ;; Import WASI fd_write function
  ;; fd_write(fd: i32, iovs: i32, iovs_len: i32, nwritten: i32) -> i32
  (import "wasi_snapshot_preview1" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))

  ;; Memory export (required by WASI)
  (memory (export "memory") 1)

  ;; Store "Hello, world!\n" at memory offset 8
  (data (i32.const 8) "Hello, world!\n")

  ;; _start is the WASI entry point
  (func (export "_start")
    ;; iov structure at offset 0:
    ;; - iov_base (i32): pointer to string = 8
    ;; - iov_len (i32): length of string = 14
    (i32.store (i32.const 0) (i32.const 8))   ;; iov_base = 8
    (i32.store (i32.const 4) (i32.const 14))  ;; iov_len = 14 (length of "Hello, world!\n")

    ;; Call fd_write(stdout=1, iovs=0, iovs_len=1, nwritten=24)
    (call $fd_write
      (i32.const 1)   ;; fd: stdout
      (i32.const 0)   ;; iovs: pointer to iov array
      (i32.const 1)   ;; iovs_len: number of iovs
      (i32.const 24)  ;; nwritten: where to store bytes written
    )
    drop  ;; ignore return value
  )
)
