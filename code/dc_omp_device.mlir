omp.target
    host_eval([...])
    map_entries([...]) {
  [...]
  omp.teams {
    omp.parallel {
      %102 = fir.alloca i32
      %103:2 = hlfir.declare %102 : (!fir.ref<i32>)
          -> (!fir.ref<i32>, !fir.ref<i32>)
      %104 = fir.alloca i32
      %105:2 = hlfir.declare %104 : (!fir.ref<i32>)
          -> (!fir.ref<i32>, !fir.ref<i32>)
      omp.distribute {
        omp.wsloop {
          omp.loop_nest (%arg26, %arg27) :
              index = (%arg5, %arg8) to (%arg6, %arg9)
              inclusive step (%arg7, %arg10) {
            // Loop body is not affected by the
            // transformation.
            [...]
            omp.yield
          }
        } {omp.composite}
      } {omp.composite}
      omp.terminator
    } {omp.composite}
    omp.terminator
  }
  omp.terminator
}