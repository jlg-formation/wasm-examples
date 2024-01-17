(module
  (type $return_i32 (func (result f32)))
  (import "js" "table" (table 2 funcref))
  (func $pi (result f32) f32.const 3.14)
  (func $e (result f32) f32.const 2.71)
  (elem (i32.const 0) $pi $e)

  (func (export "callByIndex") (param $i i32) (result f32)
    local.get $i
    call_indirect (type $return_i32)
  )
)
