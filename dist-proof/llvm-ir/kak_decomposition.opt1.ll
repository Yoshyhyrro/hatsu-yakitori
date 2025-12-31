; ModuleID = 'dist-proof/llvm-ir/kak_decomposition.raw.ll'
source_filename = "/tmp/hatsu-llvm-kak_decomposition-599/kak_decomposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.C_block_struct = type { i64, [0 x i64] }

@toplevel_initialized = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [18 x i8] c"kak_decomposition\00", align 1
@C_stack_limit = external local_unnamed_addr global ptr, align 8
@C_scratch_usage = external local_unnamed_addr global i64, align 8
@C_fromspace_top = external global ptr, align 8
@C_fromspace_limit = external local_unnamed_addr global ptr, align 8
@C_temporary_stack = external local_unnamed_addr global ptr, align 8
@lf = internal global [53 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"kak_decomposition#\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"kak_decomposition#+INF+\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"\FEU999999999999999967336168804116691273849533185806555472917961779471295845921727862608739868455469056.0\00\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"kak_decomposition#K-frontier\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\FEB\00\00\15Unknown frontier mode\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"kak_decomposition#K-push\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"kak_decomposition#K-pop\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"kak_decomposition#K-empty?\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"kak_decomposition#K-size\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"kak_decomposition#relax-bound\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-set!\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"srfi-69#hash-table-ref/default\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"kak_decomposition#graph-neighbors\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"srfi-1#assoc\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"srfi-69#hash-table?\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"kak_decomposition#KAK-apply\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"for-each\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"srfi-1#fold\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"srfi-69#hash-table-ref\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"srfi-69#make-hash-table\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"kak_decomposition#KAK-apply-golay\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"##sys#standard-output\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"##sys#write-char-0\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"##sys#print\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\FEB\00\00\0E) -> Strategy:\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"\FEB\00\00\06 (tau=\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"scheme#number->string\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\FEB\00\00\0F -> Codeword:0x\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"\FEB\00\00\13[KAK-Golay] Info:0x\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"##sys#check-output-port\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"golay_frontier#adaptive-frontier-codeword\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"golay_frontier#adaptive-frontier-tau\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"golay_frontier#adaptive-frontier-mode\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"golay_frontier#make-adaptive-frontier\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"cross_validation\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"golay_frontier\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.47 = private unnamed_addr constant [584 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01K-frontier\FE\01\00\00\1C\01kak_decomposition#K-frontier\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\06\01K-push\FE\01\00\00\18\01kak_decomposition#K-push\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01K-pop\FE\01\00\00\17\01kak_decomposition#K-pop\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01K-empty?\FE\01\00\00\1A\01kak_decomposition#K-empty?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\06\01K-size\FE\01\00\00\18\01kak_decomposition#K-size\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0B\01relax-bound\FE\01\00\00\1D\01kak_decomposition#relax-bound\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01graph-neighbors\FE\01\00\00!\01kak_decomposition#graph-neighbors\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01KAK-apply\FE\01\00\00\1B\01kak_decomposition#KAK-apply\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01KAK-apply-golay\FE\01\00\00!\01kak_decomposition#KAK-apply-golay\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01+INF+\FE\01\00\00\17\01kak_decomposition#+INF+\FE\FF\0E\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external local_unnamed_addr global i64, align 8
@li16 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1014)\00", align 16
@.str.49 = private unnamed_addr constant [48 x i8] c"kak_decomposition.scm:5: ##sys#with-environment\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"kak_decomposition.scm:13: chicken.load#load-extension\00", align 1
@.str.51 = private unnamed_addr constant [54 x i8] c"kak_decomposition.scm:19: chicken.load#load-extension\00", align 1
@.str.52 = private unnamed_addr constant [54 x i8] c"kak_decomposition.scm:22: chicken.load#load-extension\00", align 1
@li0 = internal global [48 x i8] c"#\00\00\00\00\00\00M(kak_decomposition#K-frontier mode)\00\00\00\00\00", align 16
@li1 = internal global [48 x i8] c"'\00\00\00\00\00\00M(kak_decomposition#K-push frontier val)\00", align 16
@li2 = internal global [48 x i8] c"\22\00\00\00\00\00\00M(kak_decomposition#K-pop frontier)\00\00\00\00\00\00", align 16
@li3 = internal global [48 x i8] c"%\00\00\00\00\00\00M(kak_decomposition#K-empty? frontier)\00\00\00", align 16
@li4 = internal global [48 x i8] c"#\00\00\00\00\00\00M(kak_decomposition#K-size frontier)\00\00\00\00\00", align 16
@li5 = internal global [64 x i8] c"5\00\00\00\00\00\00M(kak_decomposition#relax-bound dist-table v new-dist)\00\00\00", align 16
@li6 = internal global [56 x i8] c".\00\00\00\00\00\00M(kak_decomposition#graph-neighbors graph node)\00\00", align 16
@li14 = internal global [80 x i8] c"E\00\00\00\00\00\00M(kak_decomposition#KAK-apply graph sources B frontier-mode max-steps)\00\00\00", align 16
@li15 = internal global [80 x i8] c"G\00\00\00\00\00\00M(kak_decomposition#KAK-apply-golay graph sources B max-steps info-bits)\00", align 16
@.str.53 = private unnamed_addr constant [45 x i8] c"kak_decomposition.scm:33: chicken.base#error\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"kak_decomposition.scm:47: chicken.base#error\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:55: scheme#values\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:56: scheme#values\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:64: scheme#values\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:68: scheme#values\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"kak_decomposition.scm:71: scheme#reverse\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"kak_decomposition.scm:74: chicken.base#error\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:72: scheme#values\00", align 1
@.str.62 = private unnamed_addr constant [45 x i8] c"kak_decomposition.scm:83: chicken.base#error\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"kak_decomposition.scm:92: chicken.base#error\00", align 1
@.str.64 = private unnamed_addr constant [57 x i8] c"kak_decomposition.scm:99: srfi-69#hash-table-ref/default\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"kak_decomposition.scm:102: srfi-69#hash-table-set!\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"kak_decomposition.scm:108: srfi-69#hash-table?\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"kak_decomposition.scm:109: srfi-69#hash-table-ref/default\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"kak_decomposition.scm:111: srfi-1#assoc\00", align 1
@.str.69 = private unnamed_addr constant [51 x i8] c"kak_decomposition.scm:131: srfi-69#make-hash-table\00", align 1
@li7 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(g121 s)", align 16
@li13 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop120 g127)\00", align 16
@.str.70 = private unnamed_addr constant [51 x i8] c"kak_decomposition.scm:132: srfi-69#hash-table-set!\00", align 1
@li12 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(a922 s acc)\00\00\00\00", align 16
@.str.71 = private unnamed_addr constant [38 x i8] c"kak_decomposition.scm:137: K-frontier\00", align 1
@li11 = internal global [32 x i8] c"\14\00\00\00\00\00\00M(loop frontier step)\00\00\00\00", align 16
@.str.72 = private unnamed_addr constant [36 x i8] c"kak_decomposition.scm:143: K-empty?\00", align 1
@li8 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(a867)\00\00", align 16
@li10 = internal global [48 x i8] c"%\00\00\00\00\00\00M(a873 success node new-frontier-base)\00\00\00", align 16
@.str.73 = private unnamed_addr constant [51 x i8] c"kak_decomposition.scm:147: scheme#call-with-values\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"kak_decomposition.scm:148: K-pop\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"kak_decomposition.scm:153: srfi-69#hash-table-ref\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"kak_decomposition.scm:154: graph-neighbors\00", align 1
@li9 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(a898 edge acc-f)\00\00\00\00\00\00\00", align 16
@.str.77 = private unnamed_addr constant [39 x i8] c"kak_decomposition.scm:157: srfi-1#fold\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"kak_decomposition.scm:170: loop\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"kak_decomposition.scm:163: relax-bound\00", align 1
@.str.80 = private unnamed_addr constant [34 x i8] c"kak_decomposition.scm:164: K-push\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"kak_decomposition.scm:136: K-push\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"kak_decomposition.scm:136: srfi-1#fold\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"kak_decomposition.scm:132: g121\00", align 1
@.str.84 = private unnamed_addr constant [65 x i8] c"kak_decomposition.scm:187: golay_frontier#make-adaptive-frontier\00", align 1
@.str.85 = private unnamed_addr constant [65 x i8] c"kak_decomposition.scm:188: golay_frontier#adaptive-frontier-mode\00", align 1
@.str.86 = private unnamed_addr constant [64 x i8] c"kak_decomposition.scm:189: golay_frontier#adaptive-frontier-tau\00", align 1
@.str.87 = private unnamed_addr constant [69 x i8] c"kak_decomposition.scm:190: golay_frontier#adaptive-frontier-codeword\00", align 1
@.str.88 = private unnamed_addr constant [51 x i8] c"kak_decomposition.scm:193: ##sys#check-output-port\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"kak_decomposition.scm:193: ##sys#print\00", align 1
@.str.90 = private unnamed_addr constant [49 x i8] c"kak_decomposition.scm:193: scheme#number->string\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"kak_decomposition.scm:193: ##sys#write-char-0\00", align 1
@.str.92 = private unnamed_addr constant [37 x i8] c"kak_decomposition.scm:197: KAK-apply\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"kak_decomposition.scm:200: scheme#values\00", align 1
@.str.94 = private unnamed_addr constant [56 x i8] c"kak_decomposition.scm:5: ##sys#register-compiled-module\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @C_kak_5fdecomposition_toplevel(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %.b = load i1, ptr @toplevel_initialized, align 1
  %21 = zext i1 %.b to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load i64, ptr %7, align 8
  %26 = getelementptr inbounds [2 x i64], ptr %11, i64 0, i64 0
  store i64 %25, ptr %26, align 16
  %27 = getelementptr inbounds [2 x i64], ptr %11, i64 0, i64 1
  store i64 30, ptr %27, align 8
  %28 = load i64, ptr %7, align 8
  %29 = inttoptr i64 %28 to ptr
  %30 = getelementptr inbounds %struct.C_block_struct, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds [0 x i64], ptr %30, i64 0, i64 0
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = getelementptr inbounds [2 x i64], ptr %11, i64 0, i64 0
  call void %33(i64 noundef 2, ptr noundef %34) #4
  unreachable

35:                                               ; preds = %2
  call void @C_toplevel_entry(ptr noundef @.str)
  br label %36

36:                                               ; preds = %35
  %37 = load i64, ptr %3, align 8
  %38 = icmp sgt i64 %37, 2
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 2
  %41 = add nuw nsw i32 3, %40
  %42 = zext nneg i32 %41 to i64
  call void @C_check_nursery_minimum(i64 noundef %42)
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !6
  store ptr %43, ptr %12, align 8
  %44 = load ptr, ptr %12, align 8
  store ptr %44, ptr %13, align 8
  %45 = load ptr, ptr %13, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 2
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 2
  %55 = add nuw nsw i32 3, %54
  %56 = zext nneg i32 %55 to i64
  %57 = load i64, ptr @C_scratch_usage, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %50, %58
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = zext nneg i32 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %36
  %65 = load i64, ptr %3, align 8
  %66 = trunc i64 %65 to i32
  %67 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @C_kak_5fdecomposition_toplevel, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %36
  store i1 true, ptr @toplevel_initialized, align 1
  %69 = load ptr, ptr @C_fromspace_top, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 495
  %71 = load ptr, ptr @C_fromspace_limit, align 8
  %72 = icmp ult ptr %70, %71
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = zext nneg i32 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr @C_temporary_stack, align 8
  %80 = getelementptr inbounds i64, ptr %79, i32 -1
  store ptr %80, ptr @C_temporary_stack, align 8
  store i64 %78, ptr %80, align 8
  call void @C_rereclaim2(i64 noundef 3960, i32 noundef 1)
  %81 = load ptr, ptr @C_temporary_stack, align 8
  %82 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %82, ptr @C_temporary_stack, align 8
  %83 = load i64, ptr %81, align 8
  store i64 %83, ptr %7, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = alloca i8, i64 24, align 16
  store ptr %85, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 53)
  %86 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 17, ptr noundef @.str)
  store i64 %86, ptr @lf, align 16
  %87 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 1), i32 noundef 18, ptr noundef @.str.1)
  store i64 %87, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 1), align 8
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 2), i32 noundef 23, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 2), align 16
  %89 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 3), align 8
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 4), i32 noundef 28, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 4), align 16
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), i32 noundef 5, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), i32 noundef 5, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), i32 noundef 18, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %94 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 8), align 16
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), i32 noundef 24, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %96 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %96, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 10), align 16
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 11), i32 noundef 23, ptr noundef @.str.10)
  store i64 %97, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 11), align 8
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 12), i32 noundef 14, ptr noundef @.str.11)
  store i64 %98, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 12), align 16
  %99 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %99, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 13), align 8
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 14), i32 noundef 26, ptr noundef @.str.12)
  store i64 %100, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 14), align 16
  %101 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %101, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 15), align 8
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 16), i32 noundef 24, ptr noundef @.str.13)
  store i64 %102, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 16), align 16
  %103 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %103, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 17), align 8
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 18), i32 noundef 29, ptr noundef @.str.14)
  store i64 %104, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 18), align 16
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), i32 noundef 23, ptr noundef @.str.15)
  store i64 %105, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), align 8
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), i32 noundef 30, ptr noundef @.str.16)
  store i64 %106, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), align 16
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 21), i32 noundef 33, ptr noundef @.str.17)
  store i64 %107, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 21), align 8
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 22), i32 noundef 12, ptr noundef @.str.18)
  store i64 %108, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 22), align 16
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 23), i32 noundef 19, ptr noundef @.str.19)
  store i64 %109, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 23), align 8
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 24), i32 noundef 27, ptr noundef @.str.20)
  store i64 %110, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 24), align 16
  %111 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.21)
  store i64 %111, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 25), align 8
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 26), i32 noundef 8, ptr noundef @.str.22)
  store i64 %112, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 26), align 16
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), i32 noundef 11, ptr noundef @.str.23)
  store i64 %113, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), align 8
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 28), i32 noundef 22, ptr noundef @.str.24)
  store i64 %114, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 28), align 16
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 29), i32 noundef 23, ptr noundef @.str.25)
  store i64 %115, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 29), align 8
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 30), i32 noundef 33, ptr noundef @.str.26)
  store i64 %116, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 30), align 16
  %117 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 31), i32 noundef 21, ptr noundef @.str.27)
  store i64 %117, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 31), align 8
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 32), i32 noundef 18, ptr noundef @.str.28)
  store i64 %118, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 32), align 16
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), i32 noundef 11, ptr noundef @.str.29)
  store i64 %119, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %120 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.30)
  store i64 %120, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 34), align 16
  %121 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %121, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 35), align 8
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), i32 noundef 21, ptr noundef @.str.32)
  store i64 %122, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), align 16
  %123 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.33)
  store i64 %123, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 37), align 8
  %124 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.34)
  store i64 %124, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 38), align 16
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 39), i32 noundef 23, ptr noundef @.str.35)
  store i64 %125, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 39), align 8
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 40), i32 noundef 6, ptr noundef @.str.36)
  store i64 %126, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 40), align 16
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 41), i32 noundef 41, ptr noundef @.str.37)
  store i64 %127, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 41), align 8
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 42), i32 noundef 36, ptr noundef @.str.38)
  store i64 %128, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 42), align 16
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 43), i32 noundef 37, ptr noundef @.str.39)
  store i64 %129, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 43), align 8
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 44), i32 noundef 37, ptr noundef @.str.40)
  store i64 %130, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 44), align 16
  %131 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), i32 noundef 27, ptr noundef @.str.41)
  store i64 %131, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %132 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 46), i32 noundef 16, ptr noundef @.str.42)
  store i64 %132, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 46), align 16
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 47), i32 noundef 14, ptr noundef @.str.43)
  store i64 %133, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 47), align 8
  %134 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 48), i32 noundef 7, ptr noundef @.str.44)
  store i64 %134, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 48), align 16
  %135 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 49), i32 noundef 6, ptr noundef @.str.45)
  store i64 %135, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 49), align 8
  %136 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 50), i32 noundef 30, ptr noundef @.str.46)
  store i64 %136, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 50), align 16
  %137 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.47)
  store i64 %137, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 51), align 8
  %138 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 52), i32 noundef 22, ptr noundef @.str.48)
  store i64 %138, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 52), align 16
  call fastcc void @create_ptable()
  %139 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 53, ptr noundef null)
  %140 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %140, align 8
  %141 = load ptr, ptr %10, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  store i64 ptrtoint (ptr @f_461 to i64), ptr %142, align 8
  %143 = load i64, ptr %7, align 8
  %144 = load ptr, ptr %10, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 %143, ptr %145, align 8
  %146 = load ptr, ptr %10, align 8
  %147 = ptrtoint ptr %146 to i64
  store i64 %147, ptr %5, align 8
  %148 = load ptr, ptr %10, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 3
  store ptr %149, ptr %10, align 8
  %150 = load i64, ptr %5, align 8
  store i64 %150, ptr %8, align 8
  %151 = load ptr, ptr %4, align 8
  store ptr %151, ptr %14, align 8
  %152 = load ptr, ptr %14, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 0
  store i64 30, ptr %153, align 8
  %154 = load i64, ptr %8, align 8
  %155 = load ptr, ptr %14, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  store i64 %154, ptr %156, align 8
  %157 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %157) #4
  unreachable
}

declare void @C_toplevel_entry(ptr noundef) local_unnamed_addr #1

