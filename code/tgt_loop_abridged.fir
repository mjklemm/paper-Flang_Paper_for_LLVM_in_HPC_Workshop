func.func @_QPsaxpy(
  %arg0: !fir.ref<!fir.array<?xf32>>
         {fir.bindc_name = "x"},
  %arg1: !fir.ref<!fir.array<?xf32>>
         {fir.bindc_name = "y"},
  %arg2: !fir.ref<f32> {fir.bindc_name = "a"},
  %arg3: !fir.ref<i32> {fir.bindc_name = "n"}
) {
  ...
  %28 = omp.map.bounds lower_bound(%c0 : index)|\label{ln:SaxpyMapInfoXBoundsStart}|
    upper_bound(%27 : index) extent(%26#1 : index)
    stride(%26#2 : index) start_idx(%c1 : index)
    {stride_in_bytes = true}|\label{ln:SaxpyMapInfoXBoundsEnd}|
  %29 = omp.map.info|\label{ln:SaxpyMapInfoXStart}|
    var_ptr(%15:!fir.ref<!fir.array<?xf32>>, f32)
    map_clauses(to) capture(ByRef)|\label{ln:SaxpyMapInfoToExplicit}|
    bounds(%28) -> !fir.ref<!fir.array<?xf32>>
    {name = "x"}|\label{ln:SaxpyMapInfoXEnd}|
  %30 = omp.map.info var_ptr(%5 : !fir.ref<i32>, i32)
    map_clauses(implicit, exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<i32> {name = "i"}
  %31 = omp.map.info var_ptr(%6 : !fir.ref<i32>, i32)
    map_clauses(implicit, exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<i32> {name = "n"}
  %33 = omp.map.bounds lower_bound(%c0 : index)|\label{ln:SaxpyMapInfoYBoundsStart}|
    upper_bound(%32 : index) extent(%21 : index)
    stride(%c1 : index) start_idx(%c1 : index)|\label{ln:SaxpyMapInfoYBoundsEnd}|
  %34 = omp.map.info|\label{ln:SaxpyMapInfoImplicitStart}\label{ln:SaxpyMapInfoImplicitArrayStart}|
    var_ptr(%23:!fir.ref<!fir.array<?xf32>>,f32)
    map_clauses(implicit, tofrom) capture(ByRef)
    bounds(%33) -> !fir.ref<!fir.array<?xf32>>
    {name = "y"}|\label{ln:SaxpyMapInfoImplicitArrayEnd}|
  %35 = omp.map.info var_ptr(%3:!fir.ref<f32>, f32)|\label{ln:SaxpyMapInfoImplicitScalarStart}|
    map_clauses(implicit, exit_release_or_enter_alloc)
    capture(ByCopy) -> !fir.ref<f32> {name = "a"}|\label{ln:SaxpyMapInfoImplicitEnd}\label{ln:SaxpyMapInfoImplicitScalarEnd}|
  ...
  omp.target host_eval(%c1_i32 -> %arg4, ...)|\label{ln:SaxpyTargetStart}|
      map_entries(%29 -> %arg7, ...) {
    ...
    omp.teams {
      omp.parallel private(@_QFsaxpyEi_private_i32|\label{ln:SaxpyParallelStart}|
              %51 -> %arg14 : !fir.ref<i32>) {
        omp.distribute {
          omp.wsloop {
            omp.loop_nest (%arg15):
                i32 = (%arg4) to (%arg5)
                      inclusive step (%arg6) {
                ...
            }
          } {omp.composite}
        } {omp.composite}
        omp.terminator
      } {omp.composite}|\label{ln:SaxpyParallelEnd}|
      omp.terminator
    }
    omp.terminator
  }
  return
}
