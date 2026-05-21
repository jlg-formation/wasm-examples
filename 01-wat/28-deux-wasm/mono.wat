(module
  (func $transform (param $value i32) (param $seed i32) (result i32)
    local.get $value
    i32.const 1664525
    i32.mul
    local.get $seed
    i32.add
    i32.const 1013904223
    i32.add
    i32.const 2147483647
    i32.and)

  (func $run (export "run") (param $iterations i32) (param $seed i32) (result i32)
    (local $index i32)
    (local $acc i32)

    local.get $seed
    local.set $acc

    loop $loop
      local.get $acc
      local.get $seed
      call $transform
      local.get $index
      i32.xor
      local.set $acc

      local.get $index
      i32.const 1
      i32.add
      local.tee $index
      local.get $iterations
      i32.lt_s
      br_if $loop
    end

    local.get $acc))