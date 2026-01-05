; ModuleID = '/tmp/hatsu-llvm-kak_quiver_safety-4625/kak_quiver_safety.c'
source_filename = "/tmp/hatsu-llvm-kak_quiver_safety-4625/kak_quiver_safety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.C_block_struct = type { i64, [0 x i64] }

@toplevel_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@C_stack_limit = external global ptr, align 8
@C_scratch_usage = external global i64, align 8
@C_fromspace_top = external global ptr, align 8
@C_fromspace_limit = external global ptr, align 8
@C_temporary_stack = external global ptr, align 8
@lf = internal global [50 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"kak_quiver_safety#\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"kak_quiver_safety#make-quiver-context\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"kak_quiver_safety#quiver-context\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"kak_quiver_safety#quiver-context-steps\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"quiver-context-steps\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"kak_quiver_safety#quiver-context-mode\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"quiver-context-mode\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"scheme#append\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\FEB\00\00\15Unknown frontier mode\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"kak_quiver_safety#analyze-frontier-as-quiver\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"scheme#max\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"srfi-69#hash-table-ref\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-set!\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"srfi-69#hash-table-ref/default\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"srfi-1#member\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"for-each\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"dynkin-a\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"dynkin-d\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"affine-a\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"wild\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"dynkin-e\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"srfi-69#make-hash-table\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"kak_quiver_safety#estimate-quiver-speedup\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"\FEU16.0\00\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\FEU8.0\00\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\FEU4.0\00\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"kak_quiver_safety#classify-quiver-type\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"srfi-1#delete-duplicates\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"kak_physics_core#update-h-fields!\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"kak_physics_core#update-e-fields!\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"chicken.base#print\00", align 1
@.str.37 = private unnamed_addr constant [85 x i8] c"\FEB\00\00OWarning: update-localized-fields! called (fallback to global update for safety)\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"kak_quiver_safety#kak-apply-quiver-safe\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"kak_physics_core\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"kak_quiver_safety\00", align 1
@.str.46 = private unnamed_addr constant [580 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1A\01analyze-frontier-as-quiver\FE\01\00\00,\01kak_quiver_safety#analyze-frontier-as-quiver\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01classify-quiver-type\FE\01\00\00&\01kak_quiver_safety#classify-quiver-type\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\15\01kak-apply-quiver-safe\FE\01\00\00'\01kak_quiver_safety#kak-apply-quiver-safe\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\17\01estimate-quiver-speedup\FE\01\00\00)\01kak_quiver_safety#estimate-quiver-speedup\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01make-quiver-context\FE\01\00\00%\01kak_quiver_safety#make-quiver-context\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01quiver-context-steps\FE\01\00\00&\01kak_quiver_safety#quiver-context-steps\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01quiver-context-mode\FE\01\00\00%\01kak_quiver_safety#quiver-context-mode\FE\FF\0E\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@li24 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1126)\00", align 16
@.str.48 = private unnamed_addr constant [48 x i8] c"kak_quiver_safety.scm:1: ##sys#with-environment\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"kak_quiver_safety.scm:10: chicken.load#load-extension\00", align 1
@li0 = internal global [64 x i8] c"2\00\00\00\00\00\00M(kak_quiver_safety#make-quiver-context steps mode)\00\00\00\00\00\00", align 16
@li1 = internal global [56 x i8] c"*\00\00\00\00\00\00M(kak_quiver_safety#quiver-context-steps x)\00\00\00\00\00\00", align 16
@li2 = internal global [56 x i8] c")\00\00\00\00\00\00M(kak_quiver_safety#quiver-context-mode x)\00\00\00\00\00\00\00", align 16
@li3 = internal global [56 x i8] c"-\00\00\00\00\00\00M(kak_quiver_safety#frontier-to-list frontier)\00\00\00", align 16
@li13 = internal global [72 x i8] c"@\00\00\00\00\00\00M(kak_quiver_safety#analyze-frontier-as-quiver frontier graph-fn)", align 16
@li14 = internal global [56 x i8] c"0\00\00\00\00\00\00M(kak_quiver_safety#estimate-quiver-speedup type)", align 16
@li15 = internal global [80 x i8] c"F\00\00\00\00\00\00M(kak_quiver_safety#classify-quiver-type graph-fn representative-nodes)\00\00", align 16
@li20 = internal global [72 x i8] c";\00\00\00\00\00\00M(kak_quiver_safety#compute-next-frontier frontier graph-fn)\00\00\00\00\00", align 16
@li21 = internal global [64 x i8] c"1\00\00\00\00\00\00M(kak_quiver_safety#update-localized-fields! grid)\00\00\00\00\00\00\00", align 16
@li23 = internal global [88 x i8] c"N\00\00\00\00\00\00M(kak_quiver_safety#kak-apply-quiver-safe graph-fn grid sources context . rest)\00\00", align 16
@.str.50 = private unnamed_addr constant [41 x i8] c"kak_quiver_safety.scm:36: scheme#reverse\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"kak_quiver_safety.scm:37: chicken.base#error\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"kak_quiver_safety.scm:36: scheme#append\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"kak_quiver_safety.scm:61: frontier-to-list\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:62: srfi-69#make-hash-table\00", align 1
@li6 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(g118 u)", align 16
@li12 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop117 g124)\00", align 16
@.str.55 = private unnamed_addr constant [35 x i8] c"kak_quiver_safety.scm:66: graph-fn\00", align 1
@li4 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g132 edge)\00\00\00\00\00", align 16
@li5 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop131 g138)\00", align 16
@.str.56 = private unnamed_addr constant [40 x i8] c"kak_quiver_safety.scm:70: srfi-1#member\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"kak_quiver_safety.scm:71: srfi-69#hash-table-ref/default\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"kak_quiver_safety.scm:72: srfi-69#hash-table-ref\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"kak_quiver_safety.scm:72: scheme#max\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:71: srfi-69#hash-table-set!\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"kak_quiver_safety.scm:67: g132\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:44: srfi-69#make-hash-table\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:45: srfi-69#make-hash-table\00", align 1
@li9 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(dfs u)\00", align 16
@li10 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(g65 n)\00", align 16
@li11 = internal global [32 x i8] c"\15\00\00\00\00\00\00M(for-each-loop64 g71)\00\00\00", align 16
@.str.64 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:48: srfi-69#hash-table-set!\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:49: srfi-69#hash-table-set!\00", align 1
@li7 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(g77 v)\00", align 16
@.str.66 = private unnamed_addr constant [57 x i8] c"kak_quiver_safety.scm:55: srfi-69#hash-table-ref/default\00", align 1
@.str.67 = private unnamed_addr constant [57 x i8] c"kak_quiver_safety.scm:51: srfi-69#hash-table-ref/default\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"kak_quiver_safety.scm:52: dfs\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"kak_quiver_safety.scm:53: srfi-69#hash-table-ref/default\00", align 1
@li8 = internal global [32 x i8] c"\15\00\00\00\00\00\00M(for-each-loop76 g83)\00\00\00", align 16
@.str.70 = private unnamed_addr constant [50 x i8] c"kak_quiver_safety.scm:56: srfi-69#hash-table-set!\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"kak_quiver_safety.scm:50: g77\00", align 1
@.str.72 = private unnamed_addr constant [57 x i8] c"kak_quiver_safety.scm:57: srfi-69#hash-table-ref/default\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"kak_quiver_safety.scm:57: dfs\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"kak_quiver_safety.scm:57: g65\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"kak_quiver_safety.scm:64: g118\00", align 1
@.str.76 = private unnamed_addr constant [53 x i8] c"kak_quiver_safety.scm:88: analyze-frontier-as-quiver\00", align 1
@li18 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g181 node)\00\00\00\00\00", align 16
@.str.77 = private unnamed_addr constant [44 x i8] c"kak_quiver_safety.scm:101: frontier-to-list\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"kak_quiver_safety.scm:98: graph-fn\00", align 1
@li16 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g195 edge)\00\00\00\00\00", align 16
@li17 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop194 g201)\00", align 16
@.str.79 = private unnamed_addr constant [31 x i8] c"kak_quiver_safety.scm:99: g195\00", align 1
@li19 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop180 g187)\00", align 16
@.str.80 = private unnamed_addr constant [52 x i8] c"kak_quiver_safety.scm:102: srfi-1#delete-duplicates\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"kak_quiver_safety.scm:97: g181\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"kak_quiver_safety.scm:106: chicken.base#print\00", align 1
@.str.83 = private unnamed_addr constant [61 x i8] c"kak_quiver_safety.scm:107: kak_physics_core#update-e-fields!\00", align 1
@.str.84 = private unnamed_addr constant [61 x i8] c"kak_quiver_safety.scm:108: kak_physics_core#update-h-fields!\00", align 1
@.str.85 = private unnamed_addr constant [48 x i8] c"kak_quiver_safety.scm:139: quiver-context-steps\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"kak_quiver_safety.scm:140: quiver-context-mode\00", align 1
@li22 = internal global [32 x i8] c"\14\00\00\00\00\00\00M(loop frontier step)\00\00\00\00", align 16
@.str.87 = private unnamed_addr constant [54 x i8] c"kak_quiver_safety.scm:145: analyze-frontier-as-quiver\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"kak_quiver_safety.scm:154: loop\00", align 1
@.str.89 = private unnamed_addr constant [54 x i8] c"kak_quiver_safety.scm:116: analyze-frontier-as-quiver\00", align 1
@.str.90 = private unnamed_addr constant [52 x i8] c"kak_quiver_safety.scm:126: update-localized-fields!\00", align 1
@.str.91 = private unnamed_addr constant [52 x i8] c"kak_quiver_safety.scm:130: update-localized-fields!\00", align 1
@.str.92 = private unnamed_addr constant [61 x i8] c"kak_quiver_safety.scm:119: kak_physics_core#update-e-fields!\00", align 1
@.str.93 = private unnamed_addr constant [52 x i8] c"kak_quiver_safety.scm:121: update-localized-fields!\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"kak_quiver_safety.scm:123: compute-next-frontier\00", align 1
@.str.95 = private unnamed_addr constant [61 x i8] c"kak_quiver_safety.scm:120: kak_physics_core#update-h-fields!\00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"kak_quiver_safety.scm:127: compute-next-frontier\00", align 1
@.str.97 = private unnamed_addr constant [49 x i8] c"kak_quiver_safety.scm:131: compute-next-frontier\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"kak_quiver_safety.scm:1: ##sys#register-compiled-module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %5, align 8
  %8 = call i32 @CHICKEN_main(i32 noundef %6, ptr noundef %7, ptr noundef @C_toplevel)
  ret i32 %8
}

declare i32 @CHICKEN_main(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @C_toplevel(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load i32, ptr @toplevel_initialized, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

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

35:                                               ; No predecessors!
  br label %37

36:                                               ; preds = %2
  call void @C_toplevel_entry(ptr noundef @.str)
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 2
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 2
  %42 = add nsw i32 3, %41
  %43 = sext i32 %42 to i64
  call void @C_check_nursery_minimum(i64 noundef %43)
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !6
  store ptr %44, ptr %12, align 8
  %45 = load ptr, ptr %12, align 8
  store ptr %45, ptr %13, align 8
  %46 = load ptr, ptr %13, align 8
  %47 = load ptr, ptr @C_stack_limit, align 8
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = load i64, ptr %3, align 8
  %53 = icmp sgt i64 %52, 2
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 2
  %56 = add nsw i32 3, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, ptr @C_scratch_usage, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp sgt i64 %51, %59
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load i64, ptr %3, align 8
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @C_toplevel, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %37
  store i32 1, ptr @toplevel_initialized, align 4
  %70 = load ptr, ptr @C_fromspace_top, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 436
  %72 = load ptr, ptr @C_fromspace_limit, align 8
  %73 = icmp ult ptr %71, %72
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i64, ptr %7, align 8
  %80 = load ptr, ptr @C_temporary_stack, align 8
  %81 = getelementptr inbounds i64, ptr %80, i32 -1
  store ptr %81, ptr @C_temporary_stack, align 8
  store i64 %79, ptr %81, align 8
  call void @C_rereclaim2(i64 noundef 3488, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 50)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 18, ptr noundef @.str.1)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 1), i32 noundef 37, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 2), i32 noundef 32, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 3), i32 noundef 38, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 4), i32 noundef 20, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 4), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 5), i32 noundef 37, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 5), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 6), i32 noundef 19, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 8), i32 noundef 5, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 8), align 16
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 9), i32 noundef 5, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 9), align 8
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 10), i32 noundef 13, ptr noundef @.str.10)
  store i64 %96, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 10), align 16
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 11), i32 noundef 14, ptr noundef @.str.11)
  store i64 %97, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 11), align 8
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 12), i32 noundef 18, ptr noundef @.str.12)
  store i64 %98, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 12), align 16
  %99 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.13)
  store i64 %99, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 13), align 8
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), i32 noundef 44, ptr noundef @.str.14)
  store i64 %100, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 15), i32 noundef 10, ptr noundef @.str.15)
  store i64 %101, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 15), align 8
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 16), i32 noundef 22, ptr noundef @.str.16)
  store i64 %102, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 16), align 16
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), i32 noundef 23, ptr noundef @.str.17)
  store i64 %103, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), i32 noundef 30, ptr noundef @.str.18)
  store i64 %104, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 19), i32 noundef 13, ptr noundef @.str.19)
  store i64 %105, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 19), align 8
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), i32 noundef 8, ptr noundef @.str.20)
  store i64 %106, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), i32 noundef 8, ptr noundef @.str.21)
  store i64 %107, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), align 8
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 22), i32 noundef 8, ptr noundef @.str.22)
  store i64 %108, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 22), align 16
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 23), i32 noundef 8, ptr noundef @.str.23)
  store i64 %109, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 23), align 8
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 24), i32 noundef 4, ptr noundef @.str.24)
  store i64 %110, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 24), align 16
  %111 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 25), i32 noundef 8, ptr noundef @.str.25)
  store i64 %111, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 25), align 8
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), i32 noundef 23, ptr noundef @.str.26)
  store i64 %112, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 27), i32 noundef 41, ptr noundef @.str.27)
  store i64 %113, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 27), align 8
  %114 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.28)
  store i64 %114, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 28), align 16
  %115 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.29)
  store i64 %115, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 29), align 8
  %116 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.30)
  store i64 %116, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 30), align 16
  %117 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %117, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 31), align 8
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 32), i32 noundef 38, ptr noundef @.str.32)
  store i64 %118, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 32), align 16
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 34), i32 noundef 24, ptr noundef @.str.33)
  store i64 %119, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 34), align 16
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), i32 noundef 33, ptr noundef @.str.34)
  store i64 %120, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), align 16
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), i32 noundef 33, ptr noundef @.str.35)
  store i64 %121, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), align 8
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 38), i32 noundef 18, ptr noundef @.str.36)
  store i64 %122, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 38), align 16
  %123 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.37)
  store i64 %123, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 39), align 8
  %124 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 40), i32 noundef 39, ptr noundef @.str.38)
  store i64 %124, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 40), align 16
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 41), i32 noundef 34, ptr noundef @.str.39)
  store i64 %125, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 41), align 8
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), i32 noundef 27, ptr noundef @.str.40)
  store i64 %126, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 43), i32 noundef 16, ptr noundef @.str.41)
  store i64 %127, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 43), align 8
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 44), i32 noundef 7, ptr noundef @.str.42)
  store i64 %128, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 44), align 16
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 45), i32 noundef 6, ptr noundef @.str.43)
  store i64 %129, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 45), align 8
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 46), i32 noundef 30, ptr noundef @.str.44)
  store i64 %130, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 46), align 16
  %131 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 47), i32 noundef 17, ptr noundef @.str.45)
  store i64 %131, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 47), align 8
  %132 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.46)
  store i64 %132, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 48), align 16
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 49), i32 noundef 22, ptr noundef @.str.47)
  store i64 %133, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 49), align 8
  %134 = call ptr @create_ptable()
  %135 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 50, ptr noundef %134)
  %136 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %136, align 8
  %137 = load ptr, ptr %10, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 ptrtoint (ptr @f_513 to i64), ptr %138, align 8
  %139 = load i64, ptr %7, align 8
  %140 = load ptr, ptr %10, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store i64 %139, ptr %141, align 8
  %142 = load ptr, ptr %10, align 8
  %143 = ptrtoint ptr %142 to i64
  store i64 %143, ptr %5, align 8
  %144 = load ptr, ptr %10, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 3
  store ptr %145, ptr %10, align 8
  %146 = load i64, ptr %5, align 8
  store i64 %146, ptr %8, align 8
  %147 = load ptr, ptr %4, align 8
  store ptr %147, ptr %14, align 8
  %148 = load ptr, ptr %14, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 0
  store i64 30, ptr %149, align 8
  %150 = load i64, ptr %8, align 8
  %151 = load ptr, ptr %14, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  store i64 %150, ptr %152, align 8
  %153 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %153) #4
  unreachable
}

