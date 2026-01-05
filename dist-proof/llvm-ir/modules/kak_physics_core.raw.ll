; ModuleID = '/tmp/hatsu-llvm-kak_physics_core-4604/kak_physics_core.c'
source_filename = "/tmp/hatsu-llvm-kak_physics_core-4604/kak_physics_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.C_block_struct = type { i64, [0 x i64] }

@toplevel_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kak_physics_core\00", align 1
@C_stack_limit = external global ptr, align 8
@C_scratch_usage = external global i64, align 8
@C_fromspace_top = external global ptr, align 8
@C_fromspace_limit = external global ptr, align 8
@C_temporary_stack = external global ptr, align 8
@lf = internal global [43 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"kak_physics_core#\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"kak_physics_core#grid-width\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"kak_physics_core#yee-grid\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"grid-width\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"kak_physics_core#grid-height\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"grid-height\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-ez\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"grid-ez\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-hx\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"grid-hx\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-hy\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"grid-hy\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-dt\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"grid-dt\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-dx\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"grid-dx\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"kak_physics_core#grid-eps\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"grid-eps\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"kak_physics_core#grid-mu\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"grid-mu\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"kak_physics_core#yee-grid-fields\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"kak_physics_core#make-yee-grid\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"srfi-4#make-f64vector\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"kak_physics_core#update-e-fields!\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"kak_physics_core#update-h-fields!\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"kak_physics_core#l2-norm\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"scheme#sqrt\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"scheme#+\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"kak_physics_core#normalize-vector\00", align 1
@.str.33 = private unnamed_addr constant [89 x i8] c"\FEU9.9999999999999997988664762925561536725284350612952266601496376097202301025390625e-13\00\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"kak_physics_core#r2->complex\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"scheme#make-rectangular\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"kak_physics_core#cartan-decompose\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"kak_physics_core#tau-threshold\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"kak_physics_core#meep-simulate\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.41 = private unnamed_addr constant [1159 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01make-yee-grid\FE\01\00\00\1E\01kak_physics_core#make-yee-grid\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01update-e-fields!\FE\01\00\00!\01kak_physics_core#update-e-fields!\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01update-h-fields!\FE\01\00\00!\01kak_physics_core#update-h-fields!\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01yee-grid-fields\FE\01\00\00 \01kak_physics_core#yee-grid-fields\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01grid-width\FE\01\00\00\1B\01kak_physics_core#grid-width\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0B\01grid-height\FE\01\00\00\1C\01kak_physics_core#grid-height\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-ez\FE\01\00\00\18\01kak_physics_core#grid-ez\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-hx\FE\01\00\00\18\01kak_physics_core#grid-hx\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-hy\FE\01\00\00\18\01kak_physics_core#grid-hy\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-dt\FE\01\00\00\18\01kak_physics_core#grid-dt\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-dx\FE\01\00\00\18\01kak_physics_core#grid-dx\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01grid-eps\FE\01\00\00\19\01kak_physics_core#grid-eps\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01grid-mu\FE\01\00\00\18\01kak_physics_core#grid-mu\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\07\01l2-norm\FE\01\00\00\18\01kak_physics_core#l2-norm\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01normalize-vector\FE\01\00\00!\01kak_physics_core#normalize-vector\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0B\01r2->complex\FE\01\00\00\1C\01kak_physics_core#r2->complex\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01cartan-decompose\FE\01\00\00!\01kak_physics_core#cartan-decompose\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01tau-threshold\FE\01\00\00\1E\01kak_physics_core#tau-threshold\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01meep-simulate\FE\01\00\00\1E\01kak_physics_core#meep-simulate\FE\FF\0E\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@li25 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(a927)\00\00", align 16
@.str.43 = private unnamed_addr constant [47 x i8] c"kak_physics_core.scm:9: ##sys#with-environment\00", align 1
@li0 = internal global [40 x i8] c"\1F\00\00\00\00\00\00M(kak_physics_core#grid-width x)\00", align 16
@li1 = internal global [40 x i8] c" \00\00\00\00\00\00M(kak_physics_core#grid-height x)", align 16
@li2 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-ez x)\00\00\00\00", align 16
@li3 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-hx x)\00\00\00\00", align 16
@li4 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-hy x)\00\00\00\00", align 16
@li5 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-dt x)\00\00\00\00", align 16
@li6 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-dx x)\00\00\00\00", align 16
@li7 = internal global [40 x i8] c"\1D\00\00\00\00\00\00M(kak_physics_core#grid-eps x)\00\00\00", align 16
@li8 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#grid-mu x)\00\00\00\00", align 16
@li9 = internal global [48 x i8] c"$\00\00\00\00\00\00M(kak_physics_core#yee-grid-fields g)\00\00\00\00", align 16
@li10 = internal global [64 x i8] c"1\00\00\00\00\00\00M(kak_physics_core#make-yee-grid w h dt dx eps mu)\00\00\00\00\00\00\00", align 16
@li13 = internal global [48 x i8] c"(\00\00\00\00\00\00M(kak_physics_core#update-e-fields! grid)", align 16
@li16 = internal global [48 x i8] c"(\00\00\00\00\00\00M(kak_physics_core#update-h-fields! grid)", align 16
@li18 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(kak_physics_core#l2-norm v)\00\00\00\00", align 16
@li21 = internal global [48 x i8] c"%\00\00\00\00\00\00M(kak_physics_core#normalize-vector v)\00\00\00", align 16
@li22 = internal global [48 x i8] c"\22\00\00\00\00\00\00M(kak_physics_core#r2->complex x y)\00\00\00\00\00\00", align 16
@li23 = internal global [48 x i8] c"&\00\00\00\00\00\00M(kak_physics_core#cartan-decompose _U)\00\00", align 16
@li24 = internal global [48 x i8] c"$\00\00\00\00\00\00M(kak_physics_core#meep-simulate . _)\00\00\00\00", align 16
@.str.44 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:50: grid-ez\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:50: grid-hx\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:50: grid-hy\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"kak_physics_core.scm:50: scheme#values\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"kak_physics_core.scm:55: srfi-4#make-f64vector\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"kak_physics_core.scm:56: srfi-4#make-f64vector\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"kak_physics_core.scm:57: srfi-4#make-f64vector\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"kak_physics_core.scm:64: grid-width\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"kak_physics_core.scm:65: grid-height\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:66: grid-ez\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:67: grid-hx\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:68: grid-hy\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:69: grid-dt\00", align 1
@li12 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(doloop91 i)\00\00\00\00", align 16
@li11 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(doloop94 j)\00\00\00\00", align 16
@.str.57 = private unnamed_addr constant [34 x i8] c"kak_physics_core.scm:69: grid-eps\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:69: grid-dx\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"kak_physics_core.scm:69: scheme#/\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"kak_physics_core.scm:83: grid-width\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"kak_physics_core.scm:84: grid-height\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:85: grid-ez\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:86: grid-hx\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:87: grid-hy\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:88: grid-dt\00", align 1
@li15 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop112 i)\00\00\00", align 16
@li14 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop115 j)\00\00\00", align 16
@.str.66 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:88: grid-mu\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"kak_physics_core.scm:88: grid-dx\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"kak_physics_core.scm:88: scheme#/\00", align 1
@li17 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop130 g142)\00\00\00\00\00\00", align 16
@.str.69 = private unnamed_addr constant [38 x i8] c"kak_physics_core.scm:109: scheme#sqrt\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"kak_physics_core.scm:113: l2-norm\00", align 1
@li19 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(g166 x)", align 16
@li20 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop160 g172)\00\00\00\00\00\00", align 16
@.str.71 = private unnamed_addr constant [35 x i8] c"kak_physics_core.scm:114: scheme#/\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"kak_physics_core.scm:114: g166\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"kak_physics_core.scm:118: scheme#make-rectangular\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"kak_physics_core.scm:122: scheme#values\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"kak_physics_core.scm:9: ##sys#register-compiled-module\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @C_kak_5fphysics_5fcore_toplevel(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @C_kak_5fphysics_5fcore_toplevel, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %37
  store i32 1, ptr @toplevel_initialized, align 4
  %70 = load ptr, ptr @C_fromspace_top, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 665
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
  call void @C_rereclaim2(i64 noundef 5320, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 43)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 16, ptr noundef @.str)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 1), i32 noundef 17, ptr noundef @.str.1)
  store i64 %88, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), i32 noundef 27, ptr noundef @.str.2)
  store i64 %89, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), i32 noundef 25, ptr noundef @.str.3)
  store i64 %90, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 4), i32 noundef 10, ptr noundef @.str.4)
  store i64 %91, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 4), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), i32 noundef 28, ptr noundef @.str.5)
  store i64 %92, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 6), i32 noundef 11, ptr noundef @.str.6)
  store i64 %93, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), i32 noundef 24, ptr noundef @.str.7)
  store i64 %94, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 8), i32 noundef 7, ptr noundef @.str.8)
  store i64 %95, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 8), align 16
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), i32 noundef 24, ptr noundef @.str.9)
  store i64 %96, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 10), i32 noundef 7, ptr noundef @.str.10)
  store i64 %97, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 10), align 16
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), i32 noundef 24, ptr noundef @.str.11)
  store i64 %98, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 12), i32 noundef 7, ptr noundef @.str.12)
  store i64 %99, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 12), align 16
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), i32 noundef 24, ptr noundef @.str.13)
  store i64 %100, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 14), i32 noundef 7, ptr noundef @.str.14)
  store i64 %101, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 14), align 16
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), i32 noundef 24, ptr noundef @.str.15)
  store i64 %102, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 16), i32 noundef 7, ptr noundef @.str.16)
  store i64 %103, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 16), align 16
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 17), i32 noundef 25, ptr noundef @.str.17)
  store i64 %104, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 17), align 8
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 18), i32 noundef 8, ptr noundef @.str.18)
  store i64 %105, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 18), align 16
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 19), i32 noundef 24, ptr noundef @.str.19)
  store i64 %106, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 19), align 8
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 20), i32 noundef 7, ptr noundef @.str.20)
  store i64 %107, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 20), align 16
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 21), i32 noundef 32, ptr noundef @.str.21)
  store i64 %108, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 21), align 8
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 22), i32 noundef 30, ptr noundef @.str.22)
  store i64 %109, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 22), align 16
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), i32 noundef 21, ptr noundef @.str.23)
  store i64 %110, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
  %111 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.24)
  store i64 %111, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 24), align 16
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 25), i32 noundef 33, ptr noundef @.str.25)
  store i64 %112, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 25), align 8
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), i32 noundef 8, ptr noundef @.str.26)
  store i64 %113, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 27), i32 noundef 33, ptr noundef @.str.27)
  store i64 %114, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 27), align 8
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 28), i32 noundef 24, ptr noundef @.str.28)
  store i64 %115, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 28), align 16
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 29), i32 noundef 11, ptr noundef @.str.29)
  store i64 %116, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 29), align 8
  %117 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 30), i32 noundef 3, ptr noundef @.str.30)
  store i64 %117, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 30), align 16
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 31), i32 noundef 8, ptr noundef @.str.31)
  store i64 %118, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 31), align 8
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 32), i32 noundef 33, ptr noundef @.str.32)
  store i64 %119, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 32), align 16
  %120 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.33)
  store i64 %120, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 33), align 8
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 34), i32 noundef 28, ptr noundef @.str.34)
  store i64 %121, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 34), align 16
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 35), i32 noundef 23, ptr noundef @.str.35)
  store i64 %122, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 35), align 8
  %123 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 36), i32 noundef 33, ptr noundef @.str.36)
  store i64 %123, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 36), align 16
  %124 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.37)
  store i64 %124, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 37), align 8
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 38), i32 noundef 30, ptr noundef @.str.38)
  store i64 %125, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 38), align 16
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 39), i32 noundef 30, ptr noundef @.str.39)
  store i64 %126, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 39), align 8
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 40), i32 noundef 30, ptr noundef @.str.40)
  store i64 %127, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 40), align 16
  %128 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.41)
  store i64 %128, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 41), align 8
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 42), i32 noundef 22, ptr noundef @.str.42)
  store i64 %129, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 42), align 16
  %130 = call ptr @create_ptable()
  %131 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 43, ptr noundef %130)
  %132 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %132, align 8
  %133 = load ptr, ptr %10, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 ptrtoint (ptr @f_324 to i64), ptr %134, align 8
  %135 = load i64, ptr %7, align 8
  %136 = load ptr, ptr %10, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 %135, ptr %137, align 8
  %138 = load ptr, ptr %10, align 8
  %139 = ptrtoint ptr %138 to i64
  store i64 %139, ptr %5, align 8
  %140 = load ptr, ptr %10, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 3
  store ptr %141, ptr %10, align 8
  %142 = load i64, ptr %5, align 8
  store i64 %142, ptr %8, align 8
  %143 = load ptr, ptr %4, align 8
  store ptr %143, ptr %14, align 8
  %144 = load ptr, ptr %14, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 0
  store i64 30, ptr %145, align 8
  %146 = load i64, ptr %8, align 8
  %147 = load ptr, ptr %14, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %149) #4
  unreachable
}