declare void @C_check_nursery_minimum(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @C_rereclaim2(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @C_initialize_lf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @C_h_intern(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @C_decode_literal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @C_register_lf2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @create_ptable() unnamed_addr #3 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_461(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !7
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nuw nsw i32 3, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_461, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_464 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %5, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  store ptr %64, ptr %10, align 8
  %65 = load i64, ptr %5, align 8
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %13, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 30, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %13, align 8
  call void @C_eval_toplevel(i64 noundef 2, ptr noundef %72) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_library_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @C_raise_interrupt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_464(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 0
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %7, align 8
  %24 = load i64, ptr @C_timer_interrupt_counter, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr @C_timer_interrupt_counter, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
  store ptr %29, ptr %14, align 8
  %30 = load ptr, ptr %14, align 8
  store ptr %30, ptr %15, align 8
  %31 = load ptr, ptr %15, align 8
  %32 = load ptr, ptr @C_stack_limit, align 8
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load i64, ptr %3, align 8
  %38 = icmp sgt i64 %37, 2
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 2
  %41 = add nuw nsw i32 22, %40
  %42 = zext nneg i32 %41 to i64
  %43 = load i64, ptr @C_scratch_usage, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp sgt i64 %36, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = zext nneg i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i64, ptr %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_464, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 176, align 16
  store ptr %55, ptr %13, align 8
  %56 = load i64, ptr @lf, align 16
  %57 = call i64 @C_a_i_provide(ptr noundef %13, i32 noundef 1, i64 noundef %56)
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 1), align 8
  %59 = call i64 @C_a_i_provide(ptr noundef %13, i32 noundef 1, i64 noundef %58)
  store i64 %59, ptr %9, align 8
  %60 = load ptr, ptr %13, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_467 to i64), ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load ptr, ptr %13, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %5, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store ptr %72, ptr %13, align 8
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %10, align 8
  %74 = load ptr, ptr %13, align 8
  store i64 2594073385365405698, ptr %74, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_1015 to i64), ptr %76, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 ptrtoint (ptr @li16 to i64), ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store ptr %82, ptr %13, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.49)
  %84 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 52), align 16
  %85 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %84)
  store ptr %85, ptr %16, align 8
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 3
  br i1 %87, label %88, label %90

88:                                               ; preds = %54
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %17, align 8
  br label %92

90:                                               ; preds = %54
  %91 = alloca i8, i64 24, align 16
  store ptr %91, ptr %17, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 52), align 16
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %10, align 8
  %100 = load ptr, ptr %17, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %11, align 8
  %103 = load ptr, ptr %17, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = load ptr, ptr %17, align 8
  call void %105(i64 noundef 3, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_eval_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_467(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !9
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nuw nsw i32 3, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_467, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_470 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %5, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  store ptr %64, ptr %10, align 8
  %65 = load i64, ptr %5, align 8
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %13, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 30, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %13, align 8
  call void @C_extras_toplevel(i64 noundef 2, ptr noundef %72) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1015(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr %3, align 8
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, ptr %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %24, i32 noundef 2, i64 noundef %25) #4
  unreachable

26:                                               ; preds = %2
  %27 = load i64, ptr @C_timer_interrupt_counter, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr @C_timer_interrupt_counter, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @C_raise_interrupt(i32 noundef 255)
  br label %31

31:                                               ; preds = %30, %26
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !10
  store ptr %32, ptr %10, align 8
  %33 = load ptr, ptr %10, align 8
  store ptr %33, ptr %11, align 8
  %34 = load ptr, ptr %11, align 8
  %35 = load ptr, ptr @C_stack_limit, align 8
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = load i64, ptr %3, align 8
  %41 = icmp sgt i64 %40, 7
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 7
  %44 = add nuw nsw i32 0, %43
  %45 = zext nneg i32 %44 to i64
  %46 = load i64, ptr @C_scratch_usage, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp sgt i64 %39, %47
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i64, ptr %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1015, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.94)
  %58 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 50), align 16
  %59 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
  store ptr %59, ptr %12, align 8
  %60 = load i64, ptr %3, align 8
  %61 = icmp sge i64 %60, 8
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %13, align 8
  br label %66

64:                                               ; preds = %57
  %65 = alloca i8, i64 64, align 16
  store ptr %65, ptr %13, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 50), align 16
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr @lf, align 16
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 51), align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store i64 14, ptr %87, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  store i64 14, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = load ptr, ptr %13, align 8
  call void %90(i64 noundef 8, ptr noundef %91) #4
  unreachable
}

declare void @C_trace(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %0) unnamed_addr #3 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call fastcc i64 @C_fast_retrieve(i64 noundef %3)
  %5 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %4)
  ret ptr %5
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_470(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !11
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_470, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_473 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.50)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 49), align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 22, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 6, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 5, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_extras_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_473(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_473, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_476 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.50)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 48), align 16
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 22, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 6, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 5, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_476(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_476, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_479 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.51)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 46), align 16
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 47), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store i64 6, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 5, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_479(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_479, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_482 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.52)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 49), align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 22, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 6, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 5, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_482(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_482, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_485 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.52)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 48), align 16
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 22, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 6, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 5, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_485(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 3, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_485, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_488 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.52)
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 40, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 45), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 46), align 16
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 47), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store i64 6, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 5, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_488(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %6, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  %29 = load i64, ptr @C_timer_interrupt_counter, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr @C_timer_interrupt_counter, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %33

33:                                               ; preds = %32, %2
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
  store ptr %34, ptr %20, align 8
  %35 = load ptr, ptr %20, align 8
  store ptr %35, ptr %21, align 8
  %36 = load ptr, ptr %21, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 7
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 7
  %46 = add nuw nsw i32 27, %45
  %47 = zext nneg i32 %46 to i64
  %48 = load i64, ptr @C_scratch_usage, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp sgt i64 %41, %49
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = zext nneg i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load i64, ptr %3, align 8
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_488, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  %60 = alloca i8, i64 216, align 16
  store ptr %60, ptr %19, align 8
  %61 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 2), align 16
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  %64 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 3), align 8
  %65 = call fastcc i64 @C_mutate(ptr noundef %63, i64 noundef %64)
  store i64 %65, ptr %8, align 8
  %66 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 4), align 16
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %69, align 8
  %70 = load ptr, ptr %19, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 ptrtoint (ptr @f_491 to i64), ptr %71, align 8
  %72 = load ptr, ptr %19, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %73, align 8
  %74 = load ptr, ptr %19, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %19, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store ptr %77, ptr %19, align 8
  %78 = load i64, ptr %5, align 8
  %79 = call fastcc i64 @C_mutate(ptr noundef %68, i64 noundef %78)
  store i64 %79, ptr %9, align 8
  %80 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %83, align 8
  %84 = load ptr, ptr %19, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_519 to i64), ptr %85, align 8
  %86 = load ptr, ptr %19, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %87, align 8
  %88 = load ptr, ptr %19, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %5, align 8
  %90 = load ptr, ptr %19, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store ptr %91, ptr %19, align 8
  %92 = load i64, ptr %5, align 8
  %93 = call fastcc i64 @C_mutate(ptr noundef %82, i64 noundef %92)
  store i64 %93, ptr %10, align 8
  %94 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 11), align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %97, align 8
  %98 = load ptr, ptr %19, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 ptrtoint (ptr @f_571 to i64), ptr %99, align 8
  %100 = load ptr, ptr %19, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %101, align 8
  %102 = load ptr, ptr %19, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %5, align 8
  %104 = load ptr, ptr %19, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store ptr %105, ptr %19, align 8
  %106 = load i64, ptr %5, align 8
  %107 = call fastcc i64 @C_mutate(ptr noundef %96, i64 noundef %106)
  store i64 %107, ptr %11, align 8
  %108 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 14), align 16
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %111, align 8
  %112 = load ptr, ptr %19, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 ptrtoint (ptr @f_688 to i64), ptr %113, align 8
  %114 = load ptr, ptr %19, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %115, align 8
  %116 = load ptr, ptr %19, align 8
  %117 = ptrtoint ptr %116 to i64
  store i64 %117, ptr %5, align 8
  %118 = load ptr, ptr %19, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store ptr %119, ptr %19, align 8
  %120 = load i64, ptr %5, align 8
  %121 = call fastcc i64 @C_mutate(ptr noundef %110, i64 noundef %120)
  store i64 %121, ptr %12, align 8
  %122 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 16), align 16
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  %125 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %125, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  store i64 ptrtoint (ptr @f_736 to i64), ptr %127, align 8
  %128 = load ptr, ptr %19, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 ptrtoint (ptr @li4 to i64), ptr %129, align 8
  %130 = load ptr, ptr %19, align 8
  %131 = ptrtoint ptr %130 to i64
  store i64 %131, ptr %5, align 8
  %132 = load ptr, ptr %19, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  store ptr %133, ptr %19, align 8
  %134 = load i64, ptr %5, align 8
  %135 = call fastcc i64 @C_mutate(ptr noundef %124, i64 noundef %134)
  store i64 %135, ptr %13, align 8
  %136 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 18), align 16
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  %139 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %139, align 8
  %140 = load ptr, ptr %19, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 ptrtoint (ptr @f_786 to i64), ptr %141, align 8
  %142 = load ptr, ptr %19, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 2
  store i64 ptrtoint (ptr @li5 to i64), ptr %143, align 8
  %144 = load ptr, ptr %19, align 8
  %145 = ptrtoint ptr %144 to i64
  store i64 %145, ptr %5, align 8
  %146 = load ptr, ptr %19, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store ptr %147, ptr %19, align 8
  %148 = load i64, ptr %5, align 8
  %149 = call fastcc i64 @C_mutate(ptr noundef %138, i64 noundef %148)
  store i64 %149, ptr %14, align 8
  %150 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 21), align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  %153 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %153, align 8
  %154 = load ptr, ptr %19, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 1
  store i64 ptrtoint (ptr @f_801 to i64), ptr %155, align 8
  %156 = load ptr, ptr %19, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %157, align 8
  %158 = load ptr, ptr %19, align 8
  %159 = ptrtoint ptr %158 to i64
  store i64 %159, ptr %5, align 8
  %160 = load ptr, ptr %19, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 3
  store ptr %161, ptr %19, align 8
  %162 = load i64, ptr %5, align 8
  %163 = call fastcc i64 @C_mutate(ptr noundef %152, i64 noundef %162)
  store i64 %163, ptr %15, align 8
  %164 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 24), align 16
  %165 = inttoptr i64 %164 to ptr
  %166 = getelementptr inbounds i64, ptr %165, i64 1
  %167 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %167, align 8
  %168 = load ptr, ptr %19, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 1
  store i64 ptrtoint (ptr @f_828 to i64), ptr %169, align 8
  %170 = load ptr, ptr %19, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %171, align 8
  %172 = load ptr, ptr %19, align 8
  %173 = ptrtoint ptr %172 to i64
  store i64 %173, ptr %5, align 8
  %174 = load ptr, ptr %19, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 3
  store ptr %175, ptr %19, align 8
  %176 = load i64, ptr %5, align 8
  %177 = call fastcc i64 @C_mutate(ptr noundef %166, i64 noundef %176)
  store i64 %177, ptr %16, align 8
  %178 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 30), align 16
  %179 = inttoptr i64 %178 to ptr
  %180 = getelementptr inbounds i64, ptr %179, i64 1
  %181 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %181, align 8
  %182 = load ptr, ptr %19, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 1
  store i64 ptrtoint (ptr @f_956 to i64), ptr %183, align 8
  %184 = load ptr, ptr %19, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %185, align 8
  %186 = load ptr, ptr %19, align 8
  %187 = ptrtoint ptr %186 to i64
  store i64 %187, ptr %5, align 8
  %188 = load ptr, ptr %19, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 3
  store ptr %189, ptr %19, align 8
  %190 = load i64, ptr %5, align 8
  %191 = call fastcc i64 @C_mutate(ptr noundef %180, i64 noundef %190)
  store i64 %191, ptr %17, align 8
  %192 = load i64, ptr %6, align 8
  %193 = inttoptr i64 %192 to ptr
  %194 = getelementptr inbounds i64, ptr %193, i64 2
  %195 = load i64, ptr %194, align 8
  store i64 %195, ptr %18, align 8
  %196 = load ptr, ptr %4, align 8
  store ptr %196, ptr %22, align 8
  %197 = load i64, ptr %18, align 8
  %198 = load ptr, ptr %22, align 8
  %199 = getelementptr inbounds i64, ptr %198, i64 0
  store i64 %197, ptr %199, align 8
  %200 = load ptr, ptr %22, align 8
  %201 = getelementptr inbounds i64, ptr %200, i64 1
  store i64 30, ptr %201, align 8
  %202 = load i64, ptr %18, align 8
  %203 = inttoptr i64 %202 to ptr
  %204 = getelementptr inbounds i64, ptr %203, i64 1
  %205 = load i64, ptr %204, align 8
  %206 = inttoptr i64 %205 to ptr
  %207 = load ptr, ptr %22, align 8
  call void %206(i64 noundef 2, ptr noundef %207) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_mutate(ptr noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 3
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = call i64 @C_mutate_slot(ptr noundef %10, i64 noundef %11)
  store i64 %12, ptr %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i64, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  store i64 %14, ptr %15, align 8
  store i64 %14, ptr %3, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i64, ptr %3, align 8
  ret i64 %17
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_491(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 0
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %6, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 1
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %7, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 2
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %8, align 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp ne i64 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, ptr %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %39, i32 noundef 3, i64 noundef %40) #4
  unreachable

41:                                               ; preds = %2
  %42 = load i64, ptr @C_timer_interrupt_counter, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, ptr @C_timer_interrupt_counter, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @C_raise_interrupt(i32 noundef 255)
  br label %46

46:                                               ; preds = %45, %41
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
  store ptr %47, ptr %14, align 8
  %48 = load ptr, ptr %14, align 8
  store ptr %48, ptr %15, align 8
  %49 = load ptr, ptr %15, align 8
  %50 = load ptr, ptr @C_stack_limit, align 8
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64, ptr %3, align 8
  %56 = icmp sgt i64 %55, 3
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 3
  %59 = add nuw nsw i32 6, %58
  %60 = zext nneg i32 %59 to i64
  %61 = load i64, ptr @C_scratch_usage, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp sgt i64 %54, %62
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = zext nneg i32 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, ptr %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_491, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 48, align 16
  store ptr %73, ptr %13, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i64 22, i64 6
  store i64 %78, ptr %9, align 8
  %79 = load i64, ptr %9, align 8
  %80 = icmp ne i64 %79, 6
  br i1 %80, label %81, label %112

81:                                               ; preds = %72
  %82 = load i64, ptr %7, align 8
  store i64 %82, ptr %10, align 8
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %16, align 8
  %84 = load i64, ptr %10, align 8
  %85 = load ptr, ptr %16, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %17, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 216172782113783810, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store ptr %92, ptr %13, align 8
  %93 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %94 = load i64, ptr %17, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds %struct.C_block_struct, ptr %95, i32 0, i32 1
  %97 = getelementptr inbounds [0 x i64], ptr %96, i64 0, i64 0
  store i64 %93, ptr %97, align 8
  %98 = load i64, ptr %17, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  store i64 14, ptr %101, align 8
  %102 = load i64, ptr %17, align 8
  store i64 %102, ptr %18, align 8
  %103 = load i64, ptr %18, align 8
  %104 = load ptr, ptr %16, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %10, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = load ptr, ptr %16, align 8
  call void %110(i64 noundef 2, ptr noundef %111) #4
  unreachable

112:                                              ; preds = %72
  %113 = load i64, ptr %8, align 8
  %114 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i64 22, i64 6
  store i64 %117, ptr %10, align 8
  %118 = load i64, ptr %10, align 8
  %119 = icmp ne i64 %118, 6
  br i1 %119, label %120, label %168

120:                                              ; preds = %112
  %121 = load ptr, ptr %13, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %19, align 8
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 216172782113783810, ptr %124, align 8
  %125 = load ptr, ptr %13, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  store ptr %126, ptr %13, align 8
  %127 = load i64, ptr %19, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds %struct.C_block_struct, ptr %128, i32 0, i32 1
  %130 = getelementptr inbounds [0 x i64], ptr %129, i64 0, i64 0
  store i64 14, ptr %130, align 8
  %131 = load i64, ptr %19, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds %struct.C_block_struct, ptr %132, i32 0, i32 1
  %134 = getelementptr inbounds [0 x i64], ptr %133, i64 0, i64 1
  store i64 14, ptr %134, align 8
  %135 = load i64, ptr %19, align 8
  store i64 %135, ptr %20, align 8
  %136 = load i64, ptr %20, align 8
  store i64 %136, ptr %11, align 8
  %137 = load i64, ptr %7, align 8
  store i64 %137, ptr %12, align 8
  %138 = load ptr, ptr %4, align 8
  store ptr %138, ptr %21, align 8
  %139 = load i64, ptr %12, align 8
  %140 = load ptr, ptr %21, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 0
  store i64 %139, ptr %141, align 8
  %142 = load ptr, ptr %13, align 8
  %143 = ptrtoint ptr %142 to i64
  store i64 %143, ptr %22, align 8
  %144 = load ptr, ptr %13, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 0
  store i64 216172782113783810, ptr %145, align 8
  %146 = load ptr, ptr %13, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store ptr %147, ptr %13, align 8
  %148 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %149 = load i64, ptr %22, align 8
  %150 = inttoptr i64 %149 to ptr
  %151 = getelementptr inbounds %struct.C_block_struct, ptr %150, i32 0, i32 1
  %152 = getelementptr inbounds [0 x i64], ptr %151, i64 0, i64 0
  store i64 %148, ptr %152, align 8
  %153 = load i64, ptr %11, align 8
  %154 = load i64, ptr %22, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds %struct.C_block_struct, ptr %155, i32 0, i32 1
  %157 = getelementptr inbounds [0 x i64], ptr %156, i64 0, i64 1
  store i64 %153, ptr %157, align 8
  %158 = load i64, ptr %22, align 8
  store i64 %158, ptr %23, align 8
  %159 = load i64, ptr %23, align 8
  %160 = load ptr, ptr %21, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 1
  store i64 %159, ptr %161, align 8
  %162 = load i64, ptr %12, align 8
  %163 = inttoptr i64 %162 to ptr
  %164 = getelementptr inbounds i64, ptr %163, i64 1
  %165 = load i64, ptr %164, align 8
  %166 = inttoptr i64 %165 to ptr
  %167 = load ptr, ptr %21, align 8
  call void %166(i64 noundef 2, ptr noundef %167) #4
  unreachable

168:                                              ; preds = %112
  call void @C_trace(ptr noundef @.str.53)
  %169 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %170 = inttoptr i64 %169 to ptr
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  %172 = load i64, ptr %171, align 8
  %173 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %172)
  store ptr %173, ptr %24, align 8
  %174 = load i64, ptr %3, align 8
  %175 = icmp sge i64 %174, 4
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load ptr, ptr %4, align 8
  store ptr %177, ptr %25, align 8
  br label %180