declare void @C_toplevel_entry(ptr noundef) #1

declare void @C_check_nursery_minimum(i64 noundef) #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim(ptr noundef, i32 noundef, ptr noundef) #3

declare void @C_rereclaim2(i64 noundef, i32 noundef) #1

declare void @C_initialize_lf(ptr noundef, i32 noundef) #1

declare i64 @C_h_intern(ptr noundef, i32 noundef, ptr noundef) #1

declare i64 @C_decode_literal(ptr noundef, ptr noundef) #1

declare ptr @C_register_lf2(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_ptable() #0 {
  ret ptr null
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_513(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nsw i32 3, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_513, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_516 to i64), ptr %54, align 8
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
declare void @C_library_toplevel(i64 noundef, ptr noundef) #3

declare void @C_raise_interrupt(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_516(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  store ptr %29, ptr %14, align 8
  %30 = load ptr, ptr %14, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 2
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 2
  %40 = add nsw i32 14, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_516, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 112, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr @lf, align 16
  %56 = call i64 @C_a_i_provide(ptr noundef %12, i32 noundef 1, i64 noundef %55)
  store i64 %56, ptr %8, align 8
  %57 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %57, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_519 to i64), ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store ptr %69, ptr %12, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %9, align 8
  %71 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %71, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 ptrtoint (ptr @f_1127 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li24 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.48)
  %81 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 49), align 8
  %82 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %81)
  store ptr %82, ptr %15, align 8
  %83 = load i64, ptr %3, align 8
  %84 = icmp sge i64 %83, 3
  br i1 %84, label %85, label %87

85:                                               ; preds = %53
  %86 = load ptr, ptr %4, align 8
  store ptr %86, ptr %16, align 8
  br label %89

87:                                               ; preds = %53
  %88 = alloca i8, i64 24, align 16
  store ptr %88, ptr %16, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 49), align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %16, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %10, align 8
  %100 = load ptr, ptr %16, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = load ptr, ptr %16, align 8
  call void %102(i64 noundef 3, ptr noundef %103) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_eval_toplevel(i64 noundef, ptr noundef) #3

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_519(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nsw i32 3, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_519, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_522 to i64), ptr %54, align 8
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
  call void @C_data_2dstructures_toplevel(i64 noundef 2, ptr noundef %72) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1127(i64 noundef %0, ptr noundef %1) #2 {
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
  %44 = add nsw i32 0, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, ptr @C_scratch_usage, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp sgt i64 %39, %47
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i64, ptr %3, align 8
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1127, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.98)
  %58 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 46), align 16
  %59 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
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
  %67 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 47), align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 48), align 16
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

declare void @C_trace(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @C_fast_retrieve_symbol_proc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @C_fast_retrieve(i64 noundef %3)
  %5 = call ptr @C_fast_retrieve_proc(i64 noundef %4)
  ret ptr %5
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_522(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = add nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_522, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_525 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.49)
  %67 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
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
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 45), align 8
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
declare void @C_data_2dstructures_toplevel(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_525(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = add nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_525, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_528 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.49)
  %67 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
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
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 44), align 16
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
define internal void @f_528(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = add nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_528, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_531 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.49)
  %67 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
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
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 42), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 43), align 8
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
define internal void @f_531(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = load i64, ptr @C_timer_interrupt_counter, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr @C_timer_interrupt_counter, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %35

35:                                               ; preds = %34, %2
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
  store ptr %36, ptr %21, align 8
  %37 = load ptr, ptr %21, align 8
  store ptr %37, ptr %22, align 8
  %38 = load ptr, ptr %22, align 8
  %39 = load ptr, ptr @C_stack_limit, align 8
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = load i64, ptr %3, align 8
  %45 = icmp sgt i64 %44, 6
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 6
  %48 = add nsw i32 33, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, ptr @C_scratch_usage, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp sgt i64 %43, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load i64, ptr %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_531, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 264, align 16
  store ptr %62, ptr %20, align 8
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 1), align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %66, align 8
  %67 = load ptr, ptr %20, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_534 to i64), ptr %68, align 8
  %69 = load ptr, ptr %20, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %70, align 8
  %71 = load ptr, ptr %20, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %20, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store ptr %74, ptr %20, align 8
  %75 = load i64, ptr %5, align 8
  %76 = call i64 @C_mutate(ptr noundef %65, i64 noundef %75)
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 3), align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %80, align 8
  %81 = load ptr, ptr %20, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_546 to i64), ptr %82, align 8
  %83 = load ptr, ptr %20, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %84, align 8
  %85 = load ptr, ptr %20, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store ptr %88, ptr %20, align 8
  %89 = load i64, ptr %5, align 8
  %90 = call i64 @C_mutate(ptr noundef %79, i64 noundef %89)
  store i64 %90, ptr %9, align 8
  %91 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 5), align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %94, align 8
  %95 = load ptr, ptr %20, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_555 to i64), ptr %96, align 8
  %97 = load ptr, ptr %20, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %98, align 8
  %99 = load ptr, ptr %20, align 8
  %100 = ptrtoint ptr %99 to i64
  store i64 %100, ptr %5, align 8
  %101 = load ptr, ptr %20, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store ptr %102, ptr %20, align 8
  %103 = load i64, ptr %5, align 8
  %104 = call i64 @C_mutate(ptr noundef %93, i64 noundef %103)
  store i64 %104, ptr %10, align 8
  %105 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %105, align 8
  %106 = load ptr, ptr %20, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 ptrtoint (ptr @f_564 to i64), ptr %107, align 8
  %108 = load ptr, ptr %20, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %109, align 8
  %110 = load ptr, ptr %20, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %20, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  store ptr %113, ptr %20, align 8
  %114 = load i64, ptr %5, align 8
  %115 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 7), i64 noundef %114)
  store i64 %115, ptr %11, align 8
  %116 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %119, align 8
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 ptrtoint (ptr @f_718 to i64), ptr %121, align 8
  %122 = load ptr, ptr %20, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  store i64 ptrtoint (ptr @li13 to i64), ptr %123, align 8
  %124 = load ptr, ptr %20, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %5, align 8
  %126 = load ptr, ptr %20, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store ptr %127, ptr %20, align 8
  %128 = load i64, ptr %5, align 8
  %129 = call i64 @C_mutate(ptr noundef %118, i64 noundef %128)
  store i64 %129, ptr %12, align 8
  %130 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 27), align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %133, align 8
  %134 = load ptr, ptr %20, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 ptrtoint (ptr @f_866 to i64), ptr %135, align 8
  %136 = load ptr, ptr %20, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %137, align 8
  %138 = load ptr, ptr %20, align 8
  %139 = ptrtoint ptr %138 to i64
  store i64 %139, ptr %5, align 8
  %140 = load ptr, ptr %20, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 3
  store ptr %141, ptr %20, align 8
  %142 = load i64, ptr %5, align 8
  %143 = call i64 @C_mutate(ptr noundef %132, i64 noundef %142)
  store i64 %143, ptr %13, align 8
  %144 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 32), align 16
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  %147 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %147, align 8
  %148 = load ptr, ptr %20, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  store i64 ptrtoint (ptr @f_887 to i64), ptr %149, align 8
  %150 = load ptr, ptr %20, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %151, align 8
  %152 = load ptr, ptr %20, align 8
  %153 = ptrtoint ptr %152 to i64
  store i64 %153, ptr %5, align 8
  %154 = load ptr, ptr %20, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 3
  store ptr %155, ptr %20, align 8
  %156 = load i64, ptr %5, align 8
  %157 = call i64 @C_mutate(ptr noundef %146, i64 noundef %156)
  store i64 %157, ptr %14, align 8
  %158 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %158, align 8
  %159 = load ptr, ptr %20, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  store i64 ptrtoint (ptr @f_897 to i64), ptr %160, align 8
  %161 = load ptr, ptr %20, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 2
  store i64 ptrtoint (ptr @li20 to i64), ptr %162, align 8
  %163 = load ptr, ptr %20, align 8
  %164 = ptrtoint ptr %163 to i64
  store i64 %164, ptr %5, align 8
  %165 = load ptr, ptr %20, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 3
  store ptr %166, ptr %20, align 8
  %167 = load i64, ptr %5, align 8
  %168 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 33), i64 noundef %167)
  store i64 %168, ptr %15, align 8
  %169 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %169, align 8
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  store i64 ptrtoint (ptr @f_979 to i64), ptr %171, align 8
  %172 = load ptr, ptr %20, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 2
  store i64 ptrtoint (ptr @li21 to i64), ptr %173, align 8
  %174 = load ptr, ptr %20, align 8
  %175 = ptrtoint ptr %174 to i64
  store i64 %175, ptr %5, align 8
  %176 = load ptr, ptr %20, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 3
  store ptr %177, ptr %20, align 8
  %178 = load i64, ptr %5, align 8
  %179 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 35), i64 noundef %178)
  store i64 %179, ptr %16, align 8
  %180 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 40), align 16
  %181 = inttoptr i64 %180 to ptr
  %182 = getelementptr inbounds i64, ptr %181, i64 1
  %183 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %183, align 8
  %184 = load ptr, ptr %20, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 1
  store i64 ptrtoint (ptr @f_1033 to i64), ptr %185, align 8
  %186 = load ptr, ptr %20, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 2
  store i64 ptrtoint (ptr @li23 to i64), ptr %187, align 8
  %188 = load ptr, ptr %20, align 8
  %189 = ptrtoint ptr %188 to i64
  store i64 %189, ptr %5, align 8
  %190 = load ptr, ptr %20, align 8
  %191 = getelementptr inbounds i64, ptr %190, i64 3
  store ptr %191, ptr %20, align 8
  %192 = load i64, ptr %5, align 8
  %193 = call i64 @C_mutate(ptr noundef %182, i64 noundef %192)
  store i64 %193, ptr %17, align 8
  %194 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %194, align 8
  %195 = load ptr, ptr %20, align 8
  %196 = getelementptr inbounds i64, ptr %195, i64 1
  store i64 ptrtoint (ptr @f_1125 to i64), ptr %196, align 8
  %197 = load i64, ptr %6, align 8
  %198 = inttoptr i64 %197 to ptr
  %199 = getelementptr inbounds i64, ptr %198, i64 2
  %200 = load i64, ptr %199, align 8
  %201 = load ptr, ptr %20, align 8
  %202 = getelementptr inbounds i64, ptr %201, i64 2
  store i64 %200, ptr %202, align 8
  %203 = load ptr, ptr %20, align 8
  %204 = ptrtoint ptr %203 to i64
  store i64 %204, ptr %5, align 8
  %205 = load ptr, ptr %20, align 8
  %206 = getelementptr inbounds i64, ptr %205, i64 3
  store ptr %206, ptr %20, align 8
  %207 = load i64, ptr %5, align 8
  store i64 %207, ptr %18, align 8
  call void @C_trace(ptr noundef @.str.39)
  %208 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 41), align 8
  %209 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %208)
  store ptr %209, ptr %23, align 8
  %210 = load ptr, ptr %4, align 8
  store ptr %210, ptr %24, align 8
  %211 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 41), align 8
  %212 = inttoptr i64 %211 to ptr
  %213 = getelementptr inbounds i64, ptr %212, i64 1
  %214 = load i64, ptr %213, align 8
  %215 = load ptr, ptr %24, align 8
  %216 = getelementptr inbounds i64, ptr %215, i64 0
  store i64 %214, ptr %216, align 8
  %217 = load i64, ptr %18, align 8
  %218 = load ptr, ptr %24, align 8
  %219 = getelementptr inbounds i64, ptr %218, i64 1
  store i64 %217, ptr %219, align 8
  %220 = load ptr, ptr %23, align 8
  %221 = load ptr, ptr %24, align 8
  call void %220(i64 noundef 2, ptr noundef %221) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_mutate(ptr noundef %0, i64 noundef %1) #0 {
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
define internal void @f_534(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %8, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 3
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %9, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, ptr %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %31, i32 noundef 4, i64 noundef %32) #4
  unreachable

33:                                               ; preds = %2
  %34 = load i64, ptr @C_timer_interrupt_counter, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr @C_timer_interrupt_counter, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @C_raise_interrupt(i32 noundef 255)
  br label %38

