    omp.target host_eval(%48 -> %arg5, %51 -> %arg6, %c1 -> %arg7, %54 -> %arg8, %57 -> %arg9, %c1_4 -> %arg10 : index, index, index, index, index, index) map_entries(%49 -> %arg11, %52 -> %arg12, %53 -> %arg13, %55 -> %arg14, %58 -> %arg15, %59 -> %arg16, %60 -> %arg17, %61 -> %arg18, %62 -> %arg19, %67 -> %arg20, %72 -> %arg21, %73 -> %arg22, %74 -> %arg23, %75 -> %arg24, %76 -> %arg25 : !fir.ref<index>, !fir.ref<index>, !fir.ref<index>, !fir.ref<index>, !fir.ref<index>, !fir.ref<index>, !fir.ref<i32>, !fir.ref<i32>, !fir.ref<f32>, !fir.ref<!fir.array<?x?xf32>>, !fir.ref<!fir.array<?x?xf32>>, !fir.ref<index>, !fir.ref<index>, !fir.ref<index>, !fir.ref<index>) {
      %77 = fir.load %arg25 : !fir.ref<index>
      %78 = fir.load %arg24 : !fir.ref<index>
      %79 = fir.load %arg23 : !fir.ref<index>
      %80 = fir.load %arg22 : !fir.ref<index>
      %81:2 = hlfir.declare %arg11 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %82 = fir.load %81#1 : !fir.ref<index>
      %83:2 = hlfir.declare %arg12 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %84 = fir.load %83#1 : !fir.ref<index>
      %85:2 = hlfir.declare %arg13 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %86 = fir.load %85#1 : !fir.ref<index>
      %87:2 = hlfir.declare %arg14 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %88 = fir.load %87#1 : !fir.ref<index>
      %89:2 = hlfir.declare %arg15 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %90 = fir.load %89#1 : !fir.ref<index>
      %91:2 = hlfir.declare %arg16 {uniq_name = ""} : (!fir.ref<index>) -> (!fir.ref<index>, !fir.ref<index>)
      %92 = fir.load %91#1 : !fir.ref<index>
      %93:2 = hlfir.declare %arg17 {uniq_name = "_QFsaxpy2dEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
      %94:2 = hlfir.declare %arg18 {uniq_name = "_QFsaxpy2dEj"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
      %95:2 = hlfir.declare %arg19 {uniq_name = "_QFsaxpy2dEa"} : (!fir.ref<f32>) -> (!fir.ref<f32>, !fir.ref<f32>)
      %96 = fir.shape %80, %79 : (index, index) -> !fir.shape<2>
      %97:2 = hlfir.declare %arg20(%96) {uniq_name = "_QFsaxpy2dEx"} : (!fir.ref<!fir.array<?x?xf32>>, !fir.shape<2>) -> (!fir.box<!fir.array<?x?xf32>>, !fir.ref<!fir.array<?x?xf32>>)
      %98 = fir.load %97#1 : !fir.ref<!fir.array<?x?xf32>>
      %99 = fir.shape %78, %77 : (index, index) -> !fir.shape<2>
      %100:2 = hlfir.declare %arg21(%99) {uniq_name = "_QFsaxpy2dEy"} : (!fir.ref<!fir.array<?x?xf32>>, !fir.shape<2>) -> (!fir.box<!fir.array<?x?xf32>>, !fir.ref<!fir.array<?x?xf32>>)
      %101 = fir.load %100#1 : !fir.ref<!fir.array<?x?xf32>>
      omp.teams {
        omp.parallel {
          %102 = fir.alloca i32 {bindc_name = "i"}
          %103:2 = hlfir.declare %102 {uniq_name = "_QFsaxpy2dEi"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
          %104 = fir.alloca i32 {bindc_name = "j"}
          %105:2 = hlfir.declare %104 {uniq_name = "_QFsaxpy2dEj"} : (!fir.ref<i32>) -> (!fir.ref<i32>, !fir.ref<i32>)
          omp.distribute {
            omp.wsloop {
              omp.loop_nest (%arg26, %arg27) : index = (%arg5, %arg8) to (%arg6, %arg9) inclusive step (%arg7, %arg10) {
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