declare void @C_toplevel_entry(ptr noundef) #1

declare void @C_check_nursery_minimum(i64 noundef) #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim(ptr noundef, i32 noundef, ptr noundef) #2

declare void @C_rereclaim2(i64 noundef, i32 noundef) #1

declare void @C_initialize_lf(ptr noundef, i32 noundef) #1

declare i64 @C_h_intern(ptr noundef, i32 noundef, ptr noundef) #1

declare i64 @C_decode_literal(ptr noundef, ptr noundef) #1

declare ptr @C_register_lf2(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_ptable() #3 {
  ret ptr null
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_324(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_324, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_327 to i64), ptr %54, align 8
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
declare void @C_library_toplevel(i64 noundef, ptr noundef) #2

declare void @C_raise_interrupt(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_327(i64 noundef %0, ptr noundef %1) #0 {
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
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
  store ptr %26, ptr %12, align 8
  %27 = load ptr, ptr %12, align 8
  store ptr %27, ptr %13, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add nsw i32 11, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_327, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 88, align 16
  store ptr %52, ptr %11, align 8
  %53 = load i64, ptr @lf, align 16
  %54 = call i64 @C_a_i_provide(ptr noundef %11, i32 noundef 1, i64 noundef %53)
  store i64 %54, ptr %8, align 8
  %55 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %55, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_330 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = ptrtoint ptr %64 to i64
  store i64 %65, ptr %5, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store ptr %67, ptr %11, align 8
  %68 = load i64, ptr %5, align 8
  store i64 %68, ptr %9, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 30, ptr %71, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %14, align 8
  call void @C_srfi_2d4_toplevel(i64 noundef 2, ptr noundef %75) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_eval_toplevel(i64 noundef, ptr noundef) #2

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_330(i64 noundef %0, ptr noundef %1) #0 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !9
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
  call void @C_save_and_reclaim(ptr noundef @f_330, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 112, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 1), align 8
  %56 = call i64 @C_a_i_provide(ptr noundef %12, i32 noundef 1, i64 noundef %55)
  store i64 %56, ptr %8, align 8
  %57 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %57, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_333 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_928 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li25 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.43)
  %81 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 42), align 16
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
  %90 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 42), align 16
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
declare void @C_srfi_2d4_toplevel(i64 noundef, ptr noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_333(i64 noundef %0, ptr noundef %1) #0 {
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 0
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %6, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 1
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %7, align 8
  %38 = load i64, ptr @C_timer_interrupt_counter, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, ptr @C_timer_interrupt_counter, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %42

42:                                               ; preds = %41, %2
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !10
  store ptr %43, ptr %29, align 8
  %44 = load ptr, ptr %29, align 8
  store ptr %44, ptr %30, align 8
  %45 = load ptr, ptr %30, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 8
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 8
  %55 = add nsw i32 54, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_333, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 432, align 16
  store ptr %69, ptr %28, align 8
  %70 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %73, align 8
  %74 = load ptr, ptr %28, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_348 to i64), ptr %75, align 8
  %76 = load ptr, ptr %28, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %77, align 8
  %78 = load ptr, ptr %28, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %28, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store ptr %81, ptr %28, align 8
  %82 = load i64, ptr %5, align 8
  %83 = call i64 @C_mutate(ptr noundef %72, i64 noundef %82)
  store i64 %83, ptr %8, align 8
  %84 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %87, align 8
  %88 = load ptr, ptr %28, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 ptrtoint (ptr @f_357 to i64), ptr %89, align 8
  %90 = load ptr, ptr %28, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %91, align 8
  %92 = load ptr, ptr %28, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %28, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store ptr %95, ptr %28, align 8
  %96 = load i64, ptr %5, align 8
  %97 = call i64 @C_mutate(ptr noundef %86, i64 noundef %96)
  store i64 %97, ptr %9, align 8
  %98 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %101, align 8
  %102 = load ptr, ptr %28, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_366 to i64), ptr %103, align 8
  %104 = load ptr, ptr %28, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %105, align 8
  %106 = load ptr, ptr %28, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %28, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store ptr %109, ptr %28, align 8
  %110 = load i64, ptr %5, align 8
  %111 = call i64 @C_mutate(ptr noundef %100, i64 noundef %110)
  store i64 %111, ptr %10, align 8
  %112 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %115, align 8
  %116 = load ptr, ptr %28, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 ptrtoint (ptr @f_375 to i64), ptr %117, align 8
  %118 = load ptr, ptr %28, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %119, align 8
  %120 = load ptr, ptr %28, align 8
  %121 = ptrtoint ptr %120 to i64
  store i64 %121, ptr %5, align 8
  %122 = load ptr, ptr %28, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store ptr %123, ptr %28, align 8
  %124 = load i64, ptr %5, align 8
  %125 = call i64 @C_mutate(ptr noundef %114, i64 noundef %124)
  store i64 %125, ptr %11, align 8
  %126 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %129, align 8
  %130 = load ptr, ptr %28, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 ptrtoint (ptr @f_384 to i64), ptr %131, align 8
  %132 = load ptr, ptr %28, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 ptrtoint (ptr @li4 to i64), ptr %133, align 8
  %134 = load ptr, ptr %28, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %5, align 8
  %136 = load ptr, ptr %28, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 3
  store ptr %137, ptr %28, align 8
  %138 = load i64, ptr %5, align 8
  %139 = call i64 @C_mutate(ptr noundef %128, i64 noundef %138)
  store i64 %139, ptr %12, align 8
  %140 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %143, align 8
  %144 = load ptr, ptr %28, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 1
  store i64 ptrtoint (ptr @f_393 to i64), ptr %145, align 8
  %146 = load ptr, ptr %28, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 ptrtoint (ptr @li5 to i64), ptr %147, align 8
  %148 = load ptr, ptr %28, align 8
  %149 = ptrtoint ptr %148 to i64
  store i64 %149, ptr %5, align 8
  %150 = load ptr, ptr %28, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 3
  store ptr %151, ptr %28, align 8
  %152 = load i64, ptr %5, align 8
  %153 = call i64 @C_mutate(ptr noundef %142, i64 noundef %152)
  store i64 %153, ptr %13, align 8
  %154 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  %157 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %157, align 8
  %158 = load ptr, ptr %28, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  store i64 ptrtoint (ptr @f_402 to i64), ptr %159, align 8
  %160 = load ptr, ptr %28, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %161, align 8
  %162 = load ptr, ptr %28, align 8
  %163 = ptrtoint ptr %162 to i64
  store i64 %163, ptr %5, align 8
  %164 = load ptr, ptr %28, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 3
  store ptr %165, ptr %28, align 8
  %166 = load i64, ptr %5, align 8
  %167 = call i64 @C_mutate(ptr noundef %156, i64 noundef %166)
  store i64 %167, ptr %14, align 8
  %168 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 17), align 8
  %169 = inttoptr i64 %168 to ptr
  %170 = getelementptr inbounds i64, ptr %169, i64 1
  %171 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %171, align 8
  %172 = load ptr, ptr %28, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 1
  store i64 ptrtoint (ptr @f_411 to i64), ptr %173, align 8
  %174 = load ptr, ptr %28, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %175, align 8
  %176 = load ptr, ptr %28, align 8
  %177 = ptrtoint ptr %176 to i64
  store i64 %177, ptr %5, align 8
  %178 = load ptr, ptr %28, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 3
  store ptr %179, ptr %28, align 8
  %180 = load i64, ptr %5, align 8
  %181 = call i64 @C_mutate(ptr noundef %170, i64 noundef %180)
  store i64 %181, ptr %15, align 8
  %182 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 19), align 8
  %183 = inttoptr i64 %182 to ptr
  %184 = getelementptr inbounds i64, ptr %183, i64 1
  %185 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %185, align 8
  %186 = load ptr, ptr %28, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 1
  store i64 ptrtoint (ptr @f_420 to i64), ptr %187, align 8
  %188 = load ptr, ptr %28, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %189, align 8
  %190 = load ptr, ptr %28, align 8
  %191 = ptrtoint ptr %190 to i64
  store i64 %191, ptr %5, align 8
  %192 = load ptr, ptr %28, align 8
  %193 = getelementptr inbounds i64, ptr %192, i64 3
  store ptr %193, ptr %28, align 8
  %194 = load i64, ptr %5, align 8
  %195 = call i64 @C_mutate(ptr noundef %184, i64 noundef %194)
  store i64 %195, ptr %16, align 8
  %196 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 21), align 8
  %197 = inttoptr i64 %196 to ptr
  %198 = getelementptr inbounds i64, ptr %197, i64 1
  %199 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %199, align 8
  %200 = load ptr, ptr %28, align 8
  %201 = getelementptr inbounds i64, ptr %200, i64 1
  store i64 ptrtoint (ptr @f_429 to i64), ptr %201, align 8
  %202 = load ptr, ptr %28, align 8
  %203 = getelementptr inbounds i64, ptr %202, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %203, align 8
  %204 = load ptr, ptr %28, align 8
  %205 = ptrtoint ptr %204 to i64
  store i64 %205, ptr %5, align 8
  %206 = load ptr, ptr %28, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 3
  store ptr %207, ptr %28, align 8
  %208 = load i64, ptr %5, align 8
  %209 = call i64 @C_mutate(ptr noundef %198, i64 noundef %208)
  store i64 %209, ptr %17, align 8
  %210 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 22), align 16
  %211 = inttoptr i64 %210 to ptr
  %212 = getelementptr inbounds i64, ptr %211, i64 1
  %213 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %213, align 8
  %214 = load ptr, ptr %28, align 8
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  store i64 ptrtoint (ptr @f_447 to i64), ptr %215, align 8
  %216 = load ptr, ptr %28, align 8
  %217 = getelementptr inbounds i64, ptr %216, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %217, align 8
  %218 = load ptr, ptr %28, align 8
  %219 = ptrtoint ptr %218 to i64
  store i64 %219, ptr %5, align 8
  %220 = load ptr, ptr %28, align 8
  %221 = getelementptr inbounds i64, ptr %220, i64 3
  store ptr %221, ptr %28, align 8
  %222 = load i64, ptr %5, align 8
  %223 = call i64 @C_mutate(ptr noundef %212, i64 noundef %222)
  store i64 %223, ptr %18, align 8
  %224 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 25), align 8
  %225 = inttoptr i64 %224 to ptr
  %226 = getelementptr inbounds i64, ptr %225, i64 1
  %227 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %227, align 8
  %228 = load ptr, ptr %28, align 8
  %229 = getelementptr inbounds i64, ptr %228, i64 1
  store i64 ptrtoint (ptr @f_468 to i64), ptr %229, align 8
  %230 = load ptr, ptr %28, align 8
  %231 = getelementptr inbounds i64, ptr %230, i64 2
  store i64 ptrtoint (ptr @li13 to i64), ptr %231, align 8
  %232 = load ptr, ptr %28, align 8
  %233 = ptrtoint ptr %232 to i64
  store i64 %233, ptr %5, align 8
  %234 = load ptr, ptr %28, align 8
  %235 = getelementptr inbounds i64, ptr %234, i64 3
  store ptr %235, ptr %28, align 8
  %236 = load i64, ptr %5, align 8
  %237 = call i64 @C_mutate(ptr noundef %226, i64 noundef %236)
  store i64 %237, ptr %19, align 8
  %238 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 27), align 8
  %239 = inttoptr i64 %238 to ptr
  %240 = getelementptr inbounds i64, ptr %239, i64 1
  %241 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %241, align 8
  %242 = load ptr, ptr %28, align 8
  %243 = getelementptr inbounds i64, ptr %242, i64 1
  store i64 ptrtoint (ptr @f_623 to i64), ptr %243, align 8
  %244 = load ptr, ptr %28, align 8
  %245 = getelementptr inbounds i64, ptr %244, i64 2
  store i64 ptrtoint (ptr @li16 to i64), ptr %245, align 8
  %246 = load ptr, ptr %28, align 8
  %247 = ptrtoint ptr %246 to i64
  store i64 %247, ptr %5, align 8
  %248 = load ptr, ptr %28, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 3
  store ptr %249, ptr %28, align 8
  %250 = load i64, ptr %5, align 8
  %251 = call i64 @C_mutate(ptr noundef %240, i64 noundef %250)
  store i64 %251, ptr %20, align 8
  %252 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 28), align 16
  %253 = inttoptr i64 %252 to ptr
  %254 = getelementptr inbounds i64, ptr %253, i64 1
  %255 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %255, align 8
  %256 = load ptr, ptr %28, align 8
  %257 = getelementptr inbounds i64, ptr %256, i64 1
  store i64 ptrtoint (ptr @f_789 to i64), ptr %257, align 8
  %258 = load ptr, ptr %28, align 8
  %259 = getelementptr inbounds i64, ptr %258, i64 2
  store i64 ptrtoint (ptr @li18 to i64), ptr %259, align 8
  %260 = load ptr, ptr %28, align 8
  %261 = ptrtoint ptr %260 to i64
  store i64 %261, ptr %5, align 8
  %262 = load ptr, ptr %28, align 8
  %263 = getelementptr inbounds i64, ptr %262, i64 3
  store ptr %263, ptr %28, align 8
  %264 = load i64, ptr %5, align 8
  %265 = call i64 @C_mutate(ptr noundef %254, i64 noundef %264)
  store i64 %265, ptr %21, align 8
  %266 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 32), align 16
  %267 = inttoptr i64 %266 to ptr
  %268 = getelementptr inbounds i64, ptr %267, i64 1
  %269 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %269, align 8
  %270 = load ptr, ptr %28, align 8
  %271 = getelementptr inbounds i64, ptr %270, i64 1
  store i64 ptrtoint (ptr @f_848 to i64), ptr %271, align 8
  %272 = load ptr, ptr %28, align 8
  %273 = getelementptr inbounds i64, ptr %272, i64 2
  store i64 ptrtoint (ptr @li21 to i64), ptr %273, align 8
  %274 = load ptr, ptr %28, align 8
  %275 = ptrtoint ptr %274 to i64
  store i64 %275, ptr %5, align 8
  %276 = load ptr, ptr %28, align 8
  %277 = getelementptr inbounds i64, ptr %276, i64 3
  store ptr %277, ptr %28, align 8
  %278 = load i64, ptr %5, align 8
  %279 = call i64 @C_mutate(ptr noundef %268, i64 noundef %278)
  store i64 %279, ptr %22, align 8
  %280 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 34), align 16
  %281 = inttoptr i64 %280 to ptr
  %282 = getelementptr inbounds i64, ptr %281, i64 1
  %283 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %283, align 8
  %284 = load ptr, ptr %28, align 8
  %285 = getelementptr inbounds i64, ptr %284, i64 1
  store i64 ptrtoint (ptr @f_908 to i64), ptr %285, align 8
  %286 = load ptr, ptr %28, align 8
  %287 = getelementptr inbounds i64, ptr %286, i64 2
  store i64 ptrtoint (ptr @li22 to i64), ptr %287, align 8
  %288 = load ptr, ptr %28, align 8
  %289 = ptrtoint ptr %288 to i64
  store i64 %289, ptr %5, align 8
  %290 = load ptr, ptr %28, align 8
  %291 = getelementptr inbounds i64, ptr %290, i64 3
  store ptr %291, ptr %28, align 8
  %292 = load i64, ptr %5, align 8
  %293 = call i64 @C_mutate(ptr noundef %282, i64 noundef %292)
  store i64 %293, ptr %23, align 8
  %294 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 36), align 16
  %295 = inttoptr i64 %294 to ptr
  %296 = getelementptr inbounds i64, ptr %295, i64 1
  %297 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %297, align 8
  %298 = load ptr, ptr %28, align 8
  %299 = getelementptr inbounds i64, ptr %298, i64 1
  store i64 ptrtoint (ptr @f_914 to i64), ptr %299, align 8
  %300 = load ptr, ptr %28, align 8
  %301 = getelementptr inbounds i64, ptr %300, i64 2
  store i64 ptrtoint (ptr @li23 to i64), ptr %301, align 8
  %302 = load ptr, ptr %28, align 8
  %303 = ptrtoint ptr %302 to i64
  store i64 %303, ptr %5, align 8
  %304 = load ptr, ptr %28, align 8
  %305 = getelementptr inbounds i64, ptr %304, i64 3
  store ptr %305, ptr %28, align 8
  %306 = load i64, ptr %5, align 8
  %307 = call i64 @C_mutate(ptr noundef %296, i64 noundef %306)
  store i64 %307, ptr %24, align 8
  %308 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 38), align 16
  %309 = inttoptr i64 %308 to ptr
  %310 = getelementptr inbounds i64, ptr %309, i64 1
  %311 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 37), align 8
  %312 = call i64 @C_mutate(ptr noundef %310, i64 noundef %311)
  store i64 %312, ptr %25, align 8
  %313 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 39), align 8
  %314 = inttoptr i64 %313 to ptr
  %315 = getelementptr inbounds i64, ptr %314, i64 1
  %316 = load ptr, ptr %28, align 8
  store i64 2594073385365405698, ptr %316, align 8
  %317 = load ptr, ptr %28, align 8
  %318 = getelementptr inbounds i64, ptr %317, i64 1
  store i64 ptrtoint (ptr @f_925 to i64), ptr %318, align 8
  %319 = load ptr, ptr %28, align 8
  %320 = getelementptr inbounds i64, ptr %319, i64 2
  store i64 ptrtoint (ptr @li24 to i64), ptr %320, align 8
  %321 = load ptr, ptr %28, align 8
  %322 = ptrtoint ptr %321 to i64
  store i64 %322, ptr %5, align 8
  %323 = load ptr, ptr %28, align 8
  %324 = getelementptr inbounds i64, ptr %323, i64 3
  store ptr %324, ptr %28, align 8
  %325 = load i64, ptr %5, align 8
  %326 = call i64 @C_mutate(ptr noundef %315, i64 noundef %325)
  store i64 %326, ptr %26, align 8
  %327 = load i64, ptr %6, align 8
  %328 = inttoptr i64 %327 to ptr
  %329 = getelementptr inbounds i64, ptr %328, i64 2
  %330 = load i64, ptr %329, align 8
  store i64 %330, ptr %27, align 8
  %331 = load ptr, ptr %4, align 8
  store ptr %331, ptr %31, align 8
  %332 = load i64, ptr %27, align 8
  %333 = load ptr, ptr %31, align 8
  %334 = getelementptr inbounds i64, ptr %333, i64 0
  store i64 %332, ptr %334, align 8
  %335 = load ptr, ptr %31, align 8
  %336 = getelementptr inbounds i64, ptr %335, i64 1
  store i64 30, ptr %336, align 8
  %337 = load i64, ptr %27, align 8
  %338 = inttoptr i64 %337 to ptr
  %339 = getelementptr inbounds i64, ptr %338, i64 1
  %340 = load i64, ptr %339, align 8
  %341 = inttoptr i64 %340 to ptr
  %342 = load ptr, ptr %31, align 8
  call void %341(i64 noundef 2, ptr noundef %342) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_928(i64 noundef %0, ptr noundef %1) #0 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !11
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
  call void @C_save_and_reclaim(ptr noundef @f_928, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.75)
  %58 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 40), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 40), align 16
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
  %83 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 41), align 8
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
define internal ptr @C_fast_retrieve_symbol_proc(i64 noundef %0) #3 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @C_fast_retrieve(i64 noundef %3)
  %5 = call ptr @C_fast_retrieve_proc(i64 noundef %4)
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_mutate(ptr noundef %0, i64 noundef %1) #3 {
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
define internal void @f_348(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
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
  call void @C_save_and_reclaim(ptr noundef @f_348, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 4), align 16
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
define internal void @f_357(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
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
  call void @C_save_and_reclaim(ptr noundef @f_357, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 6), align 16
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
define internal void @f_366(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  call void @C_save_and_reclaim(ptr noundef @f_366, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 7)
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
define internal void @f_375(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
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
  call void @C_save_and_reclaim(ptr noundef @f_375, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 10), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 9)
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
define internal void @f_384(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_384, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 11)
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
define internal void @f_393(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_393, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 14), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 13)
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
define internal void @f_402(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
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
  call void @C_save_and_reclaim(ptr noundef @f_402, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 16), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 15)
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
define internal void @f_411(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
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
  call void @C_save_and_reclaim(ptr noundef @f_411, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 17)
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
define internal void @f_420(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
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
  call void @C_save_and_reclaim(ptr noundef @f_420, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %64 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 20), align 16
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
  %72 = call i64 @C_i_block_ref(i64 noundef %71, i64 noundef 19)
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
define internal void @f_429(i64 noundef %0, ptr noundef %1) #0 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
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
  %46 = icmp sgt i64 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_429, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_437 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.44)
  %78 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = load ptr, ptr %15, align 8
  call void %93(i64 noundef 3, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_447(i64 noundef %0, ptr noundef %1) #0 {
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
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 7
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %13, align 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp ne i64 %46, 8
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %50, i32 noundef 8, i64 noundef %51) #4
  unreachable

52:                                               ; preds = %2
  %53 = load i64, ptr @C_timer_interrupt_counter, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, ptr @C_timer_interrupt_counter, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @C_raise_interrupt(i32 noundef 255)
  br label %57

57:                                               ; preds = %56, %52
  %58 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
  store ptr %58, ptr %18, align 8
  %59 = load ptr, ptr %18, align 8
  store ptr %59, ptr %19, align 8
  %60 = load ptr, ptr %19, align 8
  %61 = load ptr, ptr @C_stack_limit, align 8
  %62 = ptrtoint ptr %60 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = load i64, ptr %3, align 8
  %67 = icmp sgt i64 %66, 3
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 3
  %70 = add nsw i32 43, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, ptr @C_scratch_usage, align 8
  %73 = add nsw i64 %71, %72
  %74 = icmp sgt i64 %65, %73
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load i64, ptr %3, align 8
  %81 = trunc i64 %80 to i32
  %82 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_447, i32 noundef %81, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %57
  %84 = alloca i8, i64 344, align 16
  store ptr %84, ptr %17, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load i64, ptr %9, align 8
  %87 = call i64 @C_s_a_i_times(ptr noundef %17, i64 noundef 2, i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %14, align 8
  %88 = load ptr, ptr %17, align 8
  store i64 2594073385365405705, ptr %88, align 8
  %89 = load ptr, ptr %17, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_458 to i64), ptr %90, align 8
  %91 = load i64, ptr %7, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %8, align 8
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %9, align 8
  %98 = load ptr, ptr %17, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %10, align 8
  %101 = load ptr, ptr %17, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %11, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %12, align 8
  %107 = load ptr, ptr %17, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 7
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %13, align 8
  %110 = load ptr, ptr %17, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 8
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %14, align 8
  %113 = load ptr, ptr %17, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 9
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %17, align 8
  %116 = ptrtoint ptr %115 to i64
  store i64 %116, ptr %5, align 8
  %117 = load ptr, ptr %17, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 10
  store ptr %118, ptr %17, align 8
  %119 = load i64, ptr %5, align 8
  store i64 %119, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.48)
  %120 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
  %121 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %120)
  store ptr %121, ptr %20, align 8
  %122 = load ptr, ptr %4, align 8
  store ptr %122, ptr %21, align 8
  %123 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 0
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %15, align 8
  %130 = load ptr, ptr %21, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %14, align 8
  %133 = load ptr, ptr %21, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 2
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 24), align 16
  %136 = load ptr, ptr %21, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 3
  store i64 %135, ptr %137, align 8
  %138 = load ptr, ptr %20, align 8
  %139 = load ptr, ptr %21, align 8
  call void %138(i64 noundef 4, ptr noundef %139) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_468(i64 noundef %0, ptr noundef %1) #0 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  %46 = icmp sgt i64 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_468, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_472 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.51)
  %78 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = load ptr, ptr %15, align 8
  call void %93(i64 noundef 3, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_623(i64 noundef %0, ptr noundef %1) #0 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
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
  %46 = icmp sgt i64 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_623, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_627 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.60)
  %78 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 2), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = load ptr, ptr %15, align 8
  call void %93(i64 noundef 3, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_789(i64 noundef %0, ptr noundef %1) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
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
  %46 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
  store ptr %46, ptr %21, align 8
  %47 = load ptr, ptr %21, align 8
  store ptr %47, ptr %22, align 8
  %48 = load ptr, ptr %22, align 8
  %49 = load ptr, ptr @C_stack_limit, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sgt i64 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 3
  %58 = add nsw i32 19, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, ptr @C_scratch_usage, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp sgt i64 %53, %61
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %45
  %68 = load i64, ptr %3, align 8
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_789, i32 noundef %69, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %45
  %72 = alloca i8, i64 152, align 16
  store ptr %72, ptr %20, align 8
  %73 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %73, align 8
  %74 = load ptr, ptr %20, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_797 to i64), ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %20, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %20, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %20, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store ptr %82, ptr %20, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %9, align 8
  %84 = load ptr, ptr %20, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %23, align 8
  %86 = load ptr, ptr %20, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 216172782113783810, ptr %87, align 8
  %88 = load ptr, ptr %20, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store ptr %89, ptr %20, align 8
  %90 = load i64, ptr %23, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds %struct.C_block_struct, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds [0 x i64], ptr %92, i64 0, i64 0
  store i64 30, ptr %93, align 8
  %94 = load i64, ptr %23, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds %struct.C_block_struct, ptr %95, i32 0, i32 1
  %97 = getelementptr inbounds [0 x i64], ptr %96, i64 0, i64 1
  store i64 14, ptr %97, align 8
  %98 = load i64, ptr %23, align 8
  store i64 %98, ptr %24, align 8
  %99 = load i64, ptr %24, align 8
  store i64 %99, ptr %10, align 8
  %100 = load i64, ptr %10, align 8
  store i64 %100, ptr %11, align 8
  %101 = load ptr, ptr %20, align 8
  store i64 1, ptr %101, align 8
  %102 = load i64, ptr %11, align 8
  %103 = load ptr, ptr %20, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = ptrtoint ptr %105 to i64
  store i64 %106, ptr %5, align 8
  %107 = load ptr, ptr %20, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store ptr %108, ptr %20, align 8
  %109 = load i64, ptr %5, align 8
  store i64 %109, ptr %12, align 8
  %110 = load i64, ptr %12, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  store i64 %113, ptr %13, align 8
  %114 = load i64, ptr %8, align 8
  %115 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 30), align 16
  %116 = call i64 @C_i_check_list_2(i64 noundef %114, i64 noundef %115)
  store i64 %116, ptr %14, align 8
  %117 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %117, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 ptrtoint (ptr @f_812 to i64), ptr %119, align 8
  %120 = load i64, ptr %9, align 8
  %121 = load ptr, ptr %20, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %20, align 8
  %124 = ptrtoint ptr %123 to i64
  store i64 %124, ptr %5, align 8
  %125 = load ptr, ptr %20, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  store ptr %126, ptr %20, align 8
  %127 = load i64, ptr %5, align 8
  store i64 %127, ptr %15, align 8
  store i64 30, ptr %16, align 8
  %128 = load ptr, ptr %20, align 8
  store i64 1, ptr %128, align 8
  %129 = load i64, ptr %16, align 8
  %130 = load ptr, ptr %20, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %20, align 8
  %133 = ptrtoint ptr %132 to i64
  store i64 %133, ptr %5, align 8
  %134 = load ptr, ptr %20, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store ptr %135, ptr %20, align 8
  %136 = load i64, ptr %5, align 8
  store i64 %136, ptr %17, align 8
  %137 = load ptr, ptr %20, align 8
  store i64 2594073385365405701, ptr %137, align 8
  %138 = load ptr, ptr %20, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  store i64 ptrtoint (ptr @f_814 to i64), ptr %139, align 8
  %140 = load i64, ptr %12, align 8
  %141 = load ptr, ptr %20, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %17, align 8
  %144 = load ptr, ptr %20, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 3
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %13, align 8
  %147 = load ptr, ptr %20, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 4
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %20, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 5
  store i64 ptrtoint (ptr @li17 to i64), ptr %150, align 8
  %151 = load ptr, ptr %20, align 8
  %152 = ptrtoint ptr %151 to i64
  store i64 %152, ptr %5, align 8
  %153 = load ptr, ptr %20, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 6
  store ptr %154, ptr %20, align 8
  %155 = load i64, ptr %5, align 8
  %156 = load i64, ptr %17, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds %struct.C_block_struct, ptr %157, i32 0, i32 1
  %159 = getelementptr inbounds [0 x i64], ptr %158, i64 0, i64 0
  store i64 %155, ptr %159, align 8
  store i64 %155, ptr %18, align 8
  %160 = load i64, ptr %17, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  %163 = load i64, ptr %162, align 8
  store i64 %163, ptr %19, align 8
  %164 = load i64, ptr %19, align 8
  %165 = load i64, ptr %15, align 8
  %166 = load i64, ptr %8, align 8
  call void @f_814(i64 noundef %164, i64 noundef %165, i64 noundef %166) #4
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %46 = icmp sgt i64 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_848, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_852 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.70)
  %78 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 28), align 16
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 28), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = load ptr, ptr %15, align 8
  call void %93(i64 noundef 3, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_908(i64 noundef %0, ptr noundef %1) #0 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
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
  call void @C_save_and_reclaim(ptr noundef @f_908, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  call void @C_trace(ptr noundef @.str.73)
  %66 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 35), align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  %70 = call ptr @C_fast_retrieve_proc(i64 noundef %69)
  store ptr %70, ptr %14, align 8
  %71 = load ptr, ptr %4, align 8
  store ptr %71, ptr %15, align 8
  %72 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 35), align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %9, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = load ptr, ptr %15, align 8
  call void %87(i64 noundef 4, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_914(i64 noundef %0, ptr noundef %1) #0 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
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
  %45 = icmp sgt i64 %44, 3
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 3
  %48 = add nsw i32 2, %47
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
  call void @C_save_and_reclaim(ptr noundef @f_914, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 16, align 16
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 37), align 8
  %64 = call i64 @C_a_i_vector1(ptr noundef %11, i32 noundef 1, i64 noundef %63)
  store i64 %64, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.74)
  %65 = load i64, ptr %3, align 8
  %66 = icmp sge i64 %65, 4
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %14, align 8
  br label %71

