; ModuleID = '/net/home/micha/Documents/Publications/Work/Flang_Paper_for_LLVM_in_HPC_Workshop/code/tgt_loop.bc'
source_filename = "FIRModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.__tgt_offload_entry = type { i64, i16, i16, i32, ptr, ptr, i64, i64, ptr }
%struct.__tgt_kernel_arguments = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, [3 x i32], [3 x i32], i32 }

@_QMiso_fortran_env_implECreal32 = external constant i32
@0 = private unnamed_addr constant [109 x i8] c";/net/home/micha/Documents/Publications/Work/Flang_Paper_for_LLVM_in_HPC_Workshop/code/tgt_loop.f90;x;4;36;;\00", align 1
@1 = private unnamed_addr constant [114 x i8] c";/net/home/micha/Documents/Publications/Work/Flang_Paper_for_LLVM_in_HPC_Workshop/code/tgt_loop.f90;unknown;1;1;;\00", align 1
@2 = private unnamed_addr constant [115 x i8] c";/net/home/micha/Documents/Publications/Work/Flang_Paper_for_LLVM_in_HPC_Workshop/code/tgt_loop.f90;unknown;5;36;;\00", align 1
@3 = private unnamed_addr constant [115 x i8] c";/net/home/micha/Documents/Publications/Work/Flang_Paper_for_LLVM_in_HPC_Workshop/code/tgt_loop.f90;unknown;4;36;;\00", align 1
@4 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @4 }, align 8
@6 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @4 }, align 8
@.__omp_offloading_32_2c977e2_saxpy__l9.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [7 x i64] [i64 0, i64 4, i64 4, i64 0, i64 4, i64 4, i64 4]
@.offload_maptypes = private unnamed_addr constant [7 x i64] [i64 33, i64 800, i64 800, i64 547, i64 800, i64 800, i64 800]
@.offload_mapnames = private constant [7 x ptr] [ptr @0, ptr @1, ptr @1, ptr @1, ptr @1, ptr @2, ptr @3]
@.offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_32_2c977e2_saxpy__l9\00", section ".llvm.rodata.offloading", align 1
@.offloading.entry.__omp_offloading_32_2c977e2_saxpy__l9 = weak constant %struct.__tgt_offload_entry { i64 0, i16 1, i16 1, i32 0, ptr @.__omp_offloading_32_2c977e2_saxpy__l9.region_id, ptr @.offloading.entry_name, i64 0, i64 0, ptr null }, section "llvm_offload_entries", align 8
@llvm.embedded.object = private constant [9752 x i8] c"\10\FF\10\AD\01\00\00\00\18&\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00\02\00\01\00\00\00\00\00H\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\90\00\00\00\00\00\00\00\84%\00\00\00\00\00\00i\00\00\00\00\00\00\00\87\00\00\00\00\00\00\00n\00\00\00\00\00\00\00u\00\00\00\00\00\00\00\00arch\00triple\00amdgcn-amd-amdhsa\00gfx90a\00\00\00BC\C0\DE5\14\00\00\05\00\00\00b\0C0$MY\BE\A6m\FB\B4O\1B\C8$D\012\05\00!\0C\00\00\D3\07\00\00\0B\02!\00\02\00\00\00\22\00\00\00\07\81#\91A\C8\04I\06\1029\92\01\84\0C%\05\08\19\1E\04\8Bb\80\18E\02B\92\0BB\C4\102\148\08\18K\0A2b\88H\B0d!C\86\88\04G\1C2B$q\C8\08\11$)@\86\8C\10K\012d\84\08\92\1C #F\88\E5\00\191B\04\19*(*\90Q\\ #\B9@\86\0C\19\C3\07\CB\15\19b\8C\8C$\07\192b,9\C8\90\11#\C8\12\88\0E\1D:dDG\C8\10\22CF\02\19\1A\00\89 \00\00<\00\00\00\22f\04\10\B2B\82\89\11RB\82\89\91q\C2PH\0A\09&F\C6\05Bb&\08\C4`\B2 \98#\00\03\9A#@\B2mH\B9!\E7\86\0C\10\F2b8G\9A\22J\98|d \9A\E9\9FP\11\04A \CC\11@\B7ISD\09\93\DFa\0D\C0 \82\D7TH\E44\0C\D1L-\86\02\E5\C2@\9A\22J\98|\CEi\0A\C4\A0\22`B\9C\C6k*$r\1A\86h\A6\16C\C90\0CA\10\04Ap\9A4E\940\F9$\115\C4\E25\15\129\0DC4S\8B\A1\81\11\84\11\80\928\82 \08\82 \08\85p\04A(\83\13\08e\08\04\A1\08\81P\02\A7 \8E \08A\10\04%\08\E6\08@\A1(\8E\10\04A \08\C25\100YP\18C\D34A\10\8C!\\\97 \08s\04\C1\14\801\04\E1\12.\C1\1C\81 \\\C2%\CC\00\00\00\00Q\18\00\00\03\02\00\00\1Bz'\F8\FF\FF\FF\FF\81\08\87v \87s\80\87zh\03s`\87p\A0\876\B8\87w\90\87uh\83s\90\87w\A8\07xh\83yH\07}(\07 \0E\D8@\0E\EA\C0\0E\80a\1D\CAA\1E\DC\A1\1C\D8\01 \DE\A1\1D\E0\E1\17\E8!\1C\E4\E1\1C\CA\81\1E~\81\1E\D0A\1E\CA!\1C\C8\E1\17\D8!\1D\DA!\1D\E8\01\90\83:\B0\03\80\A0\87p\90\87s(\07zh\83q\80\87z\00\CE\C1\1C\F0!\0F\E0 \1C\00\82\1E\C2A\1E\CE\A1\1C\E8\A1\0D\CC\A1\1C\C2\81\1E\EAA\1E\CAa\1E\805\88\03;h\03qH\07zh\83tp\87y\A0\87y`\835\08\07zx\87vH\87qh\03q\A8\07s0\87r\90\8768\07vx\07q\08\07vh\03xX\876\08\07r \8760\878\B0\836H\07w\98\07z\98\076X\83p\A0\87wh\87t\18\8760\87p \07rh\03y\A0\07wh\83tp\87y\A0\87y`\835\18\87th\83tp\87y\A0\87y`\835 \07vh\83tp\87y\A0\87y`\835 \87w\A0\878h\83tp\87y\A0\87y`\835 \87w\A0\878\80\836H\07w\98\07z\98\076X\03rx\07z\90\836H\07w\98\07z\98\076X\03rx\07z\98\836H\07w\98\07z\98\076X\03rx\07z\A0\836H\07w\98\07z\98\076X\03rx\07z\A8\836H\07w\98\07z\98\076X\03rx\07z\B0\836H\07w\98\07z\98\076X\03rx\07z\B8\836H\07w\98\07z\98\076X\03r\80\07x`\8358\07s\C0\07<h\83tp\87y\A0\87y`\8358\07s\C0\87<h\83tp\87y\A0\87y`\8358\07s\C0\87<\80\83ph\83tp\87y\A0\87y`\8358\87{\98\076X\83th\87p8\87rh\83tp\87y\A0\87y`\835h\87pH\876H\07w\98\07z\98\076X\83yh\83v(\87v\90\87r\08\07v\A0\87th\87r`\835\98\876h\87rh\07zH\87v(\876H\07w\98\07z`\835\B0\87v(\87vh\03zx\876`\07r\98\876`\87w\08\07rh\83tp\87y\A0\87y`\835\B8\87p\B0\87r0\07yx\07w\A0\87yH\07}(\07;\A0\03\80\A8\07wH\07sx\07yh\876\B8\87w\90\87uh\83s\90\87w\A8\07xh\83yH\07}(\07\80\1E\E4\A1\1E\CA\01\D8\B07\C2\FF\FF\FF\FF\0F\80\00HD8\B4\039\9C\03<\D4C\1B\98\03;\84\03=\B4\C1=\BC\83<\ACC\1B\9C\83<\BCC=\C0C\1B\CCC:\E8C9\00q\C0\06rP\07v\00\10\EF\D0\0E\F0\F0\0B\F4\10\0E\F2p\0E\E5@\0F\BF@\0F\E8 \0F\E5\10\0E\E4\F0\0B\EC\90\0E\ED\90\0E\F4\00\C8A\1D\D8\01@\D0C8\C8\C39\94\03=\B4\C18\C0C=\00\E7`\0E\F8\90\07p\10\0E\00A\0F\E1 \0F\E7P\0E\F4\D0\06\E6P\0E\E1@\0F\F5 \0F\E50\0F\C0\1A\C4\81\1D\B4\818\A4\03=\B4A:\B8\C3<\D0\C3<\B0\C1\1A\84\03=\BCC;\A4\C38\B4\818\D4\839\98C9\C8C\1B\9C\03;\BC\838\84\03;\B4\01<\ACC\1B\84\039\90C\1B\98C\1C\D8A\1B\A4\83;\CC\03=\CC\03\1B\ACA8\D0\C3;\B4C:\8CC\1B\98C8\90\039\B4\81<\D0\83;\B4A:\B8\C3<\D0\C3<\B0\C1\1A\8CC:\B4A:\B8\C3<\D0\C3<\B0\C1\1A\90\03;\B4A:\B8\C3<\D0\C3<\B0\C1\1A\90\C3;\D0C\1C\B4A:\B8\C3<\D0\C3<\B0\C1\1A\90\C3;\D0C\1C\C0A\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\C8A\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\CCA\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\D0A\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\D4A\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\D8A\1B\A4\83;\CC\03=\CC\03\1B\AC\019\BC\03=\DCA\1B\A4\83;\CC\03=\CC\03\1B\AC\019\C0\03<\B0\C1\1A\9C\839\E0\03\1E\B4A:\B8\C3<\D0\C3<\B0\C1\1A\9C\839\E0C\1E\B4A:\B8\C3<\D0\C3<\B0\C1\1A\9C\839\E0C\1E\C0A8\B4A:\B8\C3<\D0\C3<\B0\C1\1A\9C\C3=\CC\03\1B\ACA:\B4C8\9CC9\B4A:\B8\C3<\D0\C3<\B0\C1\1A\B4C8\A4C\1B\A4\83;\CC\03=\CC\03\1B\AC\C1<\B4A;\94C;\C8C9\84\03;\D0C:\B4C9\B0\C1\1A\CCC\1B\B4C9\B4\03=\A4C;\94C\1B\A4\83;\CC\03=\B0\C1\1A\D8C;\94C;\B4\01=\BCC\1B\B0\039\CCC\1B\B0\C3;\84\039\B4A:\B8\C3<\D0\C3<\B0\C1\1A\DCC8\D8C9\98\83<\BC\83;\D0\C3<\A4\83>\94\83\1D\D0\01\B0\C1\18\02 \01Ha\83A\08@\02\90\C2\86\BC)\FE\FF\FF\FF\7F\00\04\22\1C\DA\81\1C\CE\01\1E\EA\A1\0D\CC\81\1D\C2\81\1E\DA\E0\1E\DEA\1E\D6\A1\0D\CEA\1E\DE\A1\1E\E0\A1\0D\E6!\1D\F4\A1\1C\808`\039\A8\03;\00\88wh\07x\F8\05z\08\07y8\87r\A0\87_\A0\07t\90\87r\08\07r\F8\05vH\87vH\07z\00\E4\A0\0E\EC\00 \E8!\1C\E4\E1\1C\CA\81\1E\DA`\1C\E0\A1\1E\80s0\07|\C8\038\08\07\80\A0\87p\90\87s(\07zh\03s(\87p\A0\87z\90\87r\98\07`\0D\E2\C0\0E\DA@\1C\D2\81\1E\DA \1D\DCa\1E\E8a\1E\D8`\0D\C2\81\1E\DE\A1\1D\D2a\1C\DA@\1C\EA\C1\1C\CC\A1\1C\E4\A1\0D\CE\81\1D\DEA\1C\C2\81\1D\DA\00\1E\D6\A1\0D\C2\81\1C\C8\A1\0D\CC!\0E\EC\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6 \1C\E8\E1\1D\DA!\1D\C6\A1\0D\CC!\1C\C8\81\1C\DA@\1E\E8\C1\1D\DA \1D\DCa\1E\E8a\1E\D8`\0D\C6!\1D\DA \1D\DCa\1E\E8a\1E\D8`\0D\C8\81\1D\DA \1D\DCa\1E\E8a\1E\D8`\0D\C8\E1\1D\E8!\0E\DA \1D\DCa\1E\E8a\1E\D8`\0D\C8\E1\1D\E8!\0E\E0\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\E4\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\E6\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\E8\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\EA\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\EC\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\DE\81\1E\EE\A0\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6\80\1C\E0\01\1E\D8`\0D\CE\C1\1C\F0\01\0F\DA \1D\DCa\1E\E8a\1E\D8`\0D\CE\C1\1C\F0!\0F\DA \1D\DCa\1E\E8a\1E\D8`\0D\CE\C1\1C\F0!\0F\E0 \1C\DA \1D\DCa\1E\E8a\1E\D8`\0D\CE\E1\1E\E6\81\0D\D6 \1D\DA!\1C\CE\A1\1C\DA \1D\DCa\1E\E8a\1E\D8`\0D\DA!\1C\D2\A1\0D\D2\C1\1D\E6\81\1E\E6\81\0D\D6`\1E\DA\A0\1D\CA\A1\1D\E4\A1\1C\C2\81\1D\E8!\1D\DA\A1\1C\D8`\0D\E6\A1\0D\DA\A1\1C\DA\81\1E\D2\A1\1D\CA\A1\0D\D2\C1\1D\E6\81\1E\D8`\0D\EC\A1\1D\CA\A1\1D\DA\80\1E\DE\A1\0D\D8\81\1C\E6\A1\0D\D8\E1\1D\C2\81\1C\DA \1D\DCa\1E\E8a\1E\D8`\0D\EE!\1C\EC\A1\1C\CCA\1E\DE\C1\1D\E8a\1E\D2A\1F\CA\C1\0E\E8\00\D8@\18\FF\FF\FF\FF?\00\D2\06\E2\F8\FF\FF\FF\FF\01\10\00\00\00\00I\18\00\00\04\00\00\00\13\82`\C2 \0C\C4\84\A0\98\10\18\13\82\03\00\13\A2ph\07r8\87qp\876\08\87v \876\08\87v \07t\98\87p\D8\B0\1E\E5\D0\06\F0\A0\07v@\07z`\07t\D0\06\F0\10\07z`\07t\A0\07v@\07m\00\0Fr\A0\07s \07z0\07r\D0\06\F00\07z0\07r\A0\07s \07m\00\0Ft\A0\07v@\07z`\07t\D0\06\F0P\07z0\07r\A0\07s \07m\00\0Fv\A0\07s \07z0\07r\D0\06\F0p\07z\10\07v\00\07z \07u`\07z \07u`\07z0\07r\D0\06\F0\80\07z\10\07r\80\07z\10\07r\80\07z\10\07r\80\07z@\07x\D0\06\F0\90\07z\10\07y \07z \07u`\07z \07u`\07z0\07r\D0\06\E9`\07t\A0\07v@\07m`\0Fq`\07z\10\07v\D0\06\F6 \07t\A0\07s \07m`\0Fs \07z0\07r\D0\06\F6@\07x\A0\07v@\07m`\0Fy`\07z\10\07r\80\07m`\0Fq\90\07r\A0\07rP\07v\D0\06\F6 \07u`\07z \07u`\07m`\0Fu\10\07r\A0\07u\10\07r\D0\06\F6\10\07p \07t\A0\07q\00\07r@\07m`\0Fr\00\07t\80\07z \07p@\07x\D0\06\EE0\07r\A0\07v@\07m0\0Bs \07m\10\0Au\D0\06\A7\10\07m\E0\0E\E9\A0\07w\A0\07x\A0\07y\B0\A2a\07v\B0\87vp\83v(\07z\08\07r\08\07z\08\07\A5\07\84\08\09!CF\8A\0C\09\1A!\0C\9B|\E2j:\03\B5\10;(\80\0A\0E-\02\80\00\00\00\00\00\02\0A\00\80\1D\14u\06\C1\A1E\00\10\00\00\00\00@@\01\00\B0\83\DA\834\08\0E-\02\80\00\00\00\00\00\02\0A\00\80\1D\149\80Aph\11\00\04\00\00\00\00\10P\00\00\EC\A0H\C2\0C\82C\8B\00 \00\00\00\00\80\80\02\00\80\AA\01\1Fq\00\00vP\14@\0Co\90\04\00\00\04\00\00\00\01\05\00\C0\0E\8A\02\8A\01\0E\92\00\00\80\00\00\00 \A0\00\00\D8AQ\801\C4A\12\00\00\10\00\00\00\04\14\00\00;(\0A0\069H\02\00\00\02\00\00\80\80\02\00`\07\95\1Ao0\1Cg\00\01\80\00\00\00\00\00\01\05\00\00\F1\03$\CE\98\03\81;(\0A@\06:H\02\00\00\02\00\00\80\80\02\00`\07E\01\C9Q\07\09\01\00@\00\00\00\10P\00\00\EC\A0T$\0F\16\C3\0E\22\00\10\00\00\00\00 \A0\00\00\D8A\8D\0A\1E4\07\1ED\00 \00\00\00\00@@\01\000\A4\DA\972xv\01\88\02\00\10\00\00\00\00\00\08\00\0A\18R\81\0D\1C@\000\08\00\00\00\00\00\00\00\10\00\140\A4\82\1D7\88\00`\18\00\00\00\00\00\00\00 \00(`H\E5?\92\04\04\00\00\00\00\00\00\00\00\00\00@\01C*\18\C2& \00\08\00\00\00\00\00\00\00\00\00\0A\18R\A1\11E\01\01\00\00\00\00\00\00\00\00\00\00P\C0\90\8A\8F\C8\A0\02\02\A0\00\00\00\00\00\00\00\00\00\A0\80!\158M\16\10\00\04\00\00\00\00\00\00\00\00\00\05\0C\A9\E6I\C2\80\00(\00\00\00\00\00\00\00\00\00(@b\83@a\EB\03\00\80,\10\81\00\00\002\1E\98\18\19\11L\90\8C\09&G\C6\04C\0AF\00\8A\A0\04\8A\A5\00\09\CA\A1\D0\CA\A0 \0A\A1\C8\8A\F8{\99\A5$h(\82\11\80\12\A0\AB\10\0A\82\04c@\C1\18h0\06\1C\88Pv\D8\BD\DCe\FA\0B\FDn\97_\ED\F4\18\1D~\11\DF\E3z\BB\EC\A6\CF_\D0\BA\98\9D\1E\87\E9\E9\B7{\FE\BA\BE\E5\EB\97\91\1Dv\9F\BF\D00\BC,\FF\9A\DF\F2/\93im~\D3\EE/\12:\FC^\DF\F2\F5\1C\FD\86\BF\C6or\F9E?\D3\BF\EC\F7\1B\EE2\E7`;\FC\8E\B6\9B\D9v;*4\1Ev/w\99\FEB\BF\DB\E5W;=F\87_\C4\F7\B8\DE.\BB\E9\F3\17\B4.f\A7\C7az\FA\ED\9E\BF\AEo\F9\FAed\87\DD\E7/4\0C/\CB\BF\E6\B7\FC\CBdZ\9B\DF\B4\FB\8B\84\0E\BF\D7\B7|=G\BF\E1\AF\F1\9B\\~\D1\CF\F4/\FB\FD\86\BB\CC9\D8\AE\EE^\BB\DFw\F7.\B6\8B\EDvd\A8<\EC^\EE2\FD\85~\B7\CB\AFvz\8C\0E\BF\88\EFq\BD]v\D3\E7/h]\CCN\8F\C3\F4\F4\DB=\7F]\DF\F2\F5\CB\C8\0E\BB\CF_h\18^\96\7F\CDo\F9\97\C9\B46\BFi\F7\17\09\1D~\AFo\F9z\8E~\C3_\E37\B9\FC\A2\9F\E9_\F6\FB\0Dw\99s\B0]\DD\BDv\BF\EF\EE]m7\B3\EDv*\0F\BB\97\BBL\7F\A1\DF\ED\F2\AB\9D\1E\A3\C3/\E2{\\o\97\DD\F4\F9\0BZ\17\B3\D3\E30=\FDv\CF_\D7\B7|\FD2\B2\C3\EE\F3\17\1A\86\97\E5_\F3[\FEe2\AD\CDo\DA\FDEB\87\DF\EB[\BE\9E\A3\DF\F0\D7\F8M.\BF\E8g\FA\97\FD~\C3]\E6\1ClWw\AF\DD\EF\BB{G\DB\CDl\BB\1D\1D\18\AC\84\A8\B5\AB\BB\D7\EE\F7\DD\BD\AB\BB\D7\EE\F7\DD\BD\83\ED`\BB\1D%XdZ\C61\B4\8C\00\10\83\C9\89\9A[\97eYF\0D\0E6\DB\02\00\00\B1\18\00\00\D0\00\00\003\08\80\1C\C4\E1\1Cf\14\01=\88C8\84\C3\8CB\80\07yx\07s\98q\0C\E6\00\0F\ED\10\0E\F4\80\0E3\0CB\1E\C2\C1\1D\CE\A1\1Cf0\05=\88C8\84\83\1B\CC\03=\C8C=\8C\03=\CCx\8Ctp\07{\08\07yH\87pp\07zp\03vx\87p \87\19\CC\11\0E\EC\90\0E\E10\0Fn0\0F\E3\F0\0E\F0P\0E3\10\C4\1D\DE!\1C\D8!\1D\C2a\1Ef0\89;\BC\83;\D0C9\B4\03<\BC\83<\84\03;\CC\F0\14v`\07{h\077h\87rh\077\80\87p\90\87p`\07v(\07v\F8\05vx\87w\80\87_\08\87q\18\87r\98\87y\98\81,\EE\F0\0E\EE\E0\0E\F5\C0\0E\EC0\03b\C8\A1\1C\E4\A1\1C\CC\A1\1C\E4\A1\1C\DCa\1C\CA!\1C\C4\81\1D\CAa\06\D6\90C9\C8C9\98C9\C8C9\B8\C38\94C8\88\03;\94\C3/\BC\83<\FC\82;\D4\03;\B0\C3\0C\C7i\87pX\87rp\83th\07x`\87t\18\87t\A0\87\19\CES\0F\EE\00\0F\F2P\0E\E4\90\0E\E3@\0F\E1 \0E\ECP\0E3 (\1D\DC\C1\1E\C2A\1E\D2!\1C\DC\81\1E\DC\E0\1C\E4\E1\1D\EA\01\1Ef\18Q8\B0C:\9C\83;\CCP$v`\07{h\077`\87wx\07x\98QL\F4\90\0F\F0P\0E3\1Ej\1E\CAa\1C\E8!\1D\DE\C1\1D~\01\1E\E4\A1\1C\CC!\1D\F0a\06T\85\838\CC\C3;\B0C=\D0C9\FC\C2<\E4C;\88\C3;\B0\C3\8C\C5\0A\87y\98\87w\18\87t\08\07z(\07r\98\81\\\E3\10\0E\EC\C0\0E\E5P\0E\F30#\C1\D2A\1E\E4\E1\17\D8\E1\1D\DE\01\1EfH\19;\B0\83=\B4\83\1B\84\C38\8CC9\CC\C3<\B8\C19\C8\C3;\D4\03<\CCH\B4q\08\07v`\07q\08\87qX\87\19\DB\C6\0E\EC`\0F\ED\E0\06\F0 \0F\E50\0F\E5 \0F\F6P\0En\10\0E\E30\0E\E50\0F\F3\E0\06\E9\E0\0E\E4P\0E\F80#\E2\ECa\1C\C2\81\1D\D8\E1\17\EC!\1D\E6!\1D\C4!\1D\D8!\1D\E8!\1Ff \9D;\BCC=\B8\039\94\839\CCX\BCpp\07wx\07z\08\07zH\87wp\87\19\CB\E7\0E\EF0\0F\E1\E0\0E\E9@\0F\E9\A0\0F\E50\C3\01\03s\A8\07w\18\87_\98\87pp\87t\A0\87t\D0\87r\98\81\84A9\E0\C38\B0C=\90C9\CC@\C4\A0\1D\CA\A1\1D\E0A\1E\DE\C1\1Cf$c0\0E\E1\C0\0E\EC0\0F\E9@\0F\E50C!\83u\18\07sH\87_\A0\87|\80\87r\98\B1\94\01<\8C\C3<\94\C38\D0C:\BC\83;\CC\C3\8C\C5\0CH!\15Ba\1E\E6!\1D\CE\C1\1DR\81\14fLg0\0E\EF \0F\EF\E0\06\EFP\0F\F40\0F\E9@\0E\E5\E0\06\E6 \0F\E1\D0\0E\E50\A3@\83vh\07y\08\87\19R\1A\B8\C3;\84\03;\A4C8\CC\83\1B\84\039\90\83<\CC\03<\84\C38\94\C3\0CG\0D\D0\A1\1C\C2\01\1E\C2\81\1D\D8\E1\1D\C6a\1E\D2\81\1E\CA\01\00y \00\00\99\00\00\00\92\1EH C\88\0C\19\09dd\C8\C9 \81\8C\042FFF\13\81B\A0\90\F1\C4\C8\089B\86\8C\22\82\E4\0B\00\00\8D!%J\\\88\84\01openmp-deviceopenmpDebug Info VersionPIC Levelwchar_sizeAMD flang version 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/flang 37de1b61434af16eca9df1f40bb2b0d6ffa0398c)AMD clang version 22.0.0git (ssh://github-emu/AMD-Lightning-Internal/llvm-project  25283 37de1b61434af16eca9df1f40bb2b0d6ffa0398c)saxpy_\00\00\00#\08\817\82\10|#\08\816\82\10\80\C1\08B\10\06#\08\C16\82\10\88\C1\08B\90\8D \04c0\82\10\90\C1\08BP\06#\08W\1A\8C \\j0\C3\90\04\CA\0CC\22(3\0C\CB\C0\CC04\C42\C3\E0\14\CF\0C\811Cp\CCp@\91\84L\104\83\B0@3\04\D4\0CA%#\81\09\CA\88\8D\CD\AE\CD\A5\ED\8D\AC\8E\AD\CC\C5\8C-\ECln\94\A2\B2.,K\85\8D\CD\AE\CD%\8D\AC\CC\8Dn\94D\DB\B6m\DB\B6mK\E8\AD\0D\EE\EB\CD\CC\8C\ED-\8C\CC%\CD\CD\ECm\94\80K\E9\0D\AE\CCm\8C\CD\E5m\8C\CD\C5\AELn.\ED\CDm\14\A4\EB\BA\AE\EB\BA\0E\00\00\A9\18\00\00-\00\00\00\0B\0Ar(\87w\80\07zXp\98C=\B8\C38\B0C9\D0\C3\82\E6\1C\C6\A1\0D\E8A\1E\C2\C1\1D\E6!\1D\E8!\1D\DE\C1\1D\164\E3`\0E\E7P\0F\E1 \0F\E4@\0F\E1 \0F\E7P\0E\F4\B0\80\81\07y(\87p`\07vx\87q\08\07z(\07rXp\9C\C38\B4\01;\A4\83=\94\C3\02k\1C\D8!\1C\DC\E1\1C\DC \1C\E4a\1C\DC \1C\E8\81\1E\C2a\1C\D0\A1\1C\C8a\1C\C2\81\1D\D8a\C1\01\0F\F4 \0F\E1P\0F\F4\80\0E\0B\88u\18\07sH\87\05\CF8\BC\83;\D8C9\C8\C39\94\83;\8CC9\8C\03=\C8\03;\00\00\00\00\D1\10\00\00\06\00\00\00\07\CC<\A4\83;\9C\03;\94\03=\A0\83<\94C8\90\C3\01\00\00\00a(\00\00\FC\00\00\00#\08\92\B0@\00\00\00\04\00\00\00\14\D4@)\D05\02P\02$\18\03\0F#\00\00c\22\8E`#\851\11[\B0\91\C2\98\88 \D8FaL\C4\15l\A40&\E2\0A6R\18\13\C1\05\1B)\A8@\E01\11B\B0\91\82\0A\04.\81E\C6D\08\C1F\0A*\10\B8\04\17\19\13!\04\1B)\A8@\E0\12`dL\84\10l\A4\A0\02\81K\90\911\11B\B0\91\82\0A\04.\81F\C6D\08\C1F\0A*\10\B8\04\1B\19\13!\04\1B)\A8@\E0\12pdLD\10l\A3\A0\02\81\C7D\04\C16\0A*\10x\88\81\01\80 \18H\AC\B0\9D\81\0C\C0\00|\01\12\90I \C4\11\88\13\DC\E0\08\92\04\830\C1P\C2%2 \03S\0D\97\C8\C0\0C\CC\D1\0D\C2\19\04\A3\1B\0A4 \\\11\C1\0D` \0B\B2P\02\8DDpC\18\CCB,\94` \11\DC \06\B40\0B%(H\047\8CA-\B8B\092\12\C1\0Dd`\0B\ADP\82\87DpC\19\DC\C2\1B\94\E0!\A4\0C\04\12\C1\0Df\90\0B\B7@\82\8BDp\03\1A\EC\82.\90\E0\22\11\DC\A0\06\BD`\0B$\10H\047\B0\C1/\D8\02\09\04\12\C1\0Dn\10\0Ey@\02\81(;\10X\D9\81\C0D\0C\82A\C2 \18\E4\09\C6\10\83\02\00A0\98\DA\A1\16\8A\1E\08\A3\E4\C1C\0A\1E4\A4\EC\81\1E\8C\88m\D8\83t8\87\12\E8\C1\88\D8\06>P\87t(\81\1E\8C\88m\E8\83u \87\128$b\1B\FC\80\1D\C6\A1\04\0D\89\D8\86?h\87R(\01C\CA\A2\90!\06\0D\00\82`\80\BD\C3.\18\ECp\0A\A7`\0F\A2\B0\90\823\DC1\C4\80\00@\10\0C(y`,8\10}\00\00\00f\18\80\18\C4\F3\DB\BB\8F\98R\E3G\C4\E2\00\031\D4\B5\8F\D8\D1\22M\11%LZd\F8\88\0D\06D\06\F1\FC~D,\0E0\10C]\FB\88\FD%\132\F8\94D\F8\88\B5\19\06\F1\FCvo`\0Eq\11\C2OID\F4\0B\CE@\\\01\228\03\B1\12\CFb}\924E\940i\91\E1\03\92\00H\93\8F\98`@d\10\CF\EFG\C4\E2\00\031\D4\B4\8F\D8\16b \83\0F\0CCt\01\0F%\11\D1/8\03\E1\13\CD\14a6\B7,\0E0\18\C4\F3\DB>b]\CA\84\0C>0\0CQ}\1B\DEa\10\CF\BF\FB\88\191\0A\115\C4\F2\03\91\E1#\06g\18\C4\F3\DF\F6\19(\13\010\92O\\\C8dL\904E\940i\91\E1\03\92\00H\93\D1\1D\06\F1\FC\B7\8F\98\9Ba\10\CF\7F\D3\16\A7,\0E0\18\C4\F3\FB\C8\09\\\0E\F3\F8\11a N\E3\03\C5DD?\B0,\8E\00\18\9Ba\10\CFo\F3F\18\80\18\C4\F3\D7\B5\8F\D8\1E\B38\C0`\10\CF_\D3>bw\CB\E2\00\83A<\BF\EE#V\18\80\18\C4\F3\DB\BA\8F\D8\9Ba\10\CF\7F\D7\87\B0XN\A4\10\91O\\\C8dk\84A<\BF\E9\1D\06\F1\FC\BD\8FXR\E3G\C4\E2\00\031\D4\B4\8F\98W4!\83\0F\0CC\E4\03\92\00HS\8D\DBR\22M\11%LZdX`\C0\E50\CFo,N\00,\FFtD\040\FC\0D\C5\F8\88\D5-\8B\03\0C\06\F1\FC\B8\8F\DC\C1\E30\8F\1F\11\06\E24\BE\E04\93\E5-\8B\03\0C\06\F1\FC\BC\8F\1C\81\E20\8F?\01\91AL\86\B4\F8\11\B18\C0@\0C>b~\89\81\0C>%\11>r\00\05\D1L\11fv\87A<\7F\EE#7\D08\D4\B4 \0D1\F8\813`&w\18\C4\F3\D7>b\\\D1\84\0C>0\0C\91\0FH\02 M\B5\0D\00\00\00\01b\00\00\08\00\00\00[\861\88\BC-\03\19D\DE\96\A1\0F\A2o\CB0\0A\D1\B7e(\85\C8\DB2\9CB\E4\01\00\00\00\00\00\00a(\00\00\05\01\00\00#\08\94\B0@\00\00\00\02\00\00\00\14\94B1\00\00\00\00c\22\BE`#\85\88m \CA\A0\0CH\A0\8D\88m0\CE\A0\0CH\A0\8D\88m@\D2\00\0DH\A0\8D\88mP\D6\80\0CH \90\88m`\DA\80\0CH \90\88mp\DE\A0!\81@\C6D\80A\B0\91\82\0A\04\1E\13\11\04\DB(\A8@`b\05\A3\08\C1 B0H\14\8C1\11A\B0\8D\82\0A\04&\D2EHt\11\178\C1\0D\8EpE\048,|\C0\07%0F\0480}\B0\07%(H\0484~\D0\07%\98H\0488\7F\80\07%0H\048<\A0p\07%\98H\048@\A1\F0\95\E0 \11\E0\10\89\C2W\82\89\90(\18\11\E0 \91\82(\90@ \11\E0@\99B)\90@ \11\E0`\A1B(\90\E0\22\11\E0\80\A9B(\90@ \11\E0\A0\B1\82\1A\90\E0\22\11\E0\C0\B9\C2\1A\90@ \8A\0D\04N\CE+\84\80|`\01\1D\DD0\0BPP\E0\E0!\11\DF\00\07\B4 \0B%pH\C47\C4A-\D0B\09\1A\12\F1\0Dr`\0B\AFP\02\86D|\C3\1C\DC\82+\94`!\11\DF@\07\B8`\07%P\C8\10\03\02\00A0\B0va\88\C1\02\80 \18T\BDp\0A\E1\A0\1C\81.\E8\823\DC\E1\10\97\B0\E0@\00\00\9D\00\00\00\D6DM\C8\E0\03\C3\10\F9\8B#\00\8B\0F\08\804Y\CF\22M\11%LZd\F8\88\B5!\06\F1\FCu\EE#\87@9\CC\E3?@\E4?\11\F1\17H\03,HF\DC\01\E40\8F\1F\11\06\E24\BE\E04\D3mY\86A<\BF}_\01\228\03\B1\12\CFb9PFD\8E\0F\0CC\E4\03\92\00H\93\A5I\D2\14Q\C2\A4E\86\0FH\02 M>bW\86A<\BF]\DBQ\B28\C0`\10\CFo\DBO\B48\C0`\10\CF\EFG\C4\E2\00\031\18Ra\10\CF\7F\9B\D7\B28\C0`\10\CFo\FB\88=\0D\132\18\1B\E50\CF\BF8\CE\E3O\11\F2\08\0E\D5L>bp\88A<\7F\CD\FB\88\8D\1D\06\F1\FC\BB\8F\98Qa\10\CF_\1B\CE3!\83\0F\0CC\E4\03\92\00H\93\BD!\06\F1\FC\F5\EE#V\84,\0E0\18\C4\F3[R\B28\C0`\10\CF\8F\1B\96a\10\CFo\DB\B6\04ISD\09\93\16\19> \09\804Y\D0\B48\C0`\10\CF\EFG\C4\E2\00\031\D4\B4\C5!\06\F1\FCu\EF#\C6\A5,\0E0\18\C4\F3\FB\C8\11<\0E\F3\F8\0F\10\F9\11a N\83\DB\D0\B48\C0`\10\CF\EFG\C4\E2\00\031\D4\B5}\1D\06\F1\FC\B7\8F\98\D0c\10\CF\EFG\C4\E2\00\031\D4\B5\F94\06\F1\FC~D,\0E0\10\83U\15\06\F1\FC\B9\89-\8B\03\0C\06\F1\FC\BA\8F\98\19\B38\C0`\10\CF_\D3>bn\88A<\7F\AD\FB\88i\19\06\F1\FC6n@\8FA<\BF\1F\11\8B\03\0C\C4P\D3v\86\18\C4\F3\D7\B5\8F\18\11a\10\CFoe\87A<\7F\EF#\17\809\CC\E3G\84\818\8D\0F\14\13\11\FD\C0\B28\02`\9BR\22M\11%LZd\18\D8\B28\C0`\10\CF\8F\FB\88\91-\8B\03\0C\06\F1\FC\BC\8F\DC\00\E40\8F\FFDH\05L\84\8F4\C8t\02\8E\C3<\FE\03D~D\18\88\D3\D8\96a\10\CFo\E7fe\18\C4\F3\DB\B4EE\0E\F3\F8O\84T\C0D\F8\C0\B28\C2%T\0E\F3\F8\0F\10\F9\C4\85L>q!\13;Q\81\85\1D\06\F1\FC\B9\8F\9C\C13 \D2\14!\015\11>q!\9319\132\F8\C00D\FE\E2\08\C0bh\CC\E2\00\83A<\7Fm\FB\C8\014\0E\F3\F8\0F\10\F9D3E\98u\1D\06\F1\FC\B5\8F\00\00\01b\00\00\0C\00\00\00[\06!\F2\B6\0CD\F4m\19\8C\E8\DB2 \D1\B7eP\22o\CB\C0D\DE\96\C1\0D\22o\CB\00\07\D1\B7e\A0\83\C8\DB2\E0A\E4\01\00\00\00\00\00\00\00a(\00\00W\00\00\00#\08\88\B0@\00\00\00\02\00\00\00\14\94\02]%0\02\00\11\DF@\90\01\19\90@ \11\DF`\98\01\19\90@ \11\DF\80\A0\C1\19\90\E0\22\11\DF\A0\A8\C1\18\90@ \11\DF\C0\B0\C1\18\90\E0\22\11\DF\E0\B8AC\02\81\A0\C8\0D\04\05o\00.(M0\C8\12\0E\E2\04C\05\97\A4`\0A\81\14P\22\90\82J\04RP\81@\BA \11\88\08\85G A8\92\12\08HJ\B6\10H\01'\02)\E8D \05\1D\08\A4\8F\12\81\88P\98\04\12\84#!\01\80\94!\18Np\03\0B\0E\04\00\00&\00\00\00\86\A4,\0E0\18\C4\F3\D7\B4\15\15\06\F1\FC\BB\01%\8B\03\0C\06\F1\FC\B6\05\15\06\F1\FC\F7\014\0E\F3\FC\8B\E3<~\E0\0C\D8\09@\0E\F3\F8\11a N\E3\0BN3\F5\17@9\CC\E3/\8E\F3\FC\0D!M~D\18\88\D3\D8Qa\10\CF\DF\DBPa\10\CF\9F\DBOa\10\CF_\DF@\E50\8F\FFD\C4\02L\C2\E1\13\172\B1\13\15\98\0F\B28\C0`\10\CFo=\84A<\BF\19%\8B\03\0C\06\F1\FC\BC\09%\8B\03\0C\06\F1\FC\B8\11%\8B\03\0C\06\F1\FC:\00\01b\00\00\05\00\00\00[\86 \F2\B6\0CC\F4m\19\8E\C8\DB2,\91\07\00\00\00\00\00\00\00q \00\00\04\00\00\002\0E\10\22\84\10\F8\0A\18a\CF\80\12\FD\0E\00\00\00\00\00e\0C\00\00\B5\00\00\00\12\03\94\A8\05\00\00\00\03\00\00\00\85\02\00\002\00\00\00L\00\00\00\01\00\00\00X\00\00\00\00\00\00\00X\00\00\00\19\00\00\00\B0\02\00\00\01\00\00\00\B7\02\00\00\11\00\00\00\C8\02\00\00\09\00\00\00\14\00\00\00\00\00\00\00\C8\02\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00{\01\00\00%\00\00\00{\01\00\00%\00\00\00\FF\FF\FF\FF\12$\00\00\A0\01\00\000\00\00\00\A0\01\00\000\00\00\00\FF\FF\FF\FF\00 \00\00\D0\01\00\00.\00\00\00\D0\01\00\00.\00\00\00\FF\FF\FF\FF\00 \00\00\FE\01\00\00\12\00\00\00\FE\01\00\00\12\00\00\00\FF\FF\FF\FF\08$\00\00\10\02\00\00\18\00\00\00\10\02\00\00\18\00\00\00\FF\FF\FF\FF\08$\00\00(\02\00\00\14\00\00\00(\02\00\00\14\00\00\00\FF\FF\FF\FF\08$\00\00<\02\00\00$\00\00\00<\02\00\00$\00\00\00\FF\FF\FF\FF\08$\00\00`\02\00\00\13\00\00\00`\02\00\00\13\00\00\00\FF\FF\FF\FF\08$\00\00s\02\00\00\12\00\00\00s\02\00\00\12\00\00\00\FF\FF\FF\FF\08$\00\00\00\00\00\00\14\00\00\00\00\00\00\00\14\00\00\00\FF\FF\FF\FF\11\04\00\00\14\00\00\00'\00\00\00\14\00\00\00'\00\00\00\FF\FF\FF\FF\11\04\00\00;\00\00\00)\00\00\00;\00\00\00)\00\00\00\FF\FF\FF\FF\11\04\00\00d\00\00\00 \00\00\00d\00\00\00 \00\00\00\FF\FF\FF\FF\11\04\00\00\84\00\00\00&\00\00\00\84\00\00\00&\00\00\00\FF\FF\FF\FF\11\04\00\00\AA\00\00\00\1F\00\00\00\AA\00\00\00\1F\00\00\00\FF\FF\FF\FF\08\04\00\00\D1\02\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\DC\02\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\E7\02\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\F2\02\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\C9\00\00\00/\00\00\00\C9\00\00\00/\00\00\00\FF\FF\FF\FF\92\04\00\00\F8\00\00\00\12\00\00\00\F8\00\00\00\12\00\00\00\FF\FF\FF\FF\04\0C\00\00\0A\03\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\15\03\00\00\0B\00\00\00\14\00\00\00\00\00\00\00\FF\FF\FF\FF\00\18\00\00\0A\01\00\009\00\00\00\0A\01\00\009\00\00\00\FF\FF\FF\FF\12\04\00\00C\01\00\008\00\00\00C\01\00\008\00\00\00\FF\FF\FF\FF\12\04\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\FD\02\00\00\0D\00\00\00\00\00\00\00]\0C\00\00\CB\00\00\00\12\03\94`\06\00\00\00__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelism_QMiso_fortran_env_implECreal32__omp_offloading_32_2c977e2_saxpy__l9_exec_modellvm.compiler.used__omp_offloading_32_2c977e2_saxpy__l9_dynamic_environment__omp_offloading_32_2c977e2_saxpy__l9_kernel_environment__omp_offloading_32_2c977e2_saxpy__l9__omp_offloading_32_2c977e2_saxpy__l9..omp_par.2__omp_offloading_32_2c977e2_saxpy__l9..omp_par__kmpc_target_init__kmpc_global_thread_num__kmpc_target_deinit__kmpc_distribute_for_static_loop_4uomp_get_num_threads__kmpc_parallel_5122.0.0git 37de1b61434af16eca9df1f40bb2b0d6ffa0398camdgcn-amd-amdhsaFIRModule__unnamed_1__unnamed_2__unnamed_3__unnamed_4llvm.metadata__unnamed_5__unnamed_6\00\00\00\00\00\00\00\00", section ".llvm.offloading", align 8, !exclude !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @llvm.embedded.object], section "llvm.metadata"

