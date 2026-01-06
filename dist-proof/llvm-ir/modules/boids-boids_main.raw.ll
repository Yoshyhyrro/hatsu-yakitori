; ModuleID = '/tmp/hatsu-llvm-boids_main-4520/boids_main.c'
source_filename = "/tmp/hatsu-llvm-boids_main-4520/boids_main.c"
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
@lf = internal global [21 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"boids#\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"boids#run-boids\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"chicken.format#format\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\FEB\00\00)Boids simulation finished successfully.~%\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\FEB\00\00\1BUsing machine epsilon: ~a~%\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"machine_constants#machine-epsilon\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"\FEB\00\00:No arguments provided. Running default Boids simulation.~%\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\FEB\00\00-Running Boids simulation with arguments: ~a~%\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\FEB\00\00\1EStarting Boids simulation...~%\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"boids#main\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"chicken.process-context#command-line-arguments\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"kak_decomposition\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"cartan_utils\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cross_validation\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"machine_constants\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"boids\00", align 1
@.str.20 = private unnamed_addr constant [86 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\04\01main\FE\01\00\00\0A\01boids#main\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01run-boids\FE\01\00\00\0F\01boids#run-boids\FE\FF\0E\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@li2 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(a236)\00\00", align 16
@.str.22 = private unnamed_addr constant [41 x i8] c"boids_main.scm:5: ##sys#with-environment\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"boids_main.scm:7: chicken.load#load-extension\00", align 1
@li0 = internal global [32 x i8] c"\16\00\00\00\00\00\00M(boids#run-boids args)\00\00", align 16
@li1 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(boids#main)\00\00\00\00", align 16
@.str.24 = private unnamed_addr constant [41 x i8] c"boids_main.scm:25: chicken.format#format\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"boids_main.scm:27: chicken.format#format\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"boids_main.scm:28: chicken.format#format\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"boids_main.scm:31: chicken.format#format\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"boids_main.scm:33: chicken.format#format\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"boids_main.scm:37: chicken.process-context#command-line-arguments\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"boids_main.scm:38: run-boids\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"boids_main.scm:5: ##sys#register-compiled-module\00", align 1

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
  %71 = getelementptr inbounds i64, ptr %70, i64 145
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
  call void @C_rereclaim2(i64 noundef 1160, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 21)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 6, ptr noundef @.str.1)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 1), i32 noundef 15, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), i32 noundef 21, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 4), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 5), i32 noundef 33, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 5), align 8
  %93 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 7), align 8
  %95 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 8), align 16
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 9), i32 noundef 10, ptr noundef @.str.10)
  store i64 %96, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 9), align 8
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 10), i32 noundef 46, ptr noundef @.str.11)
  store i64 %97, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 10), align 16
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 11), i32 noundef 34, ptr noundef @.str.12)
  store i64 %98, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 11), align 8
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), i32 noundef 27, ptr noundef @.str.13)
  store i64 %99, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 13), i32 noundef 17, ptr noundef @.str.14)
  store i64 %100, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 13), align 8
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 14), i32 noundef 12, ptr noundef @.str.15)
  store i64 %101, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 14), align 16
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 15), i32 noundef 16, ptr noundef @.str.16)
  store i64 %102, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 15), align 8
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 16), i32 noundef 17, ptr noundef @.str.17)
  store i64 %103, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 16), align 16
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 17), i32 noundef 30, ptr noundef @.str.18)
  store i64 %104, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 17), align 8
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 18), i32 noundef 5, ptr noundef @.str.19)
  store i64 %105, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 18), align 16
  %106 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.20)
  store i64 %106, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 19), align 8
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 20), i32 noundef 22, ptr noundef @.str.21)
  store i64 %107, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 20), align 16
  %108 = call ptr @create_ptable()
  %109 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 21, ptr noundef %108)
  %110 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %110, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 ptrtoint (ptr @f_178 to i64), ptr %112, align 8
  %113 = load i64, ptr %7, align 8
  %114 = load ptr, ptr %10, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %10, align 8
  %117 = ptrtoint ptr %116 to i64
  store i64 %117, ptr %5, align 8
  %118 = load ptr, ptr %10, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store ptr %119, ptr %10, align 8
  %120 = load i64, ptr %5, align 8
  store i64 %120, ptr %8, align 8
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %14, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 30, ptr %123, align 8
  %124 = load i64, ptr %8, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %127) #4
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
define internal void @f_178(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_178, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_181 to i64), ptr %54, align 8
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
define internal void @f_181(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_181, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_184 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_237 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.22)
  %81 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 20), align 16
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
  %90 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 20), align 16
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
define internal void @f_184(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_184, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_187 to i64), ptr %54, align 8
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
define internal void @f_237(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_237, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.31)
  %58 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 17), align 8
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
  %67 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 17), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 18), align 16
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 19), align 8
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
define internal void @f_187(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_187, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_190 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.23)
  %67 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 15), align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 16), align 16
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

