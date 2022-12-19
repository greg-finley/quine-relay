    (module
      (import"wasi_snapshot_preview1""fd_write"(func $fd_write(param i32 i32 i32 i32)(result i32)))
      (memory 64)
      (export"memory"(memory 0))
      (data(i32.const 0)"\28\00\00\00\01\00\00\00\2c\00\00\00\02\00\00\00\30\00\00\00\02\00\00\00\34\00\00\00\90\00\00\00\c4\00\00\00\55\00\00\00 ...\\t..\\n..(module(import\"wasi_snapshot_preview1\"\"fd_write\"(func(param i32 i32 i32 i32)(result i32)))(memory(export\"memory\")(data \"\\08\\00\\00\\00\\43\\00\\00\\00\"))(func(export\"_start\")i32.const 1 i32.const 0 i32.const 1 i32.const 0 call 0 drop))abcd")
      (func $out(param i32)
        i32.const 1
        local.get 0
        i32.const 8
        i32.mul
        i32.const 1
        i32.const 52
        call $fd_write
        drop
      )
      (func(export"_start")
        (local $idx i32)
        (local $shift i32)

        i32.const 3
        call $out

        i32.const 281
        local.set $idx
        (loop
          i32.const 0 call $out (; out << 32 ;)
          i32.const 0 call $out (; out << 32 ;)
          i32.const 0 call $out (; out << 32 ;)

          i32.const 8
          local.set $shift
          (loop
            local.get $idx
            i32.load8_u
            local.get $shift
            i32.const 1
            i32.sub
            local.tee $shift
            i32.shr_u
            i32.const 1
            i32.and
            call $out (; out << 32 - c[7-i] * 23 ;)

            local.get $shift
            br_if 0
          )
          i32.const 2 call $out (; out << 10 ;)
          i32.const 1 call $out (; out <<  9 ;)
          i32.const 2 call $out (; out << 10 ;)
          i32.const 0 call $out (; out << 32 ;)
          i32.const 0 call $out (; out << 32 ;)

          local.get $idx
          i32.const 1
          i32.add
          local.tee $idx
          i32.load8_u
          br_if 0
        )
        i32.const 2 call $out (; out << 10 ;)
        i32.const 2 call $out (; out << 10 ;)
        i32.const 2 call $out (; out << 10 ;)

        i32.const 4
        call $out
      )
    )