define void @saxpy_(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
  %.casted6 = alloca ptr, align 8
  %.casted5 = alloca ptr, align 8
  %.casted4 = alloca ptr, align 8
  %.casted2 = alloca ptr, align 8
  %.casted = alloca ptr, align 8
  %.offload_baseptrs = alloca [7 x ptr], align 8
  %.offload_ptrs = alloca [7 x ptr], align 8
  %.offload_mappers = alloca [7 x ptr], align 8
  %.offload_sizes = alloca [7 x i64], align 8
  %kernel_args = alloca %struct.__tgt_kernel_arguments, align 8
  %5 = alloca { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, align 8
  %6 = alloca i32, i64 1, align 4
  %7 = alloca i32, i64 1, align 4
  %8 = alloca i32, i64 1, align 4
  %9 = load i32, ptr %3, align 4
  store i32 %9, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp sgt i64 %10, 0
  %12 = select i1 %11, i64 %10, i64 0
  %13 = insertvalue { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } { ptr undef, i64 4, i32 20240719, i8 1, i8 27, i8 0, i8 0, [1 x [3 x i64]] [[3 x i64] [i64 1, i64 undef, i64 undef]] }, i64 %12, 7, 0, 1
  %14 = insertvalue { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } %13, i64 4, 7, 0, 2
  %15 = mul i64 4, %12
  %16 = mul i64 1, %12
  %17 = insertvalue { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } %14, ptr %0, 0
  store { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] } %17, ptr %5, align 8
  %18 = load i32, ptr %3, align 4
  store i32 %18, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp sgt i64 %19, 0
  %21 = select i1 %20, i64 %19, i64 0
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr %5, i32 0, i32 7, i64 0, i32 0
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr %5, i32 0, i32 7, i64 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr { ptr, i64, i32, i8, i8, i8, i8, [1 x [3 x i64]] }, ptr %5, i32 0, i32 7, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %26, 1
  %30 = sub i64 %21, 1
  %31 = sub i64 %29, 0
  %32 = add i64 %31, 1
  %33 = mul i64 1, %32
  %element_count = mul i64 %33, 4
  %34 = sub i64 %30, 0
  %35 = add i64 %34, 1
  %36 = mul i64 1, %35
  %element_count1 = mul i64 %36, 4
  %37 = select i1 false, i32 %22, i32 1
  %38 = select i1 false, i32 1, i32 %22
  %39 = sub nsw i32 %38, %37
  %40 = icmp slt i32 %38, %37
  %41 = udiv i32 %39, 1
  %42 = add i32 %41, 1
  %omp_loop.tripcount = select i1 %40, i32 0, i32 %42
  br label %entry

entry:                                            ; preds = %4
  %array_offset = getelementptr inbounds float, ptr %0, i64 0
  %43 = load i32, ptr %6, align 4
  store i32 %43, ptr %.casted, align 4
  %44 = load ptr, ptr %.casted, align 8
  %45 = load i32, ptr %3, align 4
  store i32 %45, ptr %.casted2, align 4
  %46 = load ptr, ptr %.casted2, align 8
  %array_offset3 = getelementptr inbounds float, ptr %1, i64 0
  %47 = load float, ptr %2, align 4
  store float %47, ptr %.casted4, align 4
  %48 = load ptr, ptr %.casted4, align 8
  %49 = load i32, ptr %7, align 4
  store i32 %49, ptr %.casted5, align 4
  %50 = load ptr, ptr %.casted5, align 8
  %51 = load i32, ptr %8, align 4
  store i32 %51, ptr %.casted6, align 4
  %52 = load ptr, ptr %.casted6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.offload_sizes, ptr align 8 @.offload_sizes, i64 56, i1 false)
  %53 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  store ptr %0, ptr %53, align 8
  %54 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  store ptr %array_offset, ptr %54, align 8
  %55 = getelementptr inbounds [7 x i64], ptr %.offload_sizes, i32 0, i32 0
  store i64 %element_count, ptr %55, align 8
  %56 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 0
  store ptr null, ptr %56, align 8
  %57 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 1
  store ptr %44, ptr %57, align 8
  %58 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 1
  store ptr %44, ptr %58, align 8
  %59 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 1
  store ptr null, ptr %59, align 8
  %60 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 2
  store ptr %46, ptr %60, align 8
  %61 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 2
  store ptr %46, ptr %61, align 8
  %62 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 2
  store ptr null, ptr %62, align 8
  %63 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 3
  store ptr %1, ptr %63, align 8
  %64 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 3
  store ptr %array_offset3, ptr %64, align 8
  %65 = getelementptr inbounds [7 x i64], ptr %.offload_sizes, i32 0, i32 3
  store i64 %element_count1, ptr %65, align 8
  %66 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 3
  store ptr null, ptr %66, align 8
  %67 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 4
  store ptr %48, ptr %67, align 8
  %68 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 4
  store ptr %48, ptr %68, align 8
  %69 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 4
  store ptr null, ptr %69, align 8
  %70 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 5
  store ptr %50, ptr %70, align 8
  %71 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 5
  store ptr %50, ptr %71, align 8
  %72 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 5
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 6
  store ptr %52, ptr %73, align 8
  %74 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 6
  store ptr %52, ptr %74, align 8
  %75 = getelementptr inbounds [7 x ptr], ptr %.offload_mappers, i64 0, i64 6
  store ptr null, ptr %75, align 8
  %76 = getelementptr inbounds [7 x ptr], ptr %.offload_baseptrs, i32 0, i32 0
  %77 = getelementptr inbounds [7 x ptr], ptr %.offload_ptrs, i32 0, i32 0
  %78 = getelementptr inbounds [7 x i64], ptr %.offload_sizes, i32 0, i32 0
  %79 = zext i32 %omp_loop.tripcount to i64
  %80 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 0
  store i32 3, ptr %80, align 4
  %81 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 1
  store i32 7, ptr %81, align 4
  %82 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 2
  store ptr %76, ptr %82, align 8
  %83 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 3
  store ptr %77, ptr %83, align 8
  %84 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 4
  store ptr %78, ptr %84, align 8
  %85 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 5
  store ptr @.offload_maptypes, ptr %85, align 8
  %86 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 6
  store ptr @.offload_mapnames, ptr %86, align 8
  %87 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 7
  store ptr null, ptr %87, align 8
  %88 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 8
  store i64 %79, ptr %88, align 8
  %89 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 9
  store i64 0, ptr %89, align 8
  %90 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 10
  store [3 x i32] zeroinitializer, ptr %90, align 4
  %91 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 11
  store [3 x i32] zeroinitializer, ptr %91, align 4
  %92 = getelementptr inbounds nuw %struct.__tgt_kernel_arguments, ptr %kernel_args, i32 0, i32 12
  store i32 0, ptr %92, align 4
  %93 = call i32 @__tgt_target_kernel(ptr @5, i64 -1, i32 0, i32 0, ptr @.__omp_offloading_32_2c977e2_saxpy__l9.region_id, ptr %kernel_args)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %omp_offload.failed, label %omp_offload.cont

