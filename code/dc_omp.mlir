omp.parallel {
  %44 = fir.alloca i32
  %i:2 = hlfir.declare %44 : (!fir.ref<i32>)
      -> (!fir.ref<i32>, !fir.ref<i32>)
  %46 = fir.alloca i32
  %j:2 = hlfir.declare %46 : (!fir.ref<i32>)
      -> (!fir.ref<i32>, !fir.ref<i32>)
  omp.wsloop {
    omp.loop_nest (%arg5, %arg6) : index = (%38, %41)
        to (%40, %43) inclusive step (%c1, %c1_4) {
      // Loop body is not affected by the
      // transformation.
      ...
      omp.yield
    }
  }
  omp.terminator
}