; ModuleID = 'main-openmp-amdgcn-amd-amdhsa-gfx1030.tmp.bc'
source_filename = "FIRModule"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.DynamicEnvironmentTy = type { i16 }
%struct.KernelEnvironmentTy = type { %struct.ConfigurationEnvironmentTy, ptr, ptr }
%struct.ConfigurationEnvironmentTy = type { i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct._globalized_locals_ty = type { double }

$_QQclX22f96cf2a9392db1eb35faed89390075 = comdat any

@__omp_rtl_debug_kind = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_thread_state = weak_odr hidden addrspace(1) constant i32 0
@__omp_rtl_assume_no_nested_parallelism = weak_odr hidden addrspace(1) constant i32 0
@_QFEa = internal global [10000 x double] zeroinitializer
@_QQclX22f96cf2a9392db1eb35faed89390075 = linkonce constant [64 x i8] c"/home/jan/git/trunk21.0/aomp/trunk/test/reduction_test/main.f90\00", comdat
@0 = private unnamed_addr constant [74 x i8] c";/home/jan/git/trunk21.0/aomp/trunk/test/reduction_test/main.f90;s;2;17;;\00", align 1
@1 = private unnamed_addr constant [79 x i8] c";/home/jan/git/trunk21.0/aomp/trunk/test/reduction_test/main.f90;unknown;3;7;;\00", align 1
@__omp_offloading_10302_5320450__QQmain_l4_exec_mode = weak protected addrspace(1) constant i8 2
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(1) @__omp_offloading_10302_5320450__QQmain_l4_exec_mode to ptr)], section "llvm.metadata"
@2 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@3 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @2 }, align 8
@__omp_offloading_10302_5320450__QQmain_l4_dynamic_environment = weak_odr protected addrspace(1) global %struct.DynamicEnvironmentTy zeroinitializer
@__omp_offloading_10302_5320450__QQmain_l4_kernel_environment = weak_odr protected addrspace(1) constant %struct.KernelEnvironmentTy { %struct.ConfigurationEnvironmentTy { i8 0, i8 1, i8 2, i32 1, i32 256, i32 0, i32 0, i32 8, i32 1024 }, ptr addrspacecast (ptr addrspace(1) @3 to ptr), ptr addrspacecast (ptr addrspace(1) @__omp_offloading_10302_5320450__QQmain_l4_dynamic_environment to ptr) }
@__openmp_nvptx_data_transfer_temporary_storage = weak addrspace(3) global [32 x i32] undef
@4 = private unnamed_addr addrspace(1) constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @2 }, align 8
@llvm.compiler.used.7 = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage to ptr)], section "llvm.metadata"