178:                                              ; preds = %168
  %179 = alloca i8, i64 32, align 16
  store ptr %179, ptr %25, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %182 = inttoptr i64 %181 to ptr
  %183 = getelementptr inbounds i64, ptr %182, i64 1
  %184 = load i64, ptr %183, align 8
  %185 = load ptr, ptr %25, align 8
  %186 = getelementptr inbounds i64, ptr %185, i64 0
  store i64 %184, ptr %186, align 8
  %187 = load i64, ptr %7, align 8
  %188 = load ptr, ptr %25, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 1
  store i64 %187, ptr %189, align 8
  %190 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 8), align 16
  %191 = load ptr, ptr %25, align 8
  %192 = getelementptr inbounds i64, ptr %191, i64 2
  store i64 %190, ptr %192, align 8
  %193 = load i64, ptr %8, align 8
  %194 = load ptr, ptr %25, align 8
  %195 = getelementptr inbounds i64, ptr %194, i64 3
  store i64 %193, ptr %195, align 8
  %196 = load ptr, ptr %24, align 8
  %197 = load ptr, ptr %25, align 8
  call void %196(i64 noundef 4, ptr noundef %197) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_519(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds i64, ptr %36, i64 0
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %6, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds i64, ptr %39, i64 1
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %7, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 2
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %8, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 3
  %47 = load i64, ptr %46, align 8
  store i64 %47, ptr %9, align 8
  %48 = load i64, ptr %3, align 8
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load i64, ptr %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %52, i32 noundef 4, i64 noundef %53) #4
  unreachable

54:                                               ; preds = %2
  %55 = load i64, ptr @C_timer_interrupt_counter, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr @C_timer_interrupt_counter, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void @C_raise_interrupt(i32 noundef 255)
  br label %59

59:                                               ; preds = %58, %54
  %60 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
  store ptr %60, ptr %20, align 8
  %61 = load ptr, ptr %20, align 8
  store ptr %61, ptr %21, align 8
  %62 = load ptr, ptr %21, align 8
  %63 = load ptr, ptr @C_stack_limit, align 8
  %64 = ptrtoint ptr %62 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 8
  %68 = load i64, ptr %3, align 8
  %69 = icmp sgt i64 %68, 3
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 3
  %72 = add nuw nsw i32 9, %71
  %73 = zext nneg i32 %72 to i64
  %74 = load i64, ptr @C_scratch_usage, align 8
  %75 = add nsw i64 %73, %74
  %76 = icmp sgt i64 %67, %75
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = zext nneg i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load i64, ptr %3, align 8
  %83 = trunc i64 %82 to i32
  %84 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_519, i32 noundef %83, ptr noundef %84) #4
  unreachable

85:                                               ; preds = %59
  %86 = alloca i8, i64 72, align 16
  store ptr %86, ptr %19, align 8
  %87 = load i64, ptr %8, align 8
  %88 = call i64 @C_i_car(i64 noundef %87)
  store i64 %88, ptr %10, align 8
  %89 = load i64, ptr %10, align 8
  %90 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i64 22, i64 6
  store i64 %93, ptr %11, align 8
  %94 = load i64, ptr %11, align 8
  %95 = icmp ne i64 %94, 6
  br i1 %95, label %96, label %148

96:                                               ; preds = %85
  %97 = load i64, ptr %8, align 8
  %98 = call i64 @C_i_cdr(i64 noundef %97)
  store i64 %98, ptr %12, align 8
  %99 = load ptr, ptr %19, align 8
  %100 = ptrtoint ptr %99 to i64
  store i64 %100, ptr %22, align 8
  %101 = load ptr, ptr %19, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 0
  store i64 216172782113783810, ptr %102, align 8
  %103 = load ptr, ptr %19, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store ptr %104, ptr %19, align 8
  %105 = load i64, ptr %9, align 8
  %106 = load i64, ptr %22, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds %struct.C_block_struct, ptr %107, i32 0, i32 1
  %109 = getelementptr inbounds [0 x i64], ptr %108, i64 0, i64 0
  store i64 %105, ptr %109, align 8
  %110 = load i64, ptr %12, align 8
  %111 = load i64, ptr %22, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds %struct.C_block_struct, ptr %112, i32 0, i32 1
  %114 = getelementptr inbounds [0 x i64], ptr %113, i64 0, i64 1
  store i64 %110, ptr %114, align 8
  %115 = load i64, ptr %22, align 8
  store i64 %115, ptr %23, align 8
  %116 = load i64, ptr %23, align 8
  store i64 %116, ptr %13, align 8
  %117 = load i64, ptr %7, align 8
  store i64 %117, ptr %14, align 8
  %118 = load ptr, ptr %4, align 8
  store ptr %118, ptr %24, align 8
  %119 = load i64, ptr %14, align 8
  %120 = load ptr, ptr %24, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 0
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %19, align 8
  %123 = ptrtoint ptr %122 to i64
  store i64 %123, ptr %25, align 8
  %124 = load ptr, ptr %19, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 0
  store i64 216172782113783810, ptr %125, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store ptr %127, ptr %19, align 8
  %128 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %129 = load i64, ptr %25, align 8
  %130 = inttoptr i64 %129 to ptr
  %131 = getelementptr inbounds %struct.C_block_struct, ptr %130, i32 0, i32 1
  %132 = getelementptr inbounds [0 x i64], ptr %131, i64 0, i64 0
  store i64 %128, ptr %132, align 8
  %133 = load i64, ptr %13, align 8
  %134 = load i64, ptr %25, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds %struct.C_block_struct, ptr %135, i32 0, i32 1
  %137 = getelementptr inbounds [0 x i64], ptr %136, i64 0, i64 1
  store i64 %133, ptr %137, align 8
  %138 = load i64, ptr %25, align 8
  store i64 %138, ptr %26, align 8
  %139 = load i64, ptr %26, align 8
  %140 = load ptr, ptr %24, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %14, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 1
  %145 = load i64, ptr %144, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = load ptr, ptr %24, align 8
  call void %146(i64 noundef 2, ptr noundef %147) #4
  unreachable

148:                                              ; preds = %85
  %149 = load i64, ptr %10, align 8
  %150 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i64 22, i64 6
  store i64 %153, ptr %12, align 8
  %154 = load i64, ptr %12, align 8
  %155 = icmp ne i64 %154, 6
  br i1 %155, label %156, label %230

156:                                              ; preds = %148
  %157 = load i64, ptr %8, align 8
  %158 = call i64 @C_i_cdr(i64 noundef %157)
  store i64 %158, ptr %13, align 8
  %159 = load i64, ptr %13, align 8
  %160 = call i64 @C_i_car(i64 noundef %159)
  store i64 %160, ptr %14, align 8
  %161 = load i64, ptr %13, align 8
  %162 = call i64 @C_i_cdr(i64 noundef %161)
  store i64 %162, ptr %15, align 8
  %163 = load ptr, ptr %19, align 8
  %164 = ptrtoint ptr %163 to i64
  store i64 %164, ptr %27, align 8
  %165 = load ptr, ptr %19, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 0
  store i64 216172782113783810, ptr %166, align 8
  %167 = load ptr, ptr %19, align 8
  %168 = getelementptr inbounds i64, ptr %167, i64 3
  store ptr %168, ptr %19, align 8
  %169 = load i64, ptr %9, align 8
  %170 = load i64, ptr %27, align 8
  %171 = inttoptr i64 %170 to ptr
  %172 = getelementptr inbounds %struct.C_block_struct, ptr %171, i32 0, i32 1
  %173 = getelementptr inbounds [0 x i64], ptr %172, i64 0, i64 0
  store i64 %169, ptr %173, align 8
  %174 = load i64, ptr %15, align 8
  %175 = load i64, ptr %27, align 8
  %176 = inttoptr i64 %175 to ptr
  %177 = getelementptr inbounds %struct.C_block_struct, ptr %176, i32 0, i32 1
  %178 = getelementptr inbounds [0 x i64], ptr %177, i64 0, i64 1
  store i64 %174, ptr %178, align 8
  %179 = load i64, ptr %27, align 8
  store i64 %179, ptr %28, align 8
  %180 = load i64, ptr %28, align 8
  store i64 %180, ptr %16, align 8
  %181 = load ptr, ptr %19, align 8
  %182 = ptrtoint ptr %181 to i64
  store i64 %182, ptr %29, align 8
  %183 = load ptr, ptr %19, align 8
  %184 = getelementptr inbounds i64, ptr %183, i64 0
  store i64 216172782113783810, ptr %184, align 8
  %185 = load ptr, ptr %19, align 8
  %186 = getelementptr inbounds i64, ptr %185, i64 3
  store ptr %186, ptr %19, align 8
  %187 = load i64, ptr %14, align 8
  %188 = load i64, ptr %29, align 8
  %189 = inttoptr i64 %188 to ptr
  %190 = getelementptr inbounds %struct.C_block_struct, ptr %189, i32 0, i32 1
  %191 = getelementptr inbounds [0 x i64], ptr %190, i64 0, i64 0
  store i64 %187, ptr %191, align 8
  %192 = load i64, ptr %16, align 8
  %193 = load i64, ptr %29, align 8
  %194 = inttoptr i64 %193 to ptr
  %195 = getelementptr inbounds %struct.C_block_struct, ptr %194, i32 0, i32 1
  %196 = getelementptr inbounds [0 x i64], ptr %195, i64 0, i64 1
  store i64 %192, ptr %196, align 8
  %197 = load i64, ptr %29, align 8
  store i64 %197, ptr %30, align 8
  %198 = load i64, ptr %30, align 8
  store i64 %198, ptr %17, align 8
  %199 = load i64, ptr %7, align 8
  store i64 %199, ptr %18, align 8
  %200 = load ptr, ptr %4, align 8
  store ptr %200, ptr %31, align 8
  %201 = load i64, ptr %18, align 8
  %202 = load ptr, ptr %31, align 8
  %203 = getelementptr inbounds i64, ptr %202, i64 0
  store i64 %201, ptr %203, align 8
  %204 = load ptr, ptr %19, align 8
  %205 = ptrtoint ptr %204 to i64
  store i64 %205, ptr %32, align 8
  %206 = load ptr, ptr %19, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 0
  store i64 216172782113783810, ptr %207, align 8
  %208 = load ptr, ptr %19, align 8
  %209 = getelementptr inbounds i64, ptr %208, i64 3
  store ptr %209, ptr %19, align 8
  %210 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %211 = load i64, ptr %32, align 8
  %212 = inttoptr i64 %211 to ptr
  %213 = getelementptr inbounds %struct.C_block_struct, ptr %212, i32 0, i32 1
  %214 = getelementptr inbounds [0 x i64], ptr %213, i64 0, i64 0
  store i64 %210, ptr %214, align 8
  %215 = load i64, ptr %17, align 8
  %216 = load i64, ptr %32, align 8
  %217 = inttoptr i64 %216 to ptr
  %218 = getelementptr inbounds %struct.C_block_struct, ptr %217, i32 0, i32 1
  %219 = getelementptr inbounds [0 x i64], ptr %218, i64 0, i64 1
  store i64 %215, ptr %219, align 8
  %220 = load i64, ptr %32, align 8
  store i64 %220, ptr %33, align 8
  %221 = load i64, ptr %33, align 8
  %222 = load ptr, ptr %31, align 8
  %223 = getelementptr inbounds i64, ptr %222, i64 1
  store i64 %221, ptr %223, align 8
  %224 = load i64, ptr %18, align 8
  %225 = inttoptr i64 %224 to ptr
  %226 = getelementptr inbounds i64, ptr %225, i64 1
  %227 = load i64, ptr %226, align 8
  %228 = inttoptr i64 %227 to ptr
  %229 = load ptr, ptr %31, align 8
  call void %228(i64 noundef 2, ptr noundef %229) #4
  unreachable

230:                                              ; preds = %148
  call void @C_trace(ptr noundef @.str.54)
  %231 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %232 = inttoptr i64 %231 to ptr
  %233 = getelementptr inbounds i64, ptr %232, i64 1
  %234 = load i64, ptr %233, align 8
  %235 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %234)
  store ptr %235, ptr %34, align 8
  %236 = load ptr, ptr %4, align 8
  store ptr %236, ptr %35, align 8
  %237 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %238 = inttoptr i64 %237 to ptr
  %239 = getelementptr inbounds i64, ptr %238, i64 1
  %240 = load i64, ptr %239, align 8
  %241 = load ptr, ptr %35, align 8
  %242 = getelementptr inbounds i64, ptr %241, i64 0
  store i64 %240, ptr %242, align 8
  %243 = load i64, ptr %7, align 8
  %244 = load ptr, ptr %35, align 8
  %245 = getelementptr inbounds i64, ptr %244, i64 1
  store i64 %243, ptr %245, align 8
  %246 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 10), align 16
  %247 = load ptr, ptr %35, align 8
  %248 = getelementptr inbounds i64, ptr %247, i64 2
  store i64 %246, ptr %248, align 8
  %249 = load i64, ptr %10, align 8
  %250 = load ptr, ptr %35, align 8
  %251 = getelementptr inbounds i64, ptr %250, i64 3
  store i64 %249, ptr %251, align 8
  %252 = load ptr, ptr %34, align 8
  %253 = load ptr, ptr %35, align 8
  call void %252(i64 noundef 4, ptr noundef %253) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_571(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 0
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %6, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 1
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %7, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %8, align 8
  %47 = load i64, ptr %3, align 8
  %48 = icmp ne i64 %47, 3
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %51, i32 noundef 3, i64 noundef %52) #4
  unreachable

53:                                               ; preds = %2
  %54 = load i64, ptr @C_timer_interrupt_counter, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr @C_timer_interrupt_counter, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @C_raise_interrupt(i32 noundef 255)
  br label %58

58:                                               ; preds = %57, %53
  %59 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
  store ptr %59, ptr %22, align 8
  %60 = load ptr, ptr %22, align 8
  store ptr %60, ptr %23, align 8
  %61 = load ptr, ptr %23, align 8
  %62 = load ptr, ptr @C_stack_limit, align 8
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 8
  %67 = load i64, ptr %3, align 8
  %68 = icmp sgt i64 %67, 4
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 4
  %71 = add nuw nsw i32 6, %70
  %72 = zext nneg i32 %71 to i64
  %73 = load i64, ptr @C_scratch_usage, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp sgt i64 %66, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = zext nneg i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i64, ptr %3, align 8
  %82 = trunc i64 %81 to i32
  %83 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_571, i32 noundef %82, ptr noundef %83) #4
  unreachable

84:                                               ; preds = %58
  %85 = alloca i8, i64 48, align 16
  store ptr %85, ptr %21, align 8
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_car(i64 noundef %86)
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %9, align 8
  %89 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i64 22, i64 6
  store i64 %92, ptr %10, align 8
  %93 = load i64, ptr %10, align 8
  %94 = icmp ne i64 %93, 6
  br i1 %94, label %95, label %168

95:                                               ; preds = %84
  %96 = load i64, ptr %8, align 8
  %97 = call i64 @C_i_cdr(i64 noundef %96)
  store i64 %97, ptr %11, align 8
  %98 = load i64, ptr %11, align 8
  %99 = icmp eq i64 %98, 14
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i64 22, i64 6
  %102 = icmp ne i64 %101, 6
  br i1 %102, label %103, label %124

103:                                              ; preds = %95
  call void @C_trace(ptr noundef @.str.55)
  %104 = load i64, ptr %3, align 8
  %105 = icmp sge i64 %104, 5
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %24, align 8
  br label %110

108:                                              ; preds = %103
  %109 = alloca i8, i64 40, align 16
  store ptr %109, ptr %24, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load ptr, ptr %24, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 0
  store i64 0, ptr %112, align 8
  %113 = load i64, ptr %7, align 8
  %114 = load ptr, ptr %24, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %24, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 6, ptr %117, align 8
  %118 = load ptr, ptr %24, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 6, ptr %119, align 8
  %120 = load i64, ptr %8, align 8
  %121 = load ptr, ptr %24, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 4
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %24, align 8
  call void @C_values(i64 noundef 5, ptr noundef %123) #4
  unreachable

124:                                              ; preds = %95
  %125 = load i64, ptr %11, align 8
  %126 = call i64 @C_i_car(i64 noundef %125)
  store i64 %126, ptr %12, align 8
  %127 = load i64, ptr %11, align 8
  %128 = call i64 @C_i_cdr(i64 noundef %127)
  store i64 %128, ptr %13, align 8
  %129 = load ptr, ptr %21, align 8
  %130 = ptrtoint ptr %129 to i64
  store i64 %130, ptr %25, align 8
  %131 = load ptr, ptr %21, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 0
  store i64 216172782113783810, ptr %132, align 8
  %133 = load ptr, ptr %21, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 3
  store ptr %134, ptr %21, align 8
  %135 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %136 = load i64, ptr %25, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds %struct.C_block_struct, ptr %137, i32 0, i32 1
  %139 = getelementptr inbounds [0 x i64], ptr %138, i64 0, i64 0
  store i64 %135, ptr %139, align 8
  %140 = load i64, ptr %13, align 8
  %141 = load i64, ptr %25, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds %struct.C_block_struct, ptr %142, i32 0, i32 1
  %144 = getelementptr inbounds [0 x i64], ptr %143, i64 0, i64 1
  store i64 %140, ptr %144, align 8
  %145 = load i64, ptr %25, align 8
  store i64 %145, ptr %26, align 8
  %146 = load i64, ptr %26, align 8
  store i64 %146, ptr %14, align 8
  call void @C_trace(ptr noundef @.str.56)
  %147 = load i64, ptr %3, align 8
  %148 = icmp sge i64 %147, 5
  br i1 %148, label %149, label %151

