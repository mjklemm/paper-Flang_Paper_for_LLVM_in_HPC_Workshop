func.func @_QPsaxpy(
  %arg0: !fir.ref<!fir.array<?xf32>>
          {fir.bindc_name = "x"},
  %arg1: !fir.ref<!fir.array<?xf32>>
         {fir.bindc_name = "y"},
  %arg2: !fir.ref<f32> {fir.bindc_name = "a"},
  %arg3: !fir.ref<i32> {fir.bindc_name = "n"}
) {
  %c1 = arith.constant 1 : index
  %c1_i32 = arith.constant 1 : i32
  %c0 = arith.constant 0 : index
  %0 = fir.alloca i32
  %1 = fir.alloca i32
  [...]
  %33 = omp.map.bounds
    lower_bound(%c0 : index)
    upper_bound(%32 : index)
    extent(%21 : index)
    stride(%c1 : index)
    start_idx(%c1 : index)
  %34 = omp.map.info
    var_ptr(%23:!fir.ref<!fir.array<?xf32>>,f32)
    map_clauses(implicit, tofrom) capture(ByRef)
    bounds(%33)->!fir.ref<!fir.array<?xf32>>
    {name = "y"}
  %35 = omp.map.info
    var_ptr(%3 : !fir.ref<f32>, f32)
    map_clauses(implicit,
                exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<f32> {name = "a"}
  %36 = omp.map.info
    var_ptr(%1 : !fir.ref<i32>, i32)
    map_clauses(implicit,
                exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<i32> {name = ""}
  %37 = omp.map.info
    var_ptr(%0 : !fir.ref<i32>, i32)
    map_clauses(implicit,
                exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<i32> {name = ""}
  omp.target host_eval(%c1_i32 -> %arg4, [...])
      map_entries(%29 -> %arg7, [...]) {
    [...]
    omp.teams {
      omp.parallel private(@_QFsaxpyEi_private_i32
              %51 -> %arg14 : !fir.ref<i32>) {
        omp.distribute {
          omp.wsloop {
            omp.loop_nest (%arg15):
                i32 = (%arg4) to (%arg5)
                      inclusive step (%arg6) {
                [...]
            }
          } {omp.composite}
        } {omp.composite}
        omp.terminator
      } {omp.composite}
      omp.terminator
    }
    omp.terminator
  }
  return
}