; Function Attrs: mustprogress
define weak_odr protected amdgpu_kernel void @__omp_offloading_10302_5320450__QQmain_l4(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %structArg = alloca { ptr, ptr }, align 8, addrspace(5)
  %structArg.ascast = addrspacecast ptr addrspace(5) %structArg to ptr
  %4 = alloca ptr, align 8, addrspace(5)
  %5 = addrspacecast ptr addrspace(5) %4 to ptr
  store ptr %1, ptr %5, align 8
  %6 = alloca ptr, align 8, addrspace(5)
  %7 = addrspacecast ptr addrspace(5) %6 to ptr
  store ptr %2, ptr %7, align 8
  %8 = alloca ptr, align 8, addrspace(5)
  %9 = addrspacecast ptr addrspace(5) %8 to ptr
  store ptr %3, ptr %9, align 8
  %gid.addr = alloca i32, align 4, addrspace(5)
  %tid.addr19 = alloca i32, align 4, addrspace(5)
  %10 = call i32 @__kmpc_target_init(ptr addrspacecast (ptr addrspace(1) @__omp_offloading_10302_5320450__QQmain_l4_kernel_environment to ptr), ptr %0)
  %exec_user_code = icmp eq i32 %10, -1
  br i1 %exec_user_code, label %user_code.entry, label %worker.exit

user_code.entry:                                  ; preds = %entry
  %11 = load ptr, ptr %5, align 8, !align !9
  %12 = load ptr, ptr %9, align 8, !align !9
  br label %omp.region.after_alloca

omp.region.after_alloca:                          ; preds = %user_code.entry
  br label %outlined.body

outlined.body:                                    ; preds = %omp.region.after_alloca
  br label %omp.target

omp.target:                                       ; preds = %outlined.body
  br label %codeRepl

codeRepl:                                         ; preds = %omp.target
  %gep_ = getelementptr { ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 0
  store ptr %12, ptr addrspace(5) %gep_, align 8
  %gep_25 = getelementptr { ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 1
  store ptr %11, ptr addrspace(5) %gep_25, align 8
  call void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.6(ptr addrspace(5) %gid.addr, ptr addrspace(5) %tid.addr19, ptr %structArg.ascast)
  br label %teams.exit

teams.exit:                                       ; preds = %codeRepl
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %teams.exit
  call void @__kmpc_target_deinit()
  ret void

worker.exit:                                      ; preds = %entry
  ret void
}

define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.6(ptr addrspace(5) %gid.addr, ptr addrspace(5) %tid.addr19, ptr %0) #1 {
teams.alloca:
  %gep_ = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_ = load ptr, ptr %gep_, align 8, !align !9
  %gep_1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !9
  %1 = alloca [1 x ptr], align 8, addrspace(5)
  %2 = addrspacecast ptr addrspace(5) %1 to ptr
  %structArg = alloca { ptr, ptr }, align 8, addrspace(5)
  %structArg.ascast = addrspacecast ptr addrspace(5) %structArg to ptr
  %gid.use = load i32, ptr addrspace(5) %gid.addr, align 4
  %tid.use = load i32, ptr addrspace(5) %tid.addr19, align 4
  br label %teams.body

teams.body:                                       ; preds = %teams.alloca
  br label %omp.teams.region

omp.teams.region:                                 ; preds = %teams.body
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.teams.region
  %gep_3 = getelementptr { ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 0
  store ptr %loadgep_, ptr addrspace(5) %gep_3, align 8
  %gep_24 = getelementptr { ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 1
  store ptr %loadgep_2, ptr addrspace(5) %gep_24, align 8
  %3 = getelementptr inbounds [1 x ptr], ptr %2, i64 0, i64 0
  store ptr %structArg.ascast, ptr %3, align 8
  call void @__kmpc_parallel_51(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i32 %omp_global_thread_num, i32 1, i32 -1, i32 -1, ptr @__omp_offloading_10302_5320450__QQmain_l4..omp_par.5, ptr null, ptr %2, i64 1)
  br label %omp.par.exit

omp.par.exit:                                     ; preds = %omp_parallel
  br label %omp.region.cont1

omp.region.cont1:                                 ; preds = %omp.par.exit
  br label %teams.exit.exitStub

teams.exit.exitStub:                              ; preds = %omp.region.cont1
  ret void
}

; Function Attrs: nounwind
define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.5(ptr noalias noundef %tid.addr.ascast, ptr noalias noundef %zero.addr.ascast, ptr %0) #2 {
omp.par.entry:
  %gep_ = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_ = load ptr, ptr %gep_, align 8, !align !9
  %gep_1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !9
  %structArg = alloca { ptr, ptr, ptr }, align 8, addrspace(5)
  %structArg.ascast = addrspacecast ptr addrspace(5) %structArg to ptr
  %tid.addr.local = alloca i32, align 4, addrspace(5)
  %1 = load i32, ptr %tid.addr.ascast, align 4
  store i32 %1, ptr addrspace(5) %tid.addr.local, align 4
  %tid = load i32, ptr addrspace(5) %tid.addr.local, align 4
  %omp.private.alloc = alloca i32, align 4, addrspace(5)
  %2 = addrspacecast ptr addrspace(5) %omp.private.alloc to ptr
  %3 = alloca double, align 8, addrspace(5)
  %4 = addrspacecast ptr addrspace(5) %3 to ptr
  %.omp.reduction.red_list13 = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list13.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list13 to ptr
  br label %omp.region.after_alloca2

omp.region.after_alloca2:                         ; preds = %omp.par.entry
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.region.after_alloca2
  br label %omp.private.init

omp.private.init:                                 ; preds = %omp.par.region
  br label %omp.par.region4

omp.par.region4:                                  ; preds = %omp.private.init
  br label %omp.reduction.init

omp.reduction.init:                               ; preds = %omp.par.region4
  store double 0.000000e+00, ptr %4, align 8
  br label %codeRepl

codeRepl:                                         ; preds = %omp.reduction.init
  %gep_3 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 0
  store ptr %2, ptr addrspace(5) %gep_3, align 8
  %gep_22 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 1
  store ptr %loadgep_, ptr addrspace(5) %gep_22, align 8
  %gep_23 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 2
  store ptr %4, ptr addrspace(5) %gep_23, align 8
  call void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.4(ptr %structArg.ascast)
  br label %distribute.exit

distribute.exit:                                  ; preds = %codeRepl
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list13.ascast, i64 0, i64 0
  store ptr %4, ptr %5, align 8
  %"_openmp_teams_reductions_buffer_$_$ptr" = call ptr @__kmpc_reduction_get_fixed_buffer()
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

omp.par.exit.exitStub:                            ; preds = %omp.par.pre_finalize
  ret void
}

define internal void @__omp_offloading_10302_5320450__QQmain_l4..omp_par.4(ptr %0) #1 {
distribute.alloca:
  %gep_ = getelementptr { ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_ = load ptr, ptr %gep_, align 8, !align !10
  %gep_1 = getelementptr { ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !9
  %gep_3 = getelementptr { ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_4 = load ptr, ptr %gep_3, align 8, !align !9
  %structArg = alloca { ptr, ptr, ptr }, align 8, addrspace(5)
  %structArg.ascast = addrspacecast ptr addrspace(5) %structArg to ptr
  %1 = alloca double, align 8, addrspace(5)
  %2 = addrspacecast ptr addrspace(5) %1 to ptr
  br label %omp.region.after_alloca7

omp.region.after_alloca7:                         ; preds = %distribute.alloca
  br label %omp.region.after_alloca5

omp.region.after_alloca5:                         ; preds = %omp.region.after_alloca7
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  br label %distribute.body

distribute.body:                                  ; preds = %omp.region.after_alloca5
  br label %omp.distribute.region

omp.distribute.region:                            ; preds = %distribute.body
  br label %omp.reduction.init8

omp.reduction.init8:                              ; preds = %omp.distribute.region
  store double 0.000000e+00, ptr %2, align 8
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp.reduction.init8
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.wsloop.region
  %gep_5 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 0
  store ptr %loadgep_, ptr addrspace(5) %gep_5, align 8
  %gep_20 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 1
  store ptr %2, ptr addrspace(5) %gep_20, align 8
  %gep_21 = getelementptr { ptr, ptr, ptr }, ptr addrspace(5) %structArg, i32 0, i32 2
  store ptr %loadgep_2, ptr addrspace(5) %gep_21, align 8
  %3 = call i32 @omp_get_num_threads()
  call void @__kmpc_distribute_for_static_loop_4u(ptr addrspacecast (ptr addrspace(1) @3 to ptr), ptr @__omp_offloading_10302_5320450__QQmain_l4..omp_par, ptr %structArg.ascast, i32 10000, i32 %3, i32 0, i32 0)
  br label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.preheader
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont9

omp.region.cont9:                                 ; preds = %omp_loop.after
  %4 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  store ptr %2, ptr %4, align 8
  %5 = call i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr addrspacecast (ptr addrspace(1) @3 to ptr), i64 8, ptr %.omp.reduction.red_list.ascast, ptr @_omp_reduction_shuffle_and_reduce_func, ptr @_omp_reduction_inter_warp_copy_func)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %.omp.reduction.then, label %.omp.reduction.done

.omp.reduction.done:                              ; preds = %.omp.reduction.then, %omp.region.cont9
  br label %reduce.finalize

reduce.finalize:                                  ; preds = %.omp.reduction.done
  %omp_global_thread_num11 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num11)
  br label %omp.region.cont6

omp.region.cont6:                                 ; preds = %reduce.finalize
  br label %distribute.exit.exitStub

.omp.reduction.then:                              ; preds = %omp.region.cont9
  %final.lhs = load double, ptr %loadgep_4, align 8
  %final.rhs = load double, ptr %2, align 8
  %7 = fadd contract double %final.rhs, %final.lhs
  store double %7, ptr %loadgep_4, align 8
  br label %.omp.reduction.done

distribute.exit.exitStub:                         ; preds = %omp.region.cont6
  ret void
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

define internal void @_omp_reduction_shuffle_and_reduce_func(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i16 %1, ptr %.addr1.ascast, align 2
  store i16 %2, ptr %.addr2.ascast, align 2
  store i16 %3, ptr %.addr3.ascast, align 2
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i16, ptr %.addr1.ascast, align 2
  %6 = load i16, ptr %.addr2.ascast, align 2
  %7 = load i16, ptr %.addr3.ascast, align 2
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_get_warp_size() #3

declare i64 @__kmpc_shuffle_int64(i64, i16, i16)

define internal void @_omp_reduction_inter_warp_copy_func(ptr noundef %0, i32 noundef %1) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  %2 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %3, 31
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %4, 5
  %5 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4
  br label %precond

precond:                                          ; preds = %ifcont5, %entry
  %6 = load i32, ptr %.cnt.addr.ascast, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %body, label %exit

body:                                             ; preds = %precond
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %8 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i32, ptr %9, i32 %6
  %11 = getelementptr inbounds [32 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %12 = load i32, ptr %10, align 4
  store volatile i32 %12, ptr addrspace(3) %11, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %omp_global_thread_num2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num2)
  %13 = load i32, ptr %.addr1.ascast, align 4
  %is_active_thread = icmp ult i32 %2, %13
  br i1 %is_active_thread, label %then3, label %else4

then3:                                            ; preds = %ifcont
  %14 = getelementptr inbounds [32 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %2
  %15 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i32, ptr %16, i32 %6
  %18 = load volatile i32, ptr addrspace(3) %14, align 4
  store i32 %18, ptr %17, align 4
  br label %ifcont5

else4:                                            ; preds = %ifcont
  br label %ifcont5

ifcont5:                                          ; preds = %else4, %then3
  %19 = add nsw i32 %6, 1
  store i32 %19, ptr %.cnt.addr.ascast, align 4
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_get_hardware_thread_id_in_block() #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #4

declare i32 @__kmpc_nvptx_parallel_reduce_nowait_v2(ptr, i64, ptr, ptr, ptr)

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
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i16, align 2, addrspace(5)
  %.addr2 = alloca i16, align 2, addrspace(5)
  %.addr3 = alloca i16, align 2, addrspace(5)
  %.omp.reduction.remote_reduce_list = alloca [1 x ptr], align 8, addrspace(5)
  %.omp.reduction.element = alloca double, align 8, addrspace(5)
  %.omp.reduction.element.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.element to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.addr3.ascast = addrspacecast ptr addrspace(5) %.addr3 to ptr
  %.omp.reduction.remote_reduce_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.remote_reduce_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i16 %1, ptr %.addr1.ascast, align 2
  store i16 %2, ptr %.addr2.ascast, align 2
  store i16 %3, ptr %.addr3.ascast, align 2
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i16, ptr %.addr1.ascast, align 2
  %6 = load i16, ptr %.addr2.ascast, align 2
  %7 = load i16, ptr %.addr3.ascast, align 2
  %8 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %11 = getelementptr double, ptr %9, i64 1
  %12 = load i64, ptr %9, align 8
  %13 = call i32 @__kmpc_get_warp_size()
  %14 = trunc i32 %13 to i16
  %15 = call i64 @__kmpc_shuffle_int64(i64 %12, i16 %6, i16 %14)
  store i64 %15, ptr %.omp.reduction.element.ascast, align 8
  %16 = getelementptr i64, ptr %9, i64 1
  %17 = getelementptr i64, ptr %.omp.reduction.element.ascast, i64 1
  store ptr %.omp.reduction.element.ascast, ptr %10, align 8
  %18 = icmp eq i16 %7, 0
  %19 = icmp eq i16 %7, 1
  %20 = icmp ult i16 %5, %6
  %21 = and i1 %19, %20
  %22 = icmp eq i16 %7, 2
  %23 = and i16 %5, 1
  %24 = icmp eq i16 %23, 0
  %25 = and i1 %22, %24
  %26 = icmp sgt i16 %6, 0
  %27 = and i1 %25, %26
  %28 = or i1 %18, %21
  %29 = or i1 %28, %27
  br i1 %29, label %then, label %else

then:                                             ; preds = %entry
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %4, ptr %.omp.reduction.remote_reduce_list.ascast) #3
  br label %ifcont

else:                                             ; preds = %entry
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %30 = icmp eq i16 %7, 1
  %31 = icmp uge i16 %5, %6
  %32 = and i1 %30, %31
  br i1 %32, label %then4, label %else5

then4:                                            ; preds = %ifcont
  %33 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.remote_reduce_list.ascast, i64 0, i64 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds [1 x ptr], ptr %4, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8
  %37 = load double, ptr %34, align 8
  store double %37, ptr %36, align 8
  br label %ifcont6

else5:                                            ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %else5, %then4
  ret void
}

define internal void @_omp_reduction_inter_warp_copy_func.3(ptr noundef %0, i32 noundef %1) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.cnt.addr = alloca i32, align 4, addrspace(5)
  %.cnt.addr.ascast = addrspacecast ptr addrspace(5) %.cnt.addr to ptr
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  %2 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %3 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_lane_id = and i32 %3, 31
  %4 = call i32 @__kmpc_get_hardware_thread_id_in_block()
  %nvptx_warp_id = ashr i32 %4, 5
  %5 = load ptr, ptr %.addr.ascast, align 8
  store i32 0, ptr %.cnt.addr.ascast, align 4
  br label %precond

precond:                                          ; preds = %ifcont5, %entry
  %6 = load i32, ptr %.cnt.addr.ascast, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %body, label %exit

body:                                             ; preds = %precond
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num)
  %warp_master = icmp eq i32 %nvptx_lane_id, 0
  br i1 %warp_master, label %then, label %else

then:                                             ; preds = %body
  %8 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i32, ptr %9, i32 %6
  %11 = getelementptr inbounds [32 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %nvptx_warp_id
  %12 = load i32, ptr %10, align 4
  store volatile i32 %12, ptr addrspace(3) %11, align 4
  br label %ifcont

else:                                             ; preds = %body
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %omp_global_thread_num2 = call i32 @__kmpc_global_thread_num(ptr addrspacecast (ptr addrspace(1) @3 to ptr))
  call void @__kmpc_barrier(ptr addrspacecast (ptr addrspace(1) @4 to ptr), i32 %omp_global_thread_num2)
  %13 = load i32, ptr %.addr1.ascast, align 4
  %is_active_thread = icmp ult i32 %2, %13
  br i1 %is_active_thread, label %then3, label %else4

then3:                                            ; preds = %ifcont
  %14 = getelementptr inbounds [32 x i32], ptr addrspace(3) @__openmp_nvptx_data_transfer_temporary_storage, i64 0, i32 %2
  %15 = getelementptr inbounds [1 x ptr], ptr %5, i64 0, i64 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i32, ptr %16, i32 %6
  %18 = load volatile i32, ptr addrspace(3) %14, align 4
  store i32 %18, ptr %17, align 4
  br label %ifcont5

else4:                                            ; preds = %ifcont
  br label %ifcont5

ifcont5:                                          ; preds = %else4, %then3
  %19 = add nsw i32 %6, 1
  store i32 %19, ptr %.cnt.addr.ascast, align 4
  br label %precond

exit:                                             ; preds = %precond
  ret void
}

; Function Attrs: nounwind
declare ptr @__kmpc_reduction_get_fixed_buffer() #3

define internal void @_omp_reduction_list_to_global_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr2.ascast, align 8
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i32, ptr %.addr1.ascast, align 4
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 %5
  %9 = getelementptr inbounds %struct._globalized_locals_ty, ptr %8, i32 0, i32 0
  %10 = load double, ptr %7, align 8
  store double %10, ptr %9, align 8
  ret void
}

define internal void @_omp_reduction_list_to_global_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr.ascast, align 8
  %4 = load i32, ptr %.addr1.ascast, align 4
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %6 = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 %4
  %7 = getelementptr inbounds %struct._globalized_locals_ty, ptr %6, i32 0, i32 0
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %.addr2.ascast, align 8
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %.omp.reduction.red_list.ascast, ptr %8) #3
  ret void
}

