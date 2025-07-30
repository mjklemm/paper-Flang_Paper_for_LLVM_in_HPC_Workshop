omp.declare_reduction @add_reduction_f64 : f64 init {
^bb0(%arg0: f64):
  %cst = arith.constant 0.000000e+00 : f64
  omp.yield(%cst : f64)
} combiner {
^bb0(%arg0: f64, %arg1: f64):
  %0 = arith.addf %arg0, %arg1 fastmath<contract> : f64
  omp.yield(%0 : f64)
}
[...]
omp.teams reduction(@add_reduction_f64 %17#0 -> %arg3 : !fir.ref<f64>) {
  %21:2 = hlfir.declare %arg3 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
  omp.parallel private(@_QFEi_private_i32 %18#0 -> %arg4 : !fir.ref<i32>) {
  [...]
    omp.distribute {
      omp.wsloop reduction(@add_reduction_f64 %21#0 -> %arg5 : !fir.ref<f64>) {
        omp.loop_nest (%arg6) : i32 = (%c1_i32) to (%c10000_i32) inclusive step (%c1_i32_1) {
          %23:2 = hlfir.declare %arg5 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
          hlfir.assign %arg6 to %22#0 : i32, !fir.ref<i32>
          %24 = fir.load %23#0 : !fir.ref<f64>
          %25 = fir.load %22#0 : !fir.ref<i32>
          %26 = fir.convert %25 : (i32) -> i64
          %27 = hlfir.designate %20#0 (%26)  : (!fir.ref<!fir.array<10000xf64>>, i64) -> !fir.ref<f64>
          %28 = fir.load %27 : !fir.ref<f64>
          %29 = arith.addf %24, %28 fastmath<contract> : f64
          hlfir.assign %29 to %23#0 : f64, !fir.ref<f64>
          omp.yield
        }
      } {omp.composite}
    } {omp.composite}
    omp.terminator
  } {omp.composite}
  omp.terminator
}
[...]