149:                                              ; preds = %124
  %150 = load ptr, ptr %4, align 8
  store ptr %150, ptr %27, align 8
  br label %153

151:                                              ; preds = %124
  %152 = alloca i8, i64 40, align 16
  store ptr %152, ptr %27, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = load ptr, ptr %27, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 0
  store i64 0, ptr %155, align 8
  %156 = load i64, ptr %7, align 8
  %157 = load ptr, ptr %27, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 1
  store i64 %156, ptr %158, align 8
  %159 = load ptr, ptr %27, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 2
  store i64 22, ptr %160, align 8
  %161 = load i64, ptr %12, align 8
  %162 = load ptr, ptr %27, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 3
  store i64 %161, ptr %163, align 8
  %164 = load i64, ptr %14, align 8
  %165 = load ptr, ptr %27, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 4
  store i64 %164, ptr %166, align 8
  %167 = load ptr, ptr %27, align 8
  call void @C_values(i64 noundef 5, ptr noundef %167) #4
  unreachable

168:                                              ; preds = %84
  %169 = load i64, ptr %9, align 8
  %170 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i64 22, i64 6
  store i64 %173, ptr %11, align 8
  %174 = load i64, ptr %11, align 8
  %175 = icmp ne i64 %174, 6
  br i1 %175, label %176, label %313

176:                                              ; preds = %168
  %177 = load i64, ptr %8, align 8
  %178 = call i64 @C_i_cdr(i64 noundef %177)
  store i64 %178, ptr %12, align 8
  %179 = load i64, ptr %12, align 8
  %180 = call i64 @C_i_car(i64 noundef %179)
  store i64 %180, ptr %13, align 8
  %181 = load i64, ptr %12, align 8
  %182 = call i64 @C_i_cdr(i64 noundef %181)
  store i64 %182, ptr %14, align 8
  %183 = load i64, ptr %13, align 8
  %184 = icmp eq i64 %183, 14
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i64 22, i64 6
  store i64 %186, ptr %15, align 8
  %187 = load i64, ptr %15, align 8
  %188 = icmp ne i64 %187, 6
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i64 6, i64 22
  %191 = icmp ne i64 %190, 6
  br i1 %191, label %192, label %254

192:                                              ; preds = %176
  %193 = load i64, ptr %13, align 8
  %194 = call i64 @C_i_car(i64 noundef %193)
  store i64 %194, ptr %16, align 8
  %195 = load i64, ptr %13, align 8
  %196 = call i64 @C_i_cdr(i64 noundef %195)
  store i64 %196, ptr %17, align 8
  %197 = load ptr, ptr %21, align 8
  %198 = ptrtoint ptr %197 to i64
  store i64 %198, ptr %28, align 8
  %199 = load ptr, ptr %21, align 8
  %200 = getelementptr inbounds i64, ptr %199, i64 0
  store i64 216172782113783810, ptr %200, align 8
  %201 = load ptr, ptr %21, align 8
  %202 = getelementptr inbounds i64, ptr %201, i64 3
  store ptr %202, ptr %21, align 8
  %203 = load i64, ptr %17, align 8
  %204 = load i64, ptr %28, align 8
  %205 = inttoptr i64 %204 to ptr
  %206 = getelementptr inbounds %struct.C_block_struct, ptr %205, i32 0, i32 1
  %207 = getelementptr inbounds [0 x i64], ptr %206, i64 0, i64 0
  store i64 %203, ptr %207, align 8
  %208 = load i64, ptr %14, align 8
  %209 = load i64, ptr %28, align 8
  %210 = inttoptr i64 %209 to ptr
  %211 = getelementptr inbounds %struct.C_block_struct, ptr %210, i32 0, i32 1
  %212 = getelementptr inbounds [0 x i64], ptr %211, i64 0, i64 1
  store i64 %208, ptr %212, align 8
  %213 = load i64, ptr %28, align 8
  store i64 %213, ptr %29, align 8
  %214 = load i64, ptr %29, align 8
  store i64 %214, ptr %18, align 8
  %215 = load ptr, ptr %21, align 8
  %216 = ptrtoint ptr %215 to i64
  store i64 %216, ptr %30, align 8
  %217 = load ptr, ptr %21, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 0
  store i64 216172782113783810, ptr %218, align 8
  %219 = load ptr, ptr %21, align 8
  %220 = getelementptr inbounds i64, ptr %219, i64 3
  store ptr %220, ptr %21, align 8
  %221 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %222 = load i64, ptr %30, align 8
  %223 = inttoptr i64 %222 to ptr
  %224 = getelementptr inbounds %struct.C_block_struct, ptr %223, i32 0, i32 1
  %225 = getelementptr inbounds [0 x i64], ptr %224, i64 0, i64 0
  store i64 %221, ptr %225, align 8
  %226 = load i64, ptr %18, align 8
  %227 = load i64, ptr %30, align 8
  %228 = inttoptr i64 %227 to ptr
  %229 = getelementptr inbounds %struct.C_block_struct, ptr %228, i32 0, i32 1
  %230 = getelementptr inbounds [0 x i64], ptr %229, i64 0, i64 1
  store i64 %226, ptr %230, align 8
  %231 = load i64, ptr %30, align 8
  store i64 %231, ptr %31, align 8
  %232 = load i64, ptr %31, align 8
  store i64 %232, ptr %19, align 8
  call void @C_trace(ptr noundef @.str.57)
  %233 = load i64, ptr %3, align 8
  %234 = icmp sge i64 %233, 5
  br i1 %234, label %235, label %237

235:                                              ; preds = %192
  %236 = load ptr, ptr %4, align 8
  store ptr %236, ptr %32, align 8
  br label %239

237:                                              ; preds = %192
  %238 = alloca i8, i64 40, align 16
  store ptr %238, ptr %32, align 8
  br label %239

239:                                              ; preds = %237, %235
  %240 = load ptr, ptr %32, align 8
  %241 = getelementptr inbounds i64, ptr %240, i64 0
  store i64 0, ptr %241, align 8
  %242 = load i64, ptr %7, align 8
  %243 = load ptr, ptr %32, align 8
  %244 = getelementptr inbounds i64, ptr %243, i64 1
  store i64 %242, ptr %244, align 8
  %245 = load ptr, ptr %32, align 8
  %246 = getelementptr inbounds i64, ptr %245, i64 2
  store i64 22, ptr %246, align 8
  %247 = load i64, ptr %16, align 8
  %248 = load ptr, ptr %32, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 3
  store i64 %247, ptr %249, align 8
  %250 = load i64, ptr %19, align 8
  %251 = load ptr, ptr %32, align 8
  %252 = getelementptr inbounds i64, ptr %251, i64 4
  store i64 %250, ptr %252, align 8
  %253 = load ptr, ptr %32, align 8
  call void @C_values(i64 noundef 5, ptr noundef %253) #4
  unreachable

254:                                              ; preds = %176
  %255 = load i64, ptr %14, align 8
  %256 = icmp eq i64 %255, 14
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i64 22, i64 6
  %259 = icmp ne i64 %258, 6
  br i1 %259, label %260, label %281

260:                                              ; preds = %254
  call void @C_trace(ptr noundef @.str.58)
  %261 = load i64, ptr %3, align 8
  %262 = icmp sge i64 %261, 5
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load ptr, ptr %4, align 8
  store ptr %264, ptr %33, align 8
  br label %267

265:                                              ; preds = %260
  %266 = alloca i8, i64 40, align 16
  store ptr %266, ptr %33, align 8
  br label %267

267:                                              ; preds = %265, %263
  %268 = load ptr, ptr %33, align 8
  %269 = getelementptr inbounds i64, ptr %268, i64 0
  store i64 0, ptr %269, align 8
  %270 = load i64, ptr %7, align 8
  %271 = load ptr, ptr %33, align 8
  %272 = getelementptr inbounds i64, ptr %271, i64 1
  store i64 %270, ptr %272, align 8
  %273 = load ptr, ptr %33, align 8
  %274 = getelementptr inbounds i64, ptr %273, i64 2
  store i64 6, ptr %274, align 8
  %275 = load ptr, ptr %33, align 8
  %276 = getelementptr inbounds i64, ptr %275, i64 3
  store i64 6, ptr %276, align 8
  %277 = load i64, ptr %8, align 8
  %278 = load ptr, ptr %33, align 8
  %279 = getelementptr inbounds i64, ptr %278, i64 4
  store i64 %277, ptr %279, align 8
  %280 = load ptr, ptr %33, align 8
  call void @C_values(i64 noundef 5, ptr noundef %280) #4
  unreachable

281:                                              ; preds = %254
  %282 = load ptr, ptr %21, align 8
  store i64 2594073385365405698, ptr %282, align 8
  %283 = load ptr, ptr %21, align 8
  %284 = getelementptr inbounds i64, ptr %283, i64 1
  store i64 ptrtoint (ptr @f_660 to i64), ptr %284, align 8
  %285 = load i64, ptr %7, align 8
  %286 = load ptr, ptr %21, align 8
  %287 = getelementptr inbounds i64, ptr %286, i64 2
  store i64 %285, ptr %287, align 8
  %288 = load ptr, ptr %21, align 8
  %289 = ptrtoint ptr %288 to i64
  store i64 %289, ptr %5, align 8
  %290 = load ptr, ptr %21, align 8
  %291 = getelementptr inbounds i64, ptr %290, i64 3
  store ptr %291, ptr %21, align 8
  %292 = load i64, ptr %5, align 8
  store i64 %292, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.59)
  %293 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 12), align 16
  %294 = inttoptr i64 %293 to ptr
  %295 = getelementptr inbounds i64, ptr %294, i64 1
  %296 = load i64, ptr %295, align 8
  %297 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %296)
  store ptr %297, ptr %34, align 8
  %298 = load ptr, ptr %4, align 8
  store ptr %298, ptr %35, align 8
  %299 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 12), align 16
  %300 = inttoptr i64 %299 to ptr
  %301 = getelementptr inbounds i64, ptr %300, i64 1
  %302 = load i64, ptr %301, align 8
  %303 = load ptr, ptr %35, align 8
  %304 = getelementptr inbounds i64, ptr %303, i64 0
  store i64 %302, ptr %304, align 8
  %305 = load i64, ptr %16, align 8
  %306 = load ptr, ptr %35, align 8
  %307 = getelementptr inbounds i64, ptr %306, i64 1
  store i64 %305, ptr %307, align 8
  %308 = load i64, ptr %14, align 8
  %309 = load ptr, ptr %35, align 8
  %310 = getelementptr inbounds i64, ptr %309, i64 2
  store i64 %308, ptr %310, align 8
  %311 = load ptr, ptr %34, align 8
  %312 = load ptr, ptr %35, align 8
  call void %311(i64 noundef 3, ptr noundef %312) #4
  unreachable

313:                                              ; preds = %168
  call void @C_trace(ptr noundef @.str.60)
  %314 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %315 = inttoptr i64 %314 to ptr
  %316 = getelementptr inbounds i64, ptr %315, i64 1
  %317 = load i64, ptr %316, align 8
  %318 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %317)
  store ptr %318, ptr %36, align 8
  %319 = load i64, ptr %3, align 8
  %320 = icmp sge i64 %319, 4
  br i1 %320, label %321, label %323

321:                                              ; preds = %313
  %322 = load ptr, ptr %4, align 8
  store ptr %322, ptr %37, align 8
  br label %325

323:                                              ; preds = %313
  %324 = alloca i8, i64 32, align 16
  store ptr %324, ptr %37, align 8
  br label %325

325:                                              ; preds = %323, %321
  %326 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %327 = inttoptr i64 %326 to ptr
  %328 = getelementptr inbounds i64, ptr %327, i64 1
  %329 = load i64, ptr %328, align 8
  %330 = load ptr, ptr %37, align 8
  %331 = getelementptr inbounds i64, ptr %330, i64 0
  store i64 %329, ptr %331, align 8
  %332 = load i64, ptr %7, align 8
  %333 = load ptr, ptr %37, align 8
  %334 = getelementptr inbounds i64, ptr %333, i64 1
  store i64 %332, ptr %334, align 8
  %335 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 13), align 8
  %336 = load ptr, ptr %37, align 8
  %337 = getelementptr inbounds i64, ptr %336, i64 2
  store i64 %335, ptr %337, align 8
  %338 = load i64, ptr %9, align 8
  %339 = load ptr, ptr %37, align 8
  %340 = getelementptr inbounds i64, ptr %339, i64 3
  store i64 %338, ptr %340, align 8
  %341 = load ptr, ptr %36, align 8
  %342 = load ptr, ptr %37, align 8
  call void %341(i64 noundef 4, ptr noundef %342) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_688(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %6, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 2
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %8, align 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp ne i64 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i64, ptr %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %36, i32 noundef 3, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %2
  %39 = load i64, ptr @C_timer_interrupt_counter, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr @C_timer_interrupt_counter, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @C_raise_interrupt(i32 noundef 255)
  br label %43

43:                                               ; preds = %42, %38
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
  store ptr %44, ptr %17, align 8
  %45 = load ptr, ptr %17, align 8
  store ptr %45, ptr %18, align 8
  %46 = load ptr, ptr %18, align 8
  %47 = load ptr, ptr @C_stack_limit, align 8
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = load i64, ptr %3, align 8
  %53 = icmp sgt i64 %52, 3
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 3
  %56 = add nuw nsw i32 0, %55
  %57 = zext nneg i32 %56 to i64
  %58 = load i64, ptr @C_scratch_usage, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp sgt i64 %51, %59
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = zext nneg i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i64, ptr %3, align 8
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_688, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_i_car(i64 noundef %70)
  store i64 %71, ptr %9, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i64 22, i64 6
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %10, align 8
  %78 = icmp ne i64 %77, 6
  br i1 %78, label %79, label %98

79:                                               ; preds = %69
  %80 = load i64, ptr %7, align 8
  store i64 %80, ptr %11, align 8
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %19, align 8
  %82 = load i64, ptr %11, align 8
  %83 = load ptr, ptr %19, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 0
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %8, align 8
  %86 = call i64 @C_i_cdr(i64 noundef %85)
  %87 = icmp eq i64 %86, 14
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i64 22, i64 6
  %90 = load ptr, ptr %19, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %11, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %94, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = load ptr, ptr %19, align 8
  call void %96(i64 noundef 2, ptr noundef %97) #4
  unreachable

98:                                               ; preds = %69
  %99 = load i64, ptr %9, align 8
  %100 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i64 22, i64 6
  store i64 %103, ptr %11, align 8
  %104 = load i64, ptr %11, align 8
  %105 = icmp ne i64 %104, 6
  br i1 %105, label %106, label %139

106:                                              ; preds = %98
  %107 = load i64, ptr %8, align 8
  %108 = call i64 @C_i_cdr(i64 noundef %107)
  store i64 %108, ptr %12, align 8
  %109 = load i64, ptr %12, align 8
  %110 = call i64 @C_i_car(i64 noundef %109)
  store i64 %110, ptr %13, align 8
  %111 = load i64, ptr %13, align 8
  %112 = icmp eq i64 %111, 14
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i64 22, i64 6
  store i64 %114, ptr %14, align 8
  %115 = load i64, ptr %7, align 8
  store i64 %115, ptr %15, align 8
  %116 = load ptr, ptr %4, align 8
  store ptr %116, ptr %20, align 8
  %117 = load i64, ptr %15, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 0
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %14, align 8
  %121 = icmp ne i64 %120, 6
  br i1 %121, label %122, label %128

122:                                              ; preds = %106
  %123 = load i64, ptr %12, align 8
  %124 = call i64 @C_i_cdr(i64 noundef %123)
  %125 = icmp eq i64 %124, 14
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i64 22, i64 6
  br label %129

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %122
  %130 = phi i64 [ %127, %122 ], [ 6, %128 ]
  %131 = load ptr, ptr %20, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %15, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = load ptr, ptr %20, align 8
  call void %137(i64 noundef 2, ptr noundef %138) #4
  unreachable

139:                                              ; preds = %98
  call void @C_trace(ptr noundef @.str.62)
  %140 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load i64, ptr %142, align 8
  %144 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %143)
  store ptr %144, ptr %21, align 8
  %145 = load i64, ptr %3, align 8
  %146 = icmp sge i64 %145, 4
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load ptr, ptr %4, align 8
  store ptr %148, ptr %22, align 8
  br label %151