; Function Attrs: noreturn
declare void @C_extras_toplevel(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_190(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_190, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_193 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.23)
  %67 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 14), align 16
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
define internal void @f_193(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_193, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_196 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.23)
  %67 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 13), align 8
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
define internal void @f_196(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_196, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 72, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 1), align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  %58 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %58, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_198 to i64), ptr %60, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %12, align 8
  %67 = load i64, ptr %5, align 8
  %68 = call i64 @C_mutate(ptr noundef %57, i64 noundef %67)
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 9), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_222 to i64), ptr %74, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store ptr %80, ptr %12, align 8
  %81 = load i64, ptr %5, align 8
  %82 = call i64 @C_mutate(ptr noundef %71, i64 noundef %81)
  store i64 %82, ptr %9, align 8
  %83 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_235 to i64), ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store ptr %95, ptr %12, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.12)
  %97 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 11), align 8
  %98 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %15, align 8
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %16, align 8
  %100 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 11), align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %16, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %10, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = load ptr, ptr %16, align 8
  call void %109(i64 noundef 2, ptr noundef %110) #4
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
define internal void @f_198(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = load i64, ptr %3, align 8
  %26 = icmp ne i64 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, ptr %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %29, i32 noundef 3, i64 noundef %30) #4
  unreachable

31:                                               ; preds = %2
  %32 = load i64, ptr @C_timer_interrupt_counter, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, ptr @C_timer_interrupt_counter, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @C_raise_interrupt(i32 noundef 255)
  br label %36

36:                                               ; preds = %35, %31
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store ptr %37, ptr %12, align 8
  %38 = load ptr, ptr %12, align 8
  store ptr %38, ptr %13, align 8
  %39 = load ptr, ptr %13, align 8
  %40 = load ptr, ptr @C_stack_limit, align 8
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = load i64, ptr %3, align 8
  %46 = icmp sgt i64 %45, 3
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 3
  %49 = add nsw i32 4, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, ptr @C_scratch_usage, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sgt i64 %44, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_198, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_202 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  store ptr %76, ptr %11, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.24)
  %78 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = call ptr @C_fast_retrieve_proc(i64 noundef %81)
  store ptr %82, ptr %14, align 8
  %83 = load i64, ptr %3, align 8
  %84 = icmp sge i64 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %62
  %86 = load ptr, ptr %4, align 8
  store ptr %86, ptr %15, align 8
  br label %89

