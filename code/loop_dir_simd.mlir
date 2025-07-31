omp.simd private(...)
    reduction(@add_reduction_i32 %s#0 -> %s_arg
    : !fir.ref<i32>) {
  omp.loop_nest (%arg3) : i32 = (%c1) to (%n_val)
      inclusive step (%c1) {
    // Loop body is not affected by the transformation.
    ...
    omp.yield
  }
}