omp_offload.failed:                               ; preds = %entry
  call void @__omp_offloading_32_2c977e2_saxpy__l9(i32 %22, ptr %0, ptr %6, ptr %3, ptr %1, ptr %2, ptr %7, ptr %8)
  br label %omp_offload.cont

omp_offload.cont:                                 ; preds = %omp_offload.failed, %entry
  ret void
}

define internal void @__omp_offloading_32_2c977e2_saxpy__l9(i32 %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr %6, ptr %7) #1 {
entry:
  %structArg = alloca { i32, i64, i64, ptr, ptr, ptr }, align 8
  br label %omp.region.after_alloca

omp.region.after_alloca:                          ; preds = %entry
  br label %outlined.body

outlined.body:                                    ; preds = %omp.region.after_alloca
  br label %omp.target

omp.target:                                       ; preds = %outlined.body
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = sext i32 %8 to i64
  %11 = icmp sgt i64 %10, 0
  %12 = sext i32 %9 to i64
  %13 = icmp sgt i64 %12, 0
  %14 = select i1 %13, i64 %12, i64 0
  %15 = select i1 %11, i64 %10, i64 0
  br label %codeRepl

codeRepl:                                         ; preds = %omp.target
  %gep_ = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store i32 %0, ptr %gep_, align 4
  %gep_22 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store i64 %15, ptr %gep_22, align 8
  %gep_23 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store i64 %14, ptr %gep_23, align 8
  %gep_24 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %5, ptr %gep_24, align 8
  %gep_25 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %1, ptr %gep_25, align 8
  %gep_26 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %4, ptr %gep_26, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_teams(ptr @5, i32 1, ptr @__omp_offloading_32_2c977e2_saxpy__l9..omp_par.2, ptr %structArg)
  br label %teams.exit