69:                                               ; preds = %61
  %70 = alloca i8, i64 32, align 16
  store ptr %70, ptr %14, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 0
  store i64 0, ptr %73, align 8
  %74 = load i64, ptr %7, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 37), align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %14, align 8
  call void @C_values(i64 noundef 4, ptr noundef %83) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_925(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_925, i32 noundef %47, ptr noundef %48) #4
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
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 14, ptr %56, align 8
  %57 = load i64, ptr %8, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  %60 = load i64, ptr %59, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = load ptr, ptr %12, align 8
  call void %61(i64 noundef 2, ptr noundef %62) #4
  unreachable
}

declare i64 @C_mutate_slot(ptr noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) #2

declare i64 @C_i_check_structure_2(i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_block_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_437(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_437, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_441 to i64), ptr %55, align 8
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
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.45)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_441(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  call void @C_save_and_reclaim(ptr noundef @f_441, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_445 to i64), ptr %55, align 8
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
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.46)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
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
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_445(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
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
  call void @C_save_and_reclaim(ptr noundef @f_445, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.47)
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
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %7, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  call void @C_values(i64 noundef 5, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_values(i64 noundef, ptr noundef) #2

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_458(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
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
  %38 = add nsw i32 11, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_458, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 88, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_462 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.49)
  %112 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
  %113 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %13, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 4
  br i1 %115, label %116, label %118

116:                                              ; preds = %51
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %14, align 8
  br label %120

118:                                              ; preds = %51
  %119 = alloca i8, i64 32, align 16
  store ptr %119, ptr %14, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
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
  %132 = getelementptr inbounds i64, ptr %131, i64 9
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 24), align 16
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 3
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = load ptr, ptr %14, align 8
  call void %139(i64 noundef 4, ptr noundef %140) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_462(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
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
  %38 = add nsw i32 11, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_462, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 88, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_466 to i64), ptr %55, align 8
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
  %80 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.50)
  %112 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
  %113 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %13, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 4
  br i1 %115, label %116, label %118