38:                                               ; preds = %37, %33
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store ptr %39, ptr %12, align 8
  %40 = load ptr, ptr %12, align 8
  store ptr %40, ptr %13, align 8
  %41 = load ptr, ptr %13, align 8
  %42 = load ptr, ptr @C_stack_limit, align 8
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 8
  %47 = load i64, ptr %3, align 8
  %48 = icmp sgt i64 %47, 1
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = add nsw i32 4, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, ptr @C_scratch_usage, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp sgt i64 %46, %54
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i64, ptr %3, align 8
  %62 = trunc i64 %61 to i32
  %63 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_534, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = alloca i8, i64 32, align 16
  store ptr %65, ptr %11, align 8
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %10, align 8
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  %68 = load i64, ptr %10, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 0
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 2), align 16
  %72 = load i64, ptr %8, align 8
  %73 = load i64, ptr %9, align 8
  %74 = call i64 @C_a_i_record3(ptr noundef %11, i32 noundef 3, i64 noundef %71, i64 noundef %72, i64 noundef %73)
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %10, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = load ptr, ptr %14, align 8
  call void %81(i64 noundef 2, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_546(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %8, align 8
  %24 = load i64, ptr %3, align 8
  %25 = icmp ne i64 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i64, ptr %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %28, i32 noundef 3, i64 noundef %29) #4
  unreachable

30:                                               ; preds = %2
  %31 = load i64, ptr @C_timer_interrupt_counter, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr @C_timer_interrupt_counter, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @C_raise_interrupt(i32 noundef 255)
  br label %35

35:                                               ; preds = %34, %30
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
  store ptr %36, ptr %12, align 8
  %37 = load ptr, ptr %12, align 8
  store ptr %37, ptr %13, align 8
  %38 = load ptr, ptr %13, align 8
  %39 = load ptr, ptr @C_stack_limit, align 8
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = load i64, ptr %3, align 8
  %45 = icmp sgt i64 %44, 1
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = add nsw i32 0, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, ptr @C_scratch_usage, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp sgt i64 %43, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load i64, ptr %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_546, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 2), align 16
  %64 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 4), align 16
  %65 = call i64 @C_i_check_structure_2(i64 noundef %62, i64 noundef %63, i64 noundef %64)
  store i64 %65, ptr %9, align 8
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %10, align 8
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  %68 = load i64, ptr %10, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 0
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 3)
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %10, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_555(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %8, align 8
  %24 = load i64, ptr %3, align 8
  %25 = icmp ne i64 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i64, ptr %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %28, i32 noundef 3, i64 noundef %29) #4
  unreachable

30:                                               ; preds = %2
  %31 = load i64, ptr @C_timer_interrupt_counter, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr @C_timer_interrupt_counter, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @C_raise_interrupt(i32 noundef 255)
  br label %35

35:                                               ; preds = %34, %30
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
  store ptr %36, ptr %12, align 8
  %37 = load ptr, ptr %12, align 8
  store ptr %37, ptr %13, align 8
  %38 = load ptr, ptr %13, align 8
  %39 = load ptr, ptr @C_stack_limit, align 8
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = load i64, ptr %3, align 8
  %45 = icmp sgt i64 %44, 1
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = add nsw i32 0, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, ptr @C_scratch_usage, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp sgt i64 %43, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load i64, ptr %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_555, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 2), align 16
  %64 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 6), align 16
  %65 = call i64 @C_i_check_structure_2(i64 noundef %62, i64 noundef %63, i64 noundef %64)
  store i64 %65, ptr %9, align 8
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %10, align 8
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  %68 = load i64, ptr %10, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 0
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 5)
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %10, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_564(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
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
  %19 = alloca ptr, align 8
  %20 = alloca [4 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
  store ptr %26, ptr %14, align 8
  %27 = load ptr, ptr %14, align 8
  store ptr %27, ptr %15, align 8
  %28 = load ptr, ptr %15, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr @C_scratch_usage, align 8
  %35 = add nsw i64 7, %34
  %36 = icmp sgt i64 %33, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i64, ptr %3, align 8
  %43 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_564, i32 noundef 2, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %25
  %45 = alloca i8, i64 32, align 16
  store ptr %45, ptr %13, align 8
  %46 = load i64, ptr %4, align 8
  %47 = call i64 @C_i_car(i64 noundef %46)
  store i64 %47, ptr %6, align 8
  %48 = load i64, ptr %4, align 8
  %49 = call i64 @C_i_cdr(i64 noundef %48)
  store i64 %49, ptr %7, align 8
  %50 = load i64, ptr %6, align 8
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 8), align 16
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 22, i64 6
  store i64 %54, ptr %8, align 8
  %55 = load i64, ptr %8, align 8
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %69

57:                                               ; preds = %44
  %58 = load i64, ptr %3, align 8
  store i64 %58, ptr %9, align 8
  %59 = load i64, ptr %9, align 8
  %60 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %59, ptr %60, align 16
  %61 = load i64, ptr %7, align 8
  %62 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %61, ptr %62, align 8
  %63 = load i64, ptr %9, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %67(i64 noundef 2, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %44
  %70 = load i64, ptr %6, align 8
  %71 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 9), align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i64 22, i64 6
  store i64 %74, ptr %9, align 8
  %75 = load i64, ptr %9, align 8
  %76 = icmp ne i64 %75, 6
  br i1 %76, label %77, label %111

77:                                               ; preds = %69
  %78 = load i64, ptr %7, align 8
  %79 = call i64 @C_i_car(i64 noundef %78)
  store i64 %79, ptr %10, align 8
  %80 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_594 to i64), ptr %82, align 8
  %83 = load i64, ptr %3, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store ptr %92, ptr %13, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.50)
  %94 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 11), align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = call ptr @C_fast_retrieve_proc(i64 noundef %97)
  store ptr %98, ptr %17, align 8
  %99 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 11), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %102, ptr %103, align 16
  %104 = load i64, ptr %11, align 8
  %105 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %104, ptr %105, align 8
  %106 = load i64, ptr %7, align 8
  %107 = call i64 @C_i_cdr(i64 noundef %106)
  %108 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %107, ptr %108, align 16
  %109 = load ptr, ptr %17, align 8
  %110 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %109(i64 noundef 3, ptr noundef %110) #4
  unreachable

111:                                              ; preds = %69
  call void @C_trace(ptr noundef @.str.51)
  %112 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 12), align 16
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = call ptr @C_fast_retrieve_proc(i64 noundef %115)
  store ptr %116, ptr %19, align 8
  %117 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 12), align 16
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 0
  store i64 %120, ptr %121, align 16
  %122 = load i64, ptr %3, align 8
  %123 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 1
  store i64 %122, ptr %123, align 8
  %124 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 13), align 8
  %125 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 2
  store i64 %124, ptr %125, align 16
  %126 = load i64, ptr %6, align 8
  %127 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 3
  store i64 %126, ptr %127, align 8
  %128 = load ptr, ptr %19, align 8
  %129 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 0
  call void %128(i64 noundef 4, ptr noundef %129) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_718(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %8, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 3
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %9, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, ptr %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %31, i32 noundef 4, i64 noundef %32) #4
  unreachable

33:                                               ; preds = %2
  %34 = load i64, ptr @C_timer_interrupt_counter, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr @C_timer_interrupt_counter, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @C_raise_interrupt(i32 noundef 255)
  br label %38

38:                                               ; preds = %37, %33
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
  store ptr %39, ptr %13, align 8
  %40 = load ptr, ptr %13, align 8
  store ptr %40, ptr %14, align 8
  %41 = load ptr, ptr %14, align 8
  %42 = load ptr, ptr @C_stack_limit, align 8
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 8
  %47 = load i64, ptr %3, align 8
  %48 = icmp sgt i64 %47, 2
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 2
  %51 = add nsw i32 4, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, ptr @C_scratch_usage, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp sgt i64 %46, %54
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i64, ptr %3, align 8
  %62 = trunc i64 %61 to i32
  %63 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_718, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = alloca i8, i64 32, align 16
  store ptr %65, ptr %12, align 8
  %66 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %66, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_722 to i64), ptr %68, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %7, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store ptr %78, ptr %12, align 8
  %79 = load i64, ptr %5, align 8
  store i64 %79, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.53)
  %80 = load i64, ptr %10, align 8
  %81 = load i64, ptr %8, align 8
  call void @f_564(i64 noundef %80, i64 noundef %81) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_866(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = load i64, ptr %3, align 8
  %29 = icmp ne i64 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i64, ptr %3, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %32, i32 noundef 3, i64 noundef %33) #4
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
  store ptr %40, ptr %14, align 8
  %41 = load ptr, ptr %14, align 8
  store ptr %41, ptr %15, align 8
  %42 = load ptr, ptr %15, align 8
  %43 = load ptr, ptr @C_stack_limit, align 8
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = load i64, ptr %3, align 8
  %49 = icmp sgt i64 %48, 1
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  %52 = add nsw i32 0, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, ptr @C_scratch_usage, align 8
  %55 = add nsw i64 %53, %54
  %56 = icmp sgt i64 %47, %55
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %39
  %62 = load i64, ptr %3, align 8
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_866, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = load i64, ptr %8, align 8
  %67 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i64 22, i64 6
  store i64 %70, ptr %9, align 8
  %71 = load i64, ptr %9, align 8
  %72 = icmp ne i64 %71, 6
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load i64, ptr %7, align 8
  store i64 %74, ptr %10, align 8
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %16, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load ptr, ptr %16, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 0
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 28), align 16
  %80 = load ptr, ptr %16, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %10, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  %85 = load i64, ptr %84, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = load ptr, ptr %16, align 8
  call void %86(i64 noundef 2, ptr noundef %87) #4
  unreachable

88:                                               ; preds = %65
  %89 = load i64, ptr %8, align 8
  %90 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 22), align 16
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i64 22, i64 6
  store i64 %93, ptr %10, align 8
  %94 = load i64, ptr %10, align 8
  %95 = icmp ne i64 %94, 6
  br i1 %95, label %96, label %111

96:                                               ; preds = %88
  %97 = load i64, ptr %7, align 8
  store i64 %97, ptr %11, align 8
  %98 = load ptr, ptr %4, align 8
  store ptr %98, ptr %17, align 8
  %99 = load i64, ptr %11, align 8
  %100 = load ptr, ptr %17, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 0
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 29), align 8
  %103 = load ptr, ptr %17, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %11, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = load ptr, ptr %17, align 8
  call void %109(i64 noundef 2, ptr noundef %110) #4
  unreachable

111:                                              ; preds = %88
  %112 = load i64, ptr %8, align 8
  %113 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 23), align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i64 22, i64 6
  store i64 %116, ptr %11, align 8
  %117 = load i64, ptr %7, align 8
  store i64 %117, ptr %12, align 8
  %118 = load ptr, ptr %4, align 8
  store ptr %118, ptr %18, align 8
  %119 = load i64, ptr %12, align 8
  %120 = load ptr, ptr %18, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 0
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %11, align 8
  %123 = icmp ne i64 %122, 6
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 30), align 16
  br label %128

126:                                              ; preds = %111
  %127 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 31), align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = load ptr, ptr %18, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %12, align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load i64, ptr %134, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = load ptr, ptr %18, align 8
  call void %136(i64 noundef 2, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_887(i64 noundef %0, ptr noundef %1) #2 {
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %31 = load i64, ptr %3, align 8
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, ptr %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %35, i32 noundef 4, i64 noundef %36) #4
  unreachable

37:                                               ; preds = %2
  %38 = load i64, ptr @C_timer_interrupt_counter, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, ptr @C_timer_interrupt_counter, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @C_raise_interrupt(i32 noundef 255)
  br label %42

42:                                               ; preds = %41, %37
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
  store ptr %43, ptr %13, align 8
  %44 = load ptr, ptr %13, align 8
  store ptr %44, ptr %14, align 8
  %45 = load ptr, ptr %14, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nsw i32 3, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, ptr @C_scratch_usage, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %50, %58
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %42
  %65 = load i64, ptr %3, align 8
  %66 = trunc i64 %65 to i32
  %67 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_887, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 24, align 16
  store ptr %69, ptr %12, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %15, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 0
  store i64 216172782113783810, ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store ptr %75, ptr %12, align 8
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 8), align 16
  %77 = load i64, ptr %15, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds %struct.C_block_struct, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds [0 x i64], ptr %79, i64 0, i64 0
  store i64 %76, ptr %80, align 8
  %81 = load i64, ptr %9, align 8
  %82 = load i64, ptr %15, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds %struct.C_block_struct, ptr %83, i32 0, i32 1
  %85 = getelementptr inbounds [0 x i64], ptr %84, i64 0, i64 1
  store i64 %81, ptr %85, align 8
  %86 = load i64, ptr %15, align 8
  store i64 %86, ptr %16, align 8
  %87 = load i64, ptr %16, align 8
  store i64 %87, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.76)
  %88 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %89 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %17, align 8
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %18, align 8
  %91 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %18, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %7, align 8
  %98 = load ptr, ptr %18, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %10, align 8
  %101 = load ptr, ptr %18, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load ptr, ptr %18, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %17, align 8
  %107 = load ptr, ptr %18, align 8
  call void %106(i64 noundef 4, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_897(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
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
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %16 = load i64, ptr @C_timer_interrupt_counter, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, ptr @C_timer_interrupt_counter, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %20

20:                                               ; preds = %19, %3
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
  store ptr %21, ptr %14, align 8
  %22 = load ptr, ptr %14, align 8
  store ptr %22, ptr %15, align 8
  %23 = load ptr, ptr %15, align 8
  %24 = load ptr, ptr @C_stack_limit, align 8
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = load i64, ptr @C_scratch_usage, align 8
  %30 = add nsw i64 15, %29
  %31 = icmp sgt i64 %28, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i64, ptr %4, align 8
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_897, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 96, align 16
  store ptr %41, ptr %13, align 8
  store i64 14, ptr %8, align 8
  %42 = load ptr, ptr %13, align 8
  store i64 1, ptr %42, align 8
  %43 = load i64, ptr %8, align 8
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 1
  store i64 %43, ptr %45, align 8
  %46 = load ptr, ptr %13, align 8
  %47 = ptrtoint ptr %46 to i64
  store i64 %47, ptr %7, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  store ptr %49, ptr %13, align 8
  %50 = load i64, ptr %7, align 8
  store i64 %50, ptr %9, align 8
  %51 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %51, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  store i64 ptrtoint (ptr @f_899 to i64), ptr %53, align 8
  %54 = load i64, ptr %9, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  store i64 %54, ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  store i64 %57, ptr %59, align 8
  %60 = load ptr, ptr %13, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 4
  store i64 ptrtoint (ptr @li18 to i64), ptr %61, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %7, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 5
  store ptr %65, ptr %13, align 8
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %10, align 8
  %67 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_945 to i64), ptr %69, align 8
  %70 = load i64, ptr %4, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %9, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %7, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 5
  store ptr %82, ptr %13, align 8
  %83 = load i64, ptr %7, align 8
  store i64 %83, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.77)
  %84 = load i64, ptr %11, align 8
  %85 = load i64, ptr %5, align 8
  call void @f_564(i64 noundef %84, i64 noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_979(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [3 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %13 = load i64, ptr @C_timer_interrupt_counter, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr @C_timer_interrupt_counter, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %17

17:                                               ; preds = %16, %2
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
  store ptr %18, ptr %9, align 8
  %19 = load ptr, ptr %9, align 8
  store ptr %19, ptr %10, align 8
  %20 = load ptr, ptr %10, align 8
  %21 = load ptr, ptr @C_stack_limit, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = load i64, ptr @C_scratch_usage, align 8
  %27 = add nsw i64 6, %26
  %28 = icmp sgt i64 %25, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, ptr %3, align 8
  %35 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_979, i32 noundef 2, i64 noundef %34, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %17
  %37 = alloca i8, i64 32, align 16
  store ptr %37, ptr %8, align 8
  %38 = load ptr, ptr %8, align 8
  store i64 2594073385365405699, ptr %38, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds i64, ptr %39, i64 1
  store i64 ptrtoint (ptr @f_983 to i64), ptr %40, align 8
  %41 = load i64, ptr %3, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 2
  store i64 %41, ptr %43, align 8
  %44 = load i64, ptr %4, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 3
  store i64 %44, ptr %46, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = ptrtoint ptr %47 to i64
  store i64 %48, ptr %5, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds i64, ptr %49, i64 4
  store ptr %50, ptr %8, align 8
  %51 = load i64, ptr %5, align 8
  store i64 %51, ptr %6, align 8
  call void @C_trace(ptr noundef @.str.82)
  %52 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 38), align 16
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  %55 = load i64, ptr %54, align 8
  %56 = call ptr @C_fast_retrieve_proc(i64 noundef %55)
  store ptr %56, ptr %11, align 8
  %57 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 38), align 16
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds [3 x i64], ptr %12, i64 0, i64 0
  store i64 %60, ptr %61, align 16
  %62 = load i64, ptr %6, align 8
  %63 = getelementptr inbounds [3 x i64], ptr %12, i64 0, i64 1
  store i64 %62, ptr %63, align 8
  %64 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 39), align 8
  %65 = getelementptr inbounds [3 x i64], ptr %12, i64 0, i64 2
  store i64 %64, ptr %65, align 16
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds [3 x i64], ptr %12, i64 0, i64 0
  call void %66(i64 noundef 3, ptr noundef %67) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1033(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds i64, ptr %34, i64 5
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %11, align 8
  %37 = load i64, ptr %3, align 8
  %38 = icmp slt i64 %37, 6
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i64, ptr %3, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, ptr %6, align 8
  call void @C_bad_min_argc_2(i32 noundef %41, i32 noundef 6, i64 noundef %42) #4
  unreachable

43:                                               ; preds = %2
  %44 = load i64, ptr @C_timer_interrupt_counter, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, ptr @C_timer_interrupt_counter, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @C_raise_interrupt(i32 noundef 255)
  br label %48

48:                                               ; preds = %47, %43
  %49 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
  store ptr %49, ptr %15, align 8
  %50 = load ptr, ptr %15, align 8
  store ptr %50, ptr %16, align 8
  %51 = load ptr, ptr %16, align 8
  %52 = load ptr, ptr @C_stack_limit, align 8
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = load i64, ptr %3, align 8
  %58 = icmp sgt i64 %57, 2
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 2
  %61 = add nsw i32 7, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, ptr @C_scratch_usage, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp sgt i64 %56, %64
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = load i64, ptr %3, align 8
  %72 = trunc i64 %71 to i32
  %73 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1033, i32 noundef %72, ptr noundef %73) #4
  unreachable