teams.exit:                                       ; preds = %codeRepl
  br label %omp.region.cont

omp.region.cont:                                  ; preds = %teams.exit
  ret void
}

define internal void @__omp_offloading_32_2c977e2_saxpy__l9..omp_par.2(ptr %global.tid.ptr, ptr %bound.tid.ptr, ptr %data) #1 {
teams.alloca:
  %gep_ = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 0
  %loadgep_ = load i32, ptr %gep_, align 4
  %gep_1 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 1
  %loadgep_2 = load i64, ptr %gep_1, align 8
  %gep_3 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 2
  %loadgep_4 = load i64, ptr %gep_3, align 8
  %gep_5 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 3
  %loadgep_6 = load ptr, ptr %gep_5, align 8, !align !7
  %gep_7 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 4
  %loadgep_8 = load ptr, ptr %gep_7, align 8, !align !7
  %gep_9 = getelementptr { i32, i64, i64, ptr, ptr, ptr }, ptr %data, i32 0, i32 5
  %loadgep_10 = load ptr, ptr %gep_9, align 8, !align !7
  %structArg = alloca { ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  %.reloaded = alloca i32, align 4
  %.reloaded12 = alloca i64, align 8
  %.reloaded13 = alloca i64, align 8
  br label %teams.body

teams.body:                                       ; preds = %teams.alloca
  br label %omp.teams.region

omp.teams.region:                                 ; preds = %teams.body
  %omp_global_thread_num = call i32 @__kmpc_global_thread_num(ptr @5)
  store i32 %loadgep_, ptr %.reloaded, align 4
  store i64 %loadgep_2, ptr %.reloaded12, align 8
  store i64 %loadgep_4, ptr %.reloaded13, align 8
  br label %omp_parallel

omp_parallel:                                     ; preds = %omp.teams.region
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 0
  store ptr %.reloaded, ptr %gep_.reloaded, align 8
  %gep_.reloaded12 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %.reloaded12, ptr %gep_.reloaded12, align 8
  %gep_.reloaded13 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %.reloaded13, ptr %gep_.reloaded13, align 8
  %gep_11 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 3
  store ptr %loadgep_6, ptr %gep_11, align 8
  %gep_20 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %loadgep_8, ptr %gep_20, align 8
  %gep_21 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %structArg, i32 0, i32 5
  store ptr %loadgep_10, ptr %gep_21, align 8
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @5, i32 1, ptr @__omp_offloading_32_2c977e2_saxpy__l9..omp_par.1, ptr %structArg)
  br label %omp.par.exit

