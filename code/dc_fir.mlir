    fir.do_concurrent {
      %40 = fir.alloca i32
      %i:2 = hlfir.declare %40 : (!fir.ref<i32>)
          -> (!fir.ref<i32>, !fir.ref<i32>)
      %42 = fir.alloca i32
      %j:2 = hlfir.declare %42 : (!fir.ref<i32>)
          -> (!fir.ref<i32>, !fir.ref<i32>)
      fir.do_concurrent.loop (%arg5, %arg6) 
          = (%34, %37) to (%36, %39) step (%c1, %c1_4) {
        // Update loop iteration variables.
        %44 = fir.convert %arg5 : (index) -> i32
        fir.store %44 to %i#0 : !fir.ref<i32>
        %45 = fir.convert %arg6 : (index) -> i32
        fir.store %45 to %j#0 : !fir.ref<i32>

        // Compute a * x(i,j)
        %46 = fir.load %a#0 : !fir.ref<f32>
        %47 = fir.load %i#0 : !fir.ref<i32>
        %i_val = fir.convert %47 : (i32) -> i64
        %49 = fir.load %j#0 : !fir.ref<i32>
        %j_val = fir.convert %49 : (i32) -> i64
        %51 = hlfir.designate %x#0 (%i_val, %j_val)
            : (!fir.box<!fir.array<?x?xf32>>, i64, i64)
            -> !fir.ref<f32>
        %52 = fir.load %51 : !fir.ref<f32>
        %53 = arith.mulf %46, %52 fastmath<contract> 
            : f32

        // Compute a * x(i,j) + y(i,j)
        %58 = hlfir.designate %y#0 (%i_val, %j_val)
            : (!fir.box<!fir.array<?x?xf32>>, i64, i64)
            -> !fir.ref<f32>
        %59 = fir.load %58 : !fir.ref<f32>
        %60 = arith.addf %53, %59 fastmath<contract> : f32

        // Store the result in y(i,j)
        %65 = hlfir.designate %y#0 (%i_val, %j_val)
            : (!fir.box<!fir.array<?x?xf32>>, i64, i64)
            -> !fir.ref<f32>
        hlfir.assign %60 to %65 : f32, !fir.ref<f32>
      }
    }