149:                                              ; preds = %139
  %150 = alloca i8, i64 32, align 16
  store ptr %150, ptr %22, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 1
  %155 = load i64, ptr %154, align 8
  %156 = load ptr, ptr %22, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 0
  store i64 %155, ptr %157, align 8
  %158 = load i64, ptr %7, align 8
  %159 = load ptr, ptr %22, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  store i64 %158, ptr %160, align 8
  %161 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 15), align 8
  %162 = load ptr, ptr %22, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 2
  store i64 %161, ptr %163, align 8
  %164 = load i64, ptr %9, align 8
  %165 = load ptr, ptr %22, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 3
  store i64 %164, ptr %166, align 8
  %167 = load ptr, ptr %21, align 8
  %168 = load ptr, ptr %22, align 8
  call void %167(i64 noundef 4, ptr noundef %168) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_736(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %6, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 1
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %7, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 2
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %8, align 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp ne i64 %34, 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i64, ptr %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %38, i32 noundef 3, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %2
  %41 = load i64, ptr @C_timer_interrupt_counter, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, ptr @C_timer_interrupt_counter, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @C_raise_interrupt(i32 noundef 255)
  br label %45

45:                                               ; preds = %44, %40
  %46 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
  store ptr %46, ptr %19, align 8
  %47 = load ptr, ptr %19, align 8
  store ptr %47, ptr %20, align 8
  %48 = load ptr, ptr %20, align 8
  %49 = load ptr, ptr @C_stack_limit, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sgt i64 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 3
  %58 = add nuw nsw i32 29, %57
  %59 = zext nneg i32 %58 to i64
  %60 = load i64, ptr @C_scratch_usage, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp sgt i64 %53, %61
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = zext nneg i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %45
  %68 = load i64, ptr %3, align 8
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_736, i32 noundef %69, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %45
  %72 = alloca i8, i64 232, align 16
  store ptr %72, ptr %18, align 8
  %73 = load i64, ptr %8, align 8
  %74 = call i64 @C_i_car(i64 noundef %73)
  store i64 %74, ptr %9, align 8
  %75 = load i64, ptr %9, align 8
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 5), align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i64 22, i64 6
  store i64 %79, ptr %10, align 8
  %80 = load i64, ptr %10, align 8
  %81 = icmp ne i64 %80, 6
  br i1 %81, label %82, label %99

82:                                               ; preds = %71
  %83 = load i64, ptr %7, align 8
  store i64 %83, ptr %11, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %21, align 8
  %85 = load i64, ptr %11, align 8
  %86 = load ptr, ptr %21, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = call i64 @C_i_cdr(i64 noundef %88)
  %90 = call i64 @C_i_length(i64 noundef %89)
  %91 = load ptr, ptr %21, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %11, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = load ptr, ptr %21, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable

99:                                               ; preds = %71
  %100 = load i64, ptr %9, align 8
  %101 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i64 22, i64 6
  store i64 %104, ptr %11, align 8
  %105 = load i64, ptr %11, align 8
  %106 = icmp ne i64 %105, 6
  br i1 %106, label %107, label %134

107:                                              ; preds = %99
  %108 = load i64, ptr %8, align 8
  %109 = call i64 @C_i_cdr(i64 noundef %108)
  store i64 %109, ptr %12, align 8
  %110 = load i64, ptr %12, align 8
  %111 = call i64 @C_i_car(i64 noundef %110)
  store i64 %111, ptr %13, align 8
  %112 = load i64, ptr %13, align 8
  %113 = call i64 @C_i_length(i64 noundef %112)
  store i64 %113, ptr %14, align 8
  %114 = load i64, ptr %12, align 8
  %115 = call i64 @C_i_cdr(i64 noundef %114)
  store i64 %115, ptr %15, align 8
  %116 = load i64, ptr %15, align 8
  %117 = call i64 @C_i_length(i64 noundef %116)
  store i64 %117, ptr %16, align 8
  %118 = load i64, ptr %7, align 8
  store i64 %118, ptr %17, align 8
  %119 = load ptr, ptr %4, align 8
  store ptr %119, ptr %22, align 8
  %120 = load i64, ptr %17, align 8
  %121 = load ptr, ptr %22, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 0
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %14, align 8
  %124 = load i64, ptr %16, align 8
  %125 = call i64 @C_s_a_i_plus(ptr noundef %18, i64 noundef 2, i64 noundef %123, i64 noundef %124)
  %126 = load ptr, ptr %22, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %17, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  %131 = load i64, ptr %130, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = load ptr, ptr %22, align 8
  call void %132(i64 noundef 2, ptr noundef %133) #4
  unreachable

134:                                              ; preds = %99
  call void @C_trace(ptr noundef @.str.63)
  %135 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  %138 = load i64, ptr %137, align 8
  %139 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %138)
  store ptr %139, ptr %23, align 8
  %140 = load i64, ptr %3, align 8
  %141 = icmp sge i64 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load ptr, ptr %4, align 8
  store ptr %143, ptr %24, align 8
  br label %146

144:                                              ; preds = %134
  %145 = alloca i8, i64 32, align 16
  store ptr %145, ptr %24, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 7), align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  %151 = load ptr, ptr %24, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 0
  store i64 %150, ptr %152, align 8
  %153 = load i64, ptr %7, align 8
  %154 = load ptr, ptr %24, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 1
  store i64 %153, ptr %155, align 8
  %156 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 17), align 8
  %157 = load ptr, ptr %24, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 2
  store i64 %156, ptr %158, align 8
  %159 = load i64, ptr %9, align 8
  %160 = load ptr, ptr %24, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 3
  store i64 %159, ptr %161, align 8
  %162 = load ptr, ptr %23, align 8
  %163 = load ptr, ptr %24, align 8
  call void %162(i64 noundef 4, ptr noundef %163) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_786(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 0
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %7, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %8, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds i64, ptr %27, i64 3
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %9, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds i64, ptr %30, i64 4
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %10, align 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp ne i64 %33, 5
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i64, ptr %3, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %37, i32 noundef 5, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %2
  %40 = load i64, ptr @C_timer_interrupt_counter, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, ptr @C_timer_interrupt_counter, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @C_raise_interrupt(i32 noundef 255)
  br label %44

44:                                               ; preds = %43, %39
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
  store ptr %45, ptr %14, align 8
  %46 = load ptr, ptr %14, align 8
  store ptr %46, ptr %15, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = load ptr, ptr @C_stack_limit, align 8
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sgt i64 %53, 4
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 4
  %57 = add nuw nsw i32 6, %56
  %58 = zext nneg i32 %57 to i64
  %59 = load i64, ptr @C_scratch_usage, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp sgt i64 %52, %60
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = zext nneg i32 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %44
  %67 = load i64, ptr %3, align 8
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_786, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 48, align 16
  store ptr %71, ptr %13, align 8
  %72 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %72, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_790 to i64), ptr %74, align 8
  %75 = load i64, ptr %10, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %9, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %5, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 6
  store ptr %90, ptr %13, align 8
  %91 = load i64, ptr %5, align 8
  store i64 %91, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.64)
  %92 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), align 16
  %93 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %92)
  store ptr %93, ptr %16, align 8
  %94 = load ptr, ptr %4, align 8
  store ptr %94, ptr %17, align 8
  %95 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), align 16
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %17, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 0
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %11, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load ptr, ptr %17, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %9, align 8
  %108 = load ptr, ptr %17, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 2), align 16
  %111 = call fastcc i64 @C_fast_retrieve(i64 noundef %110)
  %112 = load ptr, ptr %17, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 4
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = load ptr, ptr %17, align 8
  call void %114(i64 noundef 5, ptr noundef %115) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_801(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 0
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %6, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds i64, ptr %20, i64 1
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %7, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 2
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 3
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %9, align 8
  %29 = load i64, ptr %3, align 8
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i64, ptr %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %33, i32 noundef 4, i64 noundef %34) #4
  unreachable

35:                                               ; preds = %2
  %36 = load i64, ptr @C_timer_interrupt_counter, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, ptr @C_timer_interrupt_counter, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @C_raise_interrupt(i32 noundef 255)
  br label %40

40:                                               ; preds = %39, %35
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
  store ptr %41, ptr %13, align 8
  %42 = load ptr, ptr %13, align 8
  store ptr %42, ptr %14, align 8
  %43 = load ptr, ptr %14, align 8
  %44 = load ptr, ptr @C_stack_limit, align 8
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp sgt i64 %49, 2
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 2
  %53 = add nuw nsw i32 5, %52
  %54 = zext nneg i32 %53 to i64
  %55 = load i64, ptr @C_scratch_usage, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %48, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = zext nneg i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, ptr %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_801, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_808 to i64), ptr %70, align 8
  %71 = load i64, ptr %7, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %5, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store ptr %83, ptr %12, align 8
  %84 = load i64, ptr %5, align 8
  store i64 %84, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.66)
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 23), align 8
  %86 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 23), align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 0
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %10, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %8, align 8
  %98 = load ptr, ptr %16, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = load ptr, ptr %16, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_828(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %6, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 1
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %7, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 2
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %8, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 3
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %9, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds i64, ptr %34, i64 4
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %10, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 5
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %11, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 6
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %12, align 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp ne i64 %43, 7
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %47, i32 noundef 7, i64 noundef %48) #4
  unreachable

49:                                               ; preds = %2
  %50 = load i64, ptr @C_timer_interrupt_counter, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, ptr @C_timer_interrupt_counter, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @C_raise_interrupt(i32 noundef 255)
  br label %54

54:                                               ; preds = %53, %49
  %55 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
  store ptr %55, ptr %18, align 8
  %56 = load ptr, ptr %18, align 8
  store ptr %56, ptr %19, align 8
  %57 = load ptr, ptr %19, align 8
  %58 = load ptr, ptr @C_stack_limit, align 8
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = load i64, ptr %3, align 8
  %64 = icmp sgt i64 %63, 2
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 2
  %67 = add nuw nsw i32 10, %66
  %68 = zext nneg i32 %67 to i64
  %69 = load i64, ptr @C_scratch_usage, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp sgt i64 %62, %70
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = zext nneg i32 %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %54
  %77 = load i64, ptr %3, align 8
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_828, i32 noundef %78, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %54
  %81 = alloca i8, i64 80, align 16
  store ptr %81, ptr %17, align 8
  store i64 30, ptr %13, align 8
  %82 = load ptr, ptr %17, align 8
  store i64 1, ptr %82, align 8
  %83 = load i64, ptr %13, align 8
  %84 = load ptr, ptr %17, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %17, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %5, align 8
  %88 = load ptr, ptr %17, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store ptr %89, ptr %17, align 8
  %90 = load i64, ptr %5, align 8
  store i64 %90, ptr %14, align 8
  %91 = load ptr, ptr %17, align 8
  store i64 2594073385365405703, ptr %91, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 ptrtoint (ptr @f_833 to i64), ptr %93, align 8
  %94 = load i64, ptr %14, align 8
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %9, align 8
  %98 = load ptr, ptr %17, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %12, align 8
  %101 = load ptr, ptr %17, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 5
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %7, align 8
  %107 = load ptr, ptr %17, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %11, align 8
  %110 = load ptr, ptr %17, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 7
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %17, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %17, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 8
  store ptr %115, ptr %17, align 8
  %116 = load i64, ptr %5, align 8
  store i64 %116, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.69)
  %117 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 29), align 8
  %118 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %117)
  store ptr %118, ptr %20, align 8
  %119 = load ptr, ptr %4, align 8
  store ptr %119, ptr %21, align 8
  %120 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 29), align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %21, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 0
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %15, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %20, align 8
  %130 = load ptr, ptr %21, align 8
  call void %129(i64 noundef 2, ptr noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_956(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds i64, ptr %20, i64 0
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %6, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 1
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %7, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 3
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %9, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 4
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %10, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 5
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %11, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 6
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %12, align 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp ne i64 %41, 7
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i64, ptr %3, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %45, i32 noundef 7, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %2
  %48 = load i64, ptr @C_timer_interrupt_counter, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, ptr @C_timer_interrupt_counter, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @C_raise_interrupt(i32 noundef 255)
  br label %52

52:                                               ; preds = %51, %47
  %53 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
  store ptr %53, ptr %16, align 8
  %54 = load ptr, ptr %16, align 8
  store ptr %54, ptr %17, align 8
  %55 = load ptr, ptr %17, align 8
  %56 = load ptr, ptr @C_stack_limit, align 8
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = load i64, ptr %3, align 8
  %62 = icmp sgt i64 %61, 2
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 2
  %65 = add nuw nsw i32 8, %64
  %66 = zext nneg i32 %65 to i64
  %67 = load i64, ptr @C_scratch_usage, align 8
  %68 = add nsw i64 %66, %67
  %69 = icmp sgt i64 %60, %68
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = zext nneg i32 %71 to i64
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i64, ptr %3, align 8
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_956, i32 noundef %76, ptr noundef %77) #4
  unreachable

78:                                               ; preds = %52
  %79 = alloca i8, i64 64, align 16
  store ptr %79, ptr %15, align 8
  %80 = load ptr, ptr %15, align 8
  store i64 2594073385365405703, ptr %80, align 8
  %81 = load ptr, ptr %15, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_960 to i64), ptr %82, align 8
  %83 = load i64, ptr %7, align 8
  %84 = load ptr, ptr %15, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load ptr, ptr %15, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %15, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %10, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %11, align 8
  %96 = load ptr, ptr %15, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 6
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %12, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %15, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 8
  store ptr %104, ptr %15, align 8
  %105 = load i64, ptr %5, align 8
  store i64 %105, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.84)
  %106 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 44), align 16
  %107 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %106)
  store ptr %107, ptr %18, align 8
  %108 = load ptr, ptr %4, align 8
  store ptr %108, ptr %19, align 8
  %109 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 44), align 16
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %19, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %13, align 8
  %116 = load ptr, ptr %19, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %12, align 8
  %119 = load ptr, ptr %19, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %18, align 8
  %122 = load ptr, ptr %19, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

declare i64 @C_mutate_slot(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc ptr @C_fast_retrieve_proc(i64 noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 3
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i64, ptr %3, align 8
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %struct.C_block_struct, ptr %9, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, -72057594037927936
  %13 = icmp ne i64 %12, 2594073385365405696
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %1
  store ptr @C_invalid_procedure, ptr %2, align 8
  br label %22

15:                                               ; preds = %7
  %16 = load i64, ptr %3, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = getelementptr inbounds %struct.C_block_struct, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds [0 x i64], ptr %18, i64 0, i64 0
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %20 to ptr
  store ptr %21, ptr %2, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load ptr, ptr %2, align 8
  ret ptr %23
}

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #2

declare i64 @C_i_car(i64 noundef) local_unnamed_addr #1

declare i64 @C_i_cdr(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_values(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_660(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 0
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %6, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %7, align 8
  %27 = load i64, ptr @C_timer_interrupt_counter, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr @C_timer_interrupt_counter, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %31

31:                                               ; preds = %30, %2
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
  store ptr %32, ptr %14, align 8
  %33 = load ptr, ptr %14, align 8
  store ptr %33, ptr %15, align 8
  %34 = load ptr, ptr %15, align 8
  %35 = load ptr, ptr @C_stack_limit, align 8
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = load i64, ptr %3, align 8
  %41 = icmp sgt i64 %40, 4
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 4
  %44 = add nuw nsw i32 6, %43
  %45 = zext nneg i32 %44 to i64
  %46 = load i64, ptr @C_scratch_usage, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp sgt i64 %39, %47
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i64, ptr %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_660, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  %58 = alloca i8, i64 48, align 16
  store ptr %58, ptr %13, align 8
  %59 = load i64, ptr %7, align 8
  %60 = call i64 @C_i_car(i64 noundef %59)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_i_cdr(i64 noundef %61)
  store i64 %62, ptr %9, align 8
  %63 = load ptr, ptr %13, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %16, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 216172782113783810, ptr %66, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load i64, ptr %16, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 0
  store i64 %69, ptr %73, align 8
  %74 = load i64, ptr %16, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds %struct.C_block_struct, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds [0 x i64], ptr %76, i64 0, i64 1
  store i64 14, ptr %77, align 8
  %78 = load i64, ptr %16, align 8
  store i64 %78, ptr %17, align 8
  %79 = load i64, ptr %17, align 8
  store i64 %79, ptr %10, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %18, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  store i64 216172782113783810, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store ptr %85, ptr %13, align 8
  %86 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 6), align 16
  %87 = load i64, ptr %18, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds %struct.C_block_struct, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds [0 x i64], ptr %89, i64 0, i64 0
  store i64 %86, ptr %90, align 8
  %91 = load i64, ptr %10, align 8
  %92 = load i64, ptr %18, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds %struct.C_block_struct, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds [0 x i64], ptr %94, i64 0, i64 1
  store i64 %91, ptr %95, align 8
  %96 = load i64, ptr %18, align 8
  store i64 %96, ptr %19, align 8
  %97 = load i64, ptr %19, align 8
  store i64 %97, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.61)
  %98 = load i64, ptr %3, align 8
  %99 = icmp sge i64 %98, 5
  br i1 %99, label %100, label %102

100:                                              ; preds = %57
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %20, align 8
  br label %104

102:                                              ; preds = %57
  %103 = alloca i8, i64 40, align 16
  store ptr %103, ptr %20, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = load ptr, ptr %20, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 0
  store i64 0, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %20, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %20, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 22, ptr %114, align 8
  %115 = load i64, ptr %8, align 8
  %116 = load ptr, ptr %20, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %11, align 8
  %119 = load ptr, ptr %20, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 4
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %20, align 8
  call void @C_values(i64 noundef 5, ptr noundef %121) #4
  unreachable
}

declare i64 @C_i_length(i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_790(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
  store ptr %27, ptr %11, align 8
  %28 = load ptr, ptr %11, align 8
  store ptr %28, ptr %12, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 4
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
  %39 = add nuw nsw i32 3, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_790, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 24, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_i_lessp(i64 noundef %57, i64 noundef %58)
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %114

61:                                               ; preds = %52
  %62 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %62, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_799 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.65)
  %76 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), align 8
  %77 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 5
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %61
  %83 = alloca i8, i64 40, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 5, ptr noundef %113) #4
  unreachable

114:                                              ; preds = %52
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  %118 = load i64, ptr %117, align 8
  store i64 %118, ptr %8, align 8
  %119 = load ptr, ptr %4, align 8
  store ptr %119, ptr %15, align 8
  %120 = load i64, ptr %8, align 8
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 0
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %15, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 6, ptr %124, align 8
  %125 = load i64, ptr %8, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  %128 = load i64, ptr %127, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = load ptr, ptr %15, align 8
  call void %129(i64 noundef 2, ptr noundef %130) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_fast_retrieve(i64 noundef %0) unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = getelementptr inbounds %struct.C_block_struct, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds [0 x i64], ptr %6, i64 0, i64 0
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = icmp eq i64 %9, 46
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, ptr %2, align 8
  call void @C_unbound_variable(i64 noundef %12)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, ptr %3, align 8
  ret i64 %14
}

