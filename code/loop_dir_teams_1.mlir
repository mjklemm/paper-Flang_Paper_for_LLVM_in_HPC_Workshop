omp.teams {
  ...
  omp.parallel private(...) {
    omp.distribute {
      omp.wsloop {
        omp.loop_nest (%arg5, %arg6) : i32 =
            (%c1_i32, %c1_i32_2) to (%19, %20) inclusive
            step (%c1_i32_1, %c1_i32_3) {
          ...
          omp.yield
        }
      } {omp.composite}
    } {omp.composite}
    omp.terminator
  } {omp.composite}
  omp.terminator
}