116:                                              ; preds = %51
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %14, align 8
  br label %120

118:                                              ; preds = %51
  %119 = alloca i8, i64 32, align 16
  store ptr %119, ptr %14, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 23), align 8
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
  %132 = getelementptr inbounds i64, ptr %131, i64 10
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 24), align 16
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 3
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = load ptr, ptr %14, align 8
  call void %139(i64 noundef 4, ptr noundef %140) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_466(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
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
  %36 = add nsw i32 11, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_466, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 88, align 16
  store ptr %50, ptr %9, align 8
  %51 = load i64, ptr %6, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 2
  %54 = load i64, ptr %53, align 8
  store i64 %54, ptr %8, align 8
  %55 = load ptr, ptr %4, align 8
  store ptr %55, ptr %12, align 8
  %56 = load i64, ptr %8, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 3), align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 5
  %71 = load i64, ptr %70, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 6
  %75 = load i64, ptr %74, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 7
  %80 = load i64, ptr %79, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 8
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 9
  %88 = load i64, ptr %87, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 10
  %92 = load i64, ptr %91, align 8
  %93 = call i64 (ptr, i32, ...) @C_a_i_record(ptr noundef %9, i32 noundef 10, i64 noundef %59, i64 noundef %63, i64 noundef %67, i64 noundef %71, i64 noundef %75, i64 noundef %76, i64 noundef %80, i64 noundef %84, i64 noundef %88, i64 noundef %92)
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %8, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = load ptr, ptr %12, align 8
  call void %100(i64 noundef 2, ptr noundef %101) #4
  unreachable
}