omp.par.exit:                                     ; preds = %omp_parallel
  br label %omp.region.cont1

omp.region.cont1:                                 ; preds = %omp.par.exit
  br label %teams.exit.exitStub

teams.exit.exitStub:                              ; preds = %omp.region.cont1
  ret void
}

; Function Attrs: nounwind
define internal void @__omp_offloading_32_2c977e2_saxpy__l9..omp_par.1(ptr noalias %tid.addr, ptr noalias %zero.addr, ptr %0) #2 {
omp.par.entry:
  %gep_.reloaded = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 0
  %loadgep_.reloaded = load ptr, ptr %gep_.reloaded, align 8, !align !8
  %gep_.reloaded12 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %loadgep_.reloaded12 = load ptr, ptr %gep_.reloaded12, align 8, !align !9
  %gep_.reloaded13 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 2
  %loadgep_.reloaded13 = load ptr, ptr %gep_.reloaded13, align 8, !align !9
  %gep_ = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 3
  %loadgep_ = load ptr, ptr %gep_, align 8, !align !7
  %gep_1 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !7
  %gep_3 = getelementptr { ptr, ptr, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %loadgep_4 = load ptr, ptr %gep_3, align 8, !align !7
  %structArg = alloca { i32, ptr, ptr, i64, ptr, i64, ptr }, align 8
  %tid.addr.local = alloca i32, align 4
  %1 = load i32, ptr %tid.addr, align 4
  store i32 %1, ptr %tid.addr.local, align 4
  %tid = load i32, ptr %tid.addr.local, align 4
  %2 = load i32, ptr %loadgep_.reloaded, align 4
  %omp.private.alloc = alloca i32, align 4
  %3 = load i64, ptr %loadgep_.reloaded12, align 8
  %4 = load i64, ptr %loadgep_.reloaded13, align 8
  br label %omp.region.after_alloca2

omp.region.after_alloca2:                         ; preds = %omp.par.entry
  br label %omp.par.region

omp.par.region:                                   ; preds = %omp.region.after_alloca2
  br label %omp.private.init

omp.private.init:                                 ; preds = %omp.par.region
  br label %omp.par.region4

omp.par.region4:                                  ; preds = %omp.private.init
  br label %codeRepl

codeRepl:                                         ; preds = %omp.par.region4
  %gep_5 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 0
  store i32 %2, ptr %gep_5, align 4
  %gep_omp.private.alloc = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 1
  store ptr %omp.private.alloc, ptr %gep_omp.private.alloc, align 8
  %gep_15 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 2
  store ptr %loadgep_, ptr %gep_15, align 8
  %gep_16 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 3
  store i64 %3, ptr %gep_16, align 8
  %gep_17 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 4
  store ptr %loadgep_2, ptr %gep_17, align 8
  %gep_18 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 5
  store i64 %4, ptr %gep_18, align 8
  %gep_19 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %structArg, i32 0, i32 6
  store ptr %loadgep_4, ptr %gep_19, align 8
  call void @__omp_offloading_32_2c977e2_saxpy__l9..omp_par(ptr %structArg)
  br label %distribute.exit

distribute.exit:                                  ; preds = %codeRepl
  br label %omp.region.cont3

omp.region.cont3:                                 ; preds = %distribute.exit
  br label %omp.par.pre_finalize

omp.par.pre_finalize:                             ; preds = %omp.region.cont3
  br label %omp.par.exit.exitStub

omp.par.exit.exitStub:                            ; preds = %omp.par.pre_finalize
  ret void
}

