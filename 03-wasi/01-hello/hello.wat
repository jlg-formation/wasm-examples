(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "environ_get" (func (;0;) (type 1)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func (;1;) (type 1)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;2;) (type 5)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;3;) (type 2)))
  (func (;4;) (type 0))
  (func (;5;) (type 0)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get 1
        i32.const 1054976
        i32.add
        i32.load
        br_if 0 (;@2;)
        global.get 1
        i32.const 1054976
        i32.add
        i32.const 1
        i32.store
        call 99
        call 4
        call 16
        local.set 0
        call 105
        local.get 0
        br_if 1 (;@1;)
        return
      end
      unreachable
    end
    local.get 0
    call 96
    unreachable)
  (func (;6;) (type 2) (param i32)
    local.get 0
    call_indirect (type 0))
  (func (;7;) (type 0)
    (local i32 i32 i64 i64 i64 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 6
    i32.store offset=12
    local.get 0
    i32.const 1052468
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load8_u offset=1055032
                    br_table 0 (;@8;) 0 (;@8;) 3 (;@5;) 1 (;@7;) 0 (;@8;)
                  end
                  i32.const 0
                  i32.const 2
                  i32.store8 offset=1055032
                  i32.const 1024
                  call 117
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 0
                  i32.const 3
                  i32.store8 offset=1055032
                  i32.const 0
                  local.get 1
                  i32.store offset=1055016
                  i32.const 0
                  i64.const 4398046511104
                  i64.store offset=1055008
                  i32.const 0
                  i64.const 0
                  i64.store offset=1054992
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1055024
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055020
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1055004
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055000
                end
                block  ;; label = @7
                  i32.const 0
                  i64.load offset=1055056
                  local.tee 2
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.load offset=1055064
                  local.set 3
                  loop  ;; label = @8
                    local.get 3
                    i64.const -1
                    i64.eq
                    br_if 4 (;@4;)
                    i32.const 0
                    local.get 3
                    i64.const 1
                    i64.add
                    local.tee 2
                    i32.const 0
                    i64.load offset=1055064
                    local.tee 4
                    local.get 4
                    local.get 3
                    i64.eq
                    local.tee 1
                    select
                    i64.store offset=1055064
                    local.get 4
                    local.set 3
                    local.get 1
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 2
                  i64.store offset=1055056
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 0
                    i64.load offset=1054992
                    i64.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load8_u offset=1055004
                    local.set 5
                    i32.const 1
                    local.set 1
                    i32.const 0
                    i32.const 1
                    i32.store8 offset=1055004
                    local.get 0
                    local.get 5
                    i32.store8 offset=32
                    local.get 5
                    br_if 5 (;@3;)
                    i32.const 0
                    local.get 2
                    i64.store offset=1054992
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1055000
                  local.tee 1
                  i32.const -1
                  i32.eq
                  br_if 5 (;@2;)
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                end
                i32.const 0
                local.get 1
                i32.store offset=1055000
                local.get 0
                i32.const 16
                i32.add
                i32.const 1054992
                i32.const 1048576
                i32.const 14
                call 8
                i32.const 0
                i32.const 0
                i32.load offset=1055000
                i32.const -1
                i32.add
                local.tee 1
                i32.store offset=1055000
                block  ;; label = @7
                  local.get 1
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.const 0
                  i64.store offset=1054992
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1055004
                end
                local.get 0
                i32.load8_u offset=16
                i32.const 4
                i32.ne
                br_if 5 (;@1;)
                local.get 0
                i32.const 48
                i32.add
                global.set 0
                return
              end
              i32.const 1
              i32.const 1024
              call 9
              unreachable
            end
            i32.const 1050886
            i32.const 113
            i32.const 1050828
            call 10
            unreachable
          end
          call 11
          unreachable
        end
        local.get 0
        i32.const 32
        i32.add
        call 12
        unreachable
      end
      call 13
      unreachable
    end
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=24
    local.get 0
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 0
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    i32.const 1048809
    local.get 0
    i32.const 32
    i32.add
    i32.const 1051112
    call 10
    unreachable)
  (func (;8;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load offset=16
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const -1
                      i32.store offset=16
                      local.get 3
                      local.set 5
                      local.get 3
                      local.set 6
                      block  ;; label = @10
                        local.get 3
                        local.get 2
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.get 2
                        i32.sub
                        local.tee 7
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 3
                        local.get 7
                        i32.sub
                        i32.const 7
                        i32.and
                        local.tee 8
                        i32.sub
                        local.set 5
                        local.get 3
                        local.get 8
                        i32.lt_u
                        br_if 9 (;@1;)
                        local.get 7
                        local.set 6
                      end
                      local.get 1
                      i32.const 20
                      i32.add
                      local.set 9
                      i32.const 0
                      local.get 5
                      i32.sub
                      local.set 10
                      local.get 2
                      i32.const -1
                      i32.add
                      local.set 11
                      local.get 3
                      local.set 7
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 10
                            local.get 7
                            i32.add
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 5
                                local.tee 7
                                local.get 6
                                i32.le_u
                                br_if 1 (;@13;)
                                local.get 7
                                i32.const -8
                                i32.add
                                local.set 5
                                i32.const 16843008
                                local.get 2
                                local.get 7
                                i32.add
                                local.tee 8
                                i32.const -8
                                i32.add
                                i32.load
                                local.tee 10
                                i32.const 168430090
                                i32.xor
                                i32.sub
                                local.get 10
                                i32.or
                                i32.const 16843008
                                local.get 8
                                i32.const -4
                                i32.add
                                i32.load
                                local.tee 8
                                i32.const 168430090
                                i32.xor
                                i32.sub
                                local.get 8
                                i32.or
                                i32.and
                                i32.const -2139062144
                                i32.and
                                i32.const -2139062144
                                i32.eq
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 7
                            local.get 3
                            i32.gt_u
                            br_if 4 (;@8;)
                            loop  ;; label = @13
                              local.get 7
                              local.tee 8
                              i32.eqz
                              br_if 8 (;@5;)
                              local.get 8
                              i32.const -1
                              i32.add
                              local.tee 7
                              local.get 2
                              i32.add
                              i32.load8_u
                              i32.const 10
                              i32.ne
                              br_if 0 (;@13;)
                              br 3 (;@10;)
                            end
                          end
                          local.get 11
                          local.get 7
                          i32.add
                          local.set 8
                          local.get 7
                          i32.const -1
                          i32.add
                          local.tee 12
                          local.set 7
                          local.get 8
                          i32.load8_u
                          i32.const 10
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 10
                        local.get 12
                        i32.add
                        i32.const 1
                        i32.add
                        local.get 5
                        i32.add
                        local.set 8
                      end
                      local.get 3
                      local.get 8
                      i32.lt_u
                      br_if 2 (;@7;)
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=28
                        local.tee 7
                        br_if 0 (;@10;)
                        local.get 8
                        i32.eqz
                        br_if 7 (;@3;)
                        local.get 2
                        local.set 10
                        local.get 8
                        local.set 5
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 1
                              local.get 10
                              local.get 5
                              call 92
                              local.tee 7
                              i32.const -1
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 0
                              i32.store8 offset=11
                              local.get 4
                              i32.const 0
                              i32.store16 offset=9 align=1
                              local.get 4
                              i32.const 0
                              i32.store8 offset=8
                              local.get 4
                              i32.const 0
                              i32.load offset=1055076
                              local.tee 7
                              i32.store offset=12
                              local.get 7
                              i32.const 27
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 7
                              br 9 (;@4;)
                            end
                            local.get 4
                            local.get 7
                            i32.store offset=12
                            local.get 4
                            i32.const 4
                            i32.store8 offset=8
                            block  ;; label = @13
                              local.get 7
                              br_if 0 (;@13;)
                              i32.const 1052536
                              local.set 7
                              br 9 (;@4;)
                            end
                            local.get 5
                            local.get 7
                            i32.lt_u
                            br_if 6 (;@6;)
                            local.get 10
                            local.get 7
                            i32.add
                            local.set 10
                            local.get 5
                            local.get 7
                            i32.sub
                            local.set 5
                          end
                          local.get 5
                          br_if 0 (;@11;)
                          br 8 (;@3;)
                        end
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 8
                          local.get 9
                          i32.load
                          local.get 7
                          i32.sub
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 8
                          i32.add
                          local.get 9
                          local.get 2
                          local.get 8
                          call 91
                          local.get 4
                          i32.load8_u offset=8
                          i32.const 4
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 0
                          local.get 4
                          i64.load offset=8
                          i64.store align=4
                          br 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load offset=24
                          local.get 7
                          i32.add
                          local.get 2
                          local.get 8
                          memory.copy
                        end
                        local.get 1
                        local.get 7
                        local.get 8
                        i32.add
                        i32.store offset=28
                      end
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 9
                      call 17
                      local.get 4
                      i32.load8_u offset=8
                      i32.const 4
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 0
                      local.get 4
                      i64.load offset=8
                      i64.store align=4
                      br 7 (;@2;)
                    end
                    i32.const 1052880
                    call 18
                    unreachable
                  end
                  i32.const 0
                  local.get 7
                  local.get 3
                  i32.const 1050740
                  call 35
                  unreachable
                end
                i32.const 1051363
                i32.const 19
                i32.const 1052848
                call 10
                unreachable
              end
              local.get 7
              local.get 5
              local.get 5
              i32.const 1052896
              call 35
              unreachable
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=28
                  local.tee 7
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 1
                i32.load offset=24
                local.get 7
                i32.add
                i32.const -1
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                i32.const 8
                i32.add
                local.get 9
                call 17
                local.get 4
                i32.load8_u offset=8
                i32.const 4
                i32.ne
                br_if 1 (;@5;)
                local.get 1
                i32.load offset=28
                local.set 7
              end
              block  ;; label = @6
                local.get 3
                local.get 9
                i32.load
                local.get 7
                i32.sub
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 9
                local.get 2
                local.get 3
                call 91
                br 4 (;@2;)
              end
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=24
                local.get 7
                i32.add
                local.get 2
                local.get 3
                memory.copy
              end
              local.get 0
              i32.const 4
              i32.store8
              local.get 1
              local.get 7
              local.get 3
              i32.add
              i32.store offset=28
              br 3 (;@2;)
            end
            local.get 0
            local.get 4
            i64.load offset=8
            i64.store align=4
            br 2 (;@2;)
          end
          local.get 7
          i64.load
          local.tee 13
          i64.const -4294967041
          i64.and
          i64.const 34359738368
          i64.eq
          br_if 0 (;@3;)
          local.get 13
          i64.const 255
          i64.and
          i64.const 4
          i64.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 13
          i64.store align=4
          br 1 (;@2;)
        end
        local.get 2
        local.get 8
        i32.add
        local.set 2
        block  ;; label = @3
          local.get 3
          local.get 8
          i32.sub
          local.tee 7
          local.get 1
          i32.load offset=20
          local.get 1
          i32.load offset=28
          local.tee 8
          i32.sub
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 9
          local.get 2
          local.get 7
          call 91
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=24
          local.get 8
          i32.add
          local.get 2
          local.get 7
          memory.copy
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 8
        local.get 7
        i32.add
        i32.store offset=28
      end
      local.get 1
      local.get 1
      i32.load offset=16
      i32.const 1
      i32.add
      i32.store offset=16
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 5
    local.get 3
    local.get 3
    i32.const 1050756
    call 35
    unreachable)
  (func (;9;) (type 4) (param i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 20
      unreachable
    end
    call 21
    unreachable)
  (func (;10;) (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.const 1
    i32.store16 offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 12
    i32.add
    i32.store offset=20
    local.get 3
    i32.const 20
    i32.add
    call 28
    unreachable)
  (func (;11;) (type 0)
    i32.const 1052720
    i32.const 111
    i32.const 1052776
    call 10
    unreachable)
  (func (;12;) (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 1050184
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call 23
    unreachable)
  (func (;13;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 38
    i32.store offset=4
    local.get 0
    i32.const 1052272
    i32.store
    local.get 0
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    i32.const 1048833
    local.get 0
    i32.const 8
    i32.add
    i32.const 1052312
    call 10
    unreachable)
  (func (;14;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 1040
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load8_u
                    br_table 0 (;@8;) 3 (;@5;) 2 (;@6;) 1 (;@7;) 0 (;@8;)
                  end
                  local.get 2
                  local.get 0
                  i32.load offset=4
                  local.tee 0
                  i32.store
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.const 0
                  i32.const 1024
                  memory.fill
                  local.get 0
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.const 1024
                  call 113
                  i32.const 0
                  i32.lt_s
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    local.get 2
                    i32.const 16
                    i32.add
                    call 114
                    local.tee 3
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 0
                    br 6 (;@2;)
                  end
                  i32.const 0
                  local.get 3
                  i32.const -7
                  i32.add
                  local.tee 0
                  local.get 0
                  local.get 3
                  i32.gt_u
                  select
                  local.set 4
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.get 2
                  i32.const 16
                  i32.add
                  i32.sub
                  local.set 5
                  i32.const 0
                  local.set 0
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            i32.const 16
                            i32.add
                            local.get 0
                            i32.add
                            i32.load8_u
                            local.tee 6
                            i32.extend8_s
                            local.tee 7
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 0
                            i32.sub
                            i32.const 3
                            i32.and
                            br_if 1 (;@11;)
                            local.get 0
                            local.get 4
                            i32.ge_u
                            br_if 2 (;@10;)
                            loop  ;; label = @13
                              local.get 2
                              i32.const 16
                              i32.add
                              local.get 0
                              i32.add
                              local.tee 6
                              i32.const 4
                              i32.add
                              i32.load
                              local.get 6
                              i32.load
                              i32.or
                              i32.const -2139062144
                              i32.and
                              br_if 3 (;@10;)
                              local.get 0
                              i32.const 8
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.lt_u
                              br_if 0 (;@13;)
                              br 3 (;@10;)
                            end
                          end
                          i32.const 257
                          local.set 8
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 6
                                              i32.load8_u offset=1050482
                                              i32.const -2
                                              i32.add
                                              br_table 0 (;@21;) 1 (;@20;) 2 (;@19;) 8 (;@13;)
                                            end
                                            local.get 0
                                            i32.const 1
                                            i32.add
                                            local.tee 6
                                            local.get 3
                                            i32.lt_u
                                            br_if 2 (;@18;)
                                            i32.const 0
                                            local.set 8
                                            br 7 (;@13;)
                                          end
                                          local.get 0
                                          i32.const 1
                                          i32.add
                                          local.tee 9
                                          local.get 3
                                          i32.lt_u
                                          br_if 2 (;@17;)
                                          i32.const 0
                                          local.set 8
                                          br 6 (;@13;)
                                        end
                                        local.get 0
                                        i32.const 1
                                        i32.add
                                        local.tee 9
                                        local.get 3
                                        i32.lt_u
                                        br_if 2 (;@16;)
                                        i32.const 0
                                        local.set 8
                                        br 5 (;@13;)
                                      end
                                      local.get 2
                                      i32.const 16
                                      i32.add
                                      local.get 6
                                      i32.add
                                      i32.load8_s
                                      i32.const -65
                                      i32.gt_s
                                      br_if 4 (;@13;)
                                      br 5 (;@12;)
                                    end
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    local.get 9
                                    i32.add
                                    i32.load8_s
                                    local.set 9
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 6
                                        i32.const -224
                                        i32.add
                                        br_table 3 (;@15;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 1 (;@17;) 0 (;@18;) 1 (;@17;)
                                      end
                                      local.get 9
                                      i32.const -97
                                      i32.gt_s
                                      br_if 4 (;@13;)
                                      br 3 (;@14;)
                                    end
                                    block  ;; label = @17
                                      local.get 7
                                      i32.const 31
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 12
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 7
                                      i32.const -2
                                      i32.and
                                      i32.const -18
                                      i32.ne
                                      br_if 4 (;@13;)
                                      local.get 9
                                      i32.const -64
                                      i32.lt_s
                                      br_if 3 (;@14;)
                                      br 4 (;@13;)
                                    end
                                    local.get 9
                                    i32.const -64
                                    i32.lt_s
                                    br_if 2 (;@14;)
                                    br 3 (;@13;)
                                  end
                                  local.get 2
                                  i32.const 16
                                  i32.add
                                  local.get 9
                                  i32.add
                                  i32.load8_s
                                  local.set 9
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 6
                                          i32.const -240
                                          i32.add
                                          br_table 1 (;@18;) 0 (;@19;) 0 (;@19;) 0 (;@19;) 2 (;@17;) 0 (;@19;)
                                        end
                                        local.get 7
                                        i32.const 15
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 2
                                        i32.gt_u
                                        br_if 5 (;@13;)
                                        local.get 9
                                        i32.const -64
                                        i32.lt_s
                                        br_if 2 (;@16;)
                                        br 5 (;@13;)
                                      end
                                      local.get 9
                                      i32.const 112
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 48
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      br 4 (;@13;)
                                    end
                                    local.get 9
                                    i32.const -113
                                    i32.gt_s
                                    br_if 3 (;@13;)
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.const 2
                                    i32.add
                                    local.tee 6
                                    local.get 3
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 8
                                    br 3 (;@13;)
                                  end
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    local.get 6
                                    i32.add
                                    i32.load8_s
                                    i32.const -65
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    i32.const 513
                                    local.set 8
                                    br 3 (;@13;)
                                  end
                                  i32.const 0
                                  local.set 8
                                  local.get 0
                                  i32.const 3
                                  i32.add
                                  local.tee 6
                                  local.get 3
                                  i32.ge_u
                                  br_if 2 (;@13;)
                                  local.get 2
                                  i32.const 16
                                  i32.add
                                  local.get 6
                                  i32.add
                                  i32.load8_s
                                  i32.const -65
                                  i32.le_s
                                  br_if 3 (;@12;)
                                  i32.const 769
                                  local.set 8
                                  br 2 (;@13;)
                                end
                                local.get 9
                                i32.const -32
                                i32.and
                                i32.const -96
                                i32.ne
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.set 8
                              local.get 0
                              i32.const 2
                              i32.add
                              local.tee 6
                              local.get 3
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.get 6
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.le_s
                              br_if 1 (;@12;)
                              i32.const 513
                              local.set 8
                            end
                            local.get 2
                            local.get 8
                            i32.store offset=8
                            local.get 2
                            local.get 0
                            i32.store offset=4
                            local.get 2
                            i32.const 4
                            i32.add
                            call 39
                            unreachable
                          end
                          local.get 6
                          i32.const 1
                          i32.add
                          local.set 0
                          br 2 (;@9;)
                        end
                        local.get 0
                        i32.const 1
                        i32.add
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 2
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.add
                        i32.load8_s
                        i32.const 0
                        i32.lt_s
                        br_if 1 (;@9;)
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.ne
                        br_if 0 (;@10;)
                        br 7 (;@3;)
                      end
                    end
                    local.get 0
                    local.get 3
                    i32.lt_u
                    br_if 0 (;@8;)
                    br 5 (;@3;)
                  end
                end
                local.get 0
                i32.load offset=4
                local.tee 0
                i32.load
                local.get 1
                local.get 0
                i32.load offset=4
                i32.load offset=16
                call_indirect (type 1)
                local.set 0
                br 5 (;@1;)
              end
              local.get 1
              local.get 0
              i32.load offset=4
              local.tee 0
              i32.load
              local.get 0
              i32.load offset=4
              call 26
              local.set 0
              br 4 (;@1;)
            end
            local.get 2
            local.get 0
            i32.load8_u offset=1
            i32.const 2
            i32.shl
            local.tee 0
            i32.load offset=1052912
            i32.store offset=8
            local.get 2
            local.get 0
            i32.load offset=1053080
            i32.store offset=4
            local.get 2
            i32.const 2
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 2
            i32.const 4
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store offset=16
            local.get 1
            i32.load
            local.get 1
            i32.load offset=4
            i32.const 1048833
            local.get 2
            i32.const 16
            i32.add
            call 27
            local.set 0
            br 3 (;@1;)
          end
          i32.const 1052684
          i32.const 37
          i32.const 1052704
          call 10
          unreachable
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          call 19
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 2
          i32.const 16
          i32.add
          local.get 3
          memory.copy
          br 1 (;@2;)
        end
        i32.const 1
        local.get 3
        call 9
        unreachable
      end
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 2
      local.get 3
      i32.store offset=4
      local.get 2
      i32.const 3
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 2
      i64.extend_i32_u
      i64.or
      i64.store offset=24
      local.get 2
      i32.const 4
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 2
      i32.const 4
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      local.get 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.const 1049889
      local.get 2
      i32.const 16
      i32.add
      call 27
      local.set 0
      local.get 2
      i32.load offset=4
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      call 120
    end
    local.get 2
    i32.const 1040
    i32.add
    global.set 0
    local.get 0)
  (func (;15;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 26)
  (func (;16;) (type 8) (result i32)
    (local i32 i64 i64 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i64.load offset=1055056
          local.tee 1
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          i32.const 0
          i64.load offset=1055064
          local.set 2
          loop  ;; label = @4
            local.get 2
            i64.const -1
            i64.eq
            br_if 2 (;@2;)
            i32.const 0
            local.get 2
            i64.const 1
            i64.add
            local.tee 1
            i32.const 0
            i64.load offset=1055064
            local.tee 3
            local.get 3
            local.get 2
            i64.eq
            local.tee 4
            select
            i64.store offset=1055064
            local.get 3
            local.set 2
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 0
          local.get 1
          i64.store offset=1055056
        end
        i32.const 0
        local.get 1
        i64.store offset=1055040
        i32.const 5
        call 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1055072
              local.tee 4
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                br_table 0 (;@6;) 3 (;@3;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 0
              i32.const 2
              i32.store8 offset=1055072
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1055032
                  local.tee 4
                  i32.const 3
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      br_table 0 (;@9;) 0 (;@9;) 1 (;@8;) 0 (;@9;)
                    end
                    i32.const 0
                    i32.const 3
                    i32.store8 offset=1055032
                    i32.const 0
                    i64.const 1
                    i64.store offset=1055016
                    i32.const 0
                    i64.const 0
                    i64.store offset=1055008
                    i32.const 0
                    i64.const 0
                    i64.store offset=1054992
                    i32.const 0
                    i32.const 0
                    i32.store8 offset=1055024
                    i32.const 0
                    i32.const 0
                    i32.store8 offset=1055004
                    i32.const 0
                    i32.const 0
                    i32.store offset=1055000
                    br 2 (;@6;)
                  end
                  i32.const 1050886
                  i32.const 113
                  i32.const 1050828
                  call 10
                  unreachable
                end
                block  ;; label = @7
                  i32.const 0
                  i64.load offset=1055056
                  local.tee 1
                  i64.const 0
                  i64.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i64.load offset=1055064
                  local.set 2
                  loop  ;; label = @8
                    local.get 2
                    i64.const -1
                    i64.eq
                    br_if 6 (;@2;)
                    i32.const 0
                    local.get 2
                    i64.const 1
                    i64.add
                    local.tee 1
                    i32.const 0
                    i64.load offset=1055064
                    local.tee 3
                    local.get 3
                    local.get 2
                    i64.eq
                    local.tee 4
                    select
                    i64.store offset=1055064
                    local.get 3
                    local.set 2
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 1
                  i64.store offset=1055056
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 0
                    i64.load offset=1054992
                    i64.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load8_u offset=1055004
                    local.set 5
                    i32.const 1
                    local.set 4
                    i32.const 0
                    i32.const 1
                    i32.store8 offset=1055004
                    local.get 5
                    br_if 2 (;@6;)
                    i32.const 0
                    local.get 1
                    i64.store offset=1054992
                    br 1 (;@7;)
                  end
                  i32.const 0
                  i32.load offset=1055000
                  local.tee 4
                  i32.const -1
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                end
                i32.const 0
                local.get 4
                i32.store offset=1055000
                i32.const 0
                i32.load offset=1055008
                br_if 5 (;@1;)
                i32.const 0
                i32.const -1
                i32.store offset=1055008
                block  ;; label = @7
                  i32.const 0
                  i32.load8_u offset=1055024
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 1055012
                  call 17
                  local.get 0
                  i32.load8_u offset=8
                  i32.const 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=12
                  local.tee 4
                  i32.load
                  local.set 5
                  block  ;; label = @8
                    local.get 4
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.load
                    local.tee 7
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    call_indirect (type 2)
                  end
                  block  ;; label = @8
                    local.get 6
                    i32.load offset=4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    call 120
                  end
                  local.get 4
                  call 120
                end
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1055012
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.load offset=1055016
                  call 120
                end
                i32.const 0
                i64.const 4294967296
                i64.store offset=1055012 align=4
                i32.const 0
                i32.const 0
                i32.load offset=1055008
                i32.const 1
                i32.add
                i32.store offset=1055008
                i32.const 0
                i32.const 0
                i32.load offset=1055000
                i32.const -1
                i32.add
                local.tee 4
                i32.store offset=1055000
                i32.const 0
                i32.const 0
                i32.store8 offset=1055024
                i32.const 0
                i32.const 0
                i32.store offset=1055020
                local.get 4
                br_if 0 (;@6;)
                i32.const 0
                i64.const 0
                i64.store offset=1054992
                i32.const 0
                i32.const 0
                i32.store8 offset=1055004
              end
              i32.const 0
              i32.const 3
              i32.store8 offset=1055072
            end
            local.get 0
            i32.const 16
            i32.add
            global.set 0
            i32.const 0
            return
          end
          i32.const 1050886
          i32.const 113
          i32.const 1052376
          call 10
          unreachable
        end
        i32.const 1050844
        i32.const 85
        i32.const 1052376
        call 10
        unreachable
      end
      call 11
      unreachable
    end
    i32.const 1052476
    call 18
    unreachable)
  (func (;17;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.store8
      return
    end
    local.get 1
    i32.load offset=4
    local.set 3
    i32.const 0
    local.set 4
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1
                local.get 3
                local.get 4
                i32.add
                local.tee 5
                local.get 2
                local.get 4
                i32.sub
                local.tee 6
                call 92
                local.tee 7
                i32.const -1
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                i32.const 0
                i32.store8 offset=12
                i64.const 0
                local.set 8
                local.get 6
                local.set 7
                i32.const 0
                i32.load offset=1055076
                local.tee 9
                i32.const -8
                i32.add
                br_table 1 (;@5;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 2 (;@4;) 4 (;@2;) 2 (;@4;)
              end
              local.get 1
              i32.const 0
              i32.store8 offset=12
            end
            local.get 7
            br_if 1 (;@3;)
            i64.const 2
            local.set 8
            i32.const 1052364
            local.set 9
          end
          local.get 0
          local.get 9
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 8
          i64.or
          i64.store align=4
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 5
              local.get 6
              memory.copy
            end
            local.get 1
            local.get 6
            i32.store offset=8
          end
          return
        end
        local.get 7
        local.get 4
        i32.add
        local.set 4
      end
      local.get 4
      local.get 2
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 4
    i32.store8
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store offset=8
      return
    end
    i32.const 0
    local.get 4
    local.get 2
    i32.const 1052452
    call 35
    unreachable)
  (func (;18;) (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 15
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store
    i32.const 1048833
    local.get 1
    local.get 0
    call 10
    unreachable)
  (func (;19;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        i32.const 4
        local.get 0
        call 125
        local.set 0
        i32.const 0
        local.get 2
        i32.load offset=12
        local.get 0
        select
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      call 117
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;20;) (type 4) (param i32 i32)
    local.get 1
    local.get 0
    call 22
    unreachable)
  (func (;21;) (type 0)
    i32.const 1050185
    i32.const 35
    i32.const 1050204
    call 10
    unreachable)
  (func (;22;) (type 4) (param i32 i32)
    local.get 1
    local.get 0
    call 85
    unreachable)
  (func (;23;) (type 4) (param i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 1050944
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 1050944
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 2
    i32.store offset=20
    local.get 2
    i32.const 1050280
    i32.store offset=16
    local.get 2
    i32.const 65
    i32.store offset=28
    local.get 2
    i32.const 1052224
    i32.store offset=24
    local.get 2
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 2
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 2
    local.get 3
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 2
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 2
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    i32.const 1048750
    local.get 2
    i32.const 32
    i32.add
    i32.const 1052256
    call 10
    unreachable)
  (func (;24;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;25;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 27)
  (func (;26;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 268435456
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load16_u offset=14
                  local.tee 4
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  local.get 1
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 5
                  i32.sub
                  local.tee 6
                  i32.add
                  local.tee 7
                  i32.const 3
                  i32.and
                  local.set 8
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 4
                  block  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    local.get 1
                    local.set 10
                    loop  ;; label = @9
                      local.get 4
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 4
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 7
                    i32.const 2147483644
                    i32.and
                    i32.add
                    local.set 10
                    i32.const 0
                    local.set 9
                    loop  ;; label = @9
                      local.get 9
                      local.get 10
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 9
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 8
                      i32.const -1
                      i32.add
                      local.tee 8
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 7
                  i32.const 2
                  i32.shr_u
                  local.set 6
                  local.get 9
                  local.get 4
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    local.get 5
                    local.set 7
                    local.get 6
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 6
                    i32.const 192
                    local.get 6
                    i32.const 192
                    i32.lt_u
                    select
                    local.tee 11
                    i32.const 3
                    i32.and
                    local.set 12
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 11
                        i32.const 2
                        i32.shl
                        local.tee 13
                        i32.const 1008
                        i32.and
                        local.tee 10
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 9
                        br 1 (;@9;)
                      end
                      local.get 7
                      local.get 10
                      i32.add
                      local.set 5
                      i32.const 0
                      local.set 9
                      local.get 7
                      local.set 10
                      loop  ;; label = @10
                        local.get 10
                        i32.const 12
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 10
                        i32.load
                        local.tee 8
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 8
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 9
                        i32.add
                        i32.add
                        i32.add
                        i32.add
                        local.set 9
                        local.get 10
                        i32.const 16
                        i32.add
                        local.tee 10
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    local.get 11
                    i32.sub
                    local.set 6
                    local.get 7
                    local.get 13
                    i32.add
                    local.set 5
                    local.get 9
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get 9
                    i32.const 16711935
                    i32.and
                    i32.add
                    i32.const 65537
                    i32.mul
                    i32.const 16
                    i32.shr_u
                    local.get 4
                    i32.add
                    local.set 4
                    local.get 12
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 12
                  i32.const 2
                  i32.shl
                  local.set 8
                  local.get 7
                  local.get 11
                  i32.const 252
                  i32.and
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 10
                  i32.const 0
                  local.set 9
                  loop  ;; label = @8
                    local.get 10
                    i32.load
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 9
                    i32.add
                    local.set 9
                    local.get 10
                    i32.const 4
                    i32.add
                    local.set 10
                    local.get 8
                    i32.const -4
                    i32.add
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  i32.const 8
                  i32.shr_u
                  i32.const 16711935
                  i32.and
                  local.get 9
                  i32.const 16711935
                  i32.and
                  i32.add
                  i32.const 65537
                  i32.mul
                  i32.const 16
                  i32.shr_u
                  local.get 4
                  i32.add
                  local.set 4
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 4
                local.get 2
                i32.eqz
                br_if 3 (;@3;)
                local.get 1
                local.set 10
                local.get 2
                local.set 9
                loop  ;; label = @7
                  local.get 4
                  local.get 10
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 4
                  local.get 10
                  i32.const 1
                  i32.add
                  local.set 10
                  local.get 9
                  i32.const -1
                  i32.add
                  local.tee 9
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 1
              local.get 2
              i32.add
              local.set 5
              i32.const 0
              local.set 2
              local.get 1
              local.set 9
              local.get 4
              local.set 8
              loop  ;; label = @6
                local.get 9
                local.tee 10
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 2
                    i32.add
                    local.set 9
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.const 4
                  i32.const 3
                  local.get 9
                  i32.const -17
                  i32.gt_u
                  select
                  i32.add
                  local.set 9
                end
                local.get 9
                local.get 10
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 8
          end
          local.get 4
          local.get 8
          i32.sub
          local.set 4
        end
        local.get 4
        local.get 0
        i32.load16_u offset=12
        local.tee 10
        i32.ge_u
        br_if 0 (;@2;)
        local.get 10
        local.get 4
        i32.sub
        local.set 7
        i32.const 0
        local.set 10
        i32.const 0
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 7
            local.set 6
            br 1 (;@3;)
          end
          local.get 7
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 6
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 4
        local.get 0
        i32.load offset=4
        local.set 8
        local.get 0
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 9
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 5
            local.get 4
            local.get 8
            i32.load offset=16
            call_indirect (type 1)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 9
        local.get 5
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 7
        local.get 6
        i32.sub
        i32.const 65535
        i32.and
        local.set 6
        i32.const 0
        local.set 10
        loop  ;; label = @3
          block  ;; label = @4
            local.get 10
            i32.const 65535
            i32.and
            local.get 6
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          i32.const 1
          local.set 9
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 5
          local.get 4
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 3)
      local.set 9
    end
    local.get 9)
  (func (;27;) (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          local.tee 5
          br_if 1 (;@2;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        local.get 3
        i32.const 1
        i32.shr_u
        local.get 1
        i32.load offset=12
        call_indirect (type 3)
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 6
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 2
        i32.const 1
        i32.add
        local.set 8
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.extend8_s
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 9
                  i32.const 128
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 192
                  i32.ne
                  br_if 3 (;@4;)
                  local.get 4
                  local.get 1
                  i32.store offset=4
                  local.get 4
                  local.get 0
                  i32.store
                  local.get 4
                  i64.const 1610612768
                  i64.store offset=8 align=4
                  local.get 3
                  local.get 7
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 5
                  i32.load
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  call_indirect (type 1)
                  i32.eqz
                  br_if 2 (;@5;)
                  i32.const 1
                  local.set 5
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  local.get 0
                  local.get 8
                  local.get 5
                  i32.const 255
                  i32.and
                  local.tee 5
                  local.get 6
                  call_indirect (type 3)
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 5
                  i32.add
                  local.set 2
                  br 4 (;@3;)
                end
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.const 3
                i32.add
                local.tee 5
                local.get 2
                i32.load16_u offset=1 align=1
                local.tee 2
                local.get 6
                call_indirect (type 3)
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.add
                local.set 2
                br 3 (;@3;)
              end
              i32.const 1
              local.set 5
              br 4 (;@1;)
            end
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1610612768
          local.set 10
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 5
            i32.add
            local.set 8
            local.get 2
            i32.load offset=1 align=1
            local.set 10
          end
          i32.const 0
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 11
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 4
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.add
            local.set 8
            local.get 2
            i32.load16_u align=1
            local.set 9
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.set 2
              br 1 (;@4;)
            end
            local.get 8
            i32.const 2
            i32.add
            local.set 2
            local.get 8
            i32.load16_u align=1
            local.set 7
          end
          block  ;; label = @4
            local.get 5
            i32.const 16
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 11
          end
          block  ;; label = @4
            local.get 5
            i32.const 32
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 9
            i32.const 65535
            i32.and
            i32.const 3
            i32.shl
            i32.add
            i32.load16_u offset=4
            local.set 9
          end
          local.get 4
          local.get 9
          i32.store16 offset=14
          local.get 4
          local.get 11
          i32.store16 offset=12
          local.get 4
          local.get 10
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=4
          local.get 4
          local.get 0
          i32.store
          block  ;; label = @4
            local.get 3
            local.get 7
            i32.const 3
            i32.shl
            i32.add
            local.tee 5
            i32.load
            local.get 4
            local.get 5
            i32.load offset=4
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        i32.load8_u
        local.tee 5
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 5)
  (func (;28;) (type 2) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load align=4
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 2
    i64.store offset=4 align=4
    local.get 1
    i32.const 4
    i32.add
    call 70
    unreachable)
  (func (;29;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        local.get 9
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 8
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 8
              i32.add
              local.set 9
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          local.get 8
                          i32.sub
                          local.tee 10
                          i32.const 7
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 8
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 2
                          local.set 8
                          br 7 (;@4;)
                        end
                        local.get 9
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 0
                        local.get 9
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        local.get 9
                        i32.sub
                        local.set 11
                        i32.const 0
                        local.set 0
                        loop  ;; label = @11
                          local.get 9
                          local.get 0
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 11
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 11
                        local.get 10
                        i32.const -8
                        i32.add
                        local.tee 12
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      i32.const 0
                      local.set 0
                      loop  ;; label = @10
                        local.get 9
                        local.get 0
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 10
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      local.set 8
                      br 5 (;@4;)
                    end
                    local.get 10
                    i32.const -8
                    i32.add
                    local.set 12
                    i32.const 0
                    local.set 11
                  end
                  loop  ;; label = @8
                    i32.const 16843008
                    local.get 9
                    local.get 11
                    i32.add
                    local.tee 0
                    i32.load
                    local.tee 13
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 13
                    i32.or
                    i32.const 16843008
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 0
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 0
                    i32.or
                    i32.and
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 11
                    i32.const 8
                    i32.add
                    local.tee 11
                    local.get 12
                    i32.le_u
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 10
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 8
                  br 3 (;@4;)
                end
                local.get 9
                local.get 11
                i32.add
                local.set 13
                local.get 2
                local.get 11
                i32.sub
                local.get 8
                i32.sub
                local.set 10
                i32.const 0
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 13
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 10
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 8
                  br 3 (;@4;)
                end
                local.get 0
                local.get 11
                i32.add
                local.set 0
              end
              local.get 8
              local.get 0
              i32.add
              local.tee 11
              i32.const 1
              i32.add
              local.set 8
              block  ;; label = @6
                local.get 11
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 9
                local.get 0
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 9
                local.get 8
                local.set 13
                local.get 8
                local.set 0
                br 3 (;@3;)
              end
              local.get 2
              local.get 8
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          local.get 7
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 9
          local.get 7
          local.set 13
          local.get 2
          local.set 0
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 1050772
            i32.const 4
            local.get 3
            i32.load offset=12
            call_indirect (type 3)
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 7
          i32.sub
          local.set 10
          i32.const 0
          local.set 11
          block  ;; label = @4
            local.get 0
            local.get 7
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            local.get 0
            i32.add
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 11
          end
          local.get 1
          local.get 7
          i32.add
          local.set 0
          local.get 5
          local.get 11
          i32.store8
          local.get 13
          local.set 7
          local.get 4
          local.get 0
          local.get 10
          local.get 3
          i32.load offset=12
          call_indirect (type 3)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 6
    end
    local.get 6)
  (func (;30;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1050772
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 3)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 1))
  (func (;31;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1050256
    local.get 1
    local.get 2
    call 27)
  (func (;32;) (type 9) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 43
    i32.const 1114112
    local.get 0
    i32.load offset=8
    local.tee 6
    i32.const 2097152
    i32.and
    local.tee 7
    select
    local.set 8
    local.get 7
    i32.const 21
    i32.shr_u
    i32.const 1
    local.get 1
    select
    local.get 5
    i32.add
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 8388608
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 10
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 7
        local.get 3
        local.set 11
        loop  ;; label = @3
          local.get 10
          local.get 7
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 10
          local.get 7
          i32.const 1
          i32.add
          local.set 7
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          br_if 0 (;@3;)
        end
      end
      local.get 10
      local.get 9
      i32.add
      local.set 9
    end
    local.get 8
    i32.const 45
    local.get 1
    select
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        local.get 0
        i32.load16_u offset=12
        local.tee 8
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              i32.sub
              local.set 13
              i32.const 0
              local.set 7
              i32.const 0
              local.set 8
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 13
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 13
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 8
              end
              local.get 6
              i32.const 2097151
              i32.and
              local.set 1
              local.get 0
              i32.load offset=4
              local.set 9
              local.get 0
              i32.load
              local.set 11
              loop  ;; label = @6
                local.get 7
                i32.const 65535
                i32.and
                local.get 8
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 10
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                local.get 11
                local.get 1
                local.get 9
                i32.load offset=16
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 14
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 10
            local.get 0
            i32.load
            local.tee 11
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 12
            local.get 2
            local.get 3
            call 33
            br_if 3 (;@1;)
            i32.const 0
            local.set 7
            local.get 8
            local.get 9
            i32.sub
            i32.const 65535
            i32.and
            local.set 9
            loop  ;; label = @5
              local.get 7
              i32.const 65535
              i32.and
              local.get 9
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 10
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 11
              i32.const 48
              local.get 1
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 10
          local.get 11
          local.get 9
          local.get 12
          local.get 2
          local.get 3
          call 33
          br_if 2 (;@1;)
          local.get 11
          local.get 4
          local.get 5
          local.get 9
          i32.load offset=12
          call_indirect (type 3)
          br_if 2 (;@1;)
          local.get 13
          local.get 8
          i32.sub
          i32.const 65535
          i32.and
          local.set 0
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 65535
              i32.and
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            i32.const 1
            local.set 10
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 11
            local.get 1
            local.get 9
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 10
        local.get 11
        local.get 4
        local.get 5
        local.get 1
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 0
        local.get 14
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 10
      local.get 0
      i32.load
      local.tee 7
      local.get 0
      i32.load offset=4
      local.tee 11
      local.get 12
      local.get 2
      local.get 3
      call 33
      br_if 0 (;@1;)
      local.get 7
      local.get 4
      local.get 5
      local.get 11
      i32.load offset=12
      call_indirect (type 3)
      local.set 10
    end
    local.get 10)
  (func (;33;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 3))
  (func (;34;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    i32.const 20
    local.set 3
    local.get 0
    i64.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i64.const 1000
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 20
      local.set 3
      local.get 4
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 5
        local.tee 6
        local.get 6
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 6
        i64.const 9999999
        i64.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i64.const 9
      i64.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1050282 align=1
      i32.store16 align=1
      local.get 0
      i64.extend_i32_u
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.eqz
        br_if 0 (;@2;)
        local.get 5
        i64.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.load8_u offset=1050283
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    i32.add
    i32.const 20
    local.get 3
    i32.sub
    call 32
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 3)
  (func (;35;) (type 6) (param i32 i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 9
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.set 5
          local.get 0
          local.get 1
          i32.le_u
          br_if 2 (;@1;)
          local.get 4
          local.get 0
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 5
          local.get 4
          i32.const 12
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=24
          local.get 4
          local.get 5
          local.get 4
          i32.const 8
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=16
          i32.const 1048598
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          call 10
          unreachable
        end
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        i32.const 9
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.tee 5
        local.get 4
        i32.const 12
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=24
        local.get 4
        local.get 5
        local.get 4
        i32.const 8
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=16
        i32.const 1048638
        local.get 4
        i32.const 16
        i32.add
        local.get 3
        call 10
        unreachable
      end
      local.get 4
      local.get 1
      i32.store offset=8
      local.get 4
      local.get 2
      i32.store offset=12
      local.get 4
      i32.const 9
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 5
      local.get 4
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=24
      local.get 4
      local.get 5
      local.get 4
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      i32.const 1048695
      local.get 4
      i32.const 16
      i32.add
      local.get 3
      call 10
      unreachable
    end
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    local.get 4
    local.get 5
    local.get 4
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 4
    local.get 5
    local.get 4
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 1048695
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    call 10
    unreachable)
  (func (;36;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 5
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 5
        local.tee 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1050282 align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=1050283
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call 32
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;37;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load
        i32.const 1050239
        i32.const 1050236
        local.get 7
        i32.const 1
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        i32.const 1050241
        i32.const 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        call_indirect (type 1)
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
      block  ;; label = @2
        local.get 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.load
        i32.const 1050243
        i32.const 3
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 3)
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=15
      local.get 5
      i32.const 1050256
      i32.store offset=20
      local.get 5
      local.get 8
      i64.load align=4
      i64.store align=4
      local.get 5
      local.get 8
      i64.load offset=8 align=4
      i64.store offset=24 align=4
      local.get 5
      local.get 5
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 5
      local.get 5
      i32.store offset=16
      local.get 5
      local.get 1
      local.get 2
      call 29
      br_if 0 (;@1;)
      local.get 5
      i32.const 1050241
      i32.const 2
      call 29
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        local.get 4
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=16
      i32.const 1050246
      i32.const 2
      local.get 5
      i32.load offset=20
      i32.load offset=12
      call_indirect (type 3)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;38;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.const 1050803
    i32.const 24
    call 26)
  (func (;39;) (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 43
    i32.store offset=4
    local.get 1
    i32.const 1051320
    i32.store
    local.get 1
    i32.const 1052652
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 1
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    i32.const 1048829
    local.get 1
    i32.const 16
    i32.add
    i32.const 1052668
    call 10
    unreachable)
  (func (;40;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 10
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 4
      local.get 4
      i32.const 31
      i32.shr_s
      local.tee 0
      i32.xor
      local.get 0
      i32.sub
      local.tee 5
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 5
        local.tee 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1050282 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1050282 align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=1050283
      i32.store8
    end
    local.get 1
    local.get 4
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call 32
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;41;) (type 0)
    call 42
    unreachable)
  (func (;42;) (type 0)
    call 52
    unreachable)
  (func (;43;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64)
    global.get 0
    i32.const 640
    i32.sub
    local.tee 5
    global.set 0
    i32.const 0
    i32.const 0
    i32.load offset=1055048
    local.tee 6
    i32.const 1
    i32.add
    i32.store offset=1055048
    local.get 5
    local.get 1
    i32.store offset=28
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1054984
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.store8 offset=1054984
            i32.const 0
            i32.const 0
            i32.load offset=1054980
            i32.const 1
            i32.add
            i32.store offset=1054980
            i32.const 0
            i32.load offset=1054988
            local.tee 6
            i32.const -1
            i32.gt_s
            br_if 2 (;@2;)
            local.get 5
            i32.const 64
            i32.add
            local.get 5
            i32.const 639
            i32.add
            i32.const 1051404
            i32.const 115
            call 44
            local.get 5
            i32.load8_u offset=64
            local.get 5
            i32.load offset=68
            call 45
            br 3 (;@1;)
          end
          local.get 5
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=24
          call_indirect (type 4)
          local.get 5
          local.get 5
          i32.load offset=12
          i32.const 0
          local.get 5
          i32.load offset=8
          local.tee 1
          select
          i32.store offset=580
          local.get 5
          local.get 1
          i32.const 1
          local.get 1
          select
          i32.store offset=576
          local.get 5
          i32.const 2
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 576
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=72
          local.get 5
          i32.const 10
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 5
          i32.const 32
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=64
          local.get 5
          i32.const 592
          i32.add
          local.get 5
          i32.const 639
          i32.add
          i32.const 1050041
          local.get 5
          i32.const 64
          i32.add
          call 44
          local.get 5
          i32.load8_u offset=592
          local.get 5
          i32.load offset=596
          call 45
          br 2 (;@1;)
        end
        local.get 5
        i32.const 7
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 5
        i32.const 24
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=72
        local.get 5
        i32.const 10
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 5
        i32.const 32
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=64
        local.get 5
        i32.const 592
        i32.add
        local.get 5
        i32.const 639
        i32.add
        i32.const 1050151
        local.get 5
        i32.const 64
        i32.add
        call 44
        local.get 5
        i32.load8_u offset=592
        local.get 5
        i32.load offset=596
        call 45
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      i32.const 1
      i32.add
      i32.store offset=1054988
      local.get 5
      i32.const 16
      i32.add
      local.get 0
      local.get 1
      i32.load offset=20
      call_indirect (type 4)
      i32.const 3
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      i32.load offset=16
      local.set 1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        i32.const 0
        i32.load offset=1054980
        i32.const 1
        i32.gt_u
        br_if 0 (;@2;)
        call 47
        i32.const 255
        i32.and
        local.set 6
      end
      local.get 5
      local.get 2
      i32.store offset=36
      i32.const 12
      local.set 0
      local.get 5
      i32.const 64
      i32.add
      local.get 1
      local.get 7
      i32.const 12
      i32.add
      i32.load
      local.tee 7
      call_indirect (type 4)
      i32.const 4
      local.set 2
      local.get 1
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i64.load offset=64
          i64.const 7199936582794304877
          i64.xor
          local.get 5
          i64.load offset=72
          i64.const -5076933981314334344
          i64.xor
          i64.or
          i64.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 64
          i32.add
          local.get 1
          local.get 7
          call_indirect (type 4)
          i32.const 1052392
          local.set 2
          local.get 5
          i64.load offset=64
          i64.const -7788913181612638748
          i64.xor
          local.get 5
          i64.load offset=72
          i64.const -9212764535765366089
          i64.xor
          i64.or
          i64.const 0
          i64.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 4
          i32.add
          local.set 4
          i32.const 8
          local.set 2
        end
        local.get 1
        local.get 2
        i32.add
        i32.load
        local.set 0
        local.get 4
        i32.load
        local.set 2
      end
      local.get 5
      local.get 0
      i32.store offset=44
      local.get 5
      local.get 2
      i32.store offset=40
      call 48
      local.get 5
      i32.const 4
      i32.const 9
      i32.const 0
      i32.const 1051128
      i32.const 0
      i32.const 0
      i64.load offset=1055056
      local.tee 8
      i32.const 0
      i64.load offset=1055040
      local.tee 9
      i64.eq
      select
      local.get 9
      i64.eqz
      select
      local.tee 1
      select
      i32.store offset=52
      local.get 5
      local.get 1
      i32.const 1051132
      local.get 1
      select
      i32.store offset=48
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i64.const 0
                i64.ne
                br_if 0 (;@6;)
                i32.const 0
                i64.load offset=1055064
                local.set 9
                loop  ;; label = @7
                  local.get 9
                  i64.const -1
                  i64.eq
                  br_if 2 (;@5;)
                  i32.const 0
                  local.get 9
                  i64.const 1
                  i64.add
                  local.tee 8
                  i32.const 0
                  i64.load offset=1055064
                  local.tee 10
                  local.get 10
                  local.get 9
                  i64.eq
                  local.tee 1
                  select
                  i64.store offset=1055064
                  local.get 10
                  local.set 9
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                end
                i32.const 0
                local.get 8
                i64.store offset=1055056
              end
              local.get 5
              local.get 8
              i64.store offset=56
              local.get 5
              i32.const 64
              i32.add
              i32.const 0
              i32.const 512
              memory.fill
              local.get 5
              i64.const 0
              i64.store offset=584
              local.get 5
              i32.const 512
              i32.store offset=580
              local.get 5
              local.get 5
              i32.const 64
              i32.add
              i32.store offset=576
              local.get 5
              i32.const 2
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.tee 9
              local.get 5
              i32.const 40
              i32.add
              i64.extend_i32_u
              i64.or
              local.tee 10
              i64.store offset=616
              local.get 5
              i32.const 10
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 36
              i32.add
              i64.extend_i32_u
              i64.or
              local.tee 8
              i64.store offset=608
              local.get 5
              i32.const 11
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 5
              i32.const 56
              i32.add
              i64.extend_i32_u
              i64.or
              local.tee 11
              i64.store offset=600
              local.get 5
              local.get 9
              local.get 5
              i32.const 48
              i32.add
              i64.extend_i32_u
              i64.or
              local.tee 9
              i64.store offset=592
              local.get 5
              i32.const 4
              i32.store offset=624
              local.get 5
              local.get 5
              i32.const 576
              i32.add
              i32.store offset=632
              local.get 5
              i32.const 624
              i32.add
              i32.const 1050960
              i32.const 1050112
              local.get 5
              i32.const 592
              i32.add
              call 27
              local.set 1
              local.get 5
              i32.load8_u offset=624
              local.set 0
              block  ;; label = @6
                local.get 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 255
                i32.and
                i32.const 4
                i32.ne
                br_if 2 (;@4;)
                i32.const 1050984
                i32.const 173
                i32.const 1051072
                call 10
                unreachable
              end
              local.get 0
              i32.const 255
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              local.get 5
              i32.load offset=628
              local.tee 1
              i32.load
              local.set 0
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 2
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                call_indirect (type 2)
              end
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                call 120
              end
              local.get 1
              call 120
              br 2 (;@3;)
            end
            call 11
            unreachable
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load8_u offset=624
              i32.const -3
              i32.add
              br_table 0 (;@5;) 2 (;@3;) 1 (;@4;)
            end
            local.get 5
            i32.load offset=628
            local.tee 1
            i32.load
            local.set 0
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 4
              call_indirect (type 2)
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              call 120
            end
            local.get 1
            call 120
          end
          local.get 5
          local.get 10
          i64.store offset=616
          local.get 5
          local.get 8
          i64.store offset=608
          local.get 5
          local.get 11
          i64.store offset=600
          local.get 5
          local.get 9
          i64.store offset=592
          local.get 5
          i32.const 624
          i32.add
          local.get 5
          i32.const 639
          i32.add
          i32.const 1050112
          local.get 5
          i32.const 592
          i32.add
          call 44
          local.get 5
          i32.load8_u offset=624
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          local.get 5
          i32.load offset=628
          local.tee 1
          i32.load
          local.set 0
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.add
            i32.load
            local.tee 2
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            call_indirect (type 2)
          end
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 120
          end
          local.get 1
          call 120
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 5
          i32.load offset=584
          local.tee 1
          i32.const 513
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.const 512
          i32.const 1051144
          call 35
          unreachable
        end
        local.get 5
        i32.const 592
        i32.add
        local.get 5
        i32.const 639
        i32.add
        local.get 5
        i32.const 64
        i32.add
        local.get 1
        call 49
        local.get 5
        i32.load8_u offset=592
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=596
        local.tee 1
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 2)
        end
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call 120
        end
        local.get 1
        call 120
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 5
            i32.const 64
            i32.add
            local.get 5
            i32.const 639
            i32.add
            i32.const 0
            call 50
            local.get 5
            i32.load8_u offset=64
            local.get 5
            i32.load offset=68
            call 45
            br 2 (;@2;)
          end
          local.get 5
          i32.const 64
          i32.add
          local.get 5
          i32.const 639
          i32.add
          i32.const 1
          call 50
          local.get 5
          i32.load8_u offset=64
          local.get 5
          i32.load offset=68
          call 45
          br 1 (;@2;)
        end
        i32.const 0
        i32.load8_u offset=1054956
        local.set 1
        i32.const 0
        i32.const 0
        i32.store8 offset=1054956
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 64
        i32.add
        local.get 5
        i32.const 639
        i32.add
        i32.const 1051184
        i32.const 157
        call 44
        local.get 5
        i32.load8_u offset=64
        local.get 5
        i32.load offset=68
        call 45
      end
      i32.const 0
      i32.const 0
      i32.load offset=1054988
      i32.const -1
      i32.add
      i32.store offset=1054988
      i32.const 0
      i32.const 0
      i32.store8 offset=1055074
      i32.const 0
      i32.const 0
      i32.store8 offset=1054984
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 5
        i32.const 64
        i32.add
        local.get 5
        i32.const 639
        i32.add
        i32.const 1052404
        i32.const 91
        call 44
        local.get 5
        i32.load8_u offset=64
        local.get 5
        i32.load offset=68
        call 45
        br 1 (;@1;)
      end
      call 51
      unreachable
    end
    call 52
    unreachable)
  (func (;44;) (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    i32.const 4
    i32.store8
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 0
    i64.load align=4
    i64.store offset=16
    local.get 4
    i32.const 16
    i32.add
    i32.const 1051088
    local.get 2
    local.get 3
    call 27
    local.set 1
    local.get 4
    i32.load8_u offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 4
          i32.ne
          br_if 1 (;@2;)
          i32.const 1050984
          i32.const 173
          i32.const 1051072
          call 10
          unreachable
        end
        local.get 3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=20
        local.tee 0
        i32.load
        local.set 1
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          call_indirect (type 2)
        end
        block  ;; label = @3
          local.get 3
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call 120
        end
        local.get 0
        call 120
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i64.load offset=16
      i64.store align=4
    end
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;45;) (type 4) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 255
      i32.and
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        call_indirect (type 2)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call 120
      end
      local.get 1
      call 120
    end)
  (func (;46;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 2
    local.get 0
    i32.load
    local.tee 1
    i64.load align=4
    i64.store align=4
    local.get 2
    i32.const 9
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 5
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 2
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 4
    local.get 3
    i32.const 1048590
    local.get 2
    i32.const 8
    i32.add
    call 27
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;47;) (type 8) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 384
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1054985
      i32.const -1
      i32.add
      local.tee 1
      i32.const 255
      i32.and
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=14
      local.get 0
      i32.const 0
      i64.load offset=1051467 align=1
      i64.store offset=6 align=2
      local.get 0
      i32.const 0
      i64.load offset=1051461 align=1
      i64.store
      i32.const 1414747474
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 0
                local.get 1
                i32.add
                i32.load8_u
                i32.eqz
                br_if 2 (;@4;)
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 0
              i32.load
              local.set 2
            end
            i32.const 0
            local.set 1
            local.get 0
            i32.const 8
            i32.const 0
            i32.const 16843008
            local.get 2
            i32.sub
            local.get 2
            i32.or
            i32.const 16843008
            local.get 0
            i32.load offset=4
            local.tee 2
            i32.sub
            local.get 2
            i32.or
            i32.and
            i32.const -2139062144
            i32.and
            i32.const -2139062144
            i32.eq
            select
            local.tee 2
            i32.add
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                local.get 3
                local.get 1
                i32.add
                i32.load8_u
                i32.eqz
                br_if 1 (;@5;)
                local.get 2
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.xor
                i32.const 15
                i32.ne
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            local.get 1
            local.get 2
            i32.add
            local.set 1
          end
          local.get 1
          i32.const 14
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          call 103
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  call 114
                  local.tee 2
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 1
                  call 19
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 1
                    local.get 2
                    memory.copy
                  end
                  i32.const 3
                  local.set 3
                  i32.const 2
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const -2147483648
                      i32.add
                      br_table 7 (;@2;) 0 (;@9;) 1 (;@8;)
                    end
                    i32.const 3
                    local.set 3
                    local.get 4
                    i32.const 255
                    i32.and
                    i32.const 3
                    i32.ne
                    br_if 6 (;@2;)
                    local.get 2
                    i32.load
                    local.set 4
                    block  ;; label = @9
                      local.get 2
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 5
                      i32.load
                      local.tee 6
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 6
                      call_indirect (type 2)
                    end
                    block  ;; label = @9
                      local.get 5
                      i32.load offset=4
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      call 120
                    end
                    local.get 2
                    call 120
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const -1
                      i32.add
                      br_table 0 (;@9;) 3 (;@6;) 3 (;@6;) 1 (;@8;) 3 (;@6;)
                    end
                    local.get 4
                    i32.load8_u
                    i32.const 48
                    i32.ne
                    br_if 2 (;@6;)
                    i32.const 3
                    local.set 3
                    i32.const 2
                    local.set 1
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.load align=1
                  i32.const 1819047270
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 2
                  local.set 3
                  i32.const 1
                  local.set 1
                  br 2 (;@5;)
                end
                i32.const 1
                local.set 3
                i32.const 0
                local.set 1
                br 4 (;@2;)
              end
              i32.const 1
              local.set 3
              i32.const 0
              local.set 1
            end
            local.get 4
            call 120
            br 2 (;@2;)
          end
          i32.const 1
          local.get 2
          call 9
          unreachable
        end
        i32.const 3
        local.set 3
        i32.const 2
        local.set 1
      end
      i32.const 0
      i32.const 0
      i32.load8_u offset=1054985
      local.tee 2
      local.get 3
      local.get 2
      select
      i32.store8 offset=1054985
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3
      local.set 1
      local.get 2
      i32.const 4
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 33619971
      local.get 2
      i32.const 3
      i32.shl
      i32.const 248
      i32.and
      i32.shr_u
      local.set 1
    end
    local.get 0
    i32.const 384
    i32.add
    global.set 0
    local.get 1)
  (func (;48;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i32.load8_u offset=1055074
    local.set 1
    i32.const 0
    i32.const 1
    i32.store8 offset=1055074
    local.get 0
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 15
      i32.add
      call 12
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 2
                    local.get 2
                    local.get 3
                    call 92
                    local.tee 5
                    i32.const -1
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 0
                    i32.store8 offset=11
                    local.get 4
                    i32.const 0
                    i32.store16 offset=9 align=1
                    local.get 4
                    i32.const 0
                    i32.store8 offset=8
                    local.get 4
                    i32.const 0
                    i32.load offset=1055076
                    local.tee 5
                    i32.store offset=12
                    local.get 5
                    i32.const 27
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 4
                    i32.const 8
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 4
                  local.get 5
                  i32.store offset=12
                  local.get 4
                  i32.const 4
                  i32.store8 offset=8
                  local.get 5
                  br_if 1 (;@6;)
                  i32.const 1052536
                  local.set 5
                end
                local.get 0
                local.get 5
                i64.load
                i64.store align=4
                br 5 (;@1;)
              end
              local.get 3
              local.get 5
              i32.lt_u
              br_if 3 (;@2;)
              local.get 2
              local.get 5
              i32.add
              local.set 2
              local.get 3
              local.get 5
              i32.sub
              local.set 3
            end
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 4
        i32.store8
        br 1 (;@1;)
      end
      local.get 5
      local.get 3
      local.get 3
      i32.const 1052896
      call 35
      unreachable
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;50;) (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store8 offset=7
    local.get 3
    i32.const 12
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i32.const 7
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=8
    local.get 0
    local.get 1
    i32.const 1048833
    local.get 3
    i32.const 8
    i32.add
    call 44
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;51;) (type 0)
    call 41
    unreachable)
  (func (;52;) (type 0)
    call 53
    unreachable)
  (func (;53;) (type 0)
    call 97
    unreachable)
  (func (;54;) (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 1
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 9
      unreachable
    end
    local.get 3
    i32.const 4
    i32.add
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    local.tee 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    i32.const 8
    local.get 2
    i32.const 8
    i32.gt_u
    select
    local.tee 2
    call 55
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call 9
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 1
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;55;) (type 6) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        i32.const 4
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call 123
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.const 1
        call 19
        local.set 4
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.const 1
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 4
        i32.store offset=4
        i32.const 0
        local.set 1
      end
      i32.const 8
      local.set 2
      local.get 3
      local.set 4
    end
    local.get 0
    local.get 2
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 1
    i32.store)
  (func (;56;) (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1050794
      i32.const 5
      call 26
      return
    end
    local.get 1
    i32.const 1050799
    i32.const 4
    call 26)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 0
    i32.load8_u
    local.set 5
    i32.const 512
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 512
            call 117
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 0
            i32.store offset=8
            local.get 2
            i32.const 512
            i32.store offset=4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                local.get 1
                call 98
                br_if 1 (;@5;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1055076
                  local.tee 6
                  i32.const 68
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.store offset=12
                  local.get 2
                  i32.const 4
                  i32.add
                  local.get 1
                  i32.const 1
                  call 54
                  local.get 2
                  i32.load offset=8
                  local.set 0
                  local.get 2
                  i32.load offset=4
                  local.set 1
                  br 1 (;@6;)
                end
              end
              local.get 6
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.set 7
              block  ;; label = @6
                local.get 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                call 120
              end
              i32.const -2147483648
              local.set 1
              br 4 (;@1;)
            end
            local.get 2
            local.get 0
            call 114
            local.tee 6
            i32.store offset=12
            local.get 1
            local.get 6
            i32.gt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 1
          i32.const 512
          call 9
          unreachable
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            local.get 0
            call 120
            i32.const 1
            local.set 1
            br 1 (;@3;)
          end
          local.get 0
          local.get 6
          call 123
          local.tee 1
          br_if 0 (;@3;)
          i32.const 1
          local.get 6
          call 9
          unreachable
        end
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 6
        local.set 1
      end
      local.get 2
      i64.load offset=8 align=4
      local.set 7
    end
    block  ;; label = @1
      local.get 1
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 7
      i64.const 255
      i64.and
      i64.const 3
      i64.ne
      br_if 0 (;@1;)
      local.get 7
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 0
      i32.load
      local.set 6
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 9
        call_indirect (type 2)
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        call 120
      end
      local.get 0
      call 120
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 1052544
            i32.const 17
            local.get 3
            i32.load offset=12
            local.tee 0
            call_indirect (type 3)
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            local.get 4
            i32.const 1052561
            i32.const 88
            local.get 0
            call_indirect (type 3)
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 1
          local.set 0
          local.get 1
          i32.const 0
          i32.gt_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        local.set 0
        local.get 1
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
      end
      local.get 7
      i32.wrap_i64
      call 120
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;58;) (type 2) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call_indirect (type 2)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        call 120
      end
      local.get 0
      call 120
    end)
  (func (;59;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i64)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.load offset=4
      local.tee 5
      local.get 4
      i64.load offset=8
      local.tee 6
      i64.const 4294967295
      local.get 6
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 7
      local.get 7
      local.get 5
      i32.gt_u
      select
      local.tee 7
      local.get 2
      local.get 7
      local.get 2
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.get 6
      local.get 5
      i64.extend_i32_u
      local.tee 9
      local.get 6
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 1
      local.get 8
      memory.copy
    end
    local.get 4
    local.get 6
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block  ;; label = @1
      local.get 7
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      i32.const 0
      i64.load offset=1052536
      local.tee 6
      i64.const 255
      i64.and
      i64.const 4
      i64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.load
        local.set 4
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 7
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 3
          call_indirect (type 2)
        end
        block  ;; label = @3
          local.get 7
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          call 120
        end
        local.get 2
        call 120
      end
      local.get 0
      local.get 6
      i64.store align=4
      i32.const 1
      local.set 3
    end
    local.get 3)
  (func (;60;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    i32.const 0
    local.set 5
    block  ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.load offset=4
      local.tee 6
      local.get 3
      i64.load offset=8
      local.tee 7
      i64.const 4294967295
      local.get 7
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 4
      local.get 4
      local.get 6
      i32.gt_u
      select
      local.tee 4
      local.get 1
      local.get 4
      local.get 1
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 7
      local.get 6
      i64.extend_i32_u
      local.tee 9
      local.get 7
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 8
      memory.copy
    end
    local.get 3
    local.get 7
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      i32.const 0
      i64.load offset=1052536
      local.tee 7
      i64.const 255
      i64.and
      i64.const 4
      i64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 4
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 5
          call_indirect (type 2)
        end
        block  ;; label = @3
          local.get 4
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          call 120
        end
        local.get 1
        call 120
      end
      local.get 0
      local.get 7
      i64.store align=4
      i32.const 1
      local.set 5
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 5)
  (func (;61;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1050960
    local.get 1
    local.get 2
    call 27)
  (func (;62;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 2
                local.get 1
                local.get 2
                call 92
                local.tee 4
                i32.const -1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.const 0
                i32.store8 offset=11
                local.get 3
                i32.const 0
                i32.store16 offset=9 align=1
                local.get 3
                i32.const 0
                i32.store8 offset=8
                local.get 3
                i32.const 0
                i32.load offset=1055076
                local.tee 4
                i32.store offset=12
                local.get 4
                i32.const 27
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                i32.const 8
                i32.add
                local.set 4
                br 4 (;@2;)
              end
              local.get 3
              local.get 4
              i32.store offset=12
              local.get 3
              i32.const 4
              i32.store8 offset=8
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 1052536
                local.set 4
                br 4 (;@2;)
              end
              local.get 2
              local.get 4
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              local.get 4
              i32.add
              local.set 1
              local.get 2
              local.get 4
              i32.sub
              local.set 2
            end
            local.get 2
            br_if 0 (;@4;)
          end
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        local.get 4
        local.get 2
        local.get 2
        i32.const 1052896
        call 35
        unreachable
      end
      block  ;; label = @2
        local.get 4
        i64.load
        local.tee 5
        i64.const 255
        i64.and
        i64.const 4
        i64.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=4
        local.tee 4
        i32.load
        local.set 2
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 6
          call_indirect (type 2)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call 120
        end
        local.get 4
        call 120
      end
      local.get 0
      local.get 5
      i64.store align=4
      i32.const 1
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;63;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call 62
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;64;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1051088
    local.get 1
    local.get 2
    call 27)
  (func (;65;) (type 4) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;66;) (type 4) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1051380 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1051372 align=4
    i64.store align=4)
  (func (;67;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call 68
    unreachable)
  (func (;68;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call 69
    call 52
    unreachable)
  (func (;69;) (type 4) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    i32.load8_u offset=1055073
    local.set 3
    i32.const 0
    i32.const 1
    i32.store8 offset=1055073
    i32.const 9
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 4
        local.get 2
        i32.const 12
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=16
        local.get 2
        i32.const 4
        i32.add
        local.get 2
        i32.const 31
        i32.add
        i32.const 1050002
        local.get 2
        i32.const 16
        i32.add
        call 44
        local.get 2
        i32.load8_u offset=4
        local.get 2
        i32.load offset=8
        call 45
        call 48
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                call 47
                i32.const 255
                i32.and
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.const 31
              i32.add
              i32.const 0
              call 50
              local.get 2
              i32.load8_u offset=16
              local.get 2
              i32.load offset=20
              call 45
              br 2 (;@3;)
            end
            local.get 2
            i32.const 16
            i32.add
            local.get 2
            i32.const 31
            i32.add
            i32.const 1
            call 50
            local.get 2
            i32.load8_u offset=16
            local.get 2
            i32.load offset=20
            call 45
            br 1 (;@3;)
          end
          local.get 2
          i32.const 16
          i32.add
          local.get 2
          i32.const 31
          i32.add
          i32.const 1051184
          i32.const 157
          call 44
          local.get 2
          i32.load8_u offset=16
          local.get 2
          i32.load offset=20
          call 45
        end
        i32.const 0
        i32.const 0
        i32.store8 offset=1055074
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=16
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 31
      i32.add
      i32.const 1049906
      local.get 2
      i32.const 16
      i32.add
      call 44
      local.get 2
      i32.load8_u offset=4
      local.get 2
      i32.load offset=8
      call 45
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;70;) (type 2) (param i32)
    local.get 0
    call 71
    unreachable)
  (func (;71;) (type 2) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.load offset=4
      local.tee 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.shr_u
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store
      local.get 1
      i32.const 1051264
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call 43
      unreachable
    end
    local.get 1
    i32.const -2147483648
    i32.store
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1051292
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call 43
    unreachable)
  (func (;72;) (type 2) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      call 120
    end)
  (func (;73;) (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -2147483648
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 3)
      return
    end
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load offset=12
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=4
    call 27)
  (func (;74;) (type 4) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=44
      local.get 2
      i64.const 4294967296
      i64.store offset=36 align=4
      local.get 2
      i32.const 36
      i32.add
      i32.const 1051160
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call 27
      drop
      local.get 2
      local.get 2
      i32.load offset=44
      local.tee 3
      i32.store offset=32
      local.get 2
      local.get 2
      i64.load offset=36 align=4
      local.tee 4
      i64.store offset=24
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 1
    i32.load offset=8
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i64.load align=4
    local.set 4
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    local.get 3
    i32.store offset=16
    local.get 2
    local.get 4
    i64.store offset=8
    block  ;; label = @1
      i32.const 12
      call 117
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call 20
      unreachable
    end
    local.get 1
    local.get 2
    i32.load offset=16
    i32.store offset=8
    local.get 1
    local.get 2
    i64.load offset=8
    i64.store align=4
    local.get 0
    i32.const 1052864
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;75;) (type 4) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.const 20
      i32.add
      i32.const 1051160
      local.get 3
      i32.load
      local.tee 3
      i32.load
      local.get 3
      i32.load offset=4
      call 27
      drop
      local.get 2
      local.get 2
      i32.load offset=28
      local.tee 3
      i32.store offset=16
      local.get 2
      local.get 2
      i64.load offset=20 align=4
      local.tee 4
      i64.store offset=8
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 4
      i64.store align=4
    end
    local.get 0
    i32.const 1052864
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;76;) (type 2) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      call 120
    end)
  (func (;77;) (type 4) (param i32 i32)
    local.get 0
    i32.const 0
    i64.load offset=1051396 align=4
    i64.store offset=8 align=4
    local.get 0
    i32.const 0
    i64.load offset=1051388 align=4
    i64.store align=4)
  (func (;78;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 2
          call 54
          local.get 0
          i32.load offset=8
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;79;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    local.get 2
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call 54
      local.get 0
      i32.load offset=8
      local.set 4
    end
    local.get 0
    i32.load offset=4
    local.get 4
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;80;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1051160
    local.get 1
    local.get 2
    call 27)
  (func (;81;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 3))
  (func (;82;) (type 4) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      call 117
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call 20
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1052792
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;83;) (type 4) (param i32 i32)
    local.get 0
    i32.const 1052792
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;84;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;85;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call 67
    unreachable)
  (func (;86;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 1
    i32.load
    i32.const 1052808
    i32.const 9
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 3)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=13
    local.get 2
    local.get 3
    i32.store8 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1052817
    i32.const 11
    local.get 0
    i32.const 13
    call 37
    i32.const 1052828
    i32.const 9
    local.get 2
    i32.const 4
    i32.add
    i32.const 14
    call 37
    local.set 4
    local.get 2
    i32.load8_u offset=13
    local.tee 0
    local.get 2
    i32.load8_u offset=12
    local.tee 3
    i32.or
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 1
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load
        i32.const 1050253
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 3)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      i32.const 1050251
      i32.const 1
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 3)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 1
    i32.and)
  (func (;87;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          call 36
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 3
        i32.const 9
        local.set 0
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 0
          i32.add
          i32.const -2
          i32.add
          local.get 3
          i32.const 15
          i32.and
          i32.load8_u offset=1050220
          i32.store8
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 3
          i32.const 4
          i32.shr_u
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 1050776
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 9
        local.get 0
        i32.sub
        call 32
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 3
      i32.const 9
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 0
        i32.add
        i32.const -2
        i32.add
        local.get 3
        i32.const 15
        i32.and
        i32.load8_u offset=1050778
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 4
        i32.shr_u
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 1050776
      i32.const 2
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 9
      local.get 0
      i32.sub
      call 32
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;88;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.load8_u
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load
        local.tee 4
        i32.const 1052841
        i32.const 4
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.load offset=12
        local.tee 6
        call_indirect (type 3)
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=10
            i32.const 128
            i32.and
            br_if 0 (;@4;)
            i32.const 1
            local.set 3
            local.get 4
            i32.const 1050248
            i32.const 1
            local.get 6
            call_indirect (type 3)
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            call 89
            br_if 3 (;@1;)
            local.get 1
            i32.load
            local.set 4
            local.get 1
            i32.load offset=4
            i32.load offset=12
            local.set 6
            br 1 (;@3;)
          end
          local.get 4
          i32.const 1050249
          i32.const 2
          local.get 6
          call_indirect (type 3)
          br_if 2 (;@1;)
          i32.const 1
          local.set 3
          local.get 2
          i32.const 1
          i32.store8 offset=15
          local.get 2
          local.get 5
          i32.store offset=4
          local.get 2
          local.get 4
          i32.store
          local.get 2
          i32.const 1050256
          i32.store offset=20
          local.get 2
          local.get 1
          i64.load offset=8 align=4
          i64.store offset=24 align=4
          local.get 2
          local.get 2
          i32.const 15
          i32.add
          i32.store offset=8
          local.get 2
          local.get 2
          i32.store offset=16
          local.get 0
          local.get 2
          i32.const 16
          i32.add
          call 89
          br_if 2 (;@1;)
          local.get 2
          i32.load offset=16
          i32.const 1050246
          i32.const 2
          local.get 2
          i32.load offset=20
          i32.load offset=12
          call_indirect (type 3)
          br_if 2 (;@1;)
        end
        local.get 4
        i32.const 1050252
        i32.const 1
        local.get 6
        call_indirect (type 3)
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      i32.const 1052837
      i32.const 4
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 3)
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 3)
  (func (;89;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          i32.const 3
          local.set 3
          local.get 0
          i32.load8_u
          local.tee 0
          local.set 4
          block  ;; label = @4
            local.get 0
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 1
            local.set 3
            local.get 2
            local.get 0
            local.get 0
            i32.const 100
            i32.div_u
            local.tee 4
            i32.const 100
            i32.mul
            i32.sub
            i32.const 255
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=1050282 align=1
            i32.store16 offset=12 align=1
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 2
            i32.const 11
            i32.add
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.add
            local.get 4
            i32.const 1
            i32.shl
            i32.load8_u offset=1050283
            i32.store8
          end
          local.get 1
          i32.const 1
          i32.const 1
          i32.const 0
          local.get 2
          i32.const 11
          i32.add
          local.get 3
          i32.add
          i32.const 3
          local.get 3
          i32.sub
          call 32
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load8_u
        local.set 3
        i32.const 3
        local.set 0
        loop  ;; label = @3
          local.get 2
          i32.const 9
          i32.add
          local.get 0
          i32.add
          i32.const -2
          i32.add
          local.get 3
          i32.const 15
          i32.and
          i32.const 1050220
          i32.add
          i32.load8_u
          i32.store8
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 3
          i32.const 4
          i32.shr_u
          i32.const 15
          i32.and
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 1050776
        i32.const 2
        local.get 2
        i32.const 9
        i32.add
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 3
        local.get 0
        i32.sub
        call 32
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load8_u
      local.set 3
      i32.const 3
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 14
        i32.add
        local.get 0
        i32.add
        i32.const -2
        i32.add
        local.get 3
        i32.const 15
        i32.and
        i32.const 1050778
        i32.add
        i32.load8_u
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        local.tee 3
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 1050776
      i32.const 2
      local.get 2
      i32.const 14
      i32.add
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 3
      local.get 0
      i32.sub
      call 32
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;90;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 26)
  (func (;91;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        local.get 1
        i32.load offset=8
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.add
        local.get 1
        call 17
        block  ;; label = @3
          local.get 4
          i32.load8_u offset=8
          i32.const 4
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          i64.load offset=8
          i64.store align=4
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.set 5
      end
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        local.set 5
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.get 5
          i32.add
          local.get 2
          local.get 3
          memory.copy
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 5
        local.get 3
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1
      i32.store8 offset=12
      i64.const 0
      local.set 6
      i64.const 4
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i64.const 0
              local.set 8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1
                      local.get 2
                      local.get 3
                      call 92
                      local.tee 5
                      i32.const -1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 0
                      i32.store8 offset=11
                      local.get 4
                      i32.const 0
                      i32.store16 offset=9 align=1
                      local.get 4
                      i32.const 0
                      i32.store8 offset=8
                      local.get 4
                      i32.const 0
                      i32.load offset=1055076
                      local.tee 5
                      i32.store offset=12
                      local.get 5
                      i32.const 27
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 8
                      i32.add
                      local.set 3
                      br 4 (;@5;)
                    end
                    local.get 4
                    local.get 5
                    i32.store offset=12
                    local.get 4
                    i32.const 4
                    i32.store8 offset=8
                    block  ;; label = @9
                      local.get 5
                      br_if 0 (;@9;)
                      i32.const 1052536
                      local.set 3
                      br 4 (;@5;)
                    end
                    local.get 3
                    local.get 5
                    i32.lt_u
                    br_if 2 (;@6;)
                    local.get 2
                    local.get 5
                    i32.add
                    local.set 2
                    local.get 3
                    local.get 5
                    i32.sub
                    local.set 3
                  end
                  local.get 3
                  br_if 0 (;@7;)
                end
                i64.const 0
                local.set 8
                br 2 (;@4;)
              end
              local.get 5
              local.get 3
              local.get 3
              i32.const 1052896
              call 35
              unreachable
            end
            local.get 3
            i64.load
            local.tee 7
            i64.const 32
            i64.shr_u
            local.set 6
            block  ;; label = @5
              local.get 7
              i64.const 255
              i64.and
              i64.const 0
              i64.eq
              br_if 0 (;@5;)
              local.get 7
              local.set 8
              br 1 (;@4;)
            end
            local.get 7
            local.set 8
            local.get 6
            i64.const 8
            i64.eq
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i64.const 4294967040
          i64.and
          local.get 6
          i64.const 32
          i64.shl
          i64.or
          local.get 7
          i64.const 255
          i64.and
          i64.or
          i64.store align=4
          br 1 (;@2;)
        end
        local.get 0
        i32.const 4
        i32.store8
      end
      local.get 1
      i32.const 0
      i32.store8 offset=12
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;92;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 4
        i32.add
        call 95
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 8
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store offset=1055076
        i32.const -1
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 2
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;93;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 0
    i32.const 65535
    i32.and)
  (func (;94;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 1
    i32.const 65535
    i32.and)
  (func (;95;) (type 5) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 2
    i32.const 65535
    i32.and)
  (func (;96;) (type 2) (param i32)
    local.get 0
    call 3
    unreachable)
  (func (;97;) (type 0)
    unreachable)
  (func (;98;) (type 1) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1054960
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call 109
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1055076
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 1
        local.get 2
        call 114
        i32.const 1
        i32.add
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1055076
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call 108
      local.set 0
    end
    local.get 0)
  (func (;99;) (type 0)
    (local i32 i32)
    i32.const 0
    i32.const 1055088
    i32.store offset=1055088
    i32.const 1048576
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1048576
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1048576
        i32.const 0
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
      global.get 0
      local.set 1
      i32.const 1055728
      i32.const 1055720
      i32.sub
      i32.const 1048576
      local.get 1
      i32.const 1048576
      i32.gt_u
      local.tee 0
      select
      local.set 1
      i32.const 1055728
      i32.const 1048576
      local.get 0
      select
      local.set 0
    end
    i32.const 56
    i32.const 0
    i32.store offset=1055088
    i32.const 52
    local.get 1
    i32.store offset=1055088
    i32.const 48
    local.get 0
    i32.store offset=1055088
    i32.const 8
    i32.const 1055088
    i32.store offset=1055088
    i32.const 4
    i32.const 1055088
    i32.store offset=1055088
    i32.const 12
    i32.const 0
    i32.load offset=1055084
    i32.store offset=1055088
    i32.const 0
    local.get 1
    i32.const 8388608
    local.get 1
    i32.const 8388608
    i32.lt_u
    select
    i32.store offset=1054968)
  (func (;100;) (type 2) (param i32)
    local.get 0
    call 96
    unreachable)
  (func (;101;) (type 0)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1054964
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call 102
    end)
  (func (;102;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call 94
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 1
          br_if 0 (;@3;)
          i32.const 1055080
          local.set 1
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            call 117
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 4
            call 122
            local.tee 1
            br_if 1 (;@3;)
            local.get 2
            call 120
          end
          i32.const 70
          call 100
          unreachable
        end
        local.get 1
        local.get 2
        call 93
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call 120
        local.get 1
        call 120
      end
      i32.const 71
      call 100
      unreachable
    end
    i32.const 0
    local.get 1
    i32.store offset=1054964
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;103;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call 101
    block  ;; label = @1
      local.get 0
      i32.const 61
      call 106
      local.tee 1
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 0
      i32.sub
      local.tee 3
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1054964
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            local.get 3
            call 115
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.add
            local.tee 1
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2)
  (func (;104;) (type 0))
  (func (;105;) (type 0)
    call 104
    call 104)
  (func (;106;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call 114
          i32.add
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block  ;; label = @2
        i32.const 16843008
        local.get 0
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          i32.const 16843008
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.ne
          br_if 1 (;@2;)
          i32.const 16843008
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func (;107;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        i32.const 16843008
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.get 2
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          i32.const 16843008
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.sub
          local.get 2
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store8
      block  ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.load8_u
        local.tee 0
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func (;108;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 107
    drop
    local.get 0)
  (func (;109;) (type 12) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call 114
      i32.const 1
      i32.add
      local.tee 1
      call 117
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      memory.copy
    end
    local.get 2)
  (func (;110;) (type 1) (param i32 i32) (result i32)
    local.get 0)
  (func (;111;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 110)
  (func (;112;) (type 12) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1055220
      local.tee 1
      br_if 0 (;@1;)
      i32.const 1055196
      local.set 1
      i32.const 0
      i32.const 1055196
      i32.store offset=1055220
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.load16_u offset=1054800
    i32.const 1053248
    i32.add
    local.get 1
    i32.load offset=20
    call 111)
  (func (;113;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 112
        local.tee 3
        call 114
        local.tee 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 68
        local.set 0
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          local.get 2
          memory.copy
        end
        local.get 1
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        memory.copy
      end
      i32.const 0
      local.set 0
    end
    local.get 0)
  (func (;114;) (type 12) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 2
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        i32.const 16843008
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.eq
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;115;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 3
      end
      local.get 3
      i32.const 255
      i32.and
      local.set 3
    end
    local.get 3
    local.get 1
    i32.load8_u
    i32.sub)
  (func (;116;) (type 12) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1055076
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call 97
    unreachable)
  (func (;117;) (type 12) (param i32) (result i32)
    local.get 0
    call 118)
  (func (;118;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055248
                              local.tee 2
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055696
                                local.tee 3
                                br_if 0 (;@14;)
                                i32.const 0
                                i64.const -1
                                i64.store offset=1055708 align=4
                                i32.const 0
                                i64.const 281474976776192
                                i64.store offset=1055700 align=4
                                i32.const 0
                                local.get 1
                                i32.const 8
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                local.tee 3
                                i32.store offset=1055696
                                i32.const 0
                                i32.const 0
                                i32.store offset=1055716
                                i32.const 0
                                i32.const 0
                                i32.store offset=1055668
                              end
                              i32.const 1114112
                              i32.const 1055728
                              i32.lt_u
                              br_if 1 (;@12;)
                              i32.const 0
                              local.set 2
                              i32.const 1114112
                              i32.const 1055728
                              i32.sub
                              i32.const 89
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 4
                              i32.const 0
                              i32.const 1055728
                              i32.store offset=1055672
                              i32.const 0
                              i32.const 1055728
                              i32.store offset=1055240
                              i32.const 0
                              local.get 3
                              i32.store offset=1055260
                              i32.const 0
                              i32.const -1
                              i32.store offset=1055256
                              i32.const 0
                              i32.const 1114112
                              i32.const 1055728
                              i32.sub
                              local.tee 3
                              i32.store offset=1055676
                              i32.const 0
                              local.get 3
                              i32.store offset=1055660
                              i32.const 0
                              local.get 3
                              i32.store offset=1055656
                              loop  ;; label = @14
                                local.get 4
                                i32.const 1055284
                                i32.add
                                local.get 4
                                i32.const 1055272
                                i32.add
                                local.tee 3
                                i32.store
                                local.get 3
                                local.get 4
                                i32.const 1055264
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 4
                                i32.const 1055276
                                i32.add
                                local.get 5
                                i32.store
                                local.get 4
                                i32.const 1055292
                                i32.add
                                local.get 4
                                i32.const 1055280
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 5
                                local.get 3
                                i32.store
                                local.get 4
                                i32.const 1055300
                                i32.add
                                local.get 4
                                i32.const 1055288
                                i32.add
                                local.tee 3
                                i32.store
                                local.get 3
                                local.get 5
                                i32.store
                                local.get 4
                                i32.const 1055296
                                i32.add
                                local.get 3
                                i32.store
                                local.get 4
                                i32.const 32
                                i32.add
                                local.tee 4
                                i32.const 256
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              i32.const 1114112
                              i32.const -52
                              i32.add
                              i32.const 56
                              i32.store
                              i32.const 0
                              i32.const 0
                              i32.load offset=1055712
                              i32.store offset=1055252
                              i32.const 0
                              i32.const 1055728
                              i32.const -8
                              i32.const 1055728
                              i32.sub
                              i32.const 15
                              i32.and
                              local.tee 4
                              i32.add
                              local.tee 2
                              i32.store offset=1055248
                              i32.const 0
                              i32.const 1114112
                              i32.const 1055728
                              i32.sub
                              local.get 4
                              i32.sub
                              i32.const -56
                              i32.add
                              local.tee 4
                              i32.store offset=1055236
                              local.get 2
                              local.get 4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 236
                                i32.gt_u
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1055224
                                  local.tee 6
                                  i32.const 16
                                  local.get 0
                                  i32.const 19
                                  i32.add
                                  i32.const 496
                                  i32.and
                                  local.get 0
                                  i32.const 11
                                  i32.lt_u
                                  select
                                  local.tee 5
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 3
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.const 1
                                      i32.and
                                      local.get 3
                                      i32.or
                                      i32.const 1
                                      i32.xor
                                      local.tee 5
                                      i32.const 3
                                      i32.shl
                                      local.tee 3
                                      i32.const 1055264
                                      i32.add
                                      local.tee 4
                                      local.get 3
                                      i32.load offset=1055272
                                      local.tee 3
                                      i32.load offset=8
                                      local.tee 0
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 5
                                      i32.rotl
                                      i32.and
                                      i32.store offset=1055224
                                      br 1 (;@16;)
                                    end
                                    local.get 4
                                    local.get 0
                                    i32.store offset=8
                                    local.get 0
                                    local.get 4
                                    i32.store offset=12
                                  end
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  local.set 4
                                  local.get 3
                                  local.get 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 5
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 0
                                i32.load offset=1055232
                                local.tee 7
                                i32.le_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 4
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      local.get 3
                                      i32.shl
                                      i32.const 2
                                      local.get 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 0
                                      local.get 4
                                      i32.sub
                                      i32.or
                                      i32.and
                                      i32.ctz
                                      local.tee 3
                                      i32.const 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 1055264
                                      i32.add
                                      local.tee 0
                                      local.get 4
                                      i32.load offset=1055272
                                      local.tee 4
                                      i32.load offset=8
                                      local.tee 8
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 3
                                      i32.rotl
                                      i32.and
                                      local.tee 6
                                      i32.store offset=1055224
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    local.get 8
                                    i32.store offset=8
                                    local.get 8
                                    local.get 0
                                    i32.store offset=12
                                  end
                                  local.get 4
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 4
                                  local.get 3
                                  i32.const 3
                                  i32.shl
                                  local.tee 3
                                  i32.add
                                  local.get 3
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.store
                                  local.get 4
                                  local.get 5
                                  i32.add
                                  local.tee 8
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  block  ;; label = @16
                                    local.get 7
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.const -8
                                    i32.and
                                    i32.const 1055264
                                    i32.add
                                    local.set 5
                                    i32.const 0
                                    i32.load offset=1055244
                                    local.set 3
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 6
                                        i32.const 1
                                        local.get 7
                                        i32.const 3
                                        i32.shr_u
                                        i32.shl
                                        local.tee 9
                                        i32.and
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.get 6
                                        local.get 9
                                        i32.or
                                        i32.store offset=1055224
                                        local.get 5
                                        local.set 9
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=8
                                      local.set 9
                                    end
                                    local.get 9
                                    local.get 3
                                    i32.store offset=12
                                    local.get 5
                                    local.get 3
                                    i32.store offset=8
                                    local.get 3
                                    local.get 5
                                    i32.store offset=12
                                    local.get 3
                                    local.get 9
                                    i32.store offset=8
                                  end
                                  local.get 4
                                  i32.const 8
                                  i32.add
                                  local.set 4
                                  i32.const 0
                                  local.get 8
                                  i32.store offset=1055244
                                  i32.const 0
                                  local.get 0
                                  i32.store offset=1055232
                                  br 14 (;@1;)
                                end
                                i32.const 0
                                i32.load offset=1055228
                                local.tee 10
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 10
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.load offset=1055528
                                local.tee 8
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.set 3
                                local.get 8
                                local.set 0
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=16
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 4
                                      i32.eqz
                                      br_if 2 (;@15;)
                                    end
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 5
                                    i32.sub
                                    local.tee 0
                                    local.get 3
                                    local.get 0
                                    local.get 3
                                    i32.lt_u
                                    local.tee 0
                                    select
                                    local.set 3
                                    local.get 4
                                    local.get 8
                                    local.get 0
                                    select
                                    local.set 8
                                    local.get 4
                                    local.set 0
                                    br 0 (;@16;)
                                  end
                                end
                                local.get 8
                                i32.load offset=24
                                local.set 2
                                block  ;; label = @15
                                  local.get 8
                                  i32.load offset=12
                                  local.tee 4
                                  local.get 8
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 4
                                  i32.store offset=12
                                  local.get 4
                                  local.get 0
                                  i32.store offset=8
                                  br 13 (;@2;)
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 8
                                    i32.load offset=20
                                    local.tee 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 8
                                    i32.const 20
                                    i32.add
                                    local.set 9
                                    br 1 (;@15;)
                                  end
                                  local.get 8
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  br_if 4 (;@11;)
                                  local.get 8
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                end
                                loop  ;; label = @15
                                  local.get 9
                                  local.set 11
                                  local.get 0
                                  local.tee 4
                                  i32.const 20
                                  i32.add
                                  local.set 9
                                  local.get 4
                                  i32.load offset=20
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                local.get 11
                                i32.const 0
                                i32.store
                                br 12 (;@2;)
                              end
                              i32.const -1
                              local.set 5
                              local.get 0
                              i32.const -65
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 19
                              i32.add
                              local.tee 4
                              i32.const -16
                              i32.and
                              local.set 5
                              i32.const 0
                              i32.load offset=1055228
                              local.tee 10
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 31
                              local.set 7
                              block  ;; label = @14
                                local.get 0
                                i32.const 16777196
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 38
                                local.get 4
                                i32.const 8
                                i32.shr_u
                                i32.clz
                                local.tee 4
                                i32.sub
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.get 4
                                i32.const 1
                                i32.shl
                                i32.sub
                                i32.const 62
                                i32.add
                                local.set 7
                              end
                              i32.const 0
                              local.get 5
                              i32.sub
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 7
                                      i32.const 2
                                      i32.shl
                                      i32.load offset=1055528
                                      local.tee 0
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 4
                                      i32.const 0
                                      local.set 9
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    i32.const 0
                                    i32.const 25
                                    local.get 7
                                    i32.const 1
                                    i32.shr_u
                                    i32.sub
                                    local.get 7
                                    i32.const 31
                                    i32.eq
                                    select
                                    i32.shl
                                    local.set 8
                                    i32.const 0
                                    local.set 9
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 0
                                        i32.load offset=4
                                        i32.const -8
                                        i32.and
                                        local.get 5
                                        i32.sub
                                        local.tee 6
                                        local.get 3
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.set 3
                                        local.get 0
                                        local.set 9
                                        local.get 6
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 3
                                        local.get 0
                                        local.set 9
                                        local.get 0
                                        local.set 4
                                        br 3 (;@15;)
                                      end
                                      local.get 4
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 6
                                      local.get 6
                                      local.get 0
                                      local.get 8
                                      i32.const 29
                                      i32.shr_u
                                      i32.const 4
                                      i32.and
                                      i32.add
                                      i32.load offset=16
                                      local.tee 11
                                      i32.eq
                                      select
                                      local.get 4
                                      local.get 6
                                      select
                                      local.set 4
                                      local.get 8
                                      i32.const 1
                                      i32.shl
                                      local.set 8
                                      local.get 11
                                      local.set 0
                                      local.get 11
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 4
                                    local.get 9
                                    i32.or
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 9
                                    i32.const 2
                                    local.get 7
                                    i32.shl
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.or
                                    local.get 10
                                    i32.and
                                    local.tee 4
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    local.get 4
                                    i32.ctz
                                    i32.const 2
                                    i32.shl
                                    i32.load offset=1055528
                                    local.set 4
                                  end
                                  local.get 4
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                loop  ;; label = @15
                                  local.get 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.tee 6
                                  local.get 3
                                  i32.lt_u
                                  local.set 8
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=16
                                    local.tee 0
                                    br_if 0 (;@16;)
                                    local.get 4
                                    i32.load offset=20
                                    local.set 0
                                  end
                                  local.get 6
                                  local.get 3
                                  local.get 8
                                  select
                                  local.set 3
                                  local.get 4
                                  local.get 9
                                  local.get 8
                                  select
                                  local.set 9
                                  local.get 0
                                  local.set 4
                                  local.get 0
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 9
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 0
                              i32.load offset=1055232
                              local.get 5
                              i32.sub
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 9
                              i32.load offset=24
                              local.set 11
                              block  ;; label = @14
                                local.get 9
                                i32.load offset=12
                                local.tee 4
                                local.get 9
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 9
                                i32.load offset=8
                                local.tee 0
                                local.get 4
                                i32.store offset=12
                                local.get 4
                                local.get 0
                                i32.store offset=8
                                br 11 (;@3;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 9
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.const 20
                                  i32.add
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 9
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 8
                              end
                              loop  ;; label = @14
                                local.get 8
                                local.set 6
                                local.get 0
                                local.tee 4
                                i32.const 20
                                i32.add
                                local.set 8
                                local.get 4
                                i32.load offset=20
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 4
                                i32.const 16
                                i32.add
                                local.set 8
                                local.get 4
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 0
                              i32.store
                              br 10 (;@3;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055232
                              local.tee 4
                              local.get 5
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1055244
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.const 16
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 5
                                  i32.add
                                  local.tee 8
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 4
                                  i32.add
                                  local.get 0
                                  i32.store
                                  local.get 3
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  br 1 (;@14;)
                                end
                                local.get 3
                                local.get 4
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 4
                                i32.add
                                local.tee 4
                                local.get 4
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 8
                                i32.const 0
                                local.set 0
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=1055232
                              i32.const 0
                              local.get 8
                              i32.store offset=1055244
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 4
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055236
                              local.tee 0
                              local.get 5
                              i32.le_u
                              br_if 0 (;@13;)
                              local.get 2
                              local.get 5
                              i32.add
                              local.tee 4
                              local.get 0
                              local.get 5
                              i32.sub
                              local.tee 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 4
                              i32.store offset=1055248
                              i32.const 0
                              local.get 3
                              i32.store offset=1055236
                              local.get 2
                              local.get 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 2
                              i32.const 8
                              i32.add
                              local.set 4
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055696
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.load offset=1055704
                                local.set 3
                                br 1 (;@13;)
                              end
                              i32.const 0
                              i64.const -1
                              i64.store offset=1055708 align=4
                              i32.const 0
                              i64.const 281474976776192
                              i64.store offset=1055700 align=4
                              i32.const 0
                              local.get 1
                              i32.const 12
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              i32.store offset=1055696
                              i32.const 0
                              i32.const 0
                              i32.store offset=1055716
                              i32.const 0
                              i32.const 0
                              i32.store offset=1055668
                              i32.const 65536
                              local.set 3
                            end
                            i32.const 0
                            local.set 4
                            block  ;; label = @13
                              local.get 3
                              local.get 5
                              i32.const 71
                              i32.add
                              local.tee 11
                              i32.add
                              local.tee 8
                              i32.const 0
                              local.get 3
                              i32.sub
                              local.tee 6
                              i32.and
                              local.tee 9
                              local.get 5
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 48
                              i32.store offset=1055076
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055664
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055656
                                local.tee 3
                                local.get 9
                                i32.add
                                local.tee 7
                                local.get 3
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 4
                                i32.le_u
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.set 4
                              i32.const 0
                              i32.const 48
                              i32.store offset=1055076
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load8_u offset=1055668
                            i32.const 4
                            i32.and
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 1055672
                                  local.set 4
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 2
                                      local.get 4
                                      i32.load
                                      local.tee 3
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 2
                                      local.get 3
                                      local.get 4
                                      i32.load offset=4
                                      i32.add
                                      i32.lt_u
                                      br_if 3 (;@14;)
                                    end
                                    local.get 4
                                    i32.load offset=8
                                    local.tee 4
                                    br_if 0 (;@16;)
                                  end
                                end
                                i32.const 0
                                call 116
                                local.tee 8
                                i32.const -1
                                i32.eq
                                br_if 6 (;@8;)
                                local.get 9
                                local.set 6
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1055700
                                  local.tee 4
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 8
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  local.get 8
                                  i32.sub
                                  local.get 3
                                  local.get 8
                                  i32.add
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.and
                                  i32.add
                                  local.set 6
                                end
                                local.get 6
                                local.get 5
                                i32.le_u
                                br_if 6 (;@8;)
                                local.get 6
                                i32.const 2147483646
                                i32.gt_u
                                br_if 6 (;@8;)
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1055664
                                  local.tee 4
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.load offset=1055656
                                  local.tee 3
                                  local.get 6
                                  i32.add
                                  local.tee 0
                                  local.get 3
                                  i32.le_u
                                  br_if 7 (;@8;)
                                  local.get 0
                                  local.get 4
                                  i32.gt_u
                                  br_if 7 (;@8;)
                                end
                                local.get 6
                                call 116
                                local.tee 4
                                local.get 8
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 6
                              i32.and
                              local.tee 6
                              i32.const 2147483646
                              i32.gt_u
                              br_if 5 (;@8;)
                              local.get 6
                              call 116
                              local.tee 8
                              local.get 4
                              i32.load
                              local.get 4
                              i32.load offset=4
                              i32.add
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 8
                              local.set 4
                            end
                            block  ;; label = @13
                              local.get 6
                              local.get 5
                              i32.const 72
                              i32.add
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const -1
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 11
                                local.get 6
                                i32.sub
                                i32.const 0
                                i32.load offset=1055704
                                local.tee 3
                                i32.add
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                local.tee 3
                                i32.const 2147483646
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.set 8
                                br 8 (;@6;)
                              end
                              block  ;; label = @14
                                local.get 3
                                call 116
                                i32.const -1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 3
                                local.get 6
                                i32.add
                                local.set 6
                                local.get 4
                                local.set 8
                                br 8 (;@6;)
                              end
                              i32.const 0
                              local.get 6
                              i32.sub
                              call 116
                              drop
                              br 5 (;@8;)
                            end
                            local.get 4
                            local.set 8
                            local.get 4
                            i32.const -1
                            i32.ne
                            br_if 6 (;@6;)
                            br 4 (;@8;)
                          end
                          unreachable
                        end
                        i32.const 0
                        local.set 4
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 4
                      br 6 (;@3;)
                    end
                    local.get 8
                    i32.const -1
                    i32.ne
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055668
                  i32.const 4
                  i32.or
                  i32.store offset=1055668
                end
                local.get 9
                i32.const 2147483646
                i32.gt_u
                br_if 1 (;@5;)
                local.get 9
                call 116
                local.set 8
                i32.const 0
                call 116
                local.set 4
                local.get 8
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 4
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 8
                local.get 4
                i32.ge_u
                br_if 1 (;@5;)
                local.get 4
                local.get 8
                i32.sub
                local.tee 6
                local.get 5
                i32.const 56
                i32.add
                i32.le_u
                br_if 1 (;@5;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1055656
              local.get 6
              i32.add
              local.tee 4
              i32.store offset=1055656
              block  ;; label = @6
                local.get 4
                i32.const 0
                i32.load offset=1055660
                i32.le_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 4
                i32.store offset=1055660
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1055248
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1055672
                      local.set 4
                      loop  ;; label = @10
                        local.get 8
                        local.get 4
                        i32.load
                        local.tee 0
                        local.get 4
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1055240
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 4
                        i32.ge_u
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      local.get 8
                      i32.store offset=1055240
                    end
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.get 6
                    i32.store offset=1055676
                    i32.const 0
                    local.get 8
                    i32.store offset=1055672
                    i32.const 0
                    i32.const -1
                    i32.store offset=1055256
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055696
                    i32.store offset=1055260
                    i32.const 0
                    i32.const 0
                    i32.store offset=1055684
                    loop  ;; label = @9
                      local.get 4
                      i32.const 1055284
                      i32.add
                      local.get 4
                      i32.const 1055272
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 4
                      i32.const 1055264
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 4
                      i32.const 1055276
                      i32.add
                      local.get 0
                      i32.store
                      local.get 4
                      i32.const 1055292
                      i32.add
                      local.get 4
                      i32.const 1055280
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 0
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 1055300
                      i32.add
                      local.get 4
                      i32.const 1055288
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 4
                      i32.const 1055296
                      i32.add
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.const 256
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    i32.const -8
                    local.get 8
                    i32.sub
                    i32.const 15
                    i32.and
                    local.tee 4
                    i32.add
                    local.tee 3
                    local.get 6
                    i32.const -56
                    i32.add
                    local.tee 0
                    local.get 4
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055712
                    i32.store offset=1055252
                    i32.const 0
                    local.get 4
                    i32.store offset=1055236
                    i32.const 0
                    local.get 3
                    i32.store offset=1055248
                    local.get 8
                    local.get 0
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 2 (;@6;)
                  end
                  local.get 3
                  local.get 8
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const -8
                  local.get 3
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 0
                  i32.add
                  local.tee 8
                  i32.const 0
                  i32.load offset=1055236
                  local.get 6
                  i32.add
                  local.tee 11
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 4
                  local.get 9
                  local.get 6
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055712
                  i32.store offset=1055252
                  i32.const 0
                  local.get 0
                  i32.store offset=1055236
                  i32.const 0
                  local.get 8
                  i32.store offset=1055248
                  local.get 3
                  local.get 11
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 8
                  i32.const 0
                  i32.load offset=1055240
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 8
                  i32.store offset=1055240
                end
                local.get 8
                local.get 6
                i32.add
                local.set 0
                i32.const 1055672
                local.set 4
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 4
                      i32.load
                      local.tee 9
                      local.get 0
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 4
                      i32.load offset=8
                      local.tee 4
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 4
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 1055672
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.load
                      local.tee 0
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 0
                      local.get 4
                      i32.load offset=4
                      i32.add
                      local.tee 0
                      i32.lt_u
                      br_if 2 (;@7;)
                    end
                    local.get 4
                    i32.load offset=8
                    local.set 4
                    br 0 (;@8;)
                  end
                end
                local.get 8
                i32.const -8
                local.get 8
                i32.sub
                i32.const 15
                i32.and
                local.tee 4
                i32.add
                local.tee 11
                local.get 6
                i32.const -56
                i32.add
                local.tee 9
                local.get 4
                i32.sub
                local.tee 4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 8
                local.get 9
                i32.add
                i32.const 56
                i32.store offset=4
                local.get 3
                local.get 0
                i32.const 55
                local.get 0
                i32.sub
                i32.const 15
                i32.and
                i32.add
                i32.const -63
                i32.add
                local.tee 9
                local.get 9
                local.get 3
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 9
                i32.const 35
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1055712
                i32.store offset=1055252
                i32.const 0
                local.get 4
                i32.store offset=1055236
                i32.const 0
                local.get 11
                i32.store offset=1055248
                local.get 9
                i32.const 16
                i32.add
                i32.const 0
                i64.load offset=1055680 align=4
                i64.store align=4
                local.get 9
                i32.const 0
                i64.load offset=1055672 align=4
                i64.store offset=8 align=4
                i32.const 0
                local.get 9
                i32.const 8
                i32.add
                i32.store offset=1055680
                i32.const 0
                local.get 6
                i32.store offset=1055676
                i32.const 0
                local.get 8
                i32.store offset=1055672
                i32.const 0
                i32.const 0
                i32.store offset=1055684
                local.get 9
                i32.const 36
                i32.add
                local.set 4
                loop  ;; label = @7
                  local.get 4
                  i32.const 7
                  i32.store
                  local.get 4
                  i32.const 4
                  i32.add
                  local.tee 4
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 9
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 9
                local.get 9
                local.get 3
                i32.sub
                local.tee 8
                i32.store
                local.get 3
                local.get 8
                i32.const 1
                i32.or
                i32.store offset=4
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const -8
                    i32.and
                    i32.const 1055264
                    i32.add
                    local.set 4
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1055224
                        local.tee 0
                        i32.const 1
                        local.get 8
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        local.get 8
                        i32.or
                        i32.store offset=1055224
                        local.get 4
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 4
                      i32.load offset=8
                      local.set 0
                    end
                    local.get 0
                    local.get 3
                    i32.store offset=12
                    local.get 4
                    local.get 3
                    i32.store offset=8
                    i32.const 12
                    local.set 8
                    i32.const 8
                    local.set 9
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 4
                  block  ;; label = @8
                    local.get 8
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 38
                    local.get 8
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 4
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 4
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 4
                  end
                  local.get 3
                  local.get 4
                  i32.store offset=28
                  local.get 3
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 4
                  i32.const 2
                  i32.shl
                  i32.const 1055528
                  i32.add
                  local.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1055228
                        local.tee 9
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 6
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 3
                        i32.store
                        i32.const 0
                        local.get 9
                        local.get 6
                        i32.or
                        i32.store offset=1055228
                        local.get 3
                        local.get 0
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 8
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 0
                      i32.load
                      local.set 9
                      loop  ;; label = @10
                        local.get 9
                        local.tee 0
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 8
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 9
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 0
                        local.get 9
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 6
                        i32.load offset=16
                        local.tee 9
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      i32.const 16
                      i32.add
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 0
                      i32.store offset=24
                    end
                    i32.const 8
                    local.set 8
                    i32.const 12
                    local.set 9
                    local.get 3
                    local.set 0
                    local.get 3
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.set 4
                  local.get 0
                  local.get 3
                  i32.store offset=8
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  i32.const 0
                  local.set 4
                  i32.const 24
                  local.set 8
                  i32.const 12
                  local.set 9
                end
                local.get 3
                local.get 9
                i32.add
                local.get 0
                i32.store
                local.get 3
                local.get 8
                i32.add
                local.get 4
                i32.store
              end
              i32.const 0
              i32.load offset=1055236
              local.tee 4
              local.get 5
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1055248
              local.tee 3
              local.get 5
              i32.add
              local.tee 0
              local.get 4
              local.get 5
              i32.sub
              local.tee 4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 4
              i32.store offset=1055236
              i32.const 0
              local.get 0
              i32.store offset=1055248
              local.get 3
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 3
              i32.const 8
              i32.add
              local.set 4
              br 4 (;@1;)
            end
            i32.const 0
            local.set 4
            i32.const 0
            i32.const 48
            i32.store offset=1055076
            br 3 (;@1;)
          end
          local.get 4
          local.get 8
          i32.store
          local.get 4
          local.get 4
          i32.load offset=4
          local.get 6
          i32.add
          i32.store offset=4
          local.get 8
          local.get 9
          local.get 5
          call 119
          local.set 4
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 9
              i32.load offset=28
              local.tee 8
              i32.const 2
              i32.shl
              local.tee 0
              i32.load offset=1055528
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 1055528
              i32.add
              local.get 4
              i32.store
              local.get 4
              br_if 1 (;@4;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 8
              i32.rotl
              i32.and
              local.tee 10
              i32.store offset=1055228
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 9
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 4
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 4
              i32.store offset=20
            end
            local.get 4
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 4
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 9
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 4
            i32.store offset=24
          end
          local.get 9
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 4
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 9
            local.get 3
            local.get 5
            i32.or
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 9
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 9
          local.get 5
          i32.add
          local.tee 8
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 9
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.and
            i32.const 1055264
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1055224
                local.tee 5
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 3
                i32.or
                i32.store offset=1055224
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=8
              local.set 3
            end
            local.get 3
            local.get 8
            i32.store offset=12
            local.get 4
            local.get 8
            i32.store offset=8
            local.get 8
            local.get 4
            i32.store offset=12
            local.get 8
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 4
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 8
          local.get 4
          i32.store offset=28
          local.get 8
          i64.const 0
          i64.store offset=16 align=4
          local.get 4
          i32.const 2
          i32.shl
          i32.const 1055528
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 10
            i32.const 1
            local.get 4
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 8
            i32.store
            i32.const 0
            local.get 10
            local.get 0
            i32.or
            i32.store offset=1055228
            local.get 8
            local.get 5
            i32.store offset=24
            local.get 8
            local.get 8
            i32.store offset=8
            local.get 8
            local.get 8
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 4
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 4
          local.get 5
          i32.load
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const 29
              i32.shr_u
              local.set 0
              local.get 4
              i32.const 1
              i32.shl
              local.set 4
              local.get 5
              local.get 0
              i32.const 4
              i32.and
              i32.add
              local.tee 6
              i32.load offset=16
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 16
            i32.add
            local.get 8
            i32.store
            local.get 8
            local.get 5
            i32.store offset=24
            local.get 8
            local.get 8
            i32.store offset=12
            local.get 8
            local.get 8
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 4
          local.get 8
          i32.store offset=12
          local.get 5
          local.get 8
          i32.store offset=8
          local.get 8
          i32.const 0
          i32.store offset=24
          local.get 8
          local.get 5
          i32.store offset=12
          local.get 8
          local.get 4
          i32.store offset=8
        end
        local.get 9
        i32.const 8
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            local.get 8
            i32.load offset=28
            local.tee 9
            i32.const 2
            i32.shl
            local.tee 0
            i32.load offset=1055528
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.const 1055528
            i32.add
            local.get 4
            i32.store
            local.get 4
            br_if 1 (;@3;)
            i32.const 0
            local.get 10
            i32.const -2
            local.get 9
            i32.rotl
            i32.and
            i32.store offset=1055228
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.get 8
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 4
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 2
            local.get 4
            i32.store offset=20
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 2
        i32.store offset=24
        block  ;; label = @3
          local.get 8
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 8
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          local.get 5
          i32.or
          local.tee 4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 4
          i32.add
          local.tee 4
          local.get 4
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 8
        local.get 5
        i32.add
        local.tee 0
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 8
        local.get 5
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 3
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const -8
          i32.and
          i32.const 1055264
          i32.add
          local.set 5
          i32.const 0
          i32.load offset=1055244
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 7
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 9
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 9
              local.get 6
              i32.or
              i32.store offset=1055224
              local.get 5
              local.set 9
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=8
            local.set 9
          end
          local.get 9
          local.get 4
          i32.store offset=12
          local.get 5
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 5
          i32.store offset=12
          local.get 4
          local.get 9
          i32.store offset=8
        end
        i32.const 0
        local.get 0
        i32.store offset=1055244
        i32.const 0
        local.get 3
        i32.store offset=1055232
      end
      local.get 8
      i32.const 8
      i32.add
      local.set 4
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;119;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    local.get 0
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 3
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    i32.const -8
    local.get 1
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 4
    local.get 3
    local.get 2
    i32.add
    local.tee 5
    i32.sub
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1055248
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1055248
        i32.const 0
        i32.const 0
        i32.load offset=1055236
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1055236
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1055244
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1055244
        i32.const 0
        i32.const 0
        i32.load offset=1055232
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1055232
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 2
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.load offset=8
              local.tee 7
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1055224
              i32.const -2
              local.get 1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1055224
              br 2 (;@3;)
            end
            local.get 2
            local.get 7
            i32.store offset=8
            local.get 7
            local.get 2
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=24
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load offset=20
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 20
                  i32.add
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=16
                local.tee 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 16
                i32.add
                local.set 7
              end
              loop  ;; label = @6
                local.get 7
                local.set 9
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.set 7
                local.get 2
                i32.load offset=20
                local.tee 1
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.set 7
                local.get 2
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 4
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              local.tee 1
              i32.load offset=1055528
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              i32.const 1055528
              i32.add
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055228
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1055228
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 4
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 6
        local.get 0
        i32.add
        local.set 0
        local.get 4
        local.get 6
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 1
      end
      local.get 4
      local.get 1
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 5
      local.get 0
      i32.add
      local.get 0
      i32.store
      local.get 5
      local.get 0
      i32.const 1
      i32.or
      i32.store offset=4
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1055264
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055224
            local.tee 1
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            local.get 0
            i32.or
            i32.store offset=1055224
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 5
        i32.store offset=12
        local.get 2
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 0
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1055528
      i32.add
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1055228
        local.tee 7
        i32.const 1
        local.get 2
        i32.shl
        local.tee 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store
        i32.const 0
        local.get 7
        local.get 4
        i32.or
        i32.store offset=1055228
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.const 25
      local.get 2
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 2
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 2
      local.get 1
      i32.load
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          local.tee 1
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const 29
          i32.shr_u
          local.set 7
          local.get 2
          i32.const 1
          i32.shl
          local.set 2
          local.get 1
          local.get 7
          i32.const 4
          i32.and
          i32.add
          local.tee 4
          i32.load offset=16
          local.tee 7
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 16
        i32.add
        local.get 5
        i32.store
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 5
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.tee 2
      local.get 5
      i32.store offset=12
      local.get 1
      local.get 5
      i32.store offset=8
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 8
    i32.add)
  (func (;120;) (type 2) (param i32)
    local.get 0
    call 121)
  (func (;121;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 4
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1055240
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=1055244
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055224
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1055224
                  br 5 (;@2;)
                end
                local.get 1
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 3
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 3
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 0
              i32.store offset=1055232
              local.get 3
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            local.tee 4
            i32.load offset=1055528
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 1055528
            i32.add
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1055228
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1055228
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.store offset=20
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 2
        i32.store offset=24
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1055248
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1055248
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055236
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1055236
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  i32.const 0
                  i32.load offset=1055244
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055232
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055244
                  return
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1055244
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1055244
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055232
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1055232
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 3
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    local.get 3
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055224
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1055224
                    br 5 (;@3;)
                  end
                  local.get 2
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 2
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=24
                local.set 8
                block  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 3
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              local.tee 4
              i32.load offset=1055528
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 1055528
              i32.add
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055228
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1055228
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=1055232
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1055264
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055224
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=1055224
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1055528
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1055228
              local.tee 4
              i32.const 1
              local.get 2
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.store
              i32.const 0
              local.get 4
              local.get 3
              i32.or
              i32.store offset=1055228
              i32.const 8
              local.set 0
              i32.const 24
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 5
            i32.load
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 5
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 5
              i32.const 4
              i32.and
              i32.add
              local.tee 3
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.store
            i32.const 8
            local.set 0
            i32.const 24
            local.set 2
            local.get 4
            local.set 5
          end
          local.get 1
          local.set 4
          local.get 1
          local.set 3
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 5
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        i32.const 0
        local.set 3
        i32.const 24
        local.set 0
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      local.get 5
      i32.store
      local.get 1
      local.get 4
      i32.store offset=12
      local.get 1
      local.get 0
      i32.add
      local.get 3
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1055256
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1055256
    end)
  (func (;122;) (type 1) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call 118
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      memory.fill
    end
    local.get 0)
  (func (;123;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call 118
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1055076
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1055704
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call 124
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1055248
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1055236
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1055248
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1055236
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1055244
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1055232
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1055244
          i32.const 0
          local.get 1
          i32.store offset=1055232
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        local.get 7
        i32.load offset=12
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.load offset=8
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1055224
              i32.const -2
              local.get 8
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1055224
              br 2 (;@3;)
            end
            local.get 1
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 11
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=8
              local.tee 5
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=20
                  local.tee 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 7
                i32.load offset=16
                local.tee 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.set 8
              end
              loop  ;; label = @6
                local.get 8
                local.set 12
                local.get 5
                local.tee 1
                i32.const 20
                i32.add
                local.set 8
                local.get 1
                i32.load offset=20
                local.tee 5
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 8
                local.get 1
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 12
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 1
          end
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 8
              i32.const 2
              i32.shl
              local.tee 5
              i32.load offset=1055528
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              i32.const 1055528
              i32.add
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055228
              i32.const -2
              local.get 8
              i32.rotl
              i32.and
              i32.store offset=1055228
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 7
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 1
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 1
              i32.store offset=20
            end
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 5
            i32.store offset=16
            local.get 5
            local.get 1
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          i32.store offset=20
          local.get 5
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call 124
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call 118
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      block  ;; label = @2
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        memory.copy
      end
      local.get 0
      call 121
      local.get 2
      local.set 0
    end
    local.get 0)
  (func (;124;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 4
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 4
                i32.sub
                local.tee 0
                i32.const 0
                i32.load offset=1055244
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=12
                local.set 3
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055224
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1055224
                  br 5 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 3
                  local.get 0
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 1
              i32.store offset=1055232
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 3
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 3
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            local.tee 4
            i32.load offset=1055528
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            i32.const 1055528
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1055228
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1055228
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 3
            i32.store offset=20
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 6
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 3
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1055248
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1055248
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055236
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1055236
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1055244
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055232
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055244
                  return
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1055244
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1055244
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055232
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1055232
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 1
                i32.add
                local.set 1
                local.get 2
                i32.load offset=12
                local.set 3
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    local.get 2
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055224
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1055224
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 3
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 2
                i32.load offset=24
                local.set 8
                block  ;; label = @7
                  local.get 3
                  local.get 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 3
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 2
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              local.tee 4
              i32.load offset=1055528
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              i32.const 1055528
              i32.add
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055228
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1055228
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 3
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 3
              i32.store offset=20
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 2
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 3
            i32.store offset=24
          end
          local.get 2
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.store offset=1055232
        return
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        i32.const 1055264
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055224
            local.tee 4
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 1
            i32.or
            i32.store offset=1055224
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 1
        end
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 38
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 3
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 3
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1055528
      i32.add
      local.set 4
      block  ;; label = @2
        i32.const 0
        i32.load offset=1055228
        local.tee 5
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 5
        local.get 2
        i32.or
        i32.store offset=1055228
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 5
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 5
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 5
          i32.const 4
          i32.and
          i32.add
          local.tee 2
          i32.load offset=16
          local.tee 5
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 16
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func (;125;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call 118
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        local.tee 4
        local.get 4
        i32.const -1
        i32.add
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.const -64
          local.get 1
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          i32.const 48
          return
        end
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call 126
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func (;126;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      local.get 0
      i32.sub
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1055076
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.add
      i32.const 12
      i32.add
      call 118
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      i32.const 0
      local.get 0
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      i32.add
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call 124
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call 124
    end
    local.get 0
    i32.const 8
    i32.add)
  (table (;0;) 42 42 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func 5))
  (export "__main_void" (func 16))
  (elem (;0;) (i32.const 1) func 14 15 40 90 7 38 24 25 36 46 34 57 87 88 29 30 31 56 58 59 60 61 62 63 64 76 78 79 80 81 82 83 84 72 73 74 75 65 86 66 77)
  (data (;0;) (i32.const 1048576) "Hello, world!\0a\c0\01:\c0\01:\c0\00\16slice index starts at \c0\0d but ends at \c0\00\12range start index \c0\22 out of range for slice of length \c0\00\10range end index \c0\22 out of range for slice of length \c0\00\10assertion `left \c0\10 right` failed: \c0\09\0a  left: \c0\09\0a right: \c0\00\13failed printing to \c0\02: \c0\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/core/src/slice/index.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/rt.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/sys/sync/mutex/no_threads.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/core/src/slice/memchr.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/io/stdio.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/io/buffered/linewritershim.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/sync/reentrant_lock.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/sys/io/error/wasi.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/panicking.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/sync/once.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/io/mod.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/alloc/src/raw_vec/mod.rs\00/rustc/59807616e1fa2540724bfbac14d7976d7e4a3860/library/std/src/thread/id.rs\00/\00\c0\0b (os error \c0\01)\00\15memory allocation of \c0G bytes failed\0askipping backtrace printing to avoid potential recursion\0a\00\15memory allocation of \c0\0e bytes failed\0a\00\0cpanicked at \c0\02:\0a\c03\0athread panicked while processing panic. aborting.\0a\00\09\0athread '\c0\03' (\c0\0e) panicked at \c0\02:\0a\c0\01\0a\00\19aborting due to panic at \c0\02:\0a\c0\01\0a\00capacity overflow\00\00\81\04\10\00P\00\00\00\1c\00\00\00\05\00\00\000123456789abcdef { , :  {\0a,\0a((\0a}) }\00\00\00\00\00\0c\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00==00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\00\00\f6\01\10\00P\00\00\00\a0\00\00\00\09\00\00\00\f6\01\10\00P\00\00\00\84\00\00\00\1e\00\00\00    0x0123456789ABCDEFfalsetrueRefCell already borrowed\00\ea\03\10\00L\00\00\00\db\00\00\00\14\00\00\00Once instance has previously been poisonedone-time initialization may not be performed recursively\00\00\00\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\007\04\10\00I\00\00\00\88\02\00\00\11\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00G\02\10\00K\00\00\00\8d\04\00\00\09\00\00\00main<unnamed>\00\00\00\9d\03\10\00L\00\00\00\16\01\00\00.\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\00\00\00\00\08\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\00\10\00\00\00\04\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00called `Result::unwrap()` on an `Err` valuemid > lenm]\cb\d6,P\ebcxA\a6Wq\1b\8b\b9\e4\fd\9e\8f\ba8\e8\93\b7\8acNw\af%\80fatal runtime error: rwlock locked for writing, aborting\0aRUST_BACKTRACEentity not foundpermission deniedconnection refusedconnection resethost unreachablenetwork unreachableconnection abortednot connectedaddress in useaddress not availablenetwork downbroken pipeentity already existsoperation would blocknot a directoryis a directorydirectory not emptyread-only filesystem or storage mediumfilesystem loop or indirection limit (e.g. symlink loop)stale network file handleinvalid input parameterinvalid datatimed outwrite zerono storage spaceseek on unseekable filequota exceededfile too largeresource busyexecutable file busydeadlockcross-device link or renametoo many linksinvalid filenameargument list too longoperation interruptedunsupportedunexpected end of fileout of memoryin progressother erroruncategorized errorcannot recursively acquire mutex\99\01\10\00\5c\00\00\00\13\00\00\00\09\00\00\00lock count overflow in reentrant mutex\00\00\f1\02\10\00V\00\00\00#\01\00\00-\00\00\00failed to write the buffered data\00\00\00\a8\0e\10\00!\00\00\00\17\00\00\00S\01\10\00E\00\00\00\8d\00\00\00\0d\00\00\00Box<dyn Any>thread caused non-unwinding panic. aborting.\0a\00\00\00\03\01\10\00O\00\00\00\fc\03\00\003\00\00\00stdout\00\00G\02\10\00K\00\00\00\e3\02\00\00\13\00\00\00failed to write whole bufferL\0f\10\00\1c\00\00\00\17\00\00\00\00\00\00\00\02\00\00\00h\0f\10\00stack backtrace:\0anote: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0a\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00'\00\00\00H\03\10\00T\00\00\00N\00\00\006\00\00\00strerror_r failure\00\00H\03\10\00T\00\00\00L\00\00\00\0d\00\00\00failed to generate unique thread ID: bitspace exhausted\00\d2\04\10\00L\00\00\00&\00\00\00\0d\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00(\00\00\00Utf8Errorvalid_up_toerror_lenNoneSome\00\00\00\93\02\10\00]\00\00\00\16\01\00\00)\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\00)\00\00\00G\02\10\00K\00\00\00\5c\03\00\00\14\00\00\007\04\10\00I\00\00\00Y\07\00\00$\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\10\00\00\00\10\00\00\00\13\00\00\00\12\00\00\00\0d\00\00\00\0e\00\00\00\15\00\00\00\0c\00\00\00\0b\00\00\00\15\00\00\00\15\00\00\00\0f\00\00\00\0e\00\00\00\13\00\00\00&\00\00\008\00\00\00\19\00\00\00\17\00\00\00\0c\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\17\00\00\00\0e\00\00\00\0e\00\00\00\0d\00\00\00\14\00\00\00\08\00\00\00\1b\00\00\00\0e\00\00\00\10\00\00\00\16\00\00\00\15\00\00\00\0b\00\00\00\16\00\00\00\0d\00\00\00\0b\00\00\00\0b\00\00\00\13\00\00\00S\0b\10\00c\0b\10\00t\0b\10\00\86\0b\10\00\96\0b\10\00\a6\0b\10\00\b9\0b\10\00\cb\0b\10\00\d8\0b\10\00\e6\0b\10\00\fb\0b\10\00\07\0c\10\00\12\0c\10\00'\0c\10\00<\0c\10\00K\0c\10\00Y\0c\10\00l\0c\10\00\92\0c\10\00\ca\0c\10\00\e3\0c\10\00\fa\0c\10\00\06\0d\10\00\0f\0d\10\00\19\0d\10\00)\0d\10\00@\0d\10\00N\0d\10\00\5c\0d\10\00i\0d\10\00}\0d\10\00\85\0d\10\00\a0\0d\10\00\ae\0d\10\00\be\0d\10\00\d4\0d\10\00\e9\0d\10\00\f4\0d\10\00\0a\0e\10\00\17\0e\10\00\22\0e\10\00-\0e\10\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05")
  (data (;1;) (i32.const 1054956) "\01\00\00\00\1f\05\10\00\ff\ff\ff\ff\00\00\02\00"))