declare i64 @C_a_i_record(ptr noundef, i32 noundef, ...) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_472(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  call void @C_save_and_reclaim(ptr noundef @f_472, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_475 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.52)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
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
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_475(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
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
  call void @C_save_and_reclaim(ptr noundef @f_475, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_478 to i64), ptr %55, align 8
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
  %77 = load ptr, ptr %10, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 6
  store ptr %80, ptr %10, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.53)
  %82 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 3
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  br label %90

88:                                               ; preds = %51
  %89 = alloca i8, i64 24, align 16
  store ptr %89, ptr %14, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
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
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = load ptr, ptr %14, align 8
  call void %106(i64 noundef 3, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_478(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !38
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
  call void @C_save_and_reclaim(ptr noundef @f_478, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_481 to i64), ptr %55, align 8
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
  %83 = load ptr, ptr %10, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %10, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.54)
  %88 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %97 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %108 = getelementptr inbounds i64, ptr %107, i64 5
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
define internal void @f_481(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !39
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
  %38 = add nsw i32 8, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_481, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_484 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.55)
  %94 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
  %95 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
  store ptr %95, ptr %13, align 8
  %96 = load i64, ptr %3, align 8
  %97 = icmp sge i64 %96, 3
  br i1 %97, label %98, label %100

98:                                               ; preds = %51
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %14, align 8
  br label %102

100:                                              ; preds = %51
  %101 = alloca i8, i64 24, align 16
  store ptr %101, ptr %14, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
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
  %114 = getelementptr inbounds i64, ptr %113, i64 6
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %13, align 8
  %119 = load ptr, ptr %14, align 8
  call void %118(i64 noundef 3, ptr noundef %119) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_484(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nsw i32 12, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_484, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 96, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405703, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_487 to i64), ptr %56, align 8
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
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %5, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  store ptr %93, ptr %11, align 8
  %94 = load i64, ptr %5, align 8
  store i64 %94, ptr %8, align 8
  %95 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %95, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 ptrtoint (ptr @f_609 to i64), ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 7
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %11, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %5, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  store ptr %110, ptr %11, align 8
  %111 = load i64, ptr %5, align 8
  store i64 %111, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.56)
  %112 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %113 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %14, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 3
  br i1 %115, label %116, label %118

116:                                              ; preds = %52
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %15, align 8
  br label %120

118:                                              ; preds = %52
  %119 = alloca i8, i64 24, align 16
  store ptr %119, ptr %15, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %15, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 0
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %9, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 7
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %15, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %14, align 8
  %137 = load ptr, ptr %15, align 8
  call void %136(i64 noundef 3, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_487(i64 noundef %0, ptr noundef %1) #0 {
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
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  store ptr %27, ptr %14, align 8
  %28 = load ptr, ptr %14, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nsw i32 12, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_487, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 96, align 16
  store ptr %52, ptr %12, align 8
  store i64 30, ptr %8, align 8
  %53 = load ptr, ptr %12, align 8
  store i64 1, ptr %53, align 8
  %54 = load i64, ptr %8, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 %54, ptr %56, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = ptrtoint ptr %57 to i64
  store i64 %58, ptr %5, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store ptr %60, ptr %12, align 8
  %61 = load i64, ptr %5, align 8
  store i64 %61, ptr %9, align 8
  %62 = load ptr, ptr %12, align 8
  store i64 2594073385365405705, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_492 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 6
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %12, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 7
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %7, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 8
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 ptrtoint (ptr @li12 to i64), ptr %102, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 10
  store ptr %106, ptr %12, align 8
  %107 = load i64, ptr %5, align 8
  %108 = load i64, ptr %9, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds %struct.C_block_struct, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [0 x i64], ptr %110, i64 0, i64 0
  store i64 %107, ptr %111, align 8
  store i64 %107, ptr %10, align 8
  %112 = load i64, ptr %9, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  store i64 %115, ptr %11, align 8
  %116 = load i64, ptr %11, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 7
  %120 = load i64, ptr %119, align 8
  call void @f_492(i64 noundef %116, i64 noundef %120, i64 noundef 3) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_609(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
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
  call void @C_save_and_reclaim(ptr noundef @f_609, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_617 to i64), ptr %55, align 8
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
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.57)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 17), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 17), align 8
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
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_492(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
  store ptr %23, ptr %15, align 8
  %24 = load ptr, ptr %15, align 8
  store ptr %24, ptr %16, align 8
  %25 = load ptr, ptr %16, align 8
  %26 = load ptr, ptr @C_stack_limit, align 8
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = load i64, ptr @C_scratch_usage, align 8
  %32 = add nsw i64 50, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_492, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 376, align 16
  store ptr %43, ptr %14, align 8
  %44 = load i64, ptr %4, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  %47 = load i64, ptr %46, align 8
  %48 = call i64 @C_s_a_i_minus(ptr noundef %14, i64 noundef 2, i64 noundef %47, i64 noundef 3)
  store i64 %48, ptr %8, align 8
  %49 = load i64, ptr %6, align 8
  %50 = load i64, ptr %8, align 8
  %51 = call i64 @C_i_nequalp(i64 noundef %49, i64 noundef %50)
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load i64, ptr %5, align 8
  store i64 %54, ptr %9, align 8
  %55 = load i64, ptr %9, align 8
  %56 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 30, ptr %57, align 8
  %58 = load i64, ptr %9, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  %61 = load i64, ptr %60, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %62(i64 noundef 2, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %42
  %65 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %65, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_502 to i64), ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %4, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %5, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %7, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store ptr %83, ptr %14, align 8
  %84 = load i64, ptr %7, align 8
  store i64 %84, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %85 = load ptr, ptr %14, align 8
  store i64 1, ptr %85, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %7, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store ptr %92, ptr %14, align 8
  %93 = load i64, ptr %7, align 8
  store i64 %93, ptr %11, align 8
  %94 = load ptr, ptr %14, align 8
  store i64 2594073385365405706, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_511 to i64), ptr %96, align 8
  %97 = load i64, ptr %4, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %4, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %4, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 5
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 5
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %4, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 6
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 6
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %4, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 7
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %4, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 8
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 8
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %11, align 8
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 9
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %14, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 10
  store i64 ptrtoint (ptr @li11 to i64), ptr %140, align 8
  %141 = load ptr, ptr %14, align 8
  %142 = ptrtoint ptr %141 to i64
  store i64 %142, ptr %7, align 8
  %143 = load ptr, ptr %14, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 11
  store ptr %144, ptr %14, align 8
  %145 = load i64, ptr %7, align 8
  %146 = load i64, ptr %11, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds %struct.C_block_struct, ptr %147, i32 0, i32 1
  %149 = getelementptr inbounds [0 x i64], ptr %148, i64 0, i64 0
  store i64 %145, ptr %149, align 8
  store i64 %145, ptr %12, align 8
  %150 = load i64, ptr %11, align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  %153 = load i64, ptr %152, align 8
  store i64 %153, ptr %13, align 8
  %154 = load i64, ptr %13, align 8
  %155 = load i64, ptr %9, align 8
  call void @f_511(i64 noundef %154, i64 noundef %155, i64 noundef 3) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_492(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_492(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_502(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
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
  %33 = icmp sgt i64 %32, 2
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  %36 = add nsw i32 29, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_502, i32 noundef %47, ptr noundef %48) #4
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
  %68 = load i64, ptr %8, align 8
  call void @f_492(i64 noundef %63, i64 noundef %67, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_511(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  br label %36

36:                                               ; preds = %83, %3
  %37 = load i64, ptr @C_timer_interrupt_counter, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, ptr @C_timer_interrupt_counter, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @C_raise_interrupt(i32 noundef 255)
  br label %41

41:                                               ; preds = %40, %36
  %42 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
  store ptr %42, ptr %33, align 8
  %43 = load ptr, ptr %33, align 8
  store ptr %43, ptr %34, align 8
  %44 = load ptr, ptr %34, align 8
  %45 = load ptr, ptr @C_stack_limit, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = load i64, ptr @C_scratch_usage, align 8
  %51 = add nsw i64 473, %50
  %52 = icmp sgt i64 %49, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load i64, ptr %4, align 8
  %59 = load i64, ptr %5, align 8
  %60 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_511, i32 noundef 3, i64 noundef %58, i64 noundef %59, i64 noundef %60) #4
  unreachable

61:                                               ; preds = %41
  %62 = alloca i8, i64 3768, align 16
  store ptr %62, ptr %32, align 8
  %63 = load i64, ptr %4, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %66 = load i64, ptr %65, align 8
  %67 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %66, i64 noundef 3)
  store i64 %67, ptr %8, align 8
  %68 = load i64, ptr %6, align 8
  %69 = load i64, ptr %8, align 8
  %70 = call i64 @C_i_nequalp(i64 noundef %68, i64 noundef %69)
  %71 = icmp ne i64 %70, 6
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %9, align 8
  %74 = load i64, ptr %9, align 8
  %75 = getelementptr inbounds [2 x i64], ptr %35, i64 0, i64 0
  store i64 %74, ptr %75, align 16
  %76 = getelementptr inbounds [2 x i64], ptr %35, i64 0, i64 1
  store i64 30, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds [2 x i64], ptr %35, i64 0, i64 0
  call void %81(i64 noundef 2, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %61
  %84 = load i64, ptr %6, align 8
  %85 = load i64, ptr %4, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  %88 = load i64, ptr %87, align 8
  %89 = call i64 @C_s_a_i_times(ptr noundef %32, i64 noundef 2, i64 noundef %84, i64 noundef %88)
  store i64 %89, ptr %9, align 8
  %90 = load i64, ptr %9, align 8
  %91 = load i64, ptr %4, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  %95 = call i64 @C_s_a_i_plus(ptr noundef %32, i64 noundef 2, i64 noundef %90, i64 noundef %94)
  store i64 %95, ptr %10, align 8
  %96 = load i64, ptr %6, align 8
  %97 = load i64, ptr %4, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = call i64 @C_s_a_i_times(ptr noundef %32, i64 noundef 2, i64 noundef %96, i64 noundef %100)
  store i64 %101, ptr %11, align 8
  %102 = load i64, ptr %4, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  %105 = load i64, ptr %104, align 8
  %106 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %105, i64 noundef 3)
  store i64 %106, ptr %12, align 8
  %107 = load i64, ptr %11, align 8
  %108 = load i64, ptr %12, align 8
  %109 = call i64 @C_s_a_i_plus(ptr noundef %32, i64 noundef 2, i64 noundef %107, i64 noundef %108)
  store i64 %109, ptr %13, align 8
  %110 = load i64, ptr %6, align 8
  %111 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %110, i64 noundef 3)
  store i64 %111, ptr %14, align 8
  %112 = load i64, ptr %14, align 8
  %113 = load i64, ptr %4, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  %116 = load i64, ptr %115, align 8
  %117 = call i64 @C_s_a_i_times(ptr noundef %32, i64 noundef 2, i64 noundef %112, i64 noundef %116)
  store i64 %117, ptr %15, align 8
  %118 = load i64, ptr %15, align 8
  %119 = load i64, ptr %4, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 4
  %122 = load i64, ptr %121, align 8
  %123 = call i64 @C_s_a_i_plus(ptr noundef %32, i64 noundef 2, i64 noundef %118, i64 noundef %122)
  store i64 %123, ptr %16, align 8
  %124 = load i64, ptr %4, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 5
  %127 = load i64, ptr %126, align 8
  %128 = load i64, ptr %10, align 8
  %129 = call i64 @C_a_i_f64vector_ref(ptr noundef %32, i64 noundef 2, i64 noundef %127, i64 noundef %128)
  store i64 %129, ptr %17, align 8
  %130 = load i64, ptr %4, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 6
  %133 = load i64, ptr %132, align 8
  %134 = load i64, ptr %10, align 8
  %135 = call i64 @C_a_i_f64vector_ref(ptr noundef %32, i64 noundef 2, i64 noundef %133, i64 noundef %134)
  store i64 %135, ptr %18, align 8
  %136 = load i64, ptr %4, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 6
  %139 = load i64, ptr %138, align 8
  %140 = load i64, ptr %13, align 8
  %141 = call i64 @C_a_i_f64vector_ref(ptr noundef %32, i64 noundef 2, i64 noundef %139, i64 noundef %140)
  store i64 %141, ptr %19, align 8
  %142 = load i64, ptr %18, align 8
  %143 = load i64, ptr %19, align 8
  %144 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %142, i64 noundef %143)
  store i64 %144, ptr %20, align 8
  %145 = load i64, ptr %4, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 7
  %148 = load i64, ptr %147, align 8
  %149 = load i64, ptr %10, align 8
  %150 = call i64 @C_a_i_f64vector_ref(ptr noundef %32, i64 noundef 2, i64 noundef %148, i64 noundef %149)
  store i64 %150, ptr %21, align 8
  %151 = load i64, ptr %4, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 7
  %154 = load i64, ptr %153, align 8
  %155 = load i64, ptr %16, align 8
  %156 = call i64 @C_a_i_f64vector_ref(ptr noundef %32, i64 noundef 2, i64 noundef %154, i64 noundef %155)
  store i64 %156, ptr %22, align 8
  %157 = load i64, ptr %21, align 8
  %158 = load i64, ptr %22, align 8
  %159 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %157, i64 noundef %158)
  store i64 %159, ptr %23, align 8
  %160 = load i64, ptr %20, align 8
  %161 = load i64, ptr %23, align 8
  %162 = call i64 @C_s_a_i_minus(ptr noundef %32, i64 noundef 2, i64 noundef %160, i64 noundef %161)
  store i64 %162, ptr %24, align 8
  %163 = load i64, ptr %4, align 8
  %164 = inttoptr i64 %163 to ptr
  %165 = getelementptr inbounds i64, ptr %164, i64 8
  %166 = load i64, ptr %165, align 8
  %167 = load i64, ptr %24, align 8
  %168 = call i64 @C_s_a_i_times(ptr noundef %32, i64 noundef 2, i64 noundef %166, i64 noundef %167)
  store i64 %168, ptr %25, align 8
  %169 = load i64, ptr %17, align 8
  %170 = load i64, ptr %25, align 8
  %171 = call i64 @C_s_a_i_plus(ptr noundef %32, i64 noundef 2, i64 noundef %169, i64 noundef %170)
  store i64 %171, ptr %26, align 8
  %172 = load i64, ptr %4, align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 5
  %175 = load i64, ptr %174, align 8
  %176 = load i64, ptr %10, align 8
  %177 = load i64, ptr %26, align 8
  %178 = call i64 @C_i_f64vector_set(i64 noundef %175, i64 noundef %176, i64 noundef %177)
  store i64 %178, ptr %27, align 8
  %179 = load i64, ptr %6, align 8
  %180 = call i64 @C_s_a_i_plus(ptr noundef %32, i64 noundef 2, i64 noundef %179, i64 noundef 3)
  store i64 %180, ptr %28, align 8
  %181 = load i64, ptr %5, align 8
  store i64 %181, ptr %30, align 8
  %182 = load i64, ptr %28, align 8
  store i64 %182, ptr %31, align 8
  %183 = load i64, ptr %30, align 8
  store i64 %183, ptr %5, align 8
  %184 = load i64, ptr %31, align 8
  store i64 %184, ptr %6, align 8
  br label %36
}

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_511(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_511(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

declare i64 @C_a_i_f64vector_ref(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_f64vector_set(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_617(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  call void @C_save_and_reclaim(ptr noundef @f_617, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_621 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.58)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_621(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nsw i32 33, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_621, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 264, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %7, align 8
  %58 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %56, i64 noundef %57)
  store i64 %58, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.59)
  %59 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = call ptr @C_fast_retrieve_proc(i64 noundef %62)
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %3, align 8
  %65 = icmp sge i64 %64, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  br label %70

68:                                               ; preds = %51
  %69 = alloca i8, i64 32, align 16
  store ptr %69, ptr %14, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @C_fast_retrieve_proc(i64 noundef %0) #3 {
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_627(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
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
  call void @C_save_and_reclaim(ptr noundef @f_627, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_630 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.61)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 5), align 8
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
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_630(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
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
  call void @C_save_and_reclaim(ptr noundef @f_630, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_633 to i64), ptr %55, align 8
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
  %77 = load ptr, ptr %10, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 6
  store ptr %80, ptr %10, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.62)
  %82 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 3
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  br label %90

88:                                               ; preds = %51
  %89 = alloca i8, i64 24, align 16
  store ptr %89, ptr %14, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 7), align 8
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
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = load ptr, ptr %14, align 8
  call void %106(i64 noundef 3, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_633(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_633, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_636 to i64), ptr %55, align 8
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
  %83 = load ptr, ptr %10, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %10, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.63)
  %88 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %97 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %108 = getelementptr inbounds i64, ptr %107, i64 5
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
define internal void @f_636(i64 noundef %0, ptr noundef %1) #0 {
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
  %38 = add nsw i32 8, %37
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
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_639 to i64), ptr %55, align 8
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
  %89 = load ptr, ptr %10, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 8
  store ptr %92, ptr %10, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.64)
  %94 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
  %95 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
  store ptr %95, ptr %13, align 8
  %96 = load i64, ptr %3, align 8
  %97 = icmp sge i64 %96, 3
  br i1 %97, label %98, label %100

98:                                               ; preds = %51
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %14, align 8
  br label %102

100:                                              ; preds = %51
  %101 = alloca i8, i64 24, align 16
  store ptr %101, ptr %14, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 11), align 8
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
  %114 = getelementptr inbounds i64, ptr %113, i64 6
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %13, align 8
  %119 = load ptr, ptr %14, align 8
  call void %118(i64 noundef 3, ptr noundef %119) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_639(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !52
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
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nsw i32 12, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_639, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 96, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405703, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_642 to i64), ptr %56, align 8
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
  %81 = load i64, ptr %7, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %5, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  store ptr %93, ptr %11, align 8
  %94 = load i64, ptr %5, align 8
  store i64 %94, ptr %8, align 8
  %95 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %95, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 ptrtoint (ptr @f_775 to i64), ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 7
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %11, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %5, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  store ptr %110, ptr %11, align 8
  %111 = load i64, ptr %5, align 8
  store i64 %111, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.65)
  %112 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %113 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %14, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 3
  br i1 %115, label %116, label %118

