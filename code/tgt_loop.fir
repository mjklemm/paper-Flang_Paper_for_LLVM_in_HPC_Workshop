module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>, fir.defaultkind = "a1c4d8i4l4r4", fir.kindmap = "", llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.ident = "AMD flang version 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/flang 37de1b61434af16eca9df1f40bb2b0d6ffa0398c)", llvm.target_triple = "x86_64-unknown-linux-gnu", omp.is_gpu = false, omp.is_target_device = false, omp.requires = #omp<clause_requires none>, omp.target_triples = [], omp.version = #omp.version<version = 52>} {
  omp.private {type = private} @_QFsaxpyEi_private_i32 : i32
  func.func @_QPsaxpy(%arg0: !fir.ref<!fir.array<?xf32>> {fir.bindc_name = "x"}, %arg1: !fir.ref<!fir.array<?xf32>> {fir.bindc_name = "y"}, %arg2: !fir.ref<f32> {fir.bindc_name = "a"}, %arg3: !fir.ref<i32> {fir.bindc_name = "n"}) {
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %c0 = arith.constant 0 : index
    %0 = fir.alloca i32
    %1 = fir.alloca i32
    %2 = fir.dummy_scope : !fir.dscope
    %3 = fir.declare %arg2 dummy_scope %2 {uniq_name = "_QFsaxpyEa"} : (!fir.ref<f32>, !fir.dscope) -> !fir.ref<f32>
    %4 = fir.alloca i32 {bindc_name = "i", uniq_name = "_QFsaxpyEi"}
    %5 = fir.declare %4 {uniq_name = "_QFsaxpyEi"} : (!fir.ref<i32>) -> !fir.ref<i32>
    %6 = fir.declare %arg3 dummy_scope %2 {uniq_name = "_QFsaxpyEn"} : (!fir.ref<i32>, !fir.dscope) -> !fir.ref<i32>
    %7 = fir.address_of(@_QMiso_fortran_env_implECreal32) : !fir.ref<i32>
    %8 = fir.declare %7 {fortran_attrs = #fir.var_attrs<parameter>, uniq_name = "_QMiso_fortran_env_implECreal32"} : (!fir.ref<i32>) -> !fir.ref<i32>
    %9 = fir.load %6 : !fir.ref<i32>
    fir.store %9 to %0 : !fir.ref<i32>
    %10 = fir.convert %9 : (i32) -> i64
    %11 = fir.convert %10 : (i64) -> index
    %12 = arith.cmpi sgt, %11, %c0 : index
    %13 = arith.select %12, %11, %c0 : index
    %14 = fir.shape %13 : (index) -> !fir.shape<1>
    %15 = fir.declare %arg0(%14) dummy_scope %2 {uniq_name = "_QFsaxpyEx"} : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>, !fir.dscope) -> !fir.ref<!fir.array<?xf32>>
    %16 = fir.embox %15(%14) : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.box<!fir.array<?xf32>>
    %17 = fir.load %6 : !fir.ref<i32>
    fir.store %17 to %1 : !fir.ref<i32>
    %18 = fir.convert %17 : (i32) -> i64
    %19 = fir.convert %18 : (i64) -> index
    %20 = arith.cmpi sgt, %19, %c0 : index
    %21 = arith.select %20, %19, %c0 : index
    %22 = fir.shape %21 : (index) -> !fir.shape<1>
    %23 = fir.declare %arg1(%22) dummy_scope %2 {uniq_name = "_QFsaxpyEy"} : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>, !fir.dscope) -> !fir.ref<!fir.array<?xf32>>
    %24 = fir.embox %23(%22) : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.box<!fir.array<?xf32>>
    %25 = fir.load %6 : !fir.ref<i32>
    %26:3 = fir.box_dims %16, %c0 : (!fir.box<!fir.array<?xf32>>, index) -> (index, index, index)
    %27 = arith.subi %26#1, %c1 : index
    %28 = omp.map.bounds lower_bound(%c0 : index) upper_bound(%27 : index) extent(%26#1 : index) stride(%26#2 : index) start_idx(%c1 : index) {stride_in_bytes = true}
    %29 = omp.map.info var_ptr(%15 : !fir.ref<!fir.array<?xf32>>, f32) map_clauses(to) capture(ByRef) bounds(%28) -> !fir.ref<!fir.array<?xf32>> {name = "x"}
    %30 = omp.map.info var_ptr(%5 : !fir.ref<i32>, i32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<i32> {name = "i"}
    %31 = omp.map.info var_ptr(%6 : !fir.ref<i32>, i32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<i32> {name = "n"}
    %32 = arith.subi %21, %c1 : index
    %33 = omp.map.bounds lower_bound(%c0 : index) upper_bound(%32 : index) extent(%21 : index) stride(%c1 : index) start_idx(%c1 : index)
    %34 = omp.map.info var_ptr(%23 : !fir.ref<!fir.array<?xf32>>, f32) map_clauses(implicit, tofrom) capture(ByRef) bounds(%33) -> !fir.ref<!fir.array<?xf32>> {name = "y"}
    %35 = omp.map.info var_ptr(%3 : !fir.ref<f32>, f32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<f32> {name = "a"}
    %36 = omp.map.info var_ptr(%1 : !fir.ref<i32>, i32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<i32> {name = ""}
    %37 = omp.map.info var_ptr(%0 : !fir.ref<i32>, i32) map_clauses(implicit, exit_release_or_enter_alloc) capture(ByCopy) -> !fir.ref<i32> {name = ""}
    omp.target host_eval(%c1_i32 -> %arg4, %25 -> %arg5, %c1_i32 -> %arg6 : i32, i32, i32) map_entries(%29 -> %arg7, %30 -> %arg8, %31 -> %arg9, %34 -> %arg10, %35 -> %arg11, %36 -> %arg12, %37 -> %arg13 : !fir.ref<!fir.array<?xf32>>, !fir.ref<i32>, !fir.ref<i32>, !fir.ref<!fir.array<?xf32>>, !fir.ref<f32>, !fir.ref<i32>, !fir.ref<i32>) {
      %c0_0 = arith.constant 0 : index
      %38 = fir.load %arg13 : !fir.ref<i32>
      %39 = fir.load %arg12 : !fir.ref<i32>
      %40 = fir.convert %39 : (i32) -> i64
      %41 = fir.convert %38 : (i32) -> i64
      %42 = fir.convert %41 : (i64) -> index
      %43 = arith.cmpi sgt, %42, %c0_0 : index
      %44 = fir.convert %40 : (i64) -> index
      %45 = arith.cmpi sgt, %44, %c0_0 : index
      %46 = arith.select %45, %44, %c0_0 : index
      %47 = arith.select %43, %42, %c0_0 : index
      %48 = fir.shape %47 : (index) -> !fir.shape<1>
      %49 = fir.declare %arg7(%48) {uniq_name = "_QFsaxpyEx"} : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.ref<!fir.array<?xf32>>
      %50 = fir.embox %49(%48) : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.box<!fir.array<?xf32>>
      %51 = fir.declare %arg8 {uniq_name = "_QFsaxpyEi"} : (!fir.ref<i32>) -> !fir.ref<i32>
      %52 = fir.declare %arg9 {uniq_name = "_QFsaxpyEn"} : (!fir.ref<i32>) -> !fir.ref<i32>
      %53 = fir.shape %46 : (index) -> !fir.shape<1>
      %54 = fir.declare %arg10(%53) {uniq_name = "_QFsaxpyEy"} : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.ref<!fir.array<?xf32>>
      %55 = fir.embox %54(%53) : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>) -> !fir.box<!fir.array<?xf32>>
      %56 = fir.declare %arg11 {uniq_name = "_QFsaxpyEa"} : (!fir.ref<f32>) -> !fir.ref<f32>
      omp.teams {
        omp.parallel private(@_QFsaxpyEi_private_i32 %51 -> %arg14 : !fir.ref<i32>) {
          omp.distribute {
            omp.wsloop {
              omp.loop_nest (%arg15) : i32 = (%arg4) to (%arg5) inclusive step (%arg6) {
                %57 = fir.declare %arg14 {uniq_name = "_QFsaxpyEi"} : (!fir.ref<i32>) -> !fir.ref<i32>
                fir.store %arg15 to %57 : !fir.ref<i32>
                %58 = fir.load %56 : !fir.ref<f32>
                %59 = fir.load %57 : !fir.ref<i32>
                %60 = fir.convert %59 : (i32) -> i64
                %61 = fir.array_coor %49(%48) %60 : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>, i64) -> !fir.ref<f32>
                %62 = fir.load %61 : !fir.ref<f32>
                %63 = arith.mulf %58, %62 fastmath<contract> : f32
                %64 = fir.load %57 : !fir.ref<i32>
                %65 = fir.convert %64 : (i32) -> i64
                %66 = fir.array_coor %54(%53) %65 : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>, i64) -> !fir.ref<f32>
                %67 = fir.load %66 : !fir.ref<f32>
                %68 = arith.addf %63, %67 fastmath<contract> : f32
                %69 = fir.load %57 : !fir.ref<i32>
                %70 = fir.convert %69 : (i32) -> i64
                %71 = fir.array_coor %54(%53) %70 : (!fir.ref<!fir.array<?xf32>>, !fir.shape<1>, i64) -> !fir.ref<f32>
                fir.store %68 to %71 : !fir.ref<f32>
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
    return
  }
  fir.global @_QMiso_fortran_env_implECreal32 constant : i32
}
