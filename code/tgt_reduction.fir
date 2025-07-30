module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, !llvm.ptr<1> = dense<64> : vector<4xi64>, !llvm.ptr<2> = dense<32> : vector<4xi64>, !llvm.ptr<3> = dense<32> : vector<4xi64>, !llvm.ptr<4> = dense<64> : vector<4xi64>, !llvm.ptr<5> = dense<32> : vector<4xi64>, !llvm.ptr<6> = dense<32> : vector<4xi64>, !llvm.ptr<7> = dense<[160, 256, 256, 32]> : vector<4xi64>, !llvm.ptr<8> = dense<[128, 128, 128, 48]> : vector<4xi64>, !llvm.ptr<9> = dense<[192, 256, 256, 32]> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.legal_int_widths" = array<i32: 32, 64>, "dlti.stack_alignment" = 32 : i64, "dlti.alloca_memory_space" = 5 : ui64, "dlti.global_memory_space" = 1 : ui64>, fir.defaultkind = "a1c4d8i4l4r4", fir.kindmap = "", fir.target_cpu = "gfx1030", fir.target_features = #llvm.target_features<["+16-bit-insts", "+ci-insts", "+dl-insts", "+dot1-insts", "+dot10-insts", "+dot2-insts", "+dot5-insts", "+dot6-insts", "+dot7-insts", "+dpp", "+gfx10-3-insts", "+gfx10-insts", "+gfx8-insts", "+gfx9-insts", "+gws", "+image-insts", "+s-memrealtime", "+s-memtime-inst", "+vmem-to-lds-load-insts", "+wavefrontsize32"]>, llvm.data_layout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9", llvm.ident = "flang version 21.0.0 (https://github.com/jsjodin/llvm-project.git f1c260dd2437f675a1fb82844269f0712a92abbb)", llvm.target_triple = "amdgcn-amd-amdhsa", omp.flags = #omp.flags<openmp_device_version = 31>, omp.host_ir_filepath = "main-host-x86_64-unknown-linux-gnu.bc", omp.is_gpu = true, omp.is_target_device = true, omp.requires = #omp<clause_requires none>, omp.target_triples = [], omp.version = #omp.version<version = 31>} {
  omp.private {type = private} @_QFEi_private_i32 : i32
  omp.declare_reduction @add_reduction_f64 : f64 init {
  ^bb0(%arg0: f64):
    %cst = arith.constant 0.000000e+00 : f64
    omp.yield(%cst : f64)
  } combiner {
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = arith.addf %arg0, %arg1 fastmath<contract> : f64
    omp.yield(%0 : f64)
  }
  func.func @_QQmain() attributes {fir.bindc_name = "reduction", omp.declare_target = #omp.declaretarget<device_type = (host), capture_clause = (to)>} {
    %0 = fir.dummy_scope : !fir.dscope
    %1 = fir.address_of(@_QFEa) : !fir.ref<!fir.array<10000xf64>>
    %c10000 = arith.constant 10000 : index
    %2 = fir.shape %c10000 : (index) -> !fir.shape<1>
    %3:2 = hlfir.declare %1(%2) {uniq_name = "_QFEa"} : (!fir.ref<!fir.array<10000xf64>>, !fir.shape<1>) -> (!fir.ref<!fir.array<10000xf64>>, !fir.ref<!fir.array<10000xf64>>)
    %4 = fir.alloca i32 {bindc_name = "i", uniq_name = "_QFEi"}
    %5:2 = hlfir.declare %4 {uniq_name = "_QFEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
    %6 = fir.alloca f64 {bindc_name = "s", uniq_name = "_QFEs"}
    %7:2 = hlfir.declare %6 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
    %cst = arith.constant 0.000000e+00 : f64
    hlfir.assign %cst to %7#0 : f64, !fir.ref<f64>
    %8 = omp.map.info var_ptr(%7#1 : !fir.ref<f64>, f64) map_clauses(tofrom) capture(ByRef) -> !fir.ref<f64> {name = "s"}
    %9 = omp.map.info var_ptr(%5#1 : !fir.ref<i32>, i32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<i32> {name = "i"}
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %10 = arith.subi %c10000, %c1 : index
    %11 = omp.map.bounds lower_bound(%c0 : index) upper_bound(%10 : index) extent(%c10000 : index) stride(%c1 : index) start_idx(%c1 : index)
    %12 = omp.map.info var_ptr(%3#1 : !fir.ref<!fir.array<10000xf64>>, !fir.array<10000xf64>) map_clauses(implicit, tofrom) capture(ByRef) bounds(%11) -> !fir.ref<!fir.array<10000xf64>> {name = "a"}
    omp.target map_entries(%8 -> %arg0, %9 -> %arg1, %12 -> %arg2 : !fir.ref<f64>, !fir.ref<i32>, !fir.ref<!fir.array<10000xf64>>) {
      %c10000_0 = arith.constant 10000 : index
      %17:2 = hlfir.declare %arg0 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
      %18:2 = hlfir.declare %arg1 {uniq_name = "_QFEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
      %19 = fir.shape %c10000_0 : (index) -> !fir.shape<1>
      %20:2 = hlfir.declare %arg2(%19) {uniq_name = "_QFEa"} : (!fir.ref<!fir.array<10000xf64>>, !fir.shape<1>) -> (!fir.ref<!fir.array<10000xf64>>, !fir.ref<!fir.array<10000xf64>>)
      omp.teams reduction(@add_reduction_f64 %17#0 -> %arg3 : !fir.ref<f64>) {
        %21:2 = hlfir.declare %arg3 {uniq_name = "_QFEs"} : (!fir.ref<f64>) -> (!fir.ref<f64>, !fir.ref<f64>)
        omp.parallel private(@_QFEi_private_i32 %18#0 -> %arg4 : !fir.ref<i32>) {
          %22:2 = hlfir.declare %arg4 {uniq_name = "_QFEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
          %c1_i32 = arith.constant 1 : i32
          %c10000_i32 = arith.constant 10000 : i32
          %c1_i32_1 = arith.constant 1 : i32
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
      omp.terminator
    }
    %c6_i32 = arith.constant 6 : i32
    %13 = fir.address_of(@_QQclX22f96cf2a9392db1eb35faed89390075) : !fir.ref<!fir.char<1,64>>
    %14 = fir.convert %13 : (!fir.ref<!fir.char<1,64>>) -> !fir.ref<i8>
    %c9_i32 = arith.constant 9 : i32
    %15 = fir.undefined !fir.ref<i8>
    %16 = fir.load %7#0 : !fir.ref<f64>
    return
  }
  fir.global internal @_QFEa : !fir.array<10000xf64> {
    %0 = fir.zero_bits !fir.array<10000xf64>
    fir.has_value %0 : !fir.array<10000xf64>
  }
  fir.global linkonce @_QQclX22f96cf2a9392db1eb35faed89390075 constant : !fir.char<1,64> {
    %0 = fir.string_lit "/home/jan/git/trunk21.0/aomp/trunk/test/reduction_test/main.f90\00"(64) : !fir.char<1,64>
    fir.has_value %0 : !fir.char<1,64>
  }
}