87:                                               ; preds = %62
  %88 = alloca i8, i64 32, align 16
  store ptr %88, ptr %15, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 22, ptr %100, align 8
  %101 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 8), align 16
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = load ptr, ptr %15, align 8
  call void %104(i64 noundef 4, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_222(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = load i64, ptr %3, align 8
  %22 = icmp ne i64 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, ptr %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %25, i32 noundef 2, i64 noundef %26) #4
  unreachable

27:                                               ; preds = %2
  %28 = load i64, ptr @C_timer_interrupt_counter, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, ptr @C_timer_interrupt_counter, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @C_raise_interrupt(i32 noundef 255)
  br label %32

32:                                               ; preds = %31, %27
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
  store ptr %33, ptr %11, align 8
  %34 = load ptr, ptr %11, align 8
  store ptr %34, ptr %12, align 8
  %35 = load ptr, ptr %12, align 8
  %36 = load ptr, ptr @C_stack_limit, align 8
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp sgt i64 %41, 2
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 2
  %45 = add nsw i32 3, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, ptr @C_scratch_usage, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %40, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load i64, ptr %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_222, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %10, align 8
  %60 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_226 to i64), ptr %62, align 8
  %63 = load i64, ptr %7, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store ptr %69, ptr %10, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.29)
  %71 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 10), align 16
  %72 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %71)
  store ptr %72, ptr %13, align 8
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %14, align 8
  %74 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 10), align 16
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = load ptr, ptr %14, align 8
  call void %83(i64 noundef 2, ptr noundef %84) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_235(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
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
  call void @C_save_and_reclaim(ptr noundef @f_235, i32 noundef %47, ptr noundef %48) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_202(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
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
  call void @C_save_and_reclaim(ptr noundef @f_202, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 24, align 16
  store ptr %54, ptr %10, align 8
  %55 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %55, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_205 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = ptrtoint ptr %64 to i64
  store i64 %65, ptr %5, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store ptr %67, ptr %10, align 8
  %68 = load i64, ptr %5, align 8
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  %72 = load i64, ptr %71, align 8
  %73 = icmp eq i64 %72, 14
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i64 22, i64 6
  %76 = icmp ne i64 %75, 6
  br i1 %76, label %77, label %106

77:                                               ; preds = %53
  call void @C_trace(ptr noundef @.str.25)
  %78 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = call ptr @C_fast_retrieve_proc(i64 noundef %81)
  store ptr %82, ptr %13, align 8
  %83 = load i64, ptr %3, align 8
  %84 = icmp sge i64 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load ptr, ptr %4, align 8
  store ptr %86, ptr %14, align 8
  br label %89

87:                                               ; preds = %77
  %88 = alloca i8, i64 32, align 16
  store ptr %88, ptr %14, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %8, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 22, ptr %100, align 8
  %101 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 6), align 16
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = load ptr, ptr %14, align 8
  call void %104(i64 noundef 4, ptr noundef %105) #4
  unreachable

106:                                              ; preds = %53
  call void @C_trace(ptr noundef @.str.26)
  %107 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  %111 = call ptr @C_fast_retrieve_proc(i64 noundef %110)
  store ptr %111, ptr %15, align 8
  %112 = load i64, ptr %3, align 8
  %113 = icmp sge i64 %112, 5
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load ptr, ptr %4, align 8
  store ptr %115, ptr %16, align 8
  br label %118

116:                                              ; preds = %106
  %117 = alloca i8, i64 40, align 16
  store ptr %117, ptr %16, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %8, align 8
  %126 = load ptr, ptr %16, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  store i64 %125, ptr %127, align 8
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 22, ptr %129, align 8
  %130 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 7), align 8
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %6, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  %136 = load i64, ptr %135, align 8
  %137 = load ptr, ptr %16, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 4
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %15, align 8
  %140 = load ptr, ptr %16, align 8
  call void %139(i64 noundef 5, ptr noundef %140) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_205(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
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
  call void @C_save_and_reclaim(ptr noundef @f_205, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_208 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.27)
  %67 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call ptr @C_fast_retrieve_proc(i64 noundef %70)
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 %72, 5
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %14, align 8
  br label %78

76:                                               ; preds = %51
  %77 = alloca i8, i64 40, align 16
  store ptr %77, ptr %14, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
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
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 22, ptr %89, align 8
  %90 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 4), align 16
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 5), align 8
  %94 = call i64 @C_fast_retrieve(i64 noundef %93)
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %14, align 8
  call void %97(i64 noundef 5, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_208(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
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
  call void @C_save_and_reclaim(ptr noundef @f_208, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.28)
  %51 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
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
  %63 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 2), align 16
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
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 22, ptr %76, align 8
  %77 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 3), align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = load ptr, ptr %13, align 8
  call void %80(i64 noundef 4, ptr noundef %81) #4
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

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_226(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
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
  call void @C_save_and_reclaim(ptr noundef @f_226, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.30)
  %51 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 1), align 8
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
  %60 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @lf, i64 0, i64 1), align 8
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
  %72 = load i64, ptr %7, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = load ptr, ptr %13, align 8
  call void %75(i64 noundef 3, ptr noundef %76) #4
  unreachable
}

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
!6 = !{i64 2148624410}
!7 = !{i64 2148611002}
!8 = !{i64 2148611753}
!9 = !{i64 2148612630}
!10 = !{i64 2148622930}
!11 = !{i64 2148613369}
!12 = !{i64 2148614227}
!13 = !{i64 2148615141}
!14 = !{i64 2148616065}
!15 = !{i64 2148616965}
!16 = !{i64 2148620992}
!17 = !{i64 2148622387}
!18 = !{i64 2148617818}
!19 = !{i64 2148619416}
!20 = !{i64 2148620269}
!21 = !{i64 2148621742}
