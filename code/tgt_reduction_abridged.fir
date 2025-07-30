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
%18:2 = hlfir.declare %arg0 {uniq_name = "_QFEs"}
%19:2 = hlfir.declare %arg1 {uniq_name = "_QFEi"}
%20:2 = hlfir.declare %arg2 {uniq_name = "_QFEn"}
omp.teams reduction(@add_reduction_f64 %18#0 -> %arg3 : !fir.ref<f64>) {
  %21:2 = hlfir.declare %arg3 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
  omp.parallel private(@_QFEi_private_i32 %19#0 -> %arg4 : !fir.ref<i32>) {
    %22:2 = hlfir.declare %arg4 {uniq_name = "_QFEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
    %c1_i32 = arith.constant 1 : i32
    %23 = fir.load %20#0 : !fir.ref<i32>
    %c1_i32_0 = arith.constant 1 : i32
    omp.distribute {
      omp.wsloop reduction(@add_reduction_f64 %21#0 -> %arg5 : !fir.ref<f64>) {
        omp.loop_nest (%arg6) : i32 = (%c1_i32) to (%23) inclusive step (%c1_i32_0) {
          %24:2 = hlfir.declare %arg5 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
          hlfir.assign %arg6 to %22#0 : i32, !fir.ref<i32>
          %25 = fir.load %24#0 : !fir.ref<f64>
          %26 = fir.load %22#0 : !fir.ref<i32>
          %27 = fir.convert %26 : (i32) -> f64
          %28 = arith.addf %25, %27 fastmath<contract> : f64
          hlfir.assign %28 to %24#0 : f64, !fir.ref<f64>
          omp.yield
        }
      } {omp.composite}
    } {omp.composite}
    omp.terminator
  } {omp.composite}
  omp.terminator
}
[...]