    omp.parallel {
      %44 = fir.alloca i32 {bindc_name = "i"}
      %45:2 = hlfir.declare %44 {uniq_name = "_QFsaxpy2dEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
      %46 = fir.alloca i32 {bindc_name = "j"}
      %47:2 = hlfir.declare %46 {uniq_name = "_QFsaxpy2dEj"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
      omp.wsloop {
        omp.loop_nest (%arg5, %arg6) : index = (%38, %41) to (%40, %43) inclusive step (%c1, %c1_4) {
          [...]
          omp.yield
        }
      }
      omp.terminator
    }