74:                                               ; preds = %48
  %75 = alloca i8, i64 56, align 16
  store ptr %75, ptr %14, align 8
  %76 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %76, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_1040 to i64), ptr %78, align 8
  %79 = load i64, ptr %10, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %9, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %7, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %11, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 6
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = ptrtoint ptr %94 to i64
  store i64 %95, ptr %5, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 7
  store ptr %97, ptr %14, align 8
  %98 = load i64, ptr %5, align 8
  store i64 %98, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.85)
  %99 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 3), align 8
  %100 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %99)
  store ptr %100, ptr %17, align 8
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %18, align 8
  %102 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 3), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %18, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 0
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %12, align 8
  %109 = load ptr, ptr %18, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %11, align 8
  %112 = load ptr, ptr %18, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %17, align 8
  %115 = load ptr, ptr %18, align 8
  call void %114(i64 noundef 3, ptr noundef %115) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1125(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
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
  %36 = add nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1125, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %7, align 8
  store i64 %50, ptr %8, align 8
  %51 = load ptr, ptr %4, align 8
  store ptr %51, ptr %12, align 8
  %52 = load i64, ptr %8, align 8
  %53 = load ptr, ptr %12, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 0
  store i64 %52, ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %8, align 8
  %62 = call ptr @C_fast_retrieve_proc(i64 noundef %61)
  %63 = load ptr, ptr %12, align 8
  call void %62(i64 noundef 2, ptr noundef %63) #4
  unreachable
}

declare i64 @C_mutate_slot(ptr noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_record3(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  store ptr %15, ptr %12, align 8
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds i64, ptr %16, i32 1
  store ptr %17, ptr %11, align 8
  store i64 576460752303423491, ptr %16, align 8
  %18 = load i64, ptr %8, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds i64, ptr %19, i32 1
  store ptr %20, ptr %11, align 8
  store i64 %18, ptr %19, align 8
  %21 = load i64, ptr %9, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr inbounds i64, ptr %22, i32 1
  store ptr %23, ptr %11, align 8
  store i64 %21, ptr %22, align 8
  %24 = load i64, ptr %10, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds i64, ptr %25, i32 1
  store ptr %26, ptr %11, align 8
  store i64 %24, ptr %25, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load ptr, ptr %6, align 8
  store ptr %27, ptr %28, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = ptrtoint ptr %29 to i64
  ret i64 %30
}

declare i64 @C_i_check_structure_2(i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_block_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_564(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds i64, ptr %7, i64 1
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %6, align 8
  call void @f_564(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

declare i64 @C_i_car(i64 noundef) #1

declare i64 @C_i_cdr(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_594(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %34 = icmp sgt i64 %33, 3
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 3
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_594, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.52)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 10), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call ptr @C_fast_retrieve_proc(i64 noundef %54)
  store ptr %55, ptr %12, align 8
  %56 = load i64, ptr %3, align 8
  %57 = icmp sge i64 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %13, align 8
  br label %62

60:                                               ; preds = %50
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %13, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 10), align 16
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %7, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = load ptr, ptr %13, align 8
  call void %84(i64 noundef 4, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @C_fast_retrieve_proc(i64 noundef %0) #0 {
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
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_722(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
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
  %38 = add nsw i32 5, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_722, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_725 to i64), ptr %55, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
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
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.54)
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  %79 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 0
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = load ptr, ptr %14, align 8
  call void %88(i64 noundef 2, ptr noundef %89) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_725(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = load i64, ptr @C_timer_interrupt_counter, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr @C_timer_interrupt_counter, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %30

30:                                               ; preds = %29, %2
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
  store ptr %31, ptr %18, align 8
  %32 = load ptr, ptr %18, align 8
  store ptr %32, ptr %19, align 8
  %33 = load ptr, ptr %19, align 8
  %34 = load ptr, ptr @C_stack_limit, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i64, ptr %3, align 8
  %40 = icmp sgt i64 %39, 3
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 3
  %43 = add nsw i32 22, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr @C_scratch_usage, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sgt i64 %38, %46
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load i64, ptr %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_725, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 176, align 16
  store ptr %57, ptr %17, align 8
  store i64 1, ptr %8, align 8
  %58 = load ptr, ptr %17, align 8
  store i64 1, ptr %58, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load ptr, ptr %17, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %17, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %17, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store ptr %65, ptr %17, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %9, align 8
  %67 = load ptr, ptr %17, align 8
  store i64 2594073385365405702, ptr %67, align 8
  %68 = load ptr, ptr %17, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_726 to i64), ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %17, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %17, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %17, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 4
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %17, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %17, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 6
  store i64 ptrtoint (ptr @li6 to i64), ptr %89, align 8
  %90 = load ptr, ptr %17, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %5, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  store ptr %93, ptr %17, align 8
  %94 = load i64, ptr %5, align 8
  store i64 %94, ptr %10, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  %98 = load i64, ptr %97, align 8
  %99 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %100 = call i64 @C_i_check_list_2(i64 noundef %98, i64 noundef %99)
  store i64 %100, ptr %11, align 8
  %101 = load ptr, ptr %17, align 8
  store i64 2594073385365405701, ptr %101, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_799 to i64), ptr %103, align 8
  %104 = load i64, ptr %7, align 8
  %105 = load ptr, ptr %17, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %17, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %17, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 5
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %17, align 8
  %123 = ptrtoint ptr %122 to i64
  store i64 %123, ptr %5, align 8
  %124 = load ptr, ptr %17, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 6
  store ptr %125, ptr %17, align 8
  %126 = load i64, ptr %5, align 8
  store i64 %126, ptr %12, align 8
  store i64 30, ptr %13, align 8
  %127 = load ptr, ptr %17, align 8
  store i64 1, ptr %127, align 8
  %128 = load i64, ptr %13, align 8
  %129 = load ptr, ptr %17, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load ptr, ptr %17, align 8
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %5, align 8
  %133 = load ptr, ptr %17, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 2
  store ptr %134, ptr %17, align 8
  %135 = load i64, ptr %5, align 8
  store i64 %135, ptr %14, align 8
  %136 = load ptr, ptr %17, align 8
  store i64 2594073385365405700, ptr %136, align 8
  %137 = load ptr, ptr %17, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 ptrtoint (ptr @f_843 to i64), ptr %138, align 8
  %139 = load i64, ptr %14, align 8
  %140 = load ptr, ptr %17, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %10, align 8
  %143 = load ptr, ptr %17, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 3
  store i64 %142, ptr %144, align 8
  %145 = load ptr, ptr %17, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 4
  store i64 ptrtoint (ptr @li12 to i64), ptr %146, align 8
  %147 = load ptr, ptr %17, align 8
  %148 = ptrtoint ptr %147 to i64
  store i64 %148, ptr %5, align 8
  %149 = load ptr, ptr %17, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 5
  store ptr %150, ptr %17, align 8
  %151 = load i64, ptr %5, align 8
  %152 = load i64, ptr %14, align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds %struct.C_block_struct, ptr %153, i32 0, i32 1
  %155 = getelementptr inbounds [0 x i64], ptr %154, i64 0, i64 0
  store i64 %151, ptr %155, align 8
  store i64 %151, ptr %15, align 8
  %156 = load i64, ptr %14, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds i64, ptr %157, i64 1
  %159 = load i64, ptr %158, align 8
  store i64 %159, ptr %16, align 8
  %160 = load i64, ptr %16, align 8
  %161 = load i64, ptr %12, align 8
  %162 = load i64, ptr %6, align 8
  %163 = inttoptr i64 %162 to ptr
  %164 = getelementptr inbounds i64, ptr %163, i64 2
  %165 = load i64, ptr %164, align 8
  call void @f_843(i64 noundef %160, i64 noundef %161, i64 noundef %165) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_726(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [3 x i64], align 16
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
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
  %28 = add nsw i64 9, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_726, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 56, align 16
  store ptr %39, ptr %10, align 8
  %40 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %40, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 1
  store i64 ptrtoint (ptr @f_730 to i64), ptr %42, align 8
  %43 = load i64, ptr %4, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  %47 = load ptr, ptr %10, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 2
  store i64 %46, ptr %48, align 8
  %49 = load i64, ptr %4, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 3
  %52 = load i64, ptr %51, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 %52, ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 4
  store i64 %55, ptr %57, align 8
  %58 = load i64, ptr %4, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 4
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 5
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %5, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 6
  store i64 %64, ptr %66, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = ptrtoint ptr %67 to i64
  store i64 %68, ptr %7, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 7
  store ptr %70, ptr %10, align 8
  %71 = load i64, ptr %7, align 8
  store i64 %71, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.55)
  %72 = load i64, ptr %4, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %9, align 8
  %77 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0
  store i64 %76, ptr %77, align 16
  %78 = load i64, ptr %8, align 8
  %79 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 1
  store i64 %78, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 2
  store i64 %80, ptr %81, align 16
  %82 = load i64, ptr %9, align 8
  %83 = call ptr @C_fast_retrieve_proc(i64 noundef %82)
  %84 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0
  call void %83(i64 noundef 3, ptr noundef %84) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_799(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
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
  %38 = add nsw i32 6, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_799, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_607 to i64), ptr %55, align 8
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
  %80 = load ptr, ptr %10, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %5, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store ptr %83, ptr %10, align 8
  %84 = load i64, ptr %5, align 8
  store i64 %84, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.62)
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  %88 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
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
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %14, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_843(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_843, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_853 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.75)
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
  call void @f_726(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_726(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_726(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_730(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  store ptr %29, ptr %16, align 8
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
  %40 = add nsw i32 14, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_730, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 112, align 16
  store ptr %54, ptr %14, align 8
  %55 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %55, align 8
  %56 = load ptr, ptr %14, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_731 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store i64 ptrtoint (ptr @li4 to i64), ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  store ptr %87, ptr %14, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %8, align 8
  %89 = load i64, ptr %7, align 8
  %90 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %91 = call i64 @C_i_check_list_2(i64 noundef %89, i64 noundef %90)
  store i64 %91, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %92 = load ptr, ptr %14, align 8
  store i64 1, ptr %92, align 8
  %93 = load i64, ptr %10, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store ptr %99, ptr %14, align 8
  %100 = load i64, ptr %5, align 8
  store i64 %100, ptr %11, align 8
  %101 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_772 to i64), ptr %103, align 8
  %104 = load i64, ptr %11, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %8, align 8
  %108 = load ptr, ptr %14, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 ptrtoint (ptr @li5 to i64), ptr %111, align 8
  %112 = load ptr, ptr %14, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %14, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 5
  store ptr %115, ptr %14, align 8
  %116 = load i64, ptr %5, align 8
  %117 = load i64, ptr %11, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds %struct.C_block_struct, ptr %118, i32 0, i32 1
  %120 = getelementptr inbounds [0 x i64], ptr %119, i64 0, i64 0
  store i64 %116, ptr %120, align 8
  store i64 %116, ptr %12, align 8
  %121 = load i64, ptr %11, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  store i64 %124, ptr %13, align 8
  %125 = load i64, ptr %13, align 8
  %126 = load i64, ptr %6, align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 6
  %129 = load i64, ptr %128, align 8
  %130 = load i64, ptr %7, align 8
  call void @f_772(i64 noundef %125, i64 noundef %129, i64 noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_731(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
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
  %15 = alloca [4 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %16 = load i64, ptr @C_timer_interrupt_counter, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, ptr @C_timer_interrupt_counter, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %20

20:                                               ; preds = %19, %3
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  store ptr %22, ptr %13, align 8
  %23 = load ptr, ptr %13, align 8
  %24 = load ptr, ptr @C_stack_limit, align 8
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = load i64, ptr @C_scratch_usage, align 8
  %30 = add nsw i64 10, %29
  %31 = icmp sgt i64 %28, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i64, ptr %4, align 8
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_731, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 56, align 16
  store ptr %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = call i64 @C_i_car(i64 noundef %42)
  store i64 %43, ptr %8, align 8
  %44 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_741 to i64), ptr %46, align 8
  %47 = load i64, ptr %4, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %5, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %4, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 4
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %4, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 4
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 5
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 6
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %7, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 7
  store ptr %74, ptr %11, align 8
  %75 = load i64, ptr %7, align 8
  store i64 %75, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.56)
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 19), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %14, align 8
  %78 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 19), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %81, ptr %82, align 16
  %83 = load i64, ptr %9, align 8
  %84 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %83, ptr %84, align 8
  %85 = load i64, ptr %8, align 8
  %86 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %85, ptr %86, align 16
  %87 = load i64, ptr %4, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %90, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_772(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_772, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_782 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.61)
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
  call void @f_731(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_731(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_731(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_741(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
  store ptr %28, ptr %12, align 8
  %29 = load ptr, ptr %12, align 8
  store ptr %29, ptr %13, align 8
  %30 = load ptr, ptr %13, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 4
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 4
  %40 = add nsw i32 12, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_741, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %11, align 8
  %55 = load i64, ptr %7, align 8
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %153

57:                                               ; preds = %53
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_744 to i64), ptr %60, align 8
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
  %85 = load ptr, ptr %11, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 6
  store ptr %88, ptr %11, align 8
  %89 = load i64, ptr %5, align 8
  store i64 %89, ptr %8, align 8
  %90 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %90, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 ptrtoint (ptr @f_764 to i64), ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 6
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %8, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %6, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %11, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 4
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %6, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 5
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %11, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 5
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = ptrtoint ptr %114 to i64
  store i64 %115, ptr %5, align 8
  %116 = load ptr, ptr %11, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 6
  store ptr %117, ptr %11, align 8
  %118 = load i64, ptr %5, align 8
  store i64 %118, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.57)
  %119 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %120 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %119)
  store ptr %120, ptr %14, align 8
  %121 = load i64, ptr %3, align 8
  %122 = icmp sge i64 %121, 5
  br i1 %122, label %123, label %125

123:                                              ; preds = %57
  %124 = load ptr, ptr %4, align 8
  store ptr %124, ptr %15, align 8
  br label %127

125:                                              ; preds = %57
  %126 = alloca i8, i64 40, align 16
  store ptr %126, ptr %15, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %15, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 0
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %9, align 8
  %135 = load ptr, ptr %15, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 1
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %6, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 4
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %15, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %6, align 8
  %144 = inttoptr i64 %143 to ptr
  %145 = getelementptr inbounds i64, ptr %144, i64 5
  %146 = load i64, ptr %145, align 8
  %147 = load ptr, ptr %15, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %15, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 4
  store i64 14, ptr %150, align 8
  %151 = load ptr, ptr %14, align 8
  %152 = load ptr, ptr %15, align 8
  call void %151(i64 noundef 5, ptr noundef %152) #4
  unreachable

153:                                              ; preds = %53
  %154 = load i64, ptr %6, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 3
  %157 = load i64, ptr %156, align 8
  store i64 %157, ptr %8, align 8
  %158 = load ptr, ptr %4, align 8
  store ptr %158, ptr %16, align 8
  %159 = load i64, ptr %8, align 8
  %160 = load ptr, ptr %16, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 0
  store i64 %159, ptr %161, align 8
  %162 = load ptr, ptr %16, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 1
  store i64 30, ptr %163, align 8
  %164 = load i64, ptr %8, align 8
  %165 = inttoptr i64 %164 to ptr
  %166 = getelementptr inbounds i64, ptr %165, i64 1
  %167 = load i64, ptr %166, align 8
  %168 = inttoptr i64 %167 to ptr
  %169 = load ptr, ptr %16, align 8
  call void %168(i64 noundef 2, ptr noundef %169) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_744(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  %39 = add nsw i32 8, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_744, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 64, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_748 to i64), ptr %56, align 8
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
  %69 = load ptr, ptr %11, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %5, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store ptr %72, ptr %11, align 8
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %74, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_756 to i64), ptr %76, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %5, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  store ptr %89, ptr %11, align 8
  %90 = load i64, ptr %5, align 8
  store i64 %90, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.58)
  %91 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 16), align 16
  %92 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %91)
  store ptr %92, ptr %14, align 8
  %93 = load i64, ptr %3, align 8
  %94 = icmp sge i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %52
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %15, align 8
  br label %99