116:                                              ; preds = %52
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %15, align 8
  br label %120

118:                                              ; preds = %52
  %119 = alloca i8, i64 24, align 16
  store ptr %119, ptr %15, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 13), align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %15, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 0
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %9, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 7
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %15, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %14, align 8
  %137 = load ptr, ptr %15, align 8
  call void %136(i64 noundef 3, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_642(i64 noundef %0, ptr noundef %1) #0 {
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
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %2
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  store ptr %27, ptr %14, align 8
  %28 = load ptr, ptr %14, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr %3, align 8
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
  %38 = add nsw i32 12, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_642, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 96, align 16
  store ptr %52, ptr %12, align 8
  store i64 30, ptr %8, align 8
  %53 = load ptr, ptr %12, align 8
  store i64 1, ptr %53, align 8
  %54 = load i64, ptr %8, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 %54, ptr %56, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = ptrtoint ptr %57 to i64
  store i64 %58, ptr %5, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store ptr %60, ptr %12, align 8
  %61 = load i64, ptr %5, align 8
  store i64 %61, ptr %9, align 8
  %62 = load ptr, ptr %12, align 8
  store i64 2594073385365405705, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_647 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %7, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 7
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 6
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 8
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 9
  store i64 ptrtoint (ptr @li15 to i64), ptr %102, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 10
  store ptr %106, ptr %12, align 8
  %107 = load i64, ptr %5, align 8
  %108 = load i64, ptr %9, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds %struct.C_block_struct, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [0 x i64], ptr %110, i64 0, i64 0
  store i64 %107, ptr %111, align 8
  store i64 %107, ptr %10, align 8
  %112 = load i64, ptr %9, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  store i64 %115, ptr %11, align 8
  %116 = load i64, ptr %11, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 7
  %120 = load i64, ptr %119, align 8
  call void @f_647(i64 noundef %116, i64 noundef %120, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_775(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
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
  call void @C_save_and_reclaim(ptr noundef @f_775, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_783 to i64), ptr %55, align 8
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
  %71 = load ptr, ptr %10, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store ptr %74, ptr %10, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.66)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 19), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 19), align 8
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
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_647(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  store ptr %23, ptr %15, align 8
  %24 = load ptr, ptr %15, align 8
  store ptr %24, ptr %16, align 8
  %25 = load ptr, ptr %16, align 8
  %26 = load ptr, ptr @C_stack_limit, align 8
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 8
  %31 = load i64, ptr @C_scratch_usage, align 8
  %32 = add nsw i64 50, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_647, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 376, align 16
  store ptr %43, ptr %14, align 8
  %44 = load i64, ptr %4, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  %47 = load i64, ptr %46, align 8
  %48 = call i64 @C_s_a_i_minus(ptr noundef %14, i64 noundef 2, i64 noundef %47, i64 noundef 3)
  store i64 %48, ptr %8, align 8
  %49 = load i64, ptr %6, align 8
  %50 = load i64, ptr %8, align 8
  %51 = call i64 @C_i_nequalp(i64 noundef %49, i64 noundef %50)
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load i64, ptr %5, align 8
  store i64 %54, ptr %9, align 8
  %55 = load i64, ptr %9, align 8
  %56 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 30, ptr %57, align 8
  %58 = load i64, ptr %9, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  %61 = load i64, ptr %60, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %62(i64 noundef 2, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %42
  %65 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %65, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_657 to i64), ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %4, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %5, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %7, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store ptr %83, ptr %14, align 8
  %84 = load i64, ptr %7, align 8
  store i64 %84, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %85 = load ptr, ptr %14, align 8
  store i64 1, ptr %85, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %7, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store ptr %92, ptr %14, align 8
  %93 = load i64, ptr %7, align 8
  store i64 %93, ptr %11, align 8
  %94 = load ptr, ptr %14, align 8
  store i64 2594073385365405706, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_666 to i64), ptr %96, align 8
  %97 = load i64, ptr %4, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %4, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %4, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 5
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 5
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %4, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 6
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 6
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %4, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 7
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %4, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 8
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 8
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %11, align 8
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 9
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %14, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 10
  store i64 ptrtoint (ptr @li14 to i64), ptr %140, align 8
  %141 = load ptr, ptr %14, align 8
  %142 = ptrtoint ptr %141 to i64
  store i64 %142, ptr %7, align 8
  %143 = load ptr, ptr %14, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 11
  store ptr %144, ptr %14, align 8
  %145 = load i64, ptr %7, align 8
  %146 = load i64, ptr %11, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds %struct.C_block_struct, ptr %147, i32 0, i32 1
  %149 = getelementptr inbounds [0 x i64], ptr %148, i64 0, i64 0
  store i64 %145, ptr %149, align 8
  store i64 %145, ptr %12, align 8
  %150 = load i64, ptr %11, align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  %153 = load i64, ptr %152, align 8
  store i64 %153, ptr %13, align 8
  %154 = load i64, ptr %13, align 8
  %155 = load i64, ptr %9, align 8
  call void @f_666(i64 noundef %154, i64 noundef %155, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_647(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_647(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_657(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
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
  %33 = icmp sgt i64 %32, 2
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  %36 = add nsw i32 29, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_657, i32 noundef %47, ptr noundef %48) #4
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
  %68 = load i64, ptr %8, align 8
  call void @f_647(i64 noundef %63, i64 noundef %67, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_666(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  br label %39

39:                                               ; preds = %86, %3
  %40 = load i64, ptr @C_timer_interrupt_counter, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, ptr @C_timer_interrupt_counter, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @C_raise_interrupt(i32 noundef 255)
  br label %44

44:                                               ; preds = %43, %39
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
  store ptr %45, ptr %36, align 8
  %46 = load ptr, ptr %36, align 8
  store ptr %46, ptr %37, align 8
  %47 = load ptr, ptr %37, align 8
  %48 = load ptr, ptr @C_stack_limit, align 8
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = load i64, ptr @C_scratch_usage, align 8
  %54 = add nsw i64 510, %53
  %55 = icmp sgt i64 %52, %54
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i64, ptr %4, align 8
  %62 = load i64, ptr %5, align 8
  %63 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_666, i32 noundef 3, i64 noundef %61, i64 noundef %62, i64 noundef %63) #4
  unreachable

64:                                               ; preds = %44
  %65 = alloca i8, i64 4064, align 16
  store ptr %65, ptr %35, align 8
  %66 = load i64, ptr %4, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = call i64 @C_s_a_i_minus(ptr noundef %35, i64 noundef 2, i64 noundef %69, i64 noundef 3)
  store i64 %70, ptr %8, align 8
  %71 = load i64, ptr %6, align 8
  %72 = load i64, ptr %8, align 8
  %73 = call i64 @C_i_nequalp(i64 noundef %71, i64 noundef %72)
  %74 = icmp ne i64 %73, 6
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %9, align 8
  %77 = load i64, ptr %9, align 8
  %78 = getelementptr inbounds [2 x i64], ptr %38, i64 0, i64 0
  store i64 %77, ptr %78, align 16
  %79 = getelementptr inbounds [2 x i64], ptr %38, i64 0, i64 1
  store i64 30, ptr %79, align 8
  %80 = load i64, ptr %9, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds [2 x i64], ptr %38, i64 0, i64 0
  call void %84(i64 noundef 2, ptr noundef %85) #4
  unreachable

86:                                               ; preds = %64
  %87 = load i64, ptr %6, align 8
  %88 = load i64, ptr %4, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
  %92 = call i64 @C_s_a_i_times(ptr noundef %35, i64 noundef 2, i64 noundef %87, i64 noundef %91)
  store i64 %92, ptr %9, align 8
  %93 = load i64, ptr %9, align 8
  %94 = load i64, ptr %4, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %93, i64 noundef %97)
  store i64 %98, ptr %10, align 8
  %99 = load i64, ptr %6, align 8
  %100 = load i64, ptr %4, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  %103 = load i64, ptr %102, align 8
  %104 = call i64 @C_s_a_i_times(ptr noundef %35, i64 noundef 2, i64 noundef %99, i64 noundef %103)
  store i64 %104, ptr %11, align 8
  %105 = load i64, ptr %4, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 4
  %108 = load i64, ptr %107, align 8
  %109 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %108, i64 noundef 3)
  store i64 %109, ptr %12, align 8
  %110 = load i64, ptr %11, align 8
  %111 = load i64, ptr %12, align 8
  %112 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %110, i64 noundef %111)
  store i64 %112, ptr %13, align 8
  %113 = load i64, ptr %6, align 8
  %114 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %113, i64 noundef 3)
  store i64 %114, ptr %14, align 8
  %115 = load i64, ptr %14, align 8
  %116 = load i64, ptr %4, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  %119 = load i64, ptr %118, align 8
  %120 = call i64 @C_s_a_i_times(ptr noundef %35, i64 noundef 2, i64 noundef %115, i64 noundef %119)
  store i64 %120, ptr %15, align 8
  %121 = load i64, ptr %15, align 8
  %122 = load i64, ptr %4, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 4
  %125 = load i64, ptr %124, align 8
  %126 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %121, i64 noundef %125)
  store i64 %126, ptr %16, align 8
  %127 = load i64, ptr %4, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 5
  %130 = load i64, ptr %129, align 8
  %131 = load i64, ptr %10, align 8
  %132 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %130, i64 noundef %131)
  store i64 %132, ptr %17, align 8
  %133 = load i64, ptr %4, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 6
  %136 = load i64, ptr %135, align 8
  %137 = load i64, ptr %16, align 8
  %138 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %136, i64 noundef %137)
  store i64 %138, ptr %18, align 8
  %139 = load i64, ptr %4, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 6
  %142 = load i64, ptr %141, align 8
  %143 = load i64, ptr %10, align 8
  %144 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %142, i64 noundef %143)
  store i64 %144, ptr %19, align 8
  %145 = load i64, ptr %18, align 8
  %146 = load i64, ptr %19, align 8
  %147 = call i64 @C_s_a_i_minus(ptr noundef %35, i64 noundef 2, i64 noundef %145, i64 noundef %146)
  store i64 %147, ptr %20, align 8
  %148 = load i64, ptr %4, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 7
  %151 = load i64, ptr %150, align 8
  %152 = load i64, ptr %20, align 8
  %153 = call i64 @C_s_a_i_times(ptr noundef %35, i64 noundef 2, i64 noundef %151, i64 noundef %152)
  store i64 %153, ptr %21, align 8
  %154 = load i64, ptr %17, align 8
  %155 = load i64, ptr %21, align 8
  %156 = call i64 @C_s_a_i_minus(ptr noundef %35, i64 noundef 2, i64 noundef %154, i64 noundef %155)
  store i64 %156, ptr %22, align 8
  %157 = load i64, ptr %4, align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 5
  %160 = load i64, ptr %159, align 8
  %161 = load i64, ptr %10, align 8
  %162 = load i64, ptr %22, align 8
  %163 = call i64 @C_i_f64vector_set(i64 noundef %160, i64 noundef %161, i64 noundef %162)
  store i64 %163, ptr %23, align 8
  %164 = load i64, ptr %4, align 8
  %165 = inttoptr i64 %164 to ptr
  %166 = getelementptr inbounds i64, ptr %165, i64 8
  %167 = load i64, ptr %166, align 8
  %168 = load i64, ptr %10, align 8
  %169 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %167, i64 noundef %168)
  store i64 %169, ptr %24, align 8
  %170 = load i64, ptr %4, align 8
  %171 = inttoptr i64 %170 to ptr
  %172 = getelementptr inbounds i64, ptr %171, i64 6
  %173 = load i64, ptr %172, align 8
  %174 = load i64, ptr %13, align 8
  %175 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %173, i64 noundef %174)
  store i64 %175, ptr %25, align 8
  %176 = load i64, ptr %4, align 8
  %177 = inttoptr i64 %176 to ptr
  %178 = getelementptr inbounds i64, ptr %177, i64 6
  %179 = load i64, ptr %178, align 8
  %180 = load i64, ptr %10, align 8
  %181 = call i64 @C_a_i_f64vector_ref(ptr noundef %35, i64 noundef 2, i64 noundef %179, i64 noundef %180)
  store i64 %181, ptr %26, align 8
  %182 = load i64, ptr %25, align 8
  %183 = load i64, ptr %26, align 8
  %184 = call i64 @C_s_a_i_minus(ptr noundef %35, i64 noundef 2, i64 noundef %182, i64 noundef %183)
  store i64 %184, ptr %27, align 8
  %185 = load i64, ptr %4, align 8
  %186 = inttoptr i64 %185 to ptr
  %187 = getelementptr inbounds i64, ptr %186, i64 7
  %188 = load i64, ptr %187, align 8
  %189 = load i64, ptr %27, align 8
  %190 = call i64 @C_s_a_i_times(ptr noundef %35, i64 noundef 2, i64 noundef %188, i64 noundef %189)
  store i64 %190, ptr %28, align 8
  %191 = load i64, ptr %24, align 8
  %192 = load i64, ptr %28, align 8
  %193 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %191, i64 noundef %192)
  store i64 %193, ptr %29, align 8
  %194 = load i64, ptr %4, align 8
  %195 = inttoptr i64 %194 to ptr
  %196 = getelementptr inbounds i64, ptr %195, i64 8
  %197 = load i64, ptr %196, align 8
  %198 = load i64, ptr %10, align 8
  %199 = load i64, ptr %29, align 8
  %200 = call i64 @C_i_f64vector_set(i64 noundef %197, i64 noundef %198, i64 noundef %199)
  store i64 %200, ptr %30, align 8
  %201 = load i64, ptr %6, align 8
  %202 = call i64 @C_s_a_i_plus(ptr noundef %35, i64 noundef 2, i64 noundef %201, i64 noundef 3)
  store i64 %202, ptr %31, align 8
  %203 = load i64, ptr %5, align 8
  store i64 %203, ptr %33, align 8
  %204 = load i64, ptr %31, align 8
  store i64 %204, ptr %34, align 8
  %205 = load i64, ptr %33, align 8
  store i64 %205, ptr %5, align 8
  %206 = load i64, ptr %34, align 8
  store i64 %206, ptr %6, align 8
  br label %39
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_666(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_666(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_783(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  call void @C_save_and_reclaim(ptr noundef @f_783, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_787 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.67)
  %76 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 24, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_787(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
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
  %38 = add nsw i32 33, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_787, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 264, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %7, align 8
  %58 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %56, i64 noundef %57)
  store i64 %58, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.68)
  %59 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = call ptr @C_fast_retrieve_proc(i64 noundef %62)
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %3, align 8
  %65 = icmp sge i64 %64, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  br label %70

68:                                               ; preds = %51
  %69 = alloca i8, i64 32, align 16
  store ptr %69, ptr %14, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_797(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  call void @C_save_and_reclaim(ptr noundef @f_797, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.69)
  %51 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 29), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call ptr @C_fast_retrieve_proc(i64 noundef %54)
  store ptr %55, ptr %12, align 8
  %56 = load i64, ptr %3, align 8
  %57 = icmp sge i64 %56, 3
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %13, align 8
  br label %62

60:                                               ; preds = %50
  %61 = alloca i8, i64 24, align 16
  store ptr %61, ptr %13, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_812(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
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
  %33 = icmp sgt i64 %32, 3
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_812, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %3, align 8
  %51 = icmp sge i64 %50, 4
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load ptr, ptr %4, align 8
  store ptr %53, ptr %12, align 8
  br label %56

54:                                               ; preds = %49
  %55 = alloca i8, i64 32, align 16
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
  %65 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 31), align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %7, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  call void @C_apply(i64 noundef 4, ptr noundef %74) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_814(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  br label %22

22:                                               ; preds = %52, %3
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %22
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  store ptr %28, ptr %17, align 8
  %29 = load ptr, ptr %17, align 8
  store ptr %29, ptr %18, align 8
  %30 = load ptr, ptr %18, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr @C_scratch_usage, align 8
  %37 = add nsw i64 38, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i64, ptr %4, align 8
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_814, i32 noundef 3, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %27
  %48 = alloca i8, i64 288, align 16
  store ptr %48, ptr %16, align 8
  %49 = load i64, ptr %6, align 8
  %50 = call i64 @C_i_pairp(i64 noundef %49)
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %106

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.C_block_struct, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [0 x i64], ptr %55, i64 0, i64 0
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  %60 = call i64 @C_s_a_i_times(ptr noundef %16, i64 noundef 2, i64 noundef %58, i64 noundef %59)
  store i64 %60, ptr %9, align 8
  %61 = load ptr, ptr %16, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %19, align 8
  %63 = load ptr, ptr %16, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %16, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %16, align 8
  %67 = load i64, ptr %9, align 8
  %68 = load i64, ptr %19, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds %struct.C_block_struct, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds [0 x i64], ptr %70, i64 0, i64 0
  store i64 %67, ptr %71, align 8
  %72 = load i64, ptr %19, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 1
  store i64 14, ptr %75, align 8
  %76 = load i64, ptr %19, align 8
  store i64 %76, ptr %20, align 8
  %77 = load i64, ptr %20, align 8
  store i64 %77, ptr %10, align 8
  %78 = load i64, ptr %4, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  %81 = load i64, ptr %80, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds %struct.C_block_struct, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [0 x i64], ptr %86, i64 0, i64 1
  %88 = load i64, ptr %10, align 8
  %89 = call i64 @C_mutate(ptr noundef %87, i64 noundef %88)
  store i64 30, ptr %11, align 8
  %90 = load i64, ptr %4, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %10, align 8
  %97 = call i64 @C_mutate(ptr noundef %95, i64 noundef %96)
  store i64 %97, ptr %12, align 8
  %98 = load i64, ptr %5, align 8
  store i64 %98, ptr %14, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds %struct.C_block_struct, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds [0 x i64], ptr %101, i64 0, i64 1
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %15, align 8
  %104 = load i64, ptr %14, align 8
  store i64 %104, ptr %5, align 8
  %105 = load i64, ptr %15, align 8
  store i64 %105, ptr %6, align 8
  br label %22

106:                                              ; preds = %47
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %8, align 8
  %108 = load i64, ptr %8, align 8
  %109 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %108, ptr %109, align 16
  %110 = load i64, ptr %4, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  %113 = load i64, ptr %112, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds %struct.C_block_struct, ptr %114, i32 0, i32 1
  %116 = getelementptr inbounds [0 x i64], ptr %115, i64 0, i64 1
  %117 = load i64, ptr %116, align 8
  %118 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %117, ptr %118, align 8
  %119 = load i64, ptr %8, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  %122 = load i64, ptr %121, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %123(i64 noundef 2, ptr noundef %124) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_apply(i64 noundef, ptr noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_814(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_814(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_i_pairp(i64 noundef %0) #3 {
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
define internal void @f_852(i64 noundef %0, ptr noundef %1) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
  store ptr %35, ptr %19, align 8
  %36 = load ptr, ptr %19, align 8
  store ptr %36, ptr %20, align 8
  %37 = load ptr, ptr %20, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 3
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 3
  %47 = add nsw i32 18, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_852, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 144, align 16
  store ptr %61, ptr %18, align 8
  %62 = load i64, ptr %7, align 8
  %63 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 33), align 8
  %64 = call i64 @C_i_lessp(i64 noundef %62, i64 noundef %63)
  %65 = icmp ne i64 %64, 6
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  %70 = load i64, ptr %69, align 8
  store i64 %70, ptr %8, align 8
  %71 = load ptr, ptr %4, align 8
  store ptr %71, ptr %21, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load ptr, ptr %21, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %21, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = load ptr, ptr %21, align 8
  call void %85(i64 noundef 2, ptr noundef %86) #4
  unreachable

87:                                               ; preds = %60
  %88 = load ptr, ptr %18, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %22, align 8
  %90 = load ptr, ptr %18, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 216172782113783810, ptr %91, align 8
  %92 = load ptr, ptr %18, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store ptr %93, ptr %18, align 8
  %94 = load i64, ptr %22, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds %struct.C_block_struct, ptr %95, i32 0, i32 1
  %97 = getelementptr inbounds [0 x i64], ptr %96, i64 0, i64 0
  store i64 30, ptr %97, align 8
  %98 = load i64, ptr %22, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  store i64 14, ptr %101, align 8
  %102 = load i64, ptr %22, align 8
  store i64 %102, ptr %23, align 8
  %103 = load i64, ptr %23, align 8
  store i64 %103, ptr %8, align 8
  %104 = load i64, ptr %8, align 8
  store i64 %104, ptr %9, align 8
  %105 = load ptr, ptr %18, align 8
  store i64 1, ptr %105, align 8
  %106 = load i64, ptr %9, align 8
  %107 = load ptr, ptr %18, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %18, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %18, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  store ptr %112, ptr %18, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %10, align 8
  %114 = load i64, ptr %10, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  store i64 %117, ptr %11, align 8
  %118 = load ptr, ptr %18, align 8
  store i64 2594073385365405699, ptr %118, align 8
  %119 = load ptr, ptr %18, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 ptrtoint (ptr @f_862 to i64), ptr %120, align 8
  %121 = load i64, ptr %7, align 8
  %122 = load ptr, ptr %18, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 ptrtoint (ptr @li19 to i64), ptr %125, align 8
  %126 = load ptr, ptr %18, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %18, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 4
  store ptr %129, ptr %18, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %12, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  %134 = load i64, ptr %133, align 8
  %135 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 30), align 16
  %136 = call i64 @C_i_check_list_2(i64 noundef %134, i64 noundef %135)
  store i64 %136, ptr %13, align 8
  store i64 30, ptr %14, align 8
  %137 = load ptr, ptr %18, align 8
  store i64 1, ptr %137, align 8
  %138 = load i64, ptr %14, align 8
  %139 = load ptr, ptr %18, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  store i64 %138, ptr %140, align 8
  %141 = load ptr, ptr %18, align 8
  %142 = ptrtoint ptr %141 to i64
  store i64 %142, ptr %5, align 8
  %143 = load ptr, ptr %18, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store ptr %144, ptr %18, align 8
  %145 = load i64, ptr %5, align 8
  store i64 %145, ptr %15, align 8
  %146 = load ptr, ptr %18, align 8
  store i64 2594073385365405702, ptr %146, align 8
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  store i64 ptrtoint (ptr @f_874 to i64), ptr %148, align 8
  %149 = load i64, ptr %10, align 8
  %150 = load ptr, ptr %18, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 2
  store i64 %149, ptr %151, align 8
  %152 = load i64, ptr %15, align 8
  %153 = load ptr, ptr %18, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 3
  store i64 %152, ptr %154, align 8
  %155 = load i64, ptr %12, align 8
  %156 = load ptr, ptr %18, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 4
  store i64 %155, ptr %157, align 8
  %158 = load i64, ptr %11, align 8
  %159 = load ptr, ptr %18, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 5
  store i64 %158, ptr %160, align 8
  %161 = load ptr, ptr %18, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 6
  store i64 ptrtoint (ptr @li20 to i64), ptr %162, align 8
  %163 = load ptr, ptr %18, align 8
  %164 = ptrtoint ptr %163 to i64
  store i64 %164, ptr %5, align 8
  %165 = load ptr, ptr %18, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 7
  store ptr %166, ptr %18, align 8
  %167 = load i64, ptr %5, align 8
  %168 = load i64, ptr %15, align 8
  %169 = inttoptr i64 %168 to ptr
  %170 = getelementptr inbounds %struct.C_block_struct, ptr %169, i32 0, i32 1
  %171 = getelementptr inbounds [0 x i64], ptr %170, i64 0, i64 0
  store i64 %167, ptr %171, align 8
  store i64 %167, ptr %16, align 8
  %172 = load i64, ptr %15, align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 1
  %175 = load i64, ptr %174, align 8
  store i64 %175, ptr %17, align 8
  %176 = load i64, ptr %17, align 8
  %177 = load i64, ptr %6, align 8
  %178 = inttoptr i64 %177 to ptr
  %179 = getelementptr inbounds i64, ptr %178, i64 2
  %180 = load i64, ptr %179, align 8
  %181 = load i64, ptr %6, align 8
  %182 = inttoptr i64 %181 to ptr
  %183 = getelementptr inbounds i64, ptr %182, i64 3
  %184 = load i64, ptr %183, align 8
  call void @f_874(i64 noundef %176, i64 noundef %180, i64 noundef %184) #4
  unreachable
}

declare i64 @C_i_lessp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_862(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  %28 = add nsw i64 3, %27
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_862, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  call void @C_trace(ptr noundef @.str.71)
  %39 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %40 = inttoptr i64 %39 to ptr
  %41 = getelementptr inbounds i64, ptr %40, i64 1
  %42 = load i64, ptr %41, align 8
  %43 = call ptr @C_fast_retrieve_proc(i64 noundef %42)
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr getelementptr inbounds ([43 x i64], ptr @lf, i64 0, i64 26), align 16
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  store i64 %47, ptr %48, align 16
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  store i64 %49, ptr %50, align 8
  %51 = load i64, ptr %6, align 8
  %52 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 2
  store i64 %51, ptr %52, align 16
  %53 = load i64, ptr %4, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 3
  store i64 %56, ptr %57, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  call void %58(i64 noundef 4, ptr noundef %59) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_874(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
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
  %28 = add nsw i64 8, %27
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_874, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  %39 = alloca i8, i64 48, align 16
  store ptr %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @C_i_pairp(i64 noundef %40)
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %44, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_899 to i64), ptr %46, align 8
  %47 = load i64, ptr %4, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %4, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr %5, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 4
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 5
  store i64 %62, ptr %64, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %7, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 6
  store ptr %68, ptr %10, align 8
  %69 = load i64, ptr %7, align 8
  store i64 %69, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.72)
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  store i64 %73, ptr %9, align 8
  %74 = load i64, ptr %9, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.C_block_struct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [0 x i64], ptr %78, i64 0, i64 0
  %80 = load i64, ptr %79, align 8
  call void @f_862(i64 noundef %74, i64 noundef %75, i64 noundef %80) #4
  unreachable

81:                                               ; preds = %38
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %8, align 8
  %83 = load i64, ptr %8, align 8
  %84 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %83, ptr %84, align 16
  %85 = load i64, ptr %4, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  %88 = load i64, ptr %87, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds %struct.C_block_struct, ptr %89, i32 0, i32 1
  %91 = getelementptr inbounds [0 x i64], ptr %90, i64 0, i64 1
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 %92, ptr %93, align 8
  %94 = load i64, ptr %8, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %98(i64 noundef 2, ptr noundef %99) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_862(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_862(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_874(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_874(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  call void @C_save_and_reclaim(ptr noundef @f_899, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 24, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = ptrtoint ptr %55 to i64
  store i64 %56, ptr %15, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 216172782113783810, ptr %58, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  store ptr %60, ptr %12, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load i64, ptr %15, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds %struct.C_block_struct, ptr %63, i32 0, i32 1
  %65 = getelementptr inbounds [0 x i64], ptr %64, i64 0, i64 0
  store i64 %61, ptr %65, align 8
  %66 = load i64, ptr %15, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds %struct.C_block_struct, ptr %67, i32 0, i32 1
  %69 = getelementptr inbounds [0 x i64], ptr %68, i64 0, i64 1
  store i64 14, ptr %69, align 8
  %70 = load i64, ptr %15, align 8
  store i64 %70, ptr %16, align 8
  %71 = load i64, ptr %16, align 8
  store i64 %71, ptr %8, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 1
  %82 = load i64, ptr %8, align 8
  %83 = call i64 @C_mutate(ptr noundef %81, i64 noundef %82)
  store i64 30, ptr %9, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %8, align 8
  %91 = call i64 @C_mutate(ptr noundef %89, i64 noundef %90)
  store i64 %91, ptr %10, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  %95 = load i64, ptr %94, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  store i64 %98, ptr %11, align 8
  %99 = load i64, ptr %11, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  %107 = load i64, ptr %106, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds %struct.C_block_struct, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds [0 x i64], ptr %109, i64 0, i64 1
  %111 = load i64, ptr %110, align 8
  call void @f_874(i64 noundef %99, i64 noundef %103, i64 noundef %111) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_vector1(ptr noundef %0, i32 noundef %1, i64 noundef %2) #3 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %13, ptr %7, align 8
  store i64 1, ptr %12, align 8
  %14 = load i64, ptr %6, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %16, ptr %7, align 8
  store i64 %14, ptr %15, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %4, align 8
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %19 to i64
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_fast_retrieve(i64 noundef %0) #3 {
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
!6 = !{i64 2148739401}
!7 = !{i64 2148673980}
!8 = !{i64 2148674726}
!9 = !{i64 2148675479}
!10 = !{i64 2148676454}
!11 = !{i64 2148738099}
!12 = !{i64 2148678631}
!13 = !{i64 2148679283}
!14 = !{i64 2148679935}
!15 = !{i64 2148680587}
!16 = !{i64 2148681239}
!17 = !{i64 2148681891}
!18 = !{i64 2148682543}
!19 = !{i64 2148683195}
!20 = !{i64 2148683847}
!21 = !{i64 2148684499}
!22 = !{i64 2148687516}
!23 = !{i64 2148690607}
!24 = !{i64 2148702978}
!25 = !{i64 2148715425}
!26 = !{i64 2148725322}
!27 = !{i64 2148736178}
!28 = !{i64 2148736792}
!29 = !{i64 2148737500}
!30 = !{i64 2148685221}
!31 = !{i64 2148686020}
!32 = !{i64 2148686814}
!33 = !{i64 2148688256}
!34 = !{i64 2148689103}
!35 = !{i64 2148689945}
!36 = !{i64 2148691332}
!37 = !{i64 2148692135}
!38 = !{i64 2148692939}
!39 = !{i64 2148693748}
!40 = !{i64 2148694569}
!41 = !{i64 2148695475}
!42 = !{i64 2148700638}
!43 = !{i64 2148696846}
!44 = !{i64 2148698573}
!45 = !{i64 2148699403}
!46 = !{i64 2148701438}
!47 = !{i64 2148702239}
!48 = !{i64 2148703703}
!49 = !{i64 2148704506}
!50 = !{i64 2148705310}
!51 = !{i64 2148706119}
!52 = !{i64 2148706940}
!53 = !{i64 2148707846}
!54 = !{i64 2148713039}
!55 = !{i64 2148709217}
!56 = !{i64 2148710944}
!57 = !{i64 2148711789}
!58 = !{i64 2148713838}
!59 = !{i64 2148714639}
!60 = !{i64 2148717671}
!61 = !{i64 2148718330}
!62 = !{i64 2148718972}
!63 = !{i64 2148726087}
!64 = !{i64 2148728397}
!65 = !{i64 2148728991}
!66 = !{i64 2148732137}