define internal void @__omp_offloading_32_2c977e2_saxpy__l9..omp_par(ptr %0) #1 {
distribute.alloca:
  %gep_ = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 0
  %loadgep_ = load i32, ptr %gep_, align 4
  %gep_omp.private.alloc = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 1
  %loadgep_omp.private.alloc = load ptr, ptr %gep_omp.private.alloc, align 8, !align !8
  %gep_1 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 2
  %loadgep_2 = load ptr, ptr %gep_1, align 8, !align !7
  %gep_3 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 3
  %loadgep_4 = load i64, ptr %gep_3, align 8
  %gep_5 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 4
  %loadgep_6 = load ptr, ptr %gep_5, align 8, !align !7
  %gep_7 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 5
  %loadgep_8 = load i64, ptr %gep_7, align 8
  %gep_9 = getelementptr { i32, ptr, ptr, i64, ptr, i64, ptr }, ptr %0, i32 0, i32 6
  %loadgep_10 = load ptr, ptr %gep_9, align 8, !align !7
  %p.lastiter = alloca i32, align 4
  %p.lowerbound = alloca i32, align 4
  %p.upperbound = alloca i32, align 4
  %p.stride = alloca i32, align 4
  br label %omp.region.after_alloca7

omp.region.after_alloca7:                         ; preds = %distribute.alloca
  br label %omp.region.after_alloca5