define internal void @_omp_reduction_global_to_list_copy_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr2.ascast, align 8
  %4 = load ptr, ptr %.addr.ascast, align 8
  %5 = load i32, ptr %.addr1.ascast, align 4
  %6 = getelementptr inbounds [1 x ptr], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct._globalized_locals_ty, ptr %4, i32 %5
  %9 = getelementptr inbounds %struct._globalized_locals_ty, ptr %8, i32 0, i32 0
  %10 = load double, ptr %9, align 8
  store double %10, ptr %7, align 8
  ret void
}

define internal void @_omp_reduction_global_to_list_reduce_func(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
entry:
  %.addr = alloca ptr, align 8, addrspace(5)
  %.addr1 = alloca i32, align 4, addrspace(5)
  %.addr2 = alloca ptr, align 8, addrspace(5)
  %.omp.reduction.red_list = alloca [1 x ptr], align 8, addrspace(5)
  %.addr.ascast = addrspacecast ptr addrspace(5) %.addr to ptr
  %.addr1.ascast = addrspacecast ptr addrspace(5) %.addr1 to ptr
  %.addr2.ascast = addrspacecast ptr addrspace(5) %.addr2 to ptr
  %.omp.reduction.red_list.ascast = addrspacecast ptr addrspace(5) %.omp.reduction.red_list to ptr
  store ptr %0, ptr %.addr.ascast, align 8
  store i32 %1, ptr %.addr1.ascast, align 4
  store ptr %2, ptr %.addr2.ascast, align 8
  %3 = load ptr, ptr %.addr.ascast, align 8
  %4 = load i32, ptr %.addr1.ascast, align 4
  %5 = getelementptr inbounds [1 x ptr], ptr %.omp.reduction.red_list.ascast, i64 0, i64 0
  %6 = getelementptr inbounds %struct._globalized_locals_ty, ptr %3, i32 %4
  %7 = getelementptr inbounds %struct._globalized_locals_ty, ptr %6, i32 0, i32 0
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %.addr2.ascast, align 8
  call void @"__omp_offloading_10302_5320450__QQmain_l4_omp$reduction$reduction_func.1"(ptr %8, ptr %.omp.reduction.red_list.ascast) #3
  ret void
}

