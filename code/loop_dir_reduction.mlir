omp.loop private([...])
    reduction(@add_reduction_i32 %s#0 -> %s_arg
    : !fir.ref<i32>) {
  omp.loop_nest (%arg3) : i32 = (%c1) to (%n_val)
      inclusive step (%c1) {
    %local_i:2 = hlfir.declare %arg1 : (!fir.ref<i32>) ->
        (!fir.ref<i32>, !fir.ref<i32>)
    %local_s:2 = hlfir.declare %s_arg : (!fir.ref<i32>) ->
        (!fir.ref<i32>, !fir.ref<i32>)
    hlfir.assign %arg3 to %local_i#0 : i32, !fir.ref<i32>
    %s_val = fir.load %local_s#0 : !fir.ref<i32>
    %10 = arith.addi %s_val, %c1 : i32
    hlfir.assign %10 to %local_s#0 : i32, !fir.ref<i32>
    omp.yield
  }
}