declare i64 @C_i_lessp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_799(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  %36 = add nuw nsw i32 0, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_799, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %6, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %8, align 8
  %54 = load ptr, ptr %4, align 8
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %8, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 %55, ptr %57, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 22, ptr %59, align 8
  %60 = load i64, ptr %8, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %62, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = load ptr, ptr %12, align 8
  call void %64(i64 noundef 2, ptr noundef %65) #4
  unreachable
}

declare void @C_unbound_variable(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_808(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 0
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %7, align 8
  %24 = load i64, ptr @C_timer_interrupt_counter, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr @C_timer_interrupt_counter, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
  store ptr %29, ptr %11, align 8
  %30 = load ptr, ptr %11, align 8
  store ptr %30, ptr %12, align 8
  %31 = load ptr, ptr %12, align 8
  %32 = load ptr, ptr @C_stack_limit, align 8
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load i64, ptr %3, align 8
  %38 = icmp sgt i64 %37, 4
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 4
  %41 = add nuw nsw i32 3, %40
  %42 = zext nneg i32 %41 to i64
  %43 = load i64, ptr @C_scratch_usage, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp sgt i64 %36, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = zext nneg i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i64, ptr %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_808, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 24, align 16
  store ptr %55, ptr %10, align 8
  %56 = load i64, ptr %7, align 8
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  call void @C_trace(ptr noundef @.str.67)
  %59 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), align 16
  %60 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %59)
  store ptr %60, ptr %13, align 8
  %61 = load i64, ptr %3, align 8
  %62 = icmp sge i64 %61, 5
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load ptr, ptr %4, align 8
  store ptr %64, ptr %14, align 8
  br label %67

65:                                               ; preds = %58
  %66 = alloca i8, i64 40, align 16
  store ptr %66, ptr %14, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 20), align 16
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 0
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store i64 14, ptr %93, align 8
  %94 = load ptr, ptr %13, align 8
  %95 = load ptr, ptr %14, align 8
  call void %94(i64 noundef 5, ptr noundef %95) #4
  unreachable

96:                                               ; preds = %54
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = call i64 @C_i_listp(i64 noundef %100)
  %102 = icmp ne i64 %101, 6
  br i1 %102, label %103, label %150

103:                                              ; preds = %96
  %104 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %104, align 8
  %105 = load ptr, ptr %10, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 ptrtoint (ptr @f_820 to i64), ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %10, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %5, align 8
  %115 = load ptr, ptr %10, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store ptr %116, ptr %10, align 8
  %117 = load i64, ptr %5, align 8
  store i64 %117, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.68)
  %118 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 22), align 16
  %119 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %118)
  store ptr %119, ptr %15, align 8
  %120 = load i64, ptr %3, align 8
  %121 = icmp sge i64 %120, 4
  br i1 %121, label %122, label %124

122:                                              ; preds = %103
  %123 = load ptr, ptr %4, align 8
  store ptr %123, ptr %16, align 8
  br label %126

124:                                              ; preds = %103
  %125 = alloca i8, i64 32, align 16
  store ptr %125, ptr %16, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 22), align 16
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 0
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %8, align 8
  %134 = load ptr, ptr %16, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 4
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %16, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 3
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %16, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 %145, ptr %147, align 8
  %148 = load ptr, ptr %15, align 8
  %149 = load ptr, ptr %16, align 8
  call void %148(i64 noundef 4, ptr noundef %149) #4
  unreachable

150:                                              ; preds = %96
  %151 = load i64, ptr %6, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 2
  %154 = load i64, ptr %153, align 8
  store i64 %154, ptr %8, align 8
  %155 = load ptr, ptr %4, align 8
  store ptr %155, ptr %17, align 8
  %156 = load i64, ptr %8, align 8
  %157 = load ptr, ptr %17, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 0
  store i64 %156, ptr %158, align 8
  %159 = load ptr, ptr %17, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  store i64 14, ptr %160, align 8
  %161 = load i64, ptr %8, align 8
  %162 = inttoptr i64 %161 to ptr
  %163 = getelementptr inbounds i64, ptr %162, i64 1
  %164 = load i64, ptr %163, align 8
  %165 = inttoptr i64 %164 to ptr
  %166 = load ptr, ptr %17, align 8
  call void %165(i64 noundef 2, ptr noundef %166) #4
  unreachable
}

declare i64 @C_i_listp(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_820(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  %36 = add nuw nsw i32 0, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_820, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %6, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %8, align 8
  %54 = load ptr, ptr %4, align 8
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %8, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 %55, ptr %57, align 8
  %58 = load i64, ptr %7, align 8
  %59 = icmp ne i64 %58, 6
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_i_cdr(i64 noundef %61)
  br label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i64 [ %62, %60 ], [ 14, %63 ]
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = load ptr, ptr %12, align 8
  call void %72(i64 noundef 2, ptr noundef %73) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_833(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 1
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %7, align 8
  %25 = load i64, ptr @C_timer_interrupt_counter, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr @C_timer_interrupt_counter, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
  store ptr %30, ptr %17, align 8
  %31 = load ptr, ptr %17, align 8
  store ptr %31, ptr %18, align 8
  %32 = load ptr, ptr %18, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 3
  %42 = add nuw nsw i32 19, %41
  %43 = zext nneg i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = zext nneg i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_833, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 152, align 16
  store ptr %56, ptr %16, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %7, align 8
  %64 = call fastcc i64 @C_mutate(ptr noundef %62, i64 noundef %63)
  store i64 %64, ptr %8, align 8
  %65 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %65, align 8
  %66 = load ptr, ptr %16, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_834 to i64), ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %16, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %16, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 ptrtoint (ptr @li7 to i64), ptr %75, align 8
  %76 = load ptr, ptr %16, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %16, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store ptr %79, ptr %16, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 26), align 16
  %86 = call i64 @C_i_check_list_2(i64 noundef %84, i64 noundef %85)
  store i64 %86, ptr %10, align 8
  %87 = load ptr, ptr %16, align 8
  store i64 2594073385365405703, ptr %87, align 8
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 ptrtoint (ptr @f_844 to i64), ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %16, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %16, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %6, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 5
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 4
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %6, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 6
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %16, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 5
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %6, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %16, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 6
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 7
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %16, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 7
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %16, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 8
  store ptr %129, ptr %16, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %11, align 8
  store i64 30, ptr %12, align 8
  %131 = load ptr, ptr %16, align 8
  store i64 1, ptr %131, align 8
  %132 = load i64, ptr %12, align 8
  %133 = load ptr, ptr %16, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 %132, ptr %134, align 8
  %135 = load ptr, ptr %16, align 8
  %136 = ptrtoint ptr %135 to i64
  store i64 %136, ptr %5, align 8
  %137 = load ptr, ptr %16, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 2
  store ptr %138, ptr %16, align 8
  %139 = load i64, ptr %5, align 8
  store i64 %139, ptr %13, align 8
  %140 = load ptr, ptr %16, align 8
  store i64 2594073385365405700, ptr %140, align 8
  %141 = load ptr, ptr %16, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  store i64 ptrtoint (ptr @f_933 to i64), ptr %142, align 8
  %143 = load i64, ptr %13, align 8
  %144 = load ptr, ptr %16, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %9, align 8
  %147 = load ptr, ptr %16, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %16, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 4
  store i64 ptrtoint (ptr @li13 to i64), ptr %150, align 8
  %151 = load ptr, ptr %16, align 8
  %152 = ptrtoint ptr %151 to i64
  store i64 %152, ptr %5, align 8
  %153 = load ptr, ptr %16, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 5
  store ptr %154, ptr %16, align 8
  %155 = load i64, ptr %5, align 8
  %156 = load i64, ptr %13, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds %struct.C_block_struct, ptr %157, i32 0, i32 1
  %159 = getelementptr inbounds [0 x i64], ptr %158, i64 0, i64 0
  store i64 %155, ptr %159, align 8
  store i64 %155, ptr %14, align 8
  %160 = load i64, ptr %13, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  %163 = load i64, ptr %162, align 8
  store i64 %163, ptr %15, align 8
  %164 = load i64, ptr %15, align 8
  %165 = load i64, ptr %11, align 8
  %166 = load i64, ptr %6, align 8
  %167 = inttoptr i64 %166 to ptr
  %168 = getelementptr inbounds i64, ptr %167, i64 3
  %169 = load i64, ptr %168, align 8
  call void @f_933(i64 noundef %164, i64 noundef %165, i64 noundef %169) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_834(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [5 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %14 = load i64, ptr @C_timer_interrupt_counter, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr @C_timer_interrupt_counter, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %18

18:                                               ; preds = %17, %3
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
  store ptr %19, ptr %10, align 8
  %20 = load ptr, ptr %10, align 8
  store ptr %20, ptr %11, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = load ptr, ptr @C_stack_limit, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i64, ptr @C_scratch_usage, align 8
  %28 = add nsw i64 4, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = zext nneg i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_834, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  call void @C_trace(ptr noundef @.str.70)
  %39 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), align 8
  %40 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %39)
  store ptr %40, ptr %12, align 8
  %41 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 19), align 8
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 0
  store i64 %44, ptr %45, align 16
  %46 = load i64, ptr %5, align 8
  %47 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 1
  store i64 %46, ptr %47, align 8
  %48 = load i64, ptr %4, align 8
  %49 = inttoptr i64 %48 to ptr
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  %51 = load i64, ptr %50, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 2
  store i64 %54, ptr %55, align 16
  %56 = load i64, ptr %6, align 8
  %57 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 3
  store i64 %56, ptr %57, align 8
  %58 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 25), align 8
  %59 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 4
  store i64 %58, ptr %59, align 16
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 0
  call void %60(i64 noundef 5, ptr noundef %61) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_844(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 1
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %7, align 8
  %25 = load i64, ptr @C_timer_interrupt_counter, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr @C_timer_interrupt_counter, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
  store ptr %30, ptr %15, align 8
  %31 = load ptr, ptr %15, align 8
  store ptr %31, ptr %16, align 8
  %32 = load ptr, ptr %16, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 4
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 4
  %42 = add nuw nsw i32 17, %41
  %43 = zext nneg i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = zext nneg i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_844, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 136, align 16
  store ptr %56, ptr %14, align 8
  store i64 30, ptr %8, align 8
  %57 = load ptr, ptr %14, align 8
  store i64 1, ptr %57, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 %58, ptr %60, align 8
  %61 = load ptr, ptr %14, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %5, align 8
  %63 = load ptr, ptr %14, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  store ptr %64, ptr %14, align 8
  %65 = load i64, ptr %5, align 8
  store i64 %65, ptr %9, align 8
  %66 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %66, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_848 to i64), ptr %68, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 5
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 6
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 7
  store ptr %99, ptr %14, align 8
  %100 = load i64, ptr %5, align 8
  store i64 %100, ptr %10, align 8
  %101 = load ptr, ptr %14, align 8
  store i64 2594073385365405698, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_923 to i64), ptr %103, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %105, align 8
  %106 = load ptr, ptr %14, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %14, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store ptr %109, ptr %14, align 8
  %110 = load i64, ptr %5, align 8
  store i64 %110, ptr %11, align 8
  %111 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %111, align 8
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 ptrtoint (ptr @f_931 to i64), ptr %113, align 8
  %114 = load i64, ptr %10, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %11, align 8
  %118 = load ptr, ptr %14, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 6
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %14, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 4
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %14, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 5
  store ptr %129, ptr %14, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.71)
  %131 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 4), align 16
  %132 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %131)
  store ptr %132, ptr %17, align 8
  %133 = load i64, ptr %3, align 8
  %134 = icmp sge i64 %133, 3
  br i1 %134, label %135, label %137

135:                                              ; preds = %55
  %136 = load ptr, ptr %4, align 8
  store ptr %136, ptr %18, align 8
  br label %139