omp.region.after_alloca5:                         ; preds = %omp.region.after_alloca7
  br label %distribute.body

distribute.body:                                  ; preds = %omp.region.after_alloca5
  br label %omp.distribute.region

omp.distribute.region:                            ; preds = %distribute.body
  br label %omp.wsloop.region

omp.wsloop.region:                                ; preds = %omp.distribute.region
  %1 = select i1 false, i32 %loadgep_, i32 1
  %2 = select i1 false, i32 1, i32 %loadgep_
  %3 = sub nsw i32 %2, %1
  %4 = icmp slt i32 %2, %1
  %5 = udiv i32 %3, 1
  %6 = add i32 %5, 1
  %omp_loop.tripcount = select i1 %4, i32 0, i32 %6
  br label %omp_loop.preheader

omp_loop.preheader:                               ; preds = %omp.wsloop.region
  store i32 0, ptr %p.lowerbound, align 4
  %7 = sub i32 %omp_loop.tripcount, 1
  store i32 %7, ptr %p.upperbound, align 4
  store i32 1, ptr %p.stride, align 4
  %omp_global_thread_num10 = call i32 @__kmpc_global_thread_num(ptr @5)
  %p.distupperbound = alloca i32, align 4
  call void @__kmpc_dist_for_static_init_4u(ptr @5, i32 %omp_global_thread_num10, i32 34, ptr %p.lastiter, ptr %p.lowerbound, ptr %p.upperbound, ptr %p.distupperbound, ptr %p.stride, i32 1, i32 0)
  %8 = load i32, ptr %p.lowerbound, align 4
  %9 = load i32, ptr %p.upperbound, align 4
  %trip_count_minus1 = sub i32 %9, %8
  %10 = add i32 %trip_count_minus1, 1
  br label %omp_loop.header