97:                                               ; preds = %52
  %98 = alloca i8, i64 32, align 16
  store ptr %98, ptr %15, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 16), align 16
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %9, align 8
  %107 = load ptr, ptr %15, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 5
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 4, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_764(i64 noundef %0, ptr noundef %1) #2 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
  store ptr %28, ptr %11, align 8
  %29 = load ptr, ptr %11, align 8
  store ptr %29, ptr %12, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 4
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 4
  %40 = add nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_764, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 24, align 16
  store ptr %54, ptr %10, align 8
  %55 = load ptr, ptr %10, align 8
  %56 = ptrtoint ptr %55 to i64
  store i64 %56, ptr %13, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 216172782113783810, ptr %58, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  store ptr %60, ptr %10, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load i64, ptr %13, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds %struct.C_block_struct, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds [0 x i64], ptr %67, i64 0, i64 0
  store i64 %64, ptr %68, align 8
  %69 = load i64, ptr %7, align 8
  %70 = load i64, ptr %13, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 1
  store i64 %69, ptr %73, align 8
  %74 = load i64, ptr %13, align 8
  store i64 %74, ptr %14, align 8
  %75 = load i64, ptr %14, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.60)
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %15, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 5
  br i1 %79, label %80, label %82

80:                                               ; preds = %53
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %16, align 8
  br label %84

82:                                               ; preds = %53
  %83 = alloca i8, i64 40, align 16
  store ptr %83, ptr %16, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %16, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 5
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %8, align 8
  %110 = load ptr, ptr %16, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = load ptr, ptr %16, align 8
  call void %112(i64 noundef 5, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_748(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !38
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
  %34 = icmp sgt i64 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_748, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = load i64, ptr %6, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 2
  %54 = load i64, ptr %53, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %7, align 8
  %58 = call i64 @C_mutate(ptr noundef %56, i64 noundef %57)
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %9, align 8
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %9, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = load ptr, ptr %13, align 8
  call void %74(i64 noundef 2, ptr noundef %75) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_756(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = icmp sgt i64 %33, 3
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 3
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_756, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.59)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 15), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call ptr @C_fast_retrieve_proc(i64 noundef %54)
  store ptr %55, ptr %12, align 8
  %56 = load i64, ptr %3, align 8
  %57 = icmp sge i64 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %13, align 8
  br label %62

60:                                               ; preds = %50
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %13, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 15), align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %7, align 8
  %85 = call i64 @C_i_length(i64 noundef %84)
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = load ptr, ptr %13, align 8
  call void %88(i64 noundef 4, ptr noundef %89) #4
  unreachable
}