137:                                              ; preds = %55
  %138 = alloca i8, i64 24, align 16
  store ptr %138, ptr %18, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 4), align 16
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %18, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 0
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %12, align 8
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  store i64 %146, ptr %148, align 8
  %149 = load i64, ptr %6, align 8
  %150 = inttoptr i64 %149 to ptr
  %151 = getelementptr inbounds i64, ptr %150, i64 7
  %152 = load i64, ptr %151, align 8
  %153 = load ptr, ptr %18, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 2
  store i64 %152, ptr %154, align 8
  %155 = load ptr, ptr %17, align 8
  %156 = load ptr, ptr %18, align 8
  call void %155(i64 noundef 3, ptr noundef %156) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_933(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %14 = load i64, ptr @C_timer_interrupt_counter, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr @C_timer_interrupt_counter, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %18

18:                                               ; preds = %17, %3
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
  store ptr %19, ptr %11, align 8
  %20 = load ptr, ptr %11, align 8
  store ptr %20, ptr %12, align 8
  %21 = load ptr, ptr %12, align 8
  %22 = load ptr, ptr @C_stack_limit, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i64, ptr @C_scratch_usage, align 8
  %28 = add nsw i64 7, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = zext nneg i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_933, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call fastcc i64 @C_i_pairp(i64 noundef %40), !range !36
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_943 to i64), ptr %46, align 8
  %47 = load i64, ptr %4, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %5, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %7, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 5
  store ptr %62, ptr %10, align 8
  %63 = load i64, ptr %7, align 8
  store i64 %63, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.83)
  %64 = load i64, ptr %4, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %9, align 8
  %68 = load i64, ptr %9, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 0
  %74 = load i64, ptr %73, align 8
  call void @f_834(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
  unreachable

75:                                               ; preds = %38
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %8, align 8
  %78 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %77, ptr %78, align 16
  %79 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 30, ptr %79, align 8
  %80 = load i64, ptr %8, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %84(i64 noundef 2, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_834(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i64, ptr %11, i64 1
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %6, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %7, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load i64, ptr %7, align 8
  call void @f_834(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_848(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
  store ptr %27, ptr %14, align 8
  %28 = load ptr, ptr %14, align 8
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 4
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
  %39 = add nuw nsw i32 9, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_848, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %13, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  %60 = load i64, ptr %7, align 8
  %61 = call fastcc i64 @C_mutate(ptr noundef %59, i64 noundef %60)
  store i64 %61, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %62 = load ptr, ptr %13, align 8
  store i64 1, ptr %62, align 8
  %63 = load i64, ptr %9, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store ptr %69, ptr %13, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %10, align 8
  %71 = load ptr, ptr %13, align 8
  store i64 2594073385365405702, ptr %71, align 8
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 ptrtoint (ptr @f_853 to i64), ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 5
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 6
  store i64 ptrtoint (ptr @li11 to i64), ptr %96, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  store ptr %100, ptr %13, align 8
  %101 = load i64, ptr %5, align 8
  %102 = load i64, ptr %10, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds %struct.C_block_struct, ptr %103, i32 0, i32 1
  %105 = getelementptr inbounds [0 x i64], ptr %104, i64 0, i64 0
  store i64 %101, ptr %105, align 8
  store i64 %101, ptr %11, align 8
  %106 = load i64, ptr %10, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  store i64 %109, ptr %12, align 8
  %110 = load i64, ptr %12, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 6
  %114 = load i64, ptr %113, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  %118 = load i64, ptr %117, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  call void @f_853(i64 noundef %110, i64 noundef %114, i64 noundef %121, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_923(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %8, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 3
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %9, align 8
  %28 = load i64, ptr %3, align 8
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i64, ptr %3, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %32, i32 noundef 4, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %2
  %35 = load i64, ptr @C_timer_interrupt_counter, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr @C_timer_interrupt_counter, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @C_raise_interrupt(i32 noundef 255)
  br label %39

39:                                               ; preds = %38, %34
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !38
  store ptr %40, ptr %12, align 8
  %41 = load ptr, ptr %12, align 8
  store ptr %41, ptr %13, align 8
  %42 = load ptr, ptr %13, align 8
  %43 = load ptr, ptr @C_stack_limit, align 8
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = load i64, ptr %3, align 8
  %49 = icmp sgt i64 %48, 3
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 3
  %52 = add nuw nsw i32 0, %51
  %53 = zext nneg i32 %52 to i64
  %54 = load i64, ptr @C_scratch_usage, align 8
  %55 = add nsw i64 %53, %54
  %56 = icmp sgt i64 %47, %55
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = zext nneg i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %39
  %62 = load i64, ptr %3, align 8
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_923, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  call void @C_trace(ptr noundef @.str.81)
  %66 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %67 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %66)
  store ptr %67, ptr %14, align 8
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %15, align 8
  %69 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = load ptr, ptr %15, align 8
  call void %84(i64 noundef 4, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_931(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !39
  store ptr %25, ptr %10, align 8
  %26 = load ptr, ptr %10, align 8
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 0, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_931, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.82)
  %51 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), align 8
  %52 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 5
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 40, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = load ptr, ptr %13, align 8
  call void %87(i64 noundef 5, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_853(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [2 x i64], align 16
  %17 = alloca ptr, align 8
  %18 = alloca [3 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %4
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
  store ptr %24, ptr %14, align 8
  %25 = load ptr, ptr %14, align 8
  store ptr %25, ptr %15, align 8
  %26 = load ptr, ptr %15, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr @C_scratch_usage, align 8
  %33 = add nsw i64 10, %32
  %34 = icmp sgt i64 %31, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = zext nneg i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_853, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 64, align 16
  store ptr %45, ptr %13, align 8
  %46 = load i64, ptr %8, align 8
  %47 = load i64, ptr %5, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = call i64 @C_i_greater_or_equalp(i64 noundef %46, i64 noundef %50)
  store i64 %51, ptr %10, align 8
  %52 = load ptr, ptr %13, align 8
  store i64 2594073385365405703, ptr %52, align 8
  %53 = load ptr, ptr %13, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_863 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  store i64 %55, ptr %57, align 8
  %58 = load i64, ptr %5, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %7, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 5
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %5, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 6
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %5, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 7
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %9, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 8
  store ptr %85, ptr %13, align 8
  %86 = load i64, ptr %9, align 8
  store i64 %86, ptr %11, align 8
  %87 = load i64, ptr %10, align 8
  %88 = icmp ne i64 %87, 6
  br i1 %88, label %89, label %96

89:                                               ; preds = %44
  %90 = load i64, ptr %11, align 8
  store i64 %90, ptr %12, align 8
  %91 = load i64, ptr %12, align 8
  %92 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %91, ptr %92, align 16
  %93 = load i64, ptr %10, align 8
  %94 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %93, ptr %94, align 8
  %95 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void @f_863(i64 noundef 2, ptr noundef %95) #4
  unreachable

96:                                               ; preds = %44
  call void @C_trace(ptr noundef @.str.72)
  %97 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 14), align 16
  %98 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %17, align 8
  %99 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 14), align 16
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %102, ptr %103, align 16
  %104 = load i64, ptr %11, align 8
  %105 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %104, ptr %105, align 8
  %106 = load i64, ptr %7, align 8
  %107 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %106, ptr %107, align 16
  %108 = load ptr, ptr %17, align 8
  %109 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %108(i64 noundef 3, ptr noundef %109) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_853(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds i64, ptr %9, i64 3
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds i64, ptr %12, i64 2
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 1
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %7, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 0
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %8, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %6, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load i64, ptr %8, align 8
  call void @f_853(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_863(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !41
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 5
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 5
  %39 = add nuw nsw i32 11, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_863, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 88, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %8, align 8
  %61 = load ptr, ptr %4, align 8
  store ptr %61, ptr %14, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %14, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %8, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  %77 = load i64, ptr %76, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = load ptr, ptr %14, align 8
  call void %78(i64 noundef 2, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %52
  %81 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %81, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 ptrtoint (ptr @f_868 to i64), ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 ptrtoint (ptr @li8 to i64), ptr %91, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %8, align 8
  %97 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %97, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 ptrtoint (ptr @f_874 to i64), ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %11, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 5
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 6
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %11, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 7
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %11, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 5
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %11, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 6
  store i64 ptrtoint (ptr @li10 to i64), ptr %125, align 8
  %126 = load ptr, ptr %11, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %11, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 7
  store ptr %129, ptr %11, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.73)
  %131 = load i64, ptr %3, align 8
  %132 = icmp sge i64 %131, 4
  br i1 %132, label %133, label %135

133:                                              ; preds = %80
  %134 = load ptr, ptr %4, align 8
  store ptr %134, ptr %15, align 8
  br label %137

135:                                              ; preds = %80
  %136 = alloca i8, i64 32, align 16
  store ptr %136, ptr %15, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = load ptr, ptr %15, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 0
  store i64 0, ptr %139, align 8
  %140 = load i64, ptr %6, align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %15, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 1
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %8, align 8
  %147 = load ptr, ptr %15, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 2
  store i64 %146, ptr %148, align 8
  %149 = load i64, ptr %9, align 8
  %150 = load ptr, ptr %15, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 3
  store i64 %149, ptr %151, align 8
  %152 = load ptr, ptr %15, align 8
  call void @C_call_with_values(i64 noundef 4, ptr noundef %152) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_868(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr %3, align 8
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, ptr %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %24, i32 noundef 2, i64 noundef %25) #4
  unreachable

26:                                               ; preds = %2
  %27 = load i64, ptr @C_timer_interrupt_counter, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr @C_timer_interrupt_counter, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @C_raise_interrupt(i32 noundef 255)
  br label %31

31:                                               ; preds = %30, %26
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
  store ptr %32, ptr %10, align 8
  %33 = load ptr, ptr %10, align 8
  store ptr %33, ptr %11, align 8
  %34 = load ptr, ptr %11, align 8
  %35 = load ptr, ptr @C_stack_limit, align 8
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = load i64, ptr %3, align 8
  %41 = icmp sgt i64 %40, 2
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 2
  %44 = add nuw nsw i32 0, %43
  %45 = zext nneg i32 %44 to i64
  %46 = load i64, ptr @C_scratch_usage, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp sgt i64 %39, %47
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i64, ptr %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_868, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.74)
  %58 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 11), align 8
  %59 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
  store ptr %59, ptr %12, align 8
  %60 = load i64, ptr %3, align 8
  %61 = icmp sge i64 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %13, align 8
  br label %66

64:                                               ; preds = %57
  %65 = alloca i8, i64 24, align 16
  store ptr %65, ptr %13, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 11), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = load ptr, ptr %13, align 8
  call void %82(i64 noundef 3, ptr noundef %83) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_874(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 1
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %7, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 2
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %8, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 3
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %9, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 4
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %10, align 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp ne i64 %34, 5
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i64, ptr %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %38, i32 noundef 5, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %2
  %41 = load i64, ptr @C_timer_interrupt_counter, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, ptr @C_timer_interrupt_counter, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @C_raise_interrupt(i32 noundef 255)
  br label %45

45:                                               ; preds = %44, %40
  %46 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
  store ptr %46, ptr %14, align 8
  %47 = load ptr, ptr %14, align 8
  store ptr %47, ptr %15, align 8
  %48 = load ptr, ptr %15, align 8
  %49 = load ptr, ptr @C_stack_limit, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sgt i64 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 3
  %58 = add nuw nsw i32 9, %57
  %59 = zext nneg i32 %58 to i64
  %60 = load i64, ptr @C_scratch_usage, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp sgt i64 %53, %61
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = zext nneg i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %45
  %68 = load i64, ptr %3, align 8
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_874, i32 noundef %69, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %45
  %72 = alloca i8, i64 72, align 16
  store ptr %72, ptr %13, align 8
  %73 = load i64, ptr %8, align 8
  %74 = icmp ne i64 %73, 6
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i64 6, i64 22
  %77 = icmp ne i64 %76, 6
  br i1 %77, label %78, label %99

78:                                               ; preds = %71
  %79 = load i64, ptr %7, align 8
  store i64 %79, ptr %11, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %16, align 8
  %81 = load i64, ptr %11, align 8
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %16, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %11, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = load ptr, ptr %16, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable

99:                                               ; preds = %71
  %100 = load ptr, ptr %13, align 8
  store i64 2594073385365405704, ptr %100, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 ptrtoint (ptr @f_884 to i64), ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %7, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %13, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 5
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %10, align 8
  %125 = load ptr, ptr %13, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 6
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %6, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 5
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %13, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 7
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %9, align 8
  %134 = load ptr, ptr %13, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 8
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %13, align 8
  %137 = ptrtoint ptr %136 to i64
  store i64 %137, ptr %5, align 8
  %138 = load ptr, ptr %13, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 9
  store ptr %139, ptr %13, align 8
  %140 = load i64, ptr %5, align 8
  store i64 %140, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.75)
  %141 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 28), align 16
  %142 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %141)
  store ptr %142, ptr %17, align 8
  %143 = load ptr, ptr %4, align 8
  store ptr %143, ptr %18, align 8
  %144 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 28), align 16
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  %147 = load i64, ptr %146, align 8
  %148 = load ptr, ptr %18, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 0
  store i64 %147, ptr %149, align 8
  %150 = load i64, ptr %11, align 8
  %151 = load ptr, ptr %18, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  store i64 %150, ptr %152, align 8
  %153 = load i64, ptr %6, align 8
  %154 = inttoptr i64 %153 to ptr
  %155 = getelementptr inbounds i64, ptr %154, i64 2
  %156 = load i64, ptr %155, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds i64, ptr %157, i64 1
  %159 = load i64, ptr %158, align 8
  %160 = load ptr, ptr %18, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 2
  store i64 %159, ptr %161, align 8
  %162 = load i64, ptr %9, align 8
  %163 = load ptr, ptr %18, align 8
  %164 = getelementptr inbounds i64, ptr %163, i64 3
  store i64 %162, ptr %164, align 8
  %165 = load ptr, ptr %17, align 8
  %166 = load ptr, ptr %18, align 8
  call void %165(i64 noundef 4, ptr noundef %166) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_call_with_values(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_884(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nuw nsw i32 8, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_884, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_887 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %7, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 8
  store ptr %92, ptr %10, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.76)
  %94 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 21), align 8
  %95 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
  store ptr %95, ptr %13, align 8
  %96 = load i64, ptr %3, align 8
  %97 = icmp sge i64 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %51
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %14, align 8
  br label %102

100:                                              ; preds = %51
  %101 = alloca i8, i64 32, align 16
  store ptr %101, ptr %14, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 21), align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %8, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 8
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %13, align 8
  %125 = load ptr, ptr %14, align 8
  call void %124(i64 noundef 4, ptr noundef %125) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_887(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 4
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
  %39 = add nuw nsw i32 10, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_887, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 80, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_890 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store ptr %78, ptr %11, align 8
  %79 = load i64, ptr %5, align 8
  store i64 %79, ptr %8, align 8
  %80 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %80, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_899 to i64), ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %11, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store i64 ptrtoint (ptr @li9 to i64), ptr %96, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store ptr %100, ptr %11, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.77)
  %102 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), align 8
  %103 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %102)
  store ptr %103, ptr %14, align 8
  %104 = load i64, ptr %3, align 8
  %105 = icmp sge i64 %104, 5
  br i1 %105, label %106, label %108

106:                                              ; preds = %52
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %15, align 8
  br label %110

108:                                              ; preds = %52
  %109 = alloca i8, i64 40, align 16
  store ptr %109, ptr %15, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 27), align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 0
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %8, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %9, align 8
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %6, align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 7
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %15, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 3
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %7, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 4
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %14, align 8
  %133 = load ptr, ptr %15, align 8
  call void %132(i64 noundef 5, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_890(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
  store ptr %24, ptr %11, align 8
  %25 = load ptr, ptr %11, align 8
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 3
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 3
  %36 = add nuw nsw i32 29, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_890, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 232, align 16
  store ptr %50, ptr %10, align 8
  %51 = load i64, ptr %6, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 2
  %54 = load i64, ptr %53, align 8
  %55 = call i64 @C_s_a_i_plus(ptr noundef %10, i64 noundef 2, i64 noundef %54, i64 noundef 3)
  store i64 %55, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.78)
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %9, align 8
  %63 = load i64, ptr %9, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load i64, ptr %8, align 8
  call void @f_853(i64 noundef %63, i64 noundef %67, i64 noundef %68, i64 noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_899(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds i64, ptr %20, i64 0
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %6, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 1
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %7, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 2
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 3
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %9, align 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i64, ptr %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %36, i32 noundef 4, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %2
  %39 = load i64, ptr @C_timer_interrupt_counter, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr @C_timer_interrupt_counter, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @C_raise_interrupt(i32 noundef 255)
  br label %43

43:                                               ; preds = %42, %38
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
  store ptr %44, ptr %16, align 8
  %45 = load ptr, ptr %16, align 8
  store ptr %45, ptr %17, align 8
  %46 = load ptr, ptr %17, align 8
  %47 = load ptr, ptr @C_stack_limit, align 8
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = load i64, ptr %3, align 8
  %53 = icmp sgt i64 %52, 4
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 4
  %56 = add nuw nsw i32 34, %55
  %57 = zext nneg i32 %56 to i64
  %58 = load i64, ptr @C_scratch_usage, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp sgt i64 %51, %59
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = zext nneg i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i64, ptr %3, align 8
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_899, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = alloca i8, i64 272, align 16
  store ptr %70, ptr %15, align 8
  %71 = load i64, ptr %8, align 8
  %72 = call i64 @C_i_car(i64 noundef %71)
  store i64 %72, ptr %10, align 8
  %73 = load i64, ptr %8, align 8
  %74 = call i64 @C_i_cdr(i64 noundef %73)
  store i64 %74, ptr %11, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  %78 = load i64, ptr %77, align 8
  %79 = load i64, ptr %11, align 8
  %80 = call i64 @C_s_a_i_plus(ptr noundef %15, i64 noundef 2, i64 noundef %78, i64 noundef %79)
  store i64 %80, ptr %12, align 8
  %81 = load ptr, ptr %15, align 8
  store i64 2594073385365405700, ptr %81, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 ptrtoint (ptr @f_915 to i64), ptr %83, align 8
  %84 = load i64, ptr %7, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %10, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 5
  store ptr %96, ptr %15, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.79)
  %98 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 18), align 16
  %99 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %98)
  store ptr %99, ptr %18, align 8
  %100 = load i64, ptr %3, align 8
  %101 = icmp sge i64 %100, 5
  br i1 %101, label %102, label %104

102:                                              ; preds = %69
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %19, align 8
  br label %106

104:                                              ; preds = %69
  %105 = alloca i8, i64 40, align 16
  store ptr %105, ptr %19, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 18), align 16
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %19, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 0
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %13, align 8
  %114 = load ptr, ptr %19, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  %119 = load i64, ptr %118, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %19, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %10, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %12, align 8
  %129 = load ptr, ptr %19, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 4
  store i64 %128, ptr %130, align 8
  %131 = load ptr, ptr %18, align 8
  %132 = load ptr, ptr %19, align 8
  call void %131(i64 noundef 5, ptr noundef %132) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_915(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
  store ptr %26, ptr %10, align 8
  %27 = load ptr, ptr %10, align 8
  store ptr %27, ptr %11, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nuw nsw i32 0, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_915, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.80)
  %55 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %56 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %55)
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %3, align 8
  %58 = icmp sge i64 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load ptr, ptr %4, align 8
  store ptr %60, ptr %13, align 8
  br label %63

61:                                               ; preds = %54
  %62 = alloca i8, i64 32, align 16
  store ptr %62, ptr %13, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 9), align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = load ptr, ptr %13, align 8
  call void %88(i64 noundef 4, ptr noundef %89) #4
  unreachable

90:                                               ; preds = %51
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  %94 = load i64, ptr %93, align 8
  store i64 %94, ptr %8, align 8
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %14, align 8
  %96 = load i64, ptr %8, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %8, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = load ptr, ptr %14, align 8
  call void %109(i64 noundef 2, ptr noundef %110) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_933(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i64, ptr %11, i64 1
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %6, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %7, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load i64, ptr %7, align 8
  call void @f_933(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_i_pairp(i64 noundef %0) unnamed_addr #3 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 3
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %2, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %struct.C_block_struct, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 216172782113783810
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i64 22, i64 6
  ret i64 %15
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_943(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 1
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr @C_timer_interrupt_counter, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, ptr @C_timer_interrupt_counter, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %22

22:                                               ; preds = %21, %2
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
  store ptr %23, ptr %10, align 8
  %24 = load ptr, ptr %10, align 8
  store ptr %24, ptr %11, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = load ptr, ptr @C_stack_limit, align 8
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = load i64, ptr %3, align 8
  %32 = icmp sgt i64 %31, 2
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 2
  %35 = add nuw nsw i32 0, %34
  %36 = zext nneg i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = zext nneg i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_943, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  %49 = load i64, ptr %6, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  %55 = load i64, ptr %54, align 8
  store i64 %55, ptr %8, align 8
  %56 = load i64, ptr %8, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 4
  %64 = load i64, ptr %63, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds %struct.C_block_struct, ptr %65, i32 0, i32 1
  %67 = getelementptr inbounds [0 x i64], ptr %66, i64 0, i64 1
  %68 = load i64, ptr %67, align 8
  call void @f_933(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_960(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add nuw nsw i32 9, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_960, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 72, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_963 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %7, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = ptrtoint ptr %95 to i64
  store i64 %96, ptr %5, align 8
  %97 = load ptr, ptr %10, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 9
  store ptr %98, ptr %10, align 8
  %99 = load i64, ptr %5, align 8
  store i64 %99, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.85)
  %100 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 43), align 8
  %101 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %100)
  store ptr %101, ptr %13, align 8
  %102 = load i64, ptr %3, align 8
  %103 = icmp sge i64 %102, 3
  br i1 %103, label %104, label %106

104:                                              ; preds = %51
  %105 = load ptr, ptr %4, align 8
  store ptr %105, ptr %14, align 8
  br label %108

106:                                              ; preds = %51
  %107 = alloca i8, i64 24, align 16
  store ptr %107, ptr %14, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 43), align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %8, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %7, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %13, align 8
  %122 = load ptr, ptr %14, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_963(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !51
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add nuw nsw i32 10, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_963, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 80, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405705, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_966 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 8
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %10, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 10
  store ptr %104, ptr %10, align 8
  %105 = load i64, ptr %5, align 8
  store i64 %105, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.86)
  %106 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 42), align 16
  %107 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %106)
  store ptr %107, ptr %13, align 8
  %108 = load i64, ptr %3, align 8
  %109 = icmp sge i64 %108, 3
  br i1 %109, label %110, label %112

110:                                              ; preds = %51
  %111 = load ptr, ptr %4, align 8
  store ptr %111, ptr %14, align 8
  br label %114

112:                                              ; preds = %51
  %113 = alloca i8, i64 24, align 16
  store ptr %113, ptr %14, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 42), align 16
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %8, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %13, align 8
  %131 = load ptr, ptr %14, align 8
  call void %130(i64 noundef 3, ptr noundef %131) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_966(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !52
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add nuw nsw i32 11, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_966, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 88, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_969 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 8
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 9
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %10, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 10
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %5, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 11
  store ptr %110, ptr %10, align 8
  %111 = load i64, ptr %5, align 8
  store i64 %111, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.87)
  %112 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 41), align 8
  %113 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %13, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 3
  br i1 %115, label %116, label %118

116:                                              ; preds = %51
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %14, align 8
  br label %120