omp_loop.header:                                  ; preds = %omp_loop.inc, %omp_loop.preheader
  %omp_loop.iv = phi i32 [ 0, %omp_loop.preheader ], [ %omp_loop.next, %omp_loop.inc ]
  br label %omp_loop.cond

omp_loop.cond:                                    ; preds = %omp_loop.header
  %omp_loop.cmp = icmp ult i32 %omp_loop.iv, %10
  br i1 %omp_loop.cmp, label %omp_loop.body, label %omp_loop.exit

omp_loop.exit:                                    ; preds = %omp_loop.cond
  call void @__kmpc_for_static_fini(ptr @5, i32 %omp_global_thread_num10)
  %omp_global_thread_num11 = call i32 @__kmpc_global_thread_num(ptr @5)
  call void @__kmpc_barrier(ptr @6, i32 %omp_global_thread_num11)
  br label %omp_loop.after

omp_loop.after:                                   ; preds = %omp_loop.exit
  br label %omp.region.cont8

omp.region.cont8:                                 ; preds = %omp_loop.after
  br label %omp.region.cont6

omp.region.cont6:                                 ; preds = %omp.region.cont8
  br label %distribute.exit.exitStub

omp_loop.body:                                    ; preds = %omp_loop.cond
  %11 = add i32 %omp_loop.iv, %8
  %12 = mul i32 %11, 1
  %13 = add i32 %12, 1
  br label %omp.loop_nest.region

omp.loop_nest.region:                             ; preds = %omp_loop.body
  store i32 %13, ptr %loadgep_omp.private.alloc, align 4
  %14 = load float, ptr %loadgep_2, align 4
  %15 = load i32, ptr %loadgep_omp.private.alloc, align 4
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %16, 1
  %18 = mul nsw i64 %17, 1
  %19 = mul nsw i64 %18, 1
  %20 = add nsw i64 %19, 0
  %21 = mul nsw i64 1, %loadgep_4
  %22 = getelementptr float, ptr %loadgep_6, i64 %20
  %23 = load float, ptr %22, align 4
  %24 = fmul contract float %14, %23
  %25 = sub nsw i64 %16, 1
  %26 = mul nsw i64 %25, 1
  %27 = mul nsw i64 %26, 1
  %28 = add nsw i64 %27, 0
  %29 = mul nsw i64 1, %loadgep_8
  %30 = getelementptr float, ptr %loadgep_10, i64 %28
  %31 = load float, ptr %30, align 4
  %32 = fadd contract float %24, %31
  store float %32, ptr %30, align 4
  br label %omp.region.cont9

omp.region.cont9:                                 ; preds = %omp.loop_nest.region
  br label %omp_loop.inc

omp_loop.inc:                                     ; preds = %omp.region.cont9
  %omp_loop.next = add nuw i32 %omp_loop.iv, 1
  br label %omp_loop.header

distribute.exit.exitStub:                         ; preds = %omp.region.cont6
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) #3

; Function Attrs: nounwind
declare void @__kmpc_dist_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @__tgt_target_kernel(ptr, i64, i32, i32, ptr, ptr) #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(ptr, i32, ptr, ...) #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_teams(ptr, i32, ptr, ...) #3

attributes #0 = { "frame-pointer"="all" "target-cpu"="x86-64" }
attributes #1 = { "target-cpu"="x86-64" }
attributes #2 = { nounwind "target-cpu"="x86-64" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!omp_offload.info = !{!4}
!llvm.offloading.symbols = !{!5}
!llvm.embedded.objects = !{!6}

!0 = !{}
!1 = !{i32 7, !"openmp", i32 52}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"AMD flang version 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/flang 37de1b61434af16eca9df1f40bb2b0d6ffa0398c)"}
!4 = !{i32 0, i32 50, i32 46757858, !"saxpy_", i32 9, i32 0, i32 0}
!5 = !{ptr @.offloading.entry_name}
!6 = !{ptr @llvm.embedded.object, !".llvm.offloading"}
!7 = !{i64 1}
!8 = !{i64 4}
!9 = !{i64 8}
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
