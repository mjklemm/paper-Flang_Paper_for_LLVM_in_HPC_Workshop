[...]
; Function Attrs: mustprogress
define weak_odr protected amdgpu_kernel void @__omp_offloading_10302_5320450__QQmain_l4(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
[...]
  call void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.6(ptr addrspace(5) %gid.addr, ptr addrspace(5) %tid.addr19, ptr %structArg.ascast)
[...]
}

define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.6(ptr addrspace(5) %gid.addr, ptr addrspace(5) %tid.addr19, ptr %0) #1 {
teams.alloca:
[...]
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %omp_global_thread_num, i32 1, i32 -1, i32 -1, ptr @__omp_offloading_10302_5320450__QQmain_l4..omp_par.5, ptr null, ptr %2, i64 1)
  br label %omp.par.exit
[...]
}

; Function Attrs: nounwind
define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.5(ptr noalias noundef %tid.addr.ascast, ptr noalias noundef %zero.addr.ascast, ptr %0) #2 {
[...]
  call void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.4(ptr %structArg.ascast)
[...]
  %6 = call i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @3 to ptr), ptr %"_openmp_teams_reductions_buffer_$_$ptr", i32 1024, i64 8, ptr %.omp.reduction.red_list13.ascast, ptr @_omp_reduction_shuffle_and_reduce_func.2, ptr @_omp_reduction_inter_warp_copy_func.3, ptr @_omp_reduction_list_to_global_copy_func, ptr @_omp_reduction_list_to_global_reduce_func, ptr @_omp_reduction_global_to_list_copy_func, ptr @_omp_reduction_global_to_list_reduce_func)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %.omp.reduction.then14, label %.omp.reduction.done17

.omp.reduction.done17:                            ; preds = %.omp.reduction.then14, %distribute.exit
  br label %reduce.finalize12

reduce.finalize12:                                ; preds = %.omp.reduction.done17
  %omp_global_thread_num18 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num18)
  br label %omp.region.cont3

omp.region.cont3:                                 ; preds = %reduce.finalize12
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont3
  br label %omp.par.exit.exitStub

.omp.reduction.then14:                            ; preds = %distribute.exit
  %final.lhs15 = load double, ptr %loadgep_2, align 8
  %final.rhs16 = load double, ptr %4, align 8
  %8 = fadd contract double %final.rhs16, %final.lhs15
  store double %8, ptr %loadgep_2, align 8
  br label %.omp.reduction.done17
[...]
}

define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.4(ptr %0) #1 {
[...]
  call void @__kmpc_distribute_for_static_loop_4u(ptr addrspacecast (ptr addrspace(1) @3 to ptr), ptr @__omp_offloading_10302_5320450__QQmain_l4..omp_par, ptr %structArg.ascast, i32 10000, i32 %3, i32 0, i32 0)
[...]
  %5 = call i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i64 8, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func, ptr @_omp_reduction_inter_warp_copy_func)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.region.cont9
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %.omp.reduction.done
  %omp_global_thread_num11 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num11)
  br label %omp.region.cont6

[...]
}

define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par(i32 %0, ptr %1) #1 {
omp_loop.body:
  %gep_ = getelementptr { ptr, ptr, ptr }, ptr %1, i32 0, i32 0
  %loadgep_ = load ptr, ptr %gep_, align 8, !align !10
  %gep_1 = getelementptr { ptr, ptr, ptr }, ptr %1, i32 0, i32 1
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !9
  %gep_3 = getelementptr { ptr, ptr, ptr }, ptr %1, i32 0, i32 2
  %loadgep_4 = load ptr, ptr %gep_3, align 8, !align !9
  %2 = mul i32 %0, 1
  %3 = add i32 %2, 1
  br label %omp.loop_nest.region

omp.loop_nest.region:                             ; preds = %omp_loop.body
  store i32 %3, ptr %loadgep_, align 4
  %4 = load double, ptr %loadgep_2, align 8
  %5 = load i32, ptr %loadgep_, align 4
  %6 = sext i32 %5 to i64
  %7 = sub nsw i64 %6, 1
  %8 = mul nsw i64 %7, 1
  %9 = mul nsw i64 %8, 1
  %10 = add nsw i64 %9, 0
  %11 = getelementptr double, ptr %loadgep_4, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = fadd contract double %4, %12
  store double %13, ptr %loadgep_2, align 8
  br label %omp.region.cont10

omp.region.cont10:                                ; preds = %omp.loop_nest.region
  br label %omp.prelatch.exitStub

omp.prelatch.exitStub:                            ; preds = %omp.region.cont10
  ret void
}

declare i32 @__kmpc_target_init(ptr, ptr)

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #3

define internal void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func"(ptr noundef %0, ptr noundef %1) #1 {
[...]
}

define internal void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #1 {
entry:
[...]
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
[...]
}

define internal void @_omp_reduction_inter_warp_copy_func(ptr noundef %0, i32 noundef %1) #1 {
[...]
}


define internal void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr noundef %0, ptr noundef %1) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store ptr %1, ptr %.addr1.ascast, align 8
  %2 = load ptr, ptr %.addr.ascast, align 8
  %3 = load ptr, ptr %.addr1.ascast, align 8
  %4 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %5, align 8
  %10 = fadd contract double %8, %9
  store double %10, ptr %7, align 8
  ret void
}

define internal void @_omp_reduction_shuffle_and_reduce_func.2(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #1 {
[...]
then:                                             ; preds = %entry
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
[...]
}

define internal void @_omp_reduction_inter_warp_copy_func.3(ptr noundef %0, i32 noundef %1) #1 {
entry:
[...]
}


define internal void @_omp_reduction_list_to_global_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
[...]
}

define internal void @_omp_reduction_list_to_global_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
[...]
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %.omp.reduction.red_list.ascast, ptr %8) #3
[...]
}

define internal void @_omp_reduction_global_to_list_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
[...]
}

define internal void @_omp_reduction_global_to_list_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
[...]
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %8, ptr %.omp.reduction.red_list.ascast) #3
[...]
}

[...]