declare i64 @C_i_length(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_772(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_772(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_i_pairp(i64 noundef %0) #0 {
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
define internal void @f_782(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_782, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_772(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_607(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !41
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
  %38 = add nsw i32 7, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_607, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_610 to i64), ptr %55, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
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
  %83 = load ptr, ptr %10, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %10, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.63)
  %88 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %89 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %13, align 8
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  %91 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 26), align 16
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %8, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 2, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_610(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
  store ptr %34, ptr %21, align 8
  %35 = load ptr, ptr %21, align 8
  store ptr %35, ptr %22, align 8
  %36 = load ptr, ptr %22, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 3
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 3
  %46 = add nsw i32 29, %45
  %47 = sext i32 %46 to i64
  %48 = load i64, ptr @C_scratch_usage, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp sgt i64 %41, %49
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load i64, ptr %3, align 8
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_610, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  %60 = alloca i8, i64 232, align 16
  store ptr %60, ptr %20, align 8
  store i64 6, ptr %8, align 8
  %61 = load ptr, ptr %20, align 8
  store i64 1, ptr %61, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %20, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 %62, ptr %64, align 8
  %65 = load ptr, ptr %20, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %20, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store ptr %68, ptr %20, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %70 = load ptr, ptr %20, align 8
  store i64 1, ptr %70, align 8
  %71 = load i64, ptr %10, align 8
  %72 = load ptr, ptr %20, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %20, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %20, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store ptr %77, ptr %20, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %11, align 8
  %79 = load ptr, ptr %20, align 8
  store i64 2594073385365405703, ptr %79, align 8
  %80 = load ptr, ptr %20, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 ptrtoint (ptr @f_612 to i64), ptr %81, align 8
  %82 = load i64, ptr %11, align 8
  %83 = load ptr, ptr %20, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %9, align 8
  %86 = load ptr, ptr %20, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %7, align 8
  %89 = load ptr, ptr %20, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %20, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 5
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %20, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 6
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %20, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 7
  store i64 ptrtoint (ptr @li9 to i64), ptr %104, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = ptrtoint ptr %105 to i64
  store i64 %106, ptr %5, align 8
  %107 = load ptr, ptr %20, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 8
  store ptr %108, ptr %20, align 8
  %109 = load i64, ptr %5, align 8
  %110 = load i64, ptr %11, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds %struct.C_block_struct, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds [0 x i64], ptr %112, i64 0, i64 0
  store i64 %109, ptr %113, align 8
  store i64 %109, ptr %12, align 8
  %114 = load ptr, ptr %20, align 8
  store i64 2594073385365405700, ptr %114, align 8
  %115 = load ptr, ptr %20, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  store i64 ptrtoint (ptr @f_677 to i64), ptr %116, align 8
  %117 = load i64, ptr %11, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %20, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %20, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  store i64 ptrtoint (ptr @li10 to i64), ptr %127, align 8
  %128 = load ptr, ptr %20, align 8
  %129 = ptrtoint ptr %128 to i64
  store i64 %129, ptr %5, align 8
  %130 = load ptr, ptr %20, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 5
  store ptr %131, ptr %20, align 8
  %132 = load i64, ptr %5, align 8
  store i64 %132, ptr %13, align 8
  %133 = load i64, ptr %6, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 4
  %136 = load i64, ptr %135, align 8
  %137 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %138 = call i64 @C_i_check_list_2(i64 noundef %136, i64 noundef %137)
  store i64 %138, ptr %14, align 8
  %139 = load ptr, ptr %20, align 8
  store i64 2594073385365405700, ptr %139, align 8
  %140 = load ptr, ptr %20, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 ptrtoint (ptr @f_693 to i64), ptr %141, align 8
  %142 = load i64, ptr %9, align 8
  %143 = load ptr, ptr %20, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store i64 %142, ptr %144, align 8
  %145 = load i64, ptr %6, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 5
  %148 = load i64, ptr %147, align 8
  %149 = load ptr, ptr %20, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 3
  store i64 %148, ptr %150, align 8
  %151 = load i64, ptr %6, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 6
  %154 = load i64, ptr %153, align 8
  %155 = load ptr, ptr %20, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 4
  store i64 %154, ptr %156, align 8
  %157 = load ptr, ptr %20, align 8
  %158 = ptrtoint ptr %157 to i64
  store i64 %158, ptr %5, align 8
  %159 = load ptr, ptr %20, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 5
  store ptr %160, ptr %20, align 8
  %161 = load i64, ptr %5, align 8
  store i64 %161, ptr %15, align 8
  store i64 30, ptr %16, align 8
  %162 = load ptr, ptr %20, align 8
  store i64 1, ptr %162, align 8
  %163 = load i64, ptr %16, align 8
  %164 = load ptr, ptr %20, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 %163, ptr %165, align 8
  %166 = load ptr, ptr %20, align 8
  %167 = ptrtoint ptr %166 to i64
  store i64 %167, ptr %5, align 8
  %168 = load ptr, ptr %20, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 2
  store ptr %169, ptr %20, align 8
  %170 = load i64, ptr %5, align 8
  store i64 %170, ptr %17, align 8
  %171 = load ptr, ptr %20, align 8
  store i64 2594073385365405700, ptr %171, align 8
  %172 = load ptr, ptr %20, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 1
  store i64 ptrtoint (ptr @f_695 to i64), ptr %173, align 8
  %174 = load i64, ptr %17, align 8
  %175 = load ptr, ptr %20, align 8
  %176 = getelementptr inbounds i64, ptr %175, i64 2
  store i64 %174, ptr %176, align 8
  %177 = load i64, ptr %13, align 8
  %178 = load ptr, ptr %20, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 3
  store i64 %177, ptr %179, align 8
  %180 = load ptr, ptr %20, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 4
  store i64 ptrtoint (ptr @li11 to i64), ptr %181, align 8
  %182 = load ptr, ptr %20, align 8
  %183 = ptrtoint ptr %182 to i64
  store i64 %183, ptr %5, align 8
  %184 = load ptr, ptr %20, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 5
  store ptr %185, ptr %20, align 8
  %186 = load i64, ptr %5, align 8
  %187 = load i64, ptr %17, align 8
  %188 = inttoptr i64 %187 to ptr
  %189 = getelementptr inbounds %struct.C_block_struct, ptr %188, i32 0, i32 1
  %190 = getelementptr inbounds [0 x i64], ptr %189, i64 0, i64 0
  store i64 %186, ptr %190, align 8
  store i64 %186, ptr %18, align 8
  %191 = load i64, ptr %17, align 8
  %192 = inttoptr i64 %191 to ptr
  %193 = getelementptr inbounds i64, ptr %192, i64 1
  %194 = load i64, ptr %193, align 8
  store i64 %194, ptr %19, align 8
  %195 = load i64, ptr %19, align 8
  %196 = load i64, ptr %15, align 8
  %197 = load i64, ptr %6, align 8
  %198 = inttoptr i64 %197 to ptr
  %199 = getelementptr inbounds i64, ptr %198, i64 4
  %200 = load i64, ptr %199, align 8
  call void @f_695(i64 noundef %195, i64 noundef %196, i64 noundef %200) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_612(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [5 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %15 = load i64, ptr @C_timer_interrupt_counter, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr @C_timer_interrupt_counter, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %19

19:                                               ; preds = %18, %3
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
  store ptr %20, ptr %11, align 8
  %21 = load ptr, ptr %11, align 8
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = load ptr, ptr @C_stack_limit, align 8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = load i64, ptr @C_scratch_usage, align 8
  %29 = add nsw i64 13, %28
  %30 = icmp sgt i64 %27, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_612, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 72, align 16
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_616 to i64), ptr %43, align 8
  %44 = load i64, ptr %4, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  store i64 %47, ptr %49, align 8
  %50 = load i64, ptr %4, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 3
  %53 = load i64, ptr %52, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %4, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 4
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %4, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 5
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 5
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %5, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 6
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 7
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %4, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 6
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 8
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %7, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 9
  store ptr %83, ptr %10, align 8
  %84 = load i64, ptr %7, align 8
  store i64 %84, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.64)
  %85 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  store i64 %90, ptr %91, align 16
  %92 = load i64, ptr %8, align 8
  %93 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 1
  store i64 %92, ptr %93, align 8
  %94 = load i64, ptr %4, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 5
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 2
  store i64 %97, ptr %98, align 16
  %99 = load i64, ptr %6, align 8
  %100 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 3
  store i64 %99, ptr %100, align 8
  %101 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 4
  store i64 22, ptr %101, align 16
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  call void %102(i64 noundef 5, ptr noundef %103) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_677(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [5 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %15 = load i64, ptr @C_timer_interrupt_counter, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr @C_timer_interrupt_counter, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %19

19:                                               ; preds = %18, %3
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
  store ptr %20, ptr %11, align 8
  %21 = load ptr, ptr %11, align 8
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = load ptr, ptr @C_stack_limit, align 8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = load i64, ptr @C_scratch_usage, align 8
  %29 = add nsw i64 9, %28
  %30 = icmp sgt i64 %27, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_677, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 40, align 16
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_684 to i64), ptr %43, align 8
  %44 = load i64, ptr %5, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %46, align 8
  %47 = load i64, ptr %4, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %6, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 4
  store i64 %53, ptr %55, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = ptrtoint ptr %56 to i64
  store i64 %57, ptr %7, align 8
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 5
  store ptr %59, ptr %10, align 8
  %60 = load i64, ptr %7, align 8
  store i64 %60, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.72)
  %61 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %62 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %61)
  store ptr %62, ptr %13, align 8
  %63 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  store i64 %66, ptr %67, align 16
  %68 = load i64, ptr %8, align 8
  %69 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 1
  store i64 %68, ptr %69, align 8
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 2
  store i64 %73, ptr %74, align 16
  %75 = load i64, ptr %6, align 8
  %76 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 3
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 4
  store i64 6, ptr %77, align 16
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  call void %78(i64 noundef 5, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_693(i64 noundef %0, ptr noundef %1) #2 {
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
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 0
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %6, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds i64, ptr %27, i64 1
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %7, align 8
  %30 = load i64, ptr @C_timer_interrupt_counter, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr @C_timer_interrupt_counter, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %34

34:                                               ; preds = %33, %2
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
  store ptr %35, ptr %18, align 8
  %36 = load ptr, ptr %18, align 8
  store ptr %36, ptr %19, align 8
  %37 = load ptr, ptr %19, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  %47 = add nsw i32 0, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, ptr @C_scratch_usage, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp sgt i64 %42, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i64, ptr %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_693, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %8, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = call i64 @C_i_less_or_equalp(i64 noundef %74, i64 noundef 5)
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %9, align 8
  %77 = icmp ne i64 %76, 6
  br i1 %77, label %78, label %83

78:                                               ; preds = %60
  %79 = load i64, ptr %8, align 8
  %80 = icmp ne i64 %79, 6
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i64 6, i64 22
  br label %84

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i64 [ %82, %78 ], [ 6, %83 ]
  store i64 %85, ptr %10, align 8
  %86 = load i64, ptr %10, align 8
  %87 = icmp ne i64 %86, 6
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  store i64 %92, ptr %11, align 8
  %93 = load ptr, ptr %4, align 8
  store ptr %93, ptr %20, align 8
  %94 = load i64, ptr %11, align 8
  %95 = load ptr, ptr %20, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), align 8
  %98 = load ptr, ptr %20, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %11, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %20, align 8
  call void %104(i64 noundef 2, ptr noundef %105) #4
  unreachable

106:                                              ; preds = %84
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  %110 = load i64, ptr %109, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  %114 = call i64 @C_i_nequalp(i64 noundef %113, i64 noundef 7)
  store i64 %114, ptr %11, align 8
  %115 = load i64, ptr %11, align 8
  %116 = icmp ne i64 %115, 6
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i64, ptr %8, align 8
  %119 = icmp ne i64 %118, 6
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i64 6, i64 22
  br label %123

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i64 [ %121, %117 ], [ 6, %122 ]
  store i64 %124, ptr %12, align 8
  %125 = load i64, ptr %12, align 8
  %126 = icmp ne i64 %125, 6
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load i64, ptr %6, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 4
  %131 = load i64, ptr %130, align 8
  store i64 %131, ptr %13, align 8
  %132 = load ptr, ptr %4, align 8
  store ptr %132, ptr %21, align 8
  %133 = load i64, ptr %13, align 8
  %134 = load ptr, ptr %21, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 0
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 22), align 16
  %137 = load ptr, ptr %21, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 %136, ptr %138, align 8
  %139 = load i64, ptr %13, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  %142 = load i64, ptr %141, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = load ptr, ptr %21, align 8
  call void %143(i64 noundef 2, ptr noundef %144) #4
  unreachable

145:                                              ; preds = %123
  %146 = load i64, ptr %6, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  %149 = load i64, ptr %148, align 8
  %150 = inttoptr i64 %149 to ptr
  %151 = getelementptr inbounds i64, ptr %150, i64 1
  %152 = load i64, ptr %151, align 8
  %153 = call i64 @C_i_less_or_equalp(i64 noundef %152, i64 noundef 5)
  store i64 %153, ptr %13, align 8
  %154 = load i64, ptr %13, align 8
  %155 = icmp ne i64 %154, 6
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i64, ptr %8, align 8
  br label %159

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i64 [ %157, %156 ], [ 6, %158 ]
  store i64 %160, ptr %14, align 8
  %161 = load i64, ptr %14, align 8
  %162 = icmp ne i64 %161, 6
  br i1 %162, label %163, label %181

163:                                              ; preds = %159
  %164 = load i64, ptr %6, align 8
  %165 = inttoptr i64 %164 to ptr
  %166 = getelementptr inbounds i64, ptr %165, i64 4
  %167 = load i64, ptr %166, align 8
  store i64 %167, ptr %15, align 8
  %168 = load ptr, ptr %4, align 8
  store ptr %168, ptr %22, align 8
  %169 = load i64, ptr %15, align 8
  %170 = load ptr, ptr %22, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 0
  store i64 %169, ptr %171, align 8
  %172 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 23), align 8
  %173 = load ptr, ptr %22, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 1
  store i64 %172, ptr %174, align 8
  %175 = load i64, ptr %15, align 8
  %176 = inttoptr i64 %175 to ptr
  %177 = getelementptr inbounds i64, ptr %176, i64 1
  %178 = load i64, ptr %177, align 8
  %179 = inttoptr i64 %178 to ptr
  %180 = load ptr, ptr %22, align 8
  call void %179(i64 noundef 2, ptr noundef %180) #4
  unreachable

181:                                              ; preds = %159
  %182 = load i64, ptr %6, align 8
  %183 = inttoptr i64 %182 to ptr
  %184 = getelementptr inbounds i64, ptr %183, i64 3
  %185 = load i64, ptr %184, align 8
  %186 = inttoptr i64 %185 to ptr
  %187 = getelementptr inbounds i64, ptr %186, i64 1
  %188 = load i64, ptr %187, align 8
  %189 = call i64 @C_i_greaterp(i64 noundef %188, i64 noundef 7)
  store i64 %189, ptr %15, align 8
  %190 = load i64, ptr %6, align 8
  %191 = inttoptr i64 %190 to ptr
  %192 = getelementptr inbounds i64, ptr %191, i64 4
  %193 = load i64, ptr %192, align 8
  store i64 %193, ptr %16, align 8
  %194 = load ptr, ptr %4, align 8
  store ptr %194, ptr %23, align 8
  %195 = load i64, ptr %16, align 8
  %196 = load ptr, ptr %23, align 8
  %197 = getelementptr inbounds i64, ptr %196, i64 0
  store i64 %195, ptr %197, align 8
  %198 = load i64, ptr %15, align 8
  %199 = icmp ne i64 %198, 6
  br i1 %199, label %200, label %202

200:                                              ; preds = %181
  %201 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 24), align 16
  br label %204

202:                                              ; preds = %181
  %203 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 25), align 8
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i64 [ %201, %200 ], [ %203, %202 ]
  %206 = load ptr, ptr %23, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 1
  store i64 %205, ptr %207, align 8
  %208 = load i64, ptr %16, align 8
  %209 = inttoptr i64 %208 to ptr
  %210 = getelementptr inbounds i64, ptr %209, i64 1
  %211 = load i64, ptr %210, align 8
  %212 = inttoptr i64 %211 to ptr
  %213 = load ptr, ptr %23, align 8
  call void %212(i64 noundef 2, ptr noundef %213) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_695(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_695, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_705 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.74)
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
  call void @f_677(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_612(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_612(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_616(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
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
  %38 = add nsw i32 9, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_616, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 72, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_619 to i64), ptr %55, align 8
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
  %98 = load ptr, ptr %10, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %5, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  store ptr %101, ptr %10, align 8
  %102 = load i64, ptr %5, align 8
  store i64 %102, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.65)
  %103 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %104 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %103)
  store ptr %104, ptr %13, align 8
  %105 = load i64, ptr %3, align 8
  %106 = icmp sge i64 %105, 5
  br i1 %106, label %107, label %109

107:                                              ; preds = %51
  %108 = load ptr, ptr %4, align 8
  store ptr %108, ptr %14, align 8
  br label %111

109:                                              ; preds = %51
  %110 = alloca i8, i64 40, align 16
  store ptr %110, ptr %14, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 0
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 4
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 2
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %6, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 7
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %14, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  store i64 %130, ptr %132, align 8
  %133 = load ptr, ptr %14, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 4
  store i64 22, ptr %134, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = load ptr, ptr %14, align 8
  call void %135(i64 noundef 5, ptr noundef %136) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_619(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
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
  %39 = add nsw i32 13, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_619, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_620 to i64), ptr %56, align 8
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
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store i64 ptrtoint (ptr @li7 to i64), ptr %82, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %11, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  %88 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %88, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_644 to i64), ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 6
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %11, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 7
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 4
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %8, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 5
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %11, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 6
  store ptr %115, ptr %11, align 8
  %116 = load i64, ptr %5, align 8
  store i64 %116, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.66)
  %117 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %118 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %117)
  store ptr %118, ptr %14, align 8
  %119 = load i64, ptr %3, align 8
  %120 = icmp sge i64 %119, 5
  br i1 %120, label %121, label %123

121:                                              ; preds = %52
  %122 = load ptr, ptr %4, align 8
  store ptr %122, ptr %15, align 8
  br label %125

