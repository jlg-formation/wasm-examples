(module
  (func $transform (export "transform") (param $value i32) (param $seed i32) (result i32)
    local.get $value
    i32.const 1664525
    i32.mul
    local.get $seed
    i32.add
    i32.const 1013904223
    i32.add
    i32.const 2147483647
    i32.and))