declare i32 @__kmpc_nvptx_teams_reduce_nowait_v2(ptr, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr)

declare void @__kmpc_target_deinit()

; Function Attrs: alwaysinline
declare void @__kmpc_distribute_for_static_loop_4u(ptr, ptr, ptr, i32, i32, i32, i32) #5

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() #3

; Function Attrs: alwaysinline
declare void @__kmpc_parallel_51(ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64) #5

attributes #0 = { mustprogress "amdgpu-flat-work-group-size"="1,256" "kernel" "omp_target_thread_limit"="256" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+s-memrealtime,+s-memtime-inst,+vmem-to-lds-load-insts,+wavefrontsize32" "uniform-work-group-size"="true" }
attributes #1 = { "amdgpu-flat-work-group-size"="1,256" "omp_target_thread_limit"="256" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+s-memrealtime,+s-memtime-inst,+vmem-to-lds-load-insts,+wavefrontsize32" }
attributes #2 = { nounwind "amdgpu-flat-work-group-size"="1,256" "omp_target_thread_limit"="256" "target-cpu"="gfx1030" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx10-3-insts,+gfx10-insts,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+s-memrealtime,+s-memtime-inst,+vmem-to-lds-load-insts,+wavefrontsize32" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { alwaysinline }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5, !6, !6, !6, !6, !6, !6, !6, !6}
!omp_offload.info = !{!7}
!opencl.ocl.version = !{!8, !8, !8, !8, !8, !8, !8, !8}

!0 = !{i32 7, !"openmp-device", i32 31}
!1 = !{i32 7, !"openmp", i32 31}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"flang version 21.0.0 (https://github.com/jsjodin/llvm-project.git f1c260dd2437f675a1fb82844269f0712a92abbb)"}
!6 = !{!"AMD clang version 18.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-6.3.3 25012 e5bf7e55c91490b07c49d8960fa7983d864936c4)"}
!7 = !{i32 0, i32 66306, i32 87163984, !"_QQmain", i32 4, i32 0, i32 0}
!8 = !{i32 2, i32 0}
!9 = !{i64 8}
!10 = !{i64 4}
