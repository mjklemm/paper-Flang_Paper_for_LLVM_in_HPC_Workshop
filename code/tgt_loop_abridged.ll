define void @saxpy_(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
  ...
  %29 = sub i64 %26, 1|\label{ln:SaxyLLVMIRBoundsXStart}|
  %30 = sub i64 %21, 1
  %31 = sub i64 %29, 0
  %32 = add i64 %31, 1
  %33 = mul i64 1, %32
  %element_count = mul i64 %33, 4
  %omp_loop.tripcount = select i1 %40, i32 0, i32 %42|\label{ln:SaxyLLVMIRBoundsXEnd}|
  br label %entry
entry:
  ...
  %53 = getelementptr inbounds [7 x ptr], 
    ptr %.offload_baseptrs, i32 0, i32 0
  store ptr %0, ptr %53, align 8
  %54 = getelementptr inbounds [7 x ptr],
    ptr %.offload_ptrs, i32 0, i32 0
  store ptr %array_offset, ptr %54, align 8
  %55 = getelementptr inbounds [7 x i64], 
    ptr %.offload_sizes, i32 0, i32 0
  store i64 %element_count, ptr %55, align 8
  %56 = getelementptr inbounds [7 x ptr],
    ptr %.offload_mappers, i64 0, i64 0
  store ptr null, ptr %56, align 8
  ...
  %86 = getelementptr inbounds nuw
    %struct.__tgt_kernel_arguments, ptr %kernel_args,
    i32 0, i32 6
  store ptr @.offload_mapnames, ptr %86, align 8
  ...
  %93 = call i32 @__tgt_target_kernel(ptr @5, i64 -1,|\label{ln:SaxpyLLVMIRInvokeStart}|
    i32 0, i32 0, 
    ptr @.__omp_offloading_32_2c977e2_saxpy__l9.region_id,
    ptr %kernel_args)|\label{ln:SaxpyLLVMIRInvokeEnd}|
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %omp_offload.failed,
    label %omp_offload.cont
omp_offload.failed:|\label{ln:SaxpyLLVMIRHostStart}|
  call void @__omp_offloading_32_2c977e2_saxpy__l9(i32 %22,
    ptr %0, ptr %6, ptr %3, ptr %1, ptr %2, ptr %7, ptr %8)
  br label %omp_offload.cont|\label{ln:SaxpyLLVMIRHostEnd}|
omp_offload.cont:
  ret void
}