118:                                              ; preds = %51
  %119 = alloca i8, i64 24, align 16
  store ptr %119, ptr %14, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 41), align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 0
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %8, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %13, align 8
  %137 = load ptr, ptr %14, align 8
  call void %136(i64 noundef 3, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_969(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 4
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
  %39 = add nuw nsw i32 13, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_969, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 31), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405708, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_972 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 6
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 7
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 8
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %11, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 8
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 9
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 9
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %8, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 10
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %7, align 8
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 11
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 10
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %11, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 12
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %11, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %5, align 8
  %123 = load ptr, ptr %11, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 13
  store ptr %124, ptr %11, align 8
  %125 = load i64, ptr %5, align 8
  store i64 %125, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.88)
  %126 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 39), align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %129)
  store ptr %130, ptr %14, align 8
  %131 = load i64, ptr %3, align 8
  %132 = icmp sge i64 %131, 5
  br i1 %132, label %133, label %135

133:                                              ; preds = %52
  %134 = load ptr, ptr %4, align 8
  store ptr %134, ptr %15, align 8
  br label %137

135:                                              ; preds = %52
  %136 = alloca i8, i64 40, align 16
  store ptr %136, ptr %15, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 39), align 8
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %15, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 0
  store i64 %141, ptr %143, align 8
  %144 = load i64, ptr %9, align 8
  %145 = load ptr, ptr %15, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  store i64 %144, ptr %146, align 8
  %147 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 31), align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  %151 = load ptr, ptr %15, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 2
  store i64 %150, ptr %152, align 8
  %153 = load ptr, ptr %15, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 3
  store i64 22, ptr %154, align 8
  %155 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 40), align 16
  %156 = load ptr, ptr %15, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 4
  store i64 %155, ptr %157, align 8
  %158 = load ptr, ptr %14, align 8
  %159 = load ptr, ptr %15, align 8
  call void %158(i64 noundef 5, ptr noundef %159) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_972(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 13, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_972, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 104, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405708, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_975 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 11
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %10, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 11
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 12
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %10, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 12
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %10, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %5, align 8
  %123 = load ptr, ptr %10, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 13
  store ptr %124, ptr %10, align 8
  %125 = load i64, ptr %5, align 8
  store i64 %125, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %126 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  store i64 %129, ptr %9, align 8
  %130 = load i64, ptr %3, align 8
  %131 = icmp sge i64 %130, 5
  br i1 %131, label %132, label %134

132:                                              ; preds = %50
  %133 = load ptr, ptr %4, align 8
  store ptr %133, ptr %13, align 8
  br label %136

134:                                              ; preds = %50
  %135 = alloca i8, i64 40, align 16
  store ptr %135, ptr %13, align 8
  br label %136

136:                                              ; preds = %134, %132
  %137 = load i64, ptr %9, align 8
  %138 = load ptr, ptr %13, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 0
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr %8, align 8
  %141 = load ptr, ptr %13, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 38), align 16
  %144 = load ptr, ptr %13, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 %143, ptr %145, align 8
  %146 = load ptr, ptr %13, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 6, ptr %147, align 8
  %148 = load i64, ptr %6, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 10
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %13, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 4
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %9, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  %157 = load i64, ptr %156, align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = load ptr, ptr %13, align 8
  call void %158(i64 noundef 5, ptr noundef %159) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_975(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 3
  %39 = add nuw nsw i32 16, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_975, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 128, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405707, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_978 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 7
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 8
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 8
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 9
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 10
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 10
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 11
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %11, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 11
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %11, align 8
  %118 = ptrtoint ptr %117 to i64
  store i64 %118, ptr %5, align 8
  %119 = load ptr, ptr %11, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 12
  store ptr %120, ptr %11, align 8
  %121 = load i64, ptr %5, align 8
  store i64 %121, ptr %8, align 8
  %122 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %122, align 8
  %123 = load ptr, ptr %11, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 ptrtoint (ptr @f_1013 to i64), ptr %124, align 8
  %125 = load i64, ptr %8, align 8
  %126 = load ptr, ptr %11, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %6, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 10
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %11, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %11, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %5, align 8
  %136 = load ptr, ptr %11, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 4
  store ptr %137, ptr %11, align 8
  %138 = load i64, ptr %5, align 8
  store i64 %138, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.90)
  %139 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), align 16
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  %142 = load i64, ptr %141, align 8
  %143 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %142)
  store ptr %143, ptr %14, align 8
  %144 = load i64, ptr %3, align 8
  %145 = icmp sge i64 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %52
  %147 = load ptr, ptr %4, align 8
  store ptr %147, ptr %15, align 8
  br label %150

148:                                              ; preds = %52
  %149 = alloca i8, i64 32, align 16
  store ptr %149, ptr %15, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), align 16
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  %154 = load i64, ptr %153, align 8
  %155 = load ptr, ptr %15, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 0
  store i64 %154, ptr %156, align 8
  %157 = load i64, ptr %9, align 8
  %158 = load ptr, ptr %15, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  store i64 %157, ptr %159, align 8
  %160 = load i64, ptr %6, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 12
  %163 = load i64, ptr %162, align 8
  %164 = load ptr, ptr %15, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 2
  store i64 %163, ptr %165, align 8
  %166 = load ptr, ptr %15, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 3
  store i64 33, ptr %167, align 8
  %168 = load ptr, ptr %14, align 8
  %169 = load ptr, ptr %15, align 8
  call void %168(i64 noundef 4, ptr noundef %169) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_978(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 12, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_978, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 96, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405707, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_981 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 11
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %10, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 11
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %10, align 8
  %116 = ptrtoint ptr %115 to i64
  store i64 %116, ptr %5, align 8
  %117 = load ptr, ptr %10, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 12
  store ptr %118, ptr %10, align 8
  %119 = load i64, ptr %5, align 8
  store i64 %119, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %120 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = load i64, ptr %122, align 8
  store i64 %123, ptr %9, align 8
  %124 = load i64, ptr %3, align 8
  %125 = icmp sge i64 %124, 5
  br i1 %125, label %126, label %128

126:                                              ; preds = %50
  %127 = load ptr, ptr %4, align 8
  store ptr %127, ptr %13, align 8
  br label %130

128:                                              ; preds = %50
  %129 = alloca i8, i64 40, align 16
  store ptr %129, ptr %13, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i64, ptr %9, align 8
  %132 = load ptr, ptr %13, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 0
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %8, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 1
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 37), align 8
  %138 = load ptr, ptr %13, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  store i64 %137, ptr %139, align 8
  %140 = load ptr, ptr %13, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 3
  store i64 6, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 10
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %13, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 4
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %9, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 1
  %151 = load i64, ptr %150, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = load ptr, ptr %13, align 8
  call void %152(i64 noundef 5, ptr noundef %153) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1013(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 4
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 4
  %36 = add nuw nsw i32 0, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1013, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.89)
  %50 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 1
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %8, align 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sge i64 %54, 5
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8
  store ptr %57, ptr %12, align 8
  br label %60

58:                                               ; preds = %49
  %59 = alloca i8, i64 40, align 16
  store ptr %59, ptr %12, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i64, ptr %8, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 6, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = load ptr, ptr %12, align 8
  call void %85(i64 noundef 5, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_981(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 0
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %6, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 3
  %39 = add nuw nsw i32 15, %38
  %40 = zext nneg i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_981, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 120, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405706, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_984 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 7
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 8
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 8
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 9
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 10
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 10
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %11, align 8
  %112 = ptrtoint ptr %111 to i64
  store i64 %112, ptr %5, align 8
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 11
  store ptr %114, ptr %11, align 8
  %115 = load i64, ptr %5, align 8
  store i64 %115, ptr %8, align 8
  %116 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %116, align 8
  %117 = load ptr, ptr %11, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  store i64 ptrtoint (ptr @f_1009 to i64), ptr %118, align 8
  %119 = load i64, ptr %8, align 8
  %120 = load ptr, ptr %11, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %6, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 10
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %11, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store i64 %125, ptr %127, align 8
  %128 = load ptr, ptr %11, align 8
  %129 = ptrtoint ptr %128 to i64
  store i64 %129, ptr %5, align 8
  %130 = load ptr, ptr %11, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 4
  store ptr %131, ptr %11, align 8
  %132 = load i64, ptr %5, align 8
  store i64 %132, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.90)
  %133 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), align 16
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  %137 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %136)
  store ptr %137, ptr %14, align 8
  %138 = load i64, ptr %3, align 8
  %139 = icmp sge i64 %138, 4
  br i1 %139, label %140, label %142

140:                                              ; preds = %52
  %141 = load ptr, ptr %4, align 8
  store ptr %141, ptr %15, align 8
  br label %144

142:                                              ; preds = %52
  %143 = alloca i8, i64 32, align 16
  store ptr %143, ptr %15, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 36), align 16
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = load ptr, ptr %15, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 0
  store i64 %148, ptr %150, align 8
  %151 = load i64, ptr %9, align 8
  %152 = load ptr, ptr %15, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %6, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 11
  %157 = load i64, ptr %156, align 8
  %158 = load ptr, ptr %15, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 2
  store i64 %157, ptr %159, align 8
  %160 = load ptr, ptr %15, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 3
  store i64 33, ptr %161, align 8
  %162 = load ptr, ptr %14, align 8
  %163 = load ptr, ptr %15, align 8
  call void %162(i64 noundef 4, ptr noundef %163) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_984(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 11, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_984, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 88, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_987 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 11
  store ptr %112, ptr %10, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %114 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  store i64 %117, ptr %9, align 8
  %118 = load i64, ptr %3, align 8
  %119 = icmp sge i64 %118, 5
  br i1 %119, label %120, label %122

120:                                              ; preds = %50
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %13, align 8
  br label %124

122:                                              ; preds = %50
  %123 = alloca i8, i64 40, align 16
  store ptr %123, ptr %13, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i64, ptr %9, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %8, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 35), align 8
  %132 = load ptr, ptr %13, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %13, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  store i64 6, ptr %135, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 10
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %13, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 4
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %9, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 1
  %145 = load i64, ptr %144, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = load ptr, ptr %13, align 8
  call void %146(i64 noundef 5, ptr noundef %147) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1009(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 4
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 4
  %36 = add nuw nsw i32 0, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1009, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.89)
  %50 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 1
  %53 = load i64, ptr %52, align 8
  store i64 %53, ptr %8, align 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sge i64 %54, 5
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8
  store ptr %57, ptr %12, align 8
  br label %60

58:                                               ; preds = %49
  %59 = alloca i8, i64 40, align 16
  store ptr %59, ptr %12, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i64, ptr %8, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 6, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = load ptr, ptr %12, align 8
  call void %85(i64 noundef 5, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_987(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 11, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_987, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 88, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_990 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 11
  store ptr %112, ptr %10, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %114 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  store i64 %117, ptr %9, align 8
  %118 = load i64, ptr %3, align 8
  %119 = icmp sge i64 %118, 5
  br i1 %119, label %120, label %122

120:                                              ; preds = %50
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %13, align 8
  br label %124

122:                                              ; preds = %50
  %123 = alloca i8, i64 40, align 16
  store ptr %123, ptr %13, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i64, ptr %9, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %8, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 4
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %13, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 3
  store i64 6, ptr %138, align 8
  %139 = load i64, ptr %6, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 10
  %142 = load i64, ptr %141, align 8
  %143 = load ptr, ptr %13, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 4
  store i64 %142, ptr %144, align 8
  %145 = load i64, ptr %9, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = load ptr, ptr %13, align 8
  call void %149(i64 noundef 5, ptr noundef %150) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_990(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 11, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_990, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 88, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_993 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 11
  store ptr %112, ptr %10, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %114 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  store i64 %117, ptr %9, align 8
  %118 = load i64, ptr %3, align 8
  %119 = icmp sge i64 %118, 5
  br i1 %119, label %120, label %122

120:                                              ; preds = %50
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %13, align 8
  br label %124

122:                                              ; preds = %50
  %123 = alloca i8, i64 40, align 16
  store ptr %123, ptr %13, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i64, ptr %9, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %8, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 34), align 16
  %132 = load ptr, ptr %13, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %13, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  store i64 6, ptr %135, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 10
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %13, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 4
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %9, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 1
  %145 = load i64, ptr %144, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = load ptr, ptr %13, align 8
  call void %146(i64 noundef 5, ptr noundef %147) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_993(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %7, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %2
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 4
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 4
  %37 = add nuw nsw i32 11, %36
  %38 = zext nneg i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = zext nneg i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_993, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 88, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_996 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 10
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 10
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 11
  store ptr %112, ptr %10, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.89)
  %114 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 33), align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  store i64 %117, ptr %9, align 8
  %118 = load i64, ptr %3, align 8
  %119 = icmp sge i64 %118, 5
  br i1 %119, label %120, label %122

120:                                              ; preds = %50
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %13, align 8
  br label %124

122:                                              ; preds = %50
  %123 = alloca i8, i64 40, align 16
  store ptr %123, ptr %13, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i64, ptr %9, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %8, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 8
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %13, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 3
  store i64 6, ptr %138, align 8
  %139 = load i64, ptr %6, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 10
  %142 = load i64, ptr %141, align 8
  %143 = load ptr, ptr %13, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 4
  store i64 %142, ptr %144, align 8
  %145 = load i64, ptr %9, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = load ptr, ptr %13, align 8
  call void %149(i64 noundef 5, ptr noundef %150) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_996(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nuw nsw i32 10, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_996, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 80, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405705, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_999 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 8
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %10, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 9
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %10, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %10, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 10
  store ptr %107, ptr %10, align 8
  %108 = load i64, ptr %5, align 8
  store i64 %108, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.91)
  %109 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 32), align 16
  %110 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %109)
  store ptr %110, ptr %13, align 8
  %111 = load i64, ptr %3, align 8
  %112 = icmp sge i64 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %51
  %114 = load ptr, ptr %4, align 8
  store ptr %114, ptr %14, align 8
  br label %117

115:                                              ; preds = %51
  %116 = alloca i8, i64 32, align 16
  store ptr %116, ptr %14, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 32), align 16
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %8, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load ptr, ptr %14, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 2570, ptr %128, align 8
  %129 = load i64, ptr %6, align 8
  %130 = inttoptr i64 %129 to ptr
  %131 = getelementptr inbounds i64, ptr %130, i64 10
  %132 = load i64, ptr %131, align 8
  %133 = load ptr, ptr %14, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 3
  store i64 %132, ptr %134, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = load ptr, ptr %14, align 8
  call void %135(i64 noundef 4, ptr noundef %136) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_999(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 6
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 6
  %38 = add nuw nsw i32 5, %37
  %39 = zext nneg i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext nneg i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_999, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1002 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %10, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  store ptr %77, ptr %10, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.92)
  %79 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 24), align 16
  %80 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %79)
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 7
  br i1 %82, label %83, label %85

83:                                               ; preds = %51
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  br label %87

85:                                               ; preds = %51
  %86 = alloca i8, i64 56, align 16
  store ptr %86, ptr %14, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([53 x i64], ptr @lf, i64 0, i64 24), align 16
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 0
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %8, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 5
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 7
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 4
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 8
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 5
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 9
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 6
  store i64 %124, ptr %126, align 8
  %127 = load ptr, ptr %13, align 8
  %128 = load ptr, ptr %14, align 8
  call void %127(i64 noundef 7, ptr noundef %128) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1002(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %2
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp sgt i64 %32, 4
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 4
  %36 = add nuw nsw i32 0, %35
  %37 = zext nneg i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1002, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.93)
  %50 = load i64, ptr %3, align 8
  %51 = icmp sge i64 %50, 5
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load ptr, ptr %4, align 8
  store ptr %53, ptr %12, align 8
  br label %56

54:                                               ; preds = %49
  %55 = alloca i8, i64 40, align 16
  store ptr %55, ptr %12, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 0, ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  call void @C_values(i64 noundef 5, ptr noundef %80) #4
  unreachable
}

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!6 = !{i64 2148745150}
!7 = !{i64 2148677796}
!8 = !{i64 2148678552}
!9 = !{i64 2148679436}
!10 = !{i64 2148676900}
!11 = !{i64 2148680175}
!12 = !{i64 2148681097}
!13 = !{i64 2148682019}
!14 = !{i64 2148682885}
!15 = !{i64 2148683807}
!16 = !{i64 2148684729}
!17 = !{i64 2148685642}
!18 = !{i64 2148687082}
!19 = !{i64 2148690950}
!20 = !{i64 2148695812}
!21 = !{i64 2148704301}
!22 = !{i64 2148706662}
!23 = !{i64 2148707997}
!24 = !{i64 2148710366}
!25 = !{i64 2148713106}
!26 = !{i64 2148731149}
!27 = !{i64 2148701953}
!28 = !{i64 2148708743}
!29 = !{i64 2148709747}
!30 = !{i64 2148711102}
!31 = !{i64 2148712377}
!32 = !{i64 2148713952}
!33 = !{i64 2148715262}
!34 = !{i64 2148715899}
!35 = !{i64 2148727388}
!36 = !{i64 6, i64 23}
!37 = !{i64 2148716958}
!38 = !{i64 2148726140}
!39 = !{i64 2148726723}
!40 = !{i64 2148718272}
!41 = !{i64 2148719112}
!42 = !{i64 2148720127}
!43 = !{i64 2148720796}
!44 = !{i64 2148722041}
!45 = !{i64 2148722877}
!46 = !{i64 2148723779}
!47 = !{i64 2148724565}
!48 = !{i64 2148725367}
!49 = !{i64 2148729373}
!50 = !{i64 2148731903}
!51 = !{i64 2148732751}
!52 = !{i64 2148733610}
!53 = !{i64 2148734484}
!54 = !{i64 2148735406}
!55 = !{i64 2148736326}
!56 = !{i64 2148737368}
!57 = !{i64 2148676179}
!58 = !{i64 2148738283}
!59 = !{i64 2148739320}
!60 = !{i64 2148675458}
!61 = !{i64 2148740225}
!62 = !{i64 2148741135}
!63 = !{i64 2148742040}
!64 = !{i64 2148742950}
!65 = !{i64 2148743914}
!66 = !{i64 2148674796}