123:                                              ; preds = %52
  %124 = alloca i8, i64 40, align 16
  store ptr %124, ptr %15, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 0
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %9, align 8
  %133 = load ptr, ptr %15, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %6, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 8
  %138 = load i64, ptr %137, align 8
  %139 = load ptr, ptr %15, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 2
  store i64 %138, ptr %140, align 8
  %141 = load i64, ptr %6, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds i64, ptr %142, i64 7
  %144 = load i64, ptr %143, align 8
  %145 = load ptr, ptr %15, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 3
  store i64 %144, ptr %146, align 8
  %147 = load ptr, ptr %15, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 4
  store i64 14, ptr %148, align 8
  %149 = load ptr, ptr %14, align 8
  %150 = load ptr, ptr %15, align 8
  call void %149(i64 noundef 5, ptr noundef %150) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_620(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [5 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %15 = load i64, ptr @C_timer_interrupt_counter, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr @C_timer_interrupt_counter, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %19

19:                                               ; preds = %18, %3
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
  store ptr %20, ptr %11, align 8
  %21 = load ptr, ptr %11, align 8
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = load ptr, ptr @C_stack_limit, align 8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = load i64, ptr @C_scratch_usage, align 8
  %29 = add nsw i64 11, %28
  %30 = icmp sgt i64 %27, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_620, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 56, align 16
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_641 to i64), ptr %43, align 8
  %44 = load i64, ptr %4, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  store i64 %47, ptr %49, align 8
  %50 = load i64, ptr %5, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %6, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 4
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %4, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 5
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %4, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 4
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 6
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %7, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 7
  store ptr %71, ptr %10, align 8
  %72 = load i64, ptr %7, align 8
  store i64 %72, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.67)
  %73 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %74 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
  store ptr %74, ptr %13, align 8
  %75 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  store i64 %78, ptr %79, align 16
  %80 = load i64, ptr %8, align 8
  %81 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 1
  store i64 %80, ptr %81, align 8
  %82 = load i64, ptr %4, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 2
  store i64 %85, ptr %86, align 16
  %87 = load i64, ptr %6, align 8
  %88 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 3
  store i64 %87, ptr %88, align 8
  %89 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 4
  store i64 6, ptr %89, align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds [5 x i64], ptr %14, i64 0, i64 0
  call void %90(i64 noundef 5, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_644(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  store ptr %29, ptr %16, align 8
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
  %40 = add nsw i32 12, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_644, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %57 = call i64 @C_i_check_list_2(i64 noundef %55, i64 noundef %56)
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_650 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 5
  store ptr %82, ptr %14, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %84 = load ptr, ptr %14, align 8
  store i64 1, ptr %84, align 8
  %85 = load i64, ptr %10, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %5, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store ptr %91, ptr %14, align 8
  %92 = load i64, ptr %5, align 8
  store i64 %92, ptr %11, align 8
  %93 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %93, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 ptrtoint (ptr @f_655 to i64), ptr %95, align 8
  %96 = load i64, ptr %11, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 ptrtoint (ptr @li8 to i64), ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %5, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 5
  store ptr %110, ptr %14, align 8
  %111 = load i64, ptr %5, align 8
  %112 = load i64, ptr %11, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds %struct.C_block_struct, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds [0 x i64], ptr %114, i64 0, i64 0
  store i64 %111, ptr %115, align 8
  store i64 %111, ptr %12, align 8
  %116 = load i64, ptr %11, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load i64, ptr %118, align 8
  store i64 %119, ptr %13, align 8
  %120 = load i64, ptr %13, align 8
  %121 = load i64, ptr %9, align 8
  %122 = load i64, ptr %7, align 8
  call void @f_655(i64 noundef %120, i64 noundef %121, i64 noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_620(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_620(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_641(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nsw i32 4, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_641, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %7, align 8
  %54 = icmp ne i64 %53, 6
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i64 6, i64 22
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.68)
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %8, align 8
  %66 = load i64, ptr %8, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  call void @f_612(i64 noundef %66, i64 noundef %70, i64 noundef %74) #4
  unreachable

75:                                               ; preds = %51
  %76 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %76, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_636 to i64), ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store ptr %94, ptr %10, align 8
  %95 = load i64, ptr %5, align 8
  store i64 %95, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.69)
  %96 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %97 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %96)
  store ptr %97, ptr %13, align 8
  %98 = load i64, ptr %3, align 8
  %99 = icmp sge i64 %98, 5
  br i1 %99, label %100, label %102

100:                                              ; preds = %75
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %14, align 8
  br label %104

102:                                              ; preds = %75
  %103 = alloca i8, i64 40, align 16
  store ptr %103, ptr %14, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 18), align 16
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %8, align 8
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %6, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 6
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %14, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 4
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %14, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %14, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  store i64 6, ptr %127, align 8
  %128 = load ptr, ptr %13, align 8
  %129 = load ptr, ptr %14, align 8
  call void %128(i64 noundef 5, ptr noundef %129) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_636(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  %38 = add nsw i32 0, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_636, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds %struct.C_block_struct, ptr %59, i32 0, i32 1
  %61 = getelementptr inbounds [0 x i64], ptr %60, i64 0, i64 0
  store i64 22, ptr %61, align 8
  store i64 22, ptr %8, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %9, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %13, align 8
  %67 = load i64, ptr %9, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %9, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  %76 = load i64, ptr %75, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = load ptr, ptr %13, align 8
  call void %77(i64 noundef 2, ptr noundef %78) #4
  unreachable

79:                                               ; preds = %51
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  store i64 %83, ptr %8, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 30, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = load ptr, ptr %14, align 8
  call void %94(i64 noundef 2, ptr noundef %95) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_650(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
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
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_650, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.70)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
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
  %60 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 17), align 8
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
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store i64 6, ptr %85, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = load ptr, ptr %13, align 8
  call void %86(i64 noundef 5, ptr noundef %87) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_655(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_655, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_665 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.71)
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
  call void @f_620(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_655(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_655(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_665(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_665, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_655(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_677(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_677(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_684(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
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
  %33 = icmp sgt i64 %32, 2
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  %36 = add nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, ptr @C_scratch_usage, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sgt i64 %31, %39
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_684, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %7, align 8
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  %56 = load i64, ptr %55, align 8
  store i64 %56, ptr %8, align 8
  %57 = load ptr, ptr %4, align 8
  store ptr %57, ptr %12, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 0
  store i64 %58, ptr %60, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 30, ptr %62, align 8
  %63 = load i64, ptr %8, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = load ptr, ptr %12, align 8
  call void %67(i64 noundef 2, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %49
  call void @C_trace(ptr noundef @.str.73)
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  %85 = load i64, ptr %84, align 8
  call void @f_612(i64 noundef %77, i64 noundef %81, i64 noundef %85) #4
  unreachable
}

declare i64 @C_i_less_or_equalp(i64 noundef, i64 noundef) #1

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) #1

declare i64 @C_i_greaterp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_695(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_695(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_705(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_705, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_695(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_843(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_843(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_853(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_853, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_843(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_897(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_897(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_899(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [3 x i64], align 16
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
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
  %28 = add nsw i64 6, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_899, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 32, align 16
  store ptr %39, ptr %10, align 8
  %40 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %40, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 1
  store i64 ptrtoint (ptr @f_903 to i64), ptr %42, align 8
  %43 = load i64, ptr %4, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  %47 = load ptr, ptr %10, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 2
  store i64 %46, ptr %48, align 8
  %49 = load i64, ptr %5, align 8
  %50 = load ptr, ptr %10, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 3
  store i64 %49, ptr %51, align 8
  %52 = load ptr, ptr %10, align 8
  %53 = ptrtoint ptr %52 to i64
  store i64 %53, ptr %7, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 4
  store ptr %55, ptr %10, align 8
  %56 = load i64, ptr %7, align 8
  store i64 %56, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.78)
  %57 = load i64, ptr %4, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %9, align 8
  %61 = load i64, ptr %9, align 8
  %62 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0
  store i64 %61, ptr %62, align 16
  %63 = load i64, ptr %8, align 8
  %64 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 1
  store i64 %63, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 2
  store i64 %65, ptr %66, align 16
  %67 = load i64, ptr %9, align 8
  %68 = call ptr @C_fast_retrieve_proc(i64 noundef %67)
  %69 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0
  call void %68(i64 noundef 3, ptr noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_945(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  store ptr %29, ptr %16, align 8
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
  %40 = add nsw i32 11, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_945, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 88, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %57 = call i64 @C_i_check_list_2(i64 noundef %55, i64 noundef %56)
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_951 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  store ptr %76, ptr %14, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %78 = load ptr, ptr %14, align 8
  store i64 1, ptr %78, align 8
  %79 = load i64, ptr %10, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %11, align 8
  %87 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 ptrtoint (ptr @f_956 to i64), ptr %89, align 8
  %90 = load i64, ptr %11, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 ptrtoint (ptr @li19 to i64), ptr %100, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 5
  store ptr %104, ptr %14, align 8
  %105 = load i64, ptr %5, align 8
  %106 = load i64, ptr %11, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds %struct.C_block_struct, ptr %107, i32 0, i32 1
  %109 = getelementptr inbounds [0 x i64], ptr %108, i64 0, i64 0
  store i64 %105, ptr %109, align 8
  store i64 %105, ptr %12, align 8
  %110 = load i64, ptr %11, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  store i64 %113, ptr %13, align 8
  %114 = load i64, ptr %13, align 8
  %115 = load i64, ptr %9, align 8
  %116 = load i64, ptr %7, align 8
  call void @f_956(i64 noundef %114, i64 noundef %115, i64 noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_899(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_899(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_903(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  store ptr %29, ptr %16, align 8
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
  %40 = add nsw i32 11, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_903, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 88, align 16
  store ptr %54, ptr %14, align 8
  %55 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %55, align 8
  %56 = load ptr, ptr %14, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_904 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 ptrtoint (ptr @li16 to i64), ptr %65, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %8, align 8
  %71 = load i64, ptr %7, align 8
  %72 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 20), align 16
  %73 = call i64 @C_i_check_list_2(i64 noundef %71, i64 noundef %72)
  store i64 %73, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %74 = load ptr, ptr %14, align 8
  store i64 1, ptr %74, align 8
  %75 = load i64, ptr %10, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store ptr %81, ptr %14, align 8
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %11, align 8
  %83 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_921 to i64), ptr %85, align 8
  %86 = load i64, ptr %11, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store i64 ptrtoint (ptr @li17 to i64), ptr %93, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = ptrtoint ptr %94 to i64
  store i64 %95, ptr %5, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  store ptr %97, ptr %14, align 8
  %98 = load i64, ptr %5, align 8
  %99 = load i64, ptr %11, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds %struct.C_block_struct, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds [0 x i64], ptr %101, i64 0, i64 0
  store i64 %98, ptr %102, align 8
  store i64 %98, ptr %12, align 8
  %103 = load i64, ptr %11, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  store i64 %106, ptr %13, align 8
  %107 = load i64, ptr %13, align 8
  %108 = load i64, ptr %6, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 3
  %111 = load i64, ptr %110, align 8
  %112 = load i64, ptr %7, align 8
  call void @f_921(i64 noundef %107, i64 noundef %111, i64 noundef %112) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_904(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %18 = load i64, ptr @C_timer_interrupt_counter, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, ptr @C_timer_interrupt_counter, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %22

22:                                               ; preds = %21, %3
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  store ptr %23, ptr %13, align 8
  %24 = load ptr, ptr %13, align 8
  store ptr %24, ptr %14, align 8
  %25 = load ptr, ptr %14, align 8
  %26 = load ptr, ptr @C_stack_limit, align 8
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = load i64, ptr @C_scratch_usage, align 8
  %32 = add nsw i64 4, %31
  %33 = icmp sgt i64 %30, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i64, ptr %4, align 8
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_904, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 24, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %6, align 8
  %45 = call i64 @C_i_car(i64 noundef %44)
  store i64 %45, ptr %8, align 8
  %46 = load ptr, ptr %12, align 8
  %47 = ptrtoint ptr %46 to i64
  store i64 %47, ptr %15, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 0
  store i64 216172782113783810, ptr %49, align 8
  %50 = load ptr, ptr %12, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 3
  store ptr %51, ptr %12, align 8
  %52 = load i64, ptr %8, align 8
  %53 = load i64, ptr %15, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.C_block_struct, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [0 x i64], ptr %55, i64 0, i64 0
  store i64 %52, ptr %56, align 8
  %57 = load i64, ptr %4, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %15, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds %struct.C_block_struct, ptr %65, i32 0, i32 1
  %67 = getelementptr inbounds [0 x i64], ptr %66, i64 0, i64 1
  store i64 %63, ptr %67, align 8
  %68 = load i64, ptr %15, align 8
  store i64 %68, ptr %16, align 8
  %69 = load i64, ptr %16, align 8
  store i64 %69, ptr %9, align 8
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  %76 = load i64, ptr %9, align 8
  %77 = call i64 @C_mutate(ptr noundef %75, i64 noundef %76)
  store i64 %77, ptr %10, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %11, align 8
  %79 = load i64, ptr %11, align 8
  %80 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %79, ptr %80, align 16
  %81 = load i64, ptr %10, align 8
  %82 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 %81, ptr %82, align 8
  %83 = load i64, ptr %11, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %87(i64 noundef 2, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_921(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_921, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_931 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.79)
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
  call void @f_904(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_904(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_904(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_921(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_921(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_931(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_931, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_921(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_951(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
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
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_951, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.80)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 34), align 16
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 24, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 34), align 16
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
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = load ptr, ptr %13, align 8
  call void %81(i64 noundef 3, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_956(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_956, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 40, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_966 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.81)
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
  call void @f_899(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_956(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_956(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_966(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !67
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
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_966, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_956(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_979(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds i64, ptr %7, i64 1
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %6, align 8
  call void @f_979(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_983(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
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
  %38 = add nsw i32 4, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_983, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_986 to i64), ptr %55, align 8
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
  %68 = load ptr, ptr %10, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store ptr %71, ptr %10, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.83)
  %73 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), align 8
  %74 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
  store ptr %74, ptr %13, align 8
  %75 = load i64, ptr %3, align 8
  %76 = icmp sge i64 %75, 3
  br i1 %76, label %77, label %79

77:                                               ; preds = %51
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  br label %81

79:                                               ; preds = %51
  %80 = alloca i8, i64 24, align 16
  store ptr %80, ptr %14, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %14, align 8
  call void %97(i64 noundef 3, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_986(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_986, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.84)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), align 16
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 24, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), align 16
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
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_bad_min_argc_2(i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1040(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  %38 = add nsw i32 7, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, ptr @C_scratch_usage, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %33, %41
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  %48 = load i64, ptr %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1040, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1043 to i64), ptr %55, align 8
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
  %83 = load ptr, ptr %10, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %10, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.86)
  %88 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 5), align 8
  %89 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %13, align 8
  %90 = load i64, ptr %3, align 8
  %91 = icmp sge i64 %90, 3
  br i1 %91, label %92, label %94

92:                                               ; preds = %51
  %93 = load ptr, ptr %4, align 8
  store ptr %93, ptr %14, align 8
  br label %96

94:                                               ; preds = %51
  %95 = alloca i8, i64 24, align 16
  store ptr %95, ptr %14, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 5), align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 0
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 3, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1043(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  %38 = icmp sgt i64 %37, 4
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 4
  %41 = add nsw i32 13, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, ptr @C_scratch_usage, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp sgt i64 %36, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i64, ptr %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1043, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 104, align 16
  store ptr %55, ptr %13, align 8
  %56 = load ptr, ptr %13, align 8
  %57 = ptrtoint ptr %56 to i64
  store i64 %57, ptr %16, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 0
  store i64 216172782113783810, ptr %59, align 8
  %60 = load ptr, ptr %13, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  store ptr %61, ptr %13, align 8
  %62 = load i64, ptr %7, align 8
  %63 = load i64, ptr %16, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds %struct.C_block_struct, ptr %64, i32 0, i32 1
  %66 = getelementptr inbounds [0 x i64], ptr %65, i64 0, i64 0
  store i64 %62, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %16, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 %70, ptr %74, align 8
  %75 = load i64, ptr %16, align 8
  store i64 %75, ptr %17, align 8
  %76 = load i64, ptr %17, align 8
  store i64 %76, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %77 = load ptr, ptr %13, align 8
  store i64 1, ptr %77, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %10, align 8
  %86 = load ptr, ptr %13, align 8
  store i64 2594073385365405703, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1052 to i64), ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 4
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %10, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 5
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %13, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 6
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  store i64 ptrtoint (ptr @li22 to i64), ptr %114, align 8
  %115 = load ptr, ptr %13, align 8
  %116 = ptrtoint ptr %115 to i64
  store i64 %116, ptr %5, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 8
  store ptr %118, ptr %13, align 8
  %119 = load i64, ptr %5, align 8
  %120 = load i64, ptr %10, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds %struct.C_block_struct, ptr %121, i32 0, i32 1
  %123 = getelementptr inbounds [0 x i64], ptr %122, i64 0, i64 0
  store i64 %119, ptr %123, align 8
  store i64 %119, ptr %11, align 8
  %124 = load i64, ptr %10, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  %127 = load i64, ptr %126, align 8
  store i64 %127, ptr %12, align 8
  %128 = load i64, ptr %12, align 8
  %129 = load i64, ptr %6, align 8
  %130 = inttoptr i64 %129 to ptr
  %131 = getelementptr inbounds i64, ptr %130, i64 6
  %132 = load i64, ptr %131, align 8
  %133 = load i64, ptr %8, align 8
  call void @f_1052(i64 noundef %128, i64 noundef %132, i64 noundef %133, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1052(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %17 = alloca [2 x i64], align 16
  %18 = alloca ptr, align 8
  %19 = alloca [4 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %20 = load i64, ptr @C_timer_interrupt_counter, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @C_timer_interrupt_counter, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %24

24:                                               ; preds = %23, %4
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
  store ptr %25, ptr %15, align 8
  %26 = load ptr, ptr %15, align 8
  store ptr %26, ptr %16, align 8
  %27 = load ptr, ptr %16, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr @C_scratch_usage, align 8
  %34 = add nsw i64 12, %33
  %35 = icmp sgt i64 %32, %34
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load i64, ptr %5, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load i64, ptr %7, align 8
  %44 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1052, i32 noundef 4, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44) #4
  unreachable

45:                                               ; preds = %24
  %46 = alloca i8, i64 72, align 16
  store ptr %46, ptr %14, align 8
  %47 = load i64, ptr %8, align 8
  %48 = load i64, ptr %5, align 8
  %49 = inttoptr i64 %48 to ptr
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  %51 = load i64, ptr %50, align 8
  %52 = call i64 @C_i_greater_or_equalp(i64 noundef %47, i64 noundef %51)
  store i64 %52, ptr %10, align 8
  %53 = load i64, ptr %10, align 8
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, ptr %10, align 8
  br label %63

57:                                               ; preds = %45
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_i_cdr(i64 noundef %58)
  %60 = icmp eq i64 %59, 14
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i64 22, i64 6
  br label %63

63:                                               ; preds = %57, %55
  %64 = phi i64 [ %56, %55 ], [ %62, %57 ]
  store i64 %64, ptr %11, align 8
  %65 = load i64, ptr %11, align 8
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i64, ptr %6, align 8
  store i64 %68, ptr %12, align 8
  %69 = load i64, ptr %12, align 8
  %70 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %69, ptr %70, align 16
  %71 = load i64, ptr %5, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 %74, ptr %75, align 8
  %76 = load i64, ptr %12, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %80(i64 noundef 2, ptr noundef %81) #4
  unreachable

82:                                               ; preds = %63
  %83 = load ptr, ptr %14, align 8
  store i64 2594073385365405704, ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_1065 to i64), ptr %85, align 8
  %86 = load i64, ptr %5, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %5, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %7, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 6
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %5, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 6
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 7
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %5, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 8
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = ptrtoint ptr %119 to i64
  store i64 %120, ptr %9, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 9
  store ptr %122, ptr %14, align 8
  %123 = load i64, ptr %9, align 8
  store i64 %123, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.87)
  %124 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %125 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %124)
  store ptr %125, ptr %18, align 8
  %126 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 0
  store i64 %129, ptr %130, align 16
  %131 = load i64, ptr %12, align 8
  %132 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 1
  store i64 %131, ptr %132, align 8
  %133 = load i64, ptr %7, align 8
  %134 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 2
  store i64 %133, ptr %134, align 16
  %135 = load i64, ptr %5, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 6
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 3
  store i64 %138, ptr %139, align 8
  %140 = load ptr, ptr %18, align 8
  %141 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 0
  call void %140(i64 noundef 4, ptr noundef %141) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1052(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1052(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1065(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !73
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
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nsw i32 13, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1065, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1068 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %8, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i64 22, i64 6
  store i64 %90, ptr %9, align 8
  %91 = load ptr, ptr %13, align 8
  store i64 2594073385365405702, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 ptrtoint (ptr @f_1085 to i64), ptr %93, align 8
  %94 = load i64, ptr %8, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 6
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 7
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 4
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 8
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 5
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %7, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 6
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %13, align 8
  %119 = ptrtoint ptr %118 to i64
  store i64 %119, ptr %5, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 7
  store ptr %121, ptr %13, align 8
  %122 = load i64, ptr %5, align 8
  store i64 %122, ptr %10, align 8
  %123 = load i64, ptr %9, align 8
  %124 = icmp ne i64 %123, 6
  br i1 %124, label %125, label %129

125:                                              ; preds = %52
  %126 = load i64, ptr %10, align 8
  store i64 %126, ptr %11, align 8
  %127 = load i64, ptr %11, align 8
  %128 = load i64, ptr %9, align 8
  call void @f_1085(i64 noundef %127, i64 noundef %128) #4
  unreachable

129:                                              ; preds = %52
  %130 = load i64, ptr %7, align 8
  %131 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 22), align 16
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i64 22, i64 6
  store i64 %134, ptr %11, align 8
  %135 = load i64, ptr %10, align 8
  store i64 %135, ptr %12, align 8
  %136 = load i64, ptr %12, align 8
  %137 = load i64, ptr %11, align 8
  %138 = icmp ne i64 %137, 6
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i64, ptr %11, align 8
  br label %147

141:                                              ; preds = %129
  %142 = load i64, ptr %7, align 8
  %143 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 25), align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i64 22, i64 6
  br label %147

147:                                              ; preds = %141, %139
  %148 = phi i64 [ %140, %139 ], [ %146, %141 ]
  call void @f_1085(i64 noundef %136, i64 noundef %148) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1068(i64 noundef %0, ptr noundef %1) #2 {
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  %39 = add nsw i32 32, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, ptr @C_scratch_usage, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %34, %42
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1068, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 256, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = ptrtoint ptr %54 to i64
  store i64 %55, ptr %14, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 216172782113783810, ptr %57, align 8
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  store ptr %59, ptr %11, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %14, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds %struct.C_block_struct, ptr %65, i32 0, i32 1
  %67 = getelementptr inbounds [0 x i64], ptr %66, i64 0, i64 0
  store i64 %63, ptr %67, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load i64, ptr %14, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds %struct.C_block_struct, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds [0 x i64], ptr %71, i64 0, i64 1
  store i64 %68, ptr %72, align 8
  %73 = load i64, ptr %14, align 8
  store i64 %73, ptr %15, align 8
  %74 = load i64, ptr %15, align 8
  store i64 %74, ptr %8, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %78, i64 noundef 3)
  store i64 %79, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.88)
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %10, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load i64, ptr %9, align 8
  call void @f_1052(i64 noundef %87, i64 noundef %91, i64 noundef %92, i64 noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1085(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [4 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %14 = load i64, ptr @C_timer_interrupt_counter, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr @C_timer_interrupt_counter, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %18

18:                                               ; preds = %17, %2
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  %28 = add nsw i64 9, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i64, ptr %3, align 8
  %36 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1085, i32 noundef 2, i64 noundef %35, i64 noundef %36) #4
  unreachable

37:                                               ; preds = %18
  %38 = alloca i8, i64 48, align 16
  store ptr %38, ptr %9, align 8
  %39 = load i64, ptr %4, align 8
  %40 = icmp ne i64 %39, 6
  br i1 %40, label %41, label %95

41:                                               ; preds = %37
  %42 = load ptr, ptr %9, align 8
  store i64 2594073385365405701, ptr %42, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 ptrtoint (ptr @f_995 to i64), ptr %44, align 8
  %45 = load i64, ptr %3, align 8
  %46 = inttoptr i64 %45 to ptr
  %47 = getelementptr inbounds i64, ptr %46, i64 2
  %48 = load i64, ptr %47, align 8
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %3, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 3
  %54 = load i64, ptr %53, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 3
  store i64 %54, ptr %56, align 8
  %57 = load i64, ptr %3, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 4
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 4
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %3, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 5
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 5
  store i64 %66, ptr %68, align 8
  %69 = load ptr, ptr %9, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %5, align 8
  %71 = load ptr, ptr %9, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 6
  store ptr %72, ptr %9, align 8
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %6, align 8
  call void @C_trace(ptr noundef @.str.89)
  %74 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %75 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %74)
  store ptr %75, ptr %12, align 8
  %76 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 14), align 16
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  store i64 %79, ptr %80, align 16
  %81 = load i64, ptr %6, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  store i64 %81, ptr %82, align 8
  %83 = load i64, ptr %3, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 2
  store i64 %86, ptr %87, align 16
  %88 = load i64, ptr %3, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 3
  store i64 %91, ptr %92, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable

95:                                               ; preds = %37
  %96 = load i64, ptr %3, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 6
  %99 = load i64, ptr %98, align 8
  %100 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 23), align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i64 22, i64 6
  store i64 %103, ptr %6, align 8
  %104 = load i64, ptr %6, align 8
  %105 = icmp ne i64 %104, 6
  br i1 %105, label %106, label %138

106:                                              ; preds = %95
  %107 = load ptr, ptr %9, align 8
  store i64 2594073385365405700, ptr %107, align 8
  %108 = load ptr, ptr %9, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 ptrtoint (ptr @f_1019 to i64), ptr %109, align 8
  %110 = load i64, ptr %3, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %9, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %3, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %9, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 3
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %3, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 4
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %9, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  store i64 %125, ptr %127, align 8
  %128 = load ptr, ptr %9, align 8
  %129 = ptrtoint ptr %128 to i64
  store i64 %129, ptr %5, align 8
  %130 = load ptr, ptr %9, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 5
  store ptr %131, ptr %9, align 8
  %132 = load i64, ptr %5, align 8
  store i64 %132, ptr %7, align 8
  call void @C_trace(ptr noundef @.str.90)
  %133 = load i64, ptr %7, align 8
  %134 = load i64, ptr %3, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds i64, ptr %135, i64 5
  %137 = load i64, ptr %136, align 8
  call void @f_979(i64 noundef %133, i64 noundef %137) #4
  unreachable

138:                                              ; preds = %95
  %139 = load ptr, ptr %9, align 8
  store i64 2594073385365405700, ptr %139, align 8
  %140 = load ptr, ptr %9, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 ptrtoint (ptr @f_1028 to i64), ptr %141, align 8
  %142 = load i64, ptr %3, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %9, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %3, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 3
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %9, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 3
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %3, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 4
  %157 = load i64, ptr %156, align 8
  %158 = load ptr, ptr %9, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 4
  store i64 %157, ptr %159, align 8
  %160 = load ptr, ptr %9, align 8
  %161 = ptrtoint ptr %160 to i64
  store i64 %161, ptr %5, align 8
  %162 = load ptr, ptr %9, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 5
  store ptr %163, ptr %9, align 8
  %164 = load i64, ptr %5, align 8
  store i64 %164, ptr %7, align 8
  call void @C_trace(ptr noundef @.str.91)
  %165 = load i64, ptr %7, align 8
  %166 = load i64, ptr %3, align 8
  %167 = inttoptr i64 %166 to ptr
  %168 = getelementptr inbounds i64, ptr %167, i64 5
  %169 = load i64, ptr %168, align 8
  call void @f_979(i64 noundef %165, i64 noundef %169) #4
  unreachable
}

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1085(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds i64, ptr %7, i64 1
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %6, align 8
  call void @f_1085(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_995(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  store ptr %29, ptr %14, align 8
  %30 = load ptr, ptr %14, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp sgt i64 %36, 2
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 2
  %40 = add nsw i32 9, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_995, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 72, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_998 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %8, align 8
  %81 = load i64, ptr %7, align 8
  %82 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 21), align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i64 22, i64 6
  store i64 %85, ptr %9, align 8
  %86 = load i64, ptr %9, align 8
  %87 = icmp ne i64 %86, 6
  br i1 %87, label %88, label %132

88:                                               ; preds = %53
  %89 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_1007 to i64), ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  store ptr %104, ptr %12, align 8
  %105 = load i64, ptr %5, align 8
  store i64 %105, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.92)
  %106 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), align 8
  %107 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %106)
  store ptr %107, ptr %15, align 8
  %108 = load i64, ptr %3, align 8
  %109 = icmp sge i64 %108, 3
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = load ptr, ptr %4, align 8
  store ptr %111, ptr %16, align 8
  br label %114

112:                                              ; preds = %88
  %113 = alloca i8, i64 24, align 16
  store ptr %113, ptr %16, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 37), align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %16, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %10, align 8
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 5
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = load ptr, ptr %16, align 8
  call void %130(i64 noundef 3, ptr noundef %131) #4
  unreachable

132:                                              ; preds = %53
  call void @C_trace(ptr noundef @.str.93)
  %133 = load i64, ptr %8, align 8
  %134 = load i64, ptr %6, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds i64, ptr %135, i64 5
  %137 = load i64, ptr %136, align 8
  call void @f_979(i64 noundef %133, i64 noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1019(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
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
  %32 = icmp sgt i64 %31, 3
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 3
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1019, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.96)
  %49 = load i64, ptr %6, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 4
  %60 = load i64, ptr %59, align 8
  call void @f_897(i64 noundef %52, i64 noundef %56, i64 noundef %60) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1028(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !78
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
  %32 = icmp sgt i64 %31, 3
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 3
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1028, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.97)
  %49 = load i64, ptr %6, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 4
  %60 = load i64, ptr %59, align 8
  call void @f_897(i64 noundef %52, i64 noundef %56, i64 noundef %60) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_998(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  %32 = icmp sgt i64 %31, 3
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 3
  %35 = add nsw i32 0, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %30, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i64, ptr %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_998, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.94)
  %49 = load i64, ptr %6, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 4
  %60 = load i64, ptr %59, align 8
  call void @f_897(i64 noundef %52, i64 noundef %56, i64 noundef %60) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1007(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !80
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
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 0, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @C_scratch_usage, align 8
  %40 = add nsw i64 %38, %39
  %41 = icmp sgt i64 %32, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1007, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.95)
  %51 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), align 16
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 24, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([50 x i64], ptr @lf, i64 0, i64 36), align 16
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
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_fast_retrieve(i64 noundef %0) #0 {
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

declare void @C_unbound_variable(i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{i64 2148775321}
!7 = !{i64 2148702733}
!8 = !{i64 2148703484}
!9 = !{i64 2148704368}
!10 = !{i64 2148701837}
!11 = !{i64 2148705107}
!12 = !{i64 2148706029}
!13 = !{i64 2148706951}
!14 = !{i64 2148707925}
!15 = !{i64 2148709476}
!16 = !{i64 2148710091}
!17 = !{i64 2148710743}
!18 = !{i64 2148711405}
!19 = !{i64 2148735553}
!20 = !{i64 2148754188}
!21 = !{i64 2148755627}
!22 = !{i64 2148757021}
!23 = !{i64 2148770608}
!24 = !{i64 2148691847}
!25 = !{i64 2148701294}
!26 = !{i64 2148712781}
!27 = !{i64 2148736275}
!28 = !{i64 2148737061}
!29 = !{i64 2148738466}
!30 = !{i64 2148749684}
!31 = !{i64 2148750438}
!32 = !{i64 2148739227}
!33 = !{i64 2148740443}
!34 = !{i64 2148745949}
!35 = !{i64 2148741199}
!36 = !{i64 2148742342}
!37 = !{i64 2148744471}
!38 = !{i64 2148743240}
!39 = !{i64 2148743798}
!40 = !{i64 2148747933}
!41 = !{i64 2148713452}
!42 = !{i64 2148714263}
!43 = !{i64 2148716195}
!44 = !{i64 2148727943}
!45 = !{i64 2148729533}
!46 = !{i64 2148731809}
!47 = !{i64 2148717020}
!48 = !{i64 2148717929}
!49 = !{i64 2148718913}
!50 = !{i64 2148722267}
!51 = !{i64 2148720849}
!52 = !{i64 2148719735}
!53 = !{i64 2148723482}
!54 = !{i64 2148724214}
!55 = !{i64 2148726197}
!56 = !{i64 2148728750}
!57 = !{i64 2148733792}
!58 = !{i64 2148752422}
!59 = !{i64 2148757891}
!60 = !{i64 2148764994}
!61 = !{i64 2148758642}
!62 = !{i64 2148759849}
!63 = !{i64 2148761237}
!64 = !{i64 2148763221}
!65 = !{i64 2148766205}
!66 = !{i64 2148766883}
!67 = !{i64 2148768867}
!68 = !{i64 2148771348}
!69 = !{i64 2148772170}
!70 = !{i64 2148692584}
!71 = !{i64 2148693424}
!72 = !{i64 2148695474}
!73 = !{i64 2148696759}
!74 = !{i64 2148698327}
!75 = !{i64 2148699821}
!76 = !{i64 2148772867}
!77 = !{i64 2148690616}
!78 = !{i64 2148691219}
!79 = !{i64 2148774122}
!80 = !{i64 2148689934}
