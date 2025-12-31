; ModuleID = 'dist-proof/llvm-ir/machine_constants.raw.ll'
source_filename = "/tmp/hatsu-llvm-machine_constants-3076/machine_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.C_block_struct = type { i64, [0 x i64] }

@toplevel_initialized = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@C_stack_limit = external local_unnamed_addr global ptr, align 8
@C_scratch_usage = external local_unnamed_addr global i64, align 8
@C_fromspace_top = external global ptr, align 8
@C_fromspace_limit = external local_unnamed_addr global ptr, align 8
@C_temporary_stack = external local_unnamed_addr global ptr, align 8
@lf = internal global [71 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"machine_constants#\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"machine_constants#machine-epsilon\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\FEU2.220446049250313080847263336181640625e-16\00\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"machine_constants#default-tolerance\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"\FEU1.0000000000000000364321973154977415791655470655996396089904010295867919921875e-10\00\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"machine_constants#galois-height-bound\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\FEU8.0\00\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"machine_constants#e\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"\FEU2.718281828459045090795598298427648842334747314453125\00\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"machine_constants#pi\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\FEU3.141592653589793115997963468544185161590576171875\00\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"machine_constants#galois-height\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"machine_constants#safe-log\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"srfi-1#member\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"machine_constants#height-discriminant\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"scheme#max\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"scheme#abs\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"machine_constants#height-within-tolerance?\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"machine_constants#height-comparison\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"greater\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"machine_constants#octad-height\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"\FEU0.333000000000000018207657603852567262947559356689453125\00\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\FEU0.5\00\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"\FEU0.6670000000000000373034936274052597582340240478515625\00\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"\FEU24.0\00\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"machine_constants#hamming-weight\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"machine_constants#witt-galois-correspondence\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"permutation\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"orbit-size\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"galois-class\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"\FEU0.25\00\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"ramified-low\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"fundamental\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"\FEU0.75\00\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"intermediate\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"ramified-high\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"machine_constants#approx-equal?\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"\FEB\00\00#safe-log: argument must be a number\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"\FEB\00\00\1Esafe-log: argument must be > 0\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"scheme#log\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"machine_constants#trim-leading-zeros\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"\FE\03\00\00\02\FE\FF\01\00\00\00\00\FE\FF\0E\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"srfi-1#drop-while\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"machine_constants#degree\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"machine_constants#poly-xor\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"scheme#append\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"srfi-1#make-list\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"machine_constants#poly-shift\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"machine_constants#poly-mul\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"machine_constants#poly-mod\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"machine_constants#int->bits\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"machine_constants#bits->int\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"\FE\C2\00\00\10ffffffffffffffff\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"machine_constants\00", align 1
@.str.68 = private unnamed_addr constant [1436 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01machine-epsilon\FE\01\00\00!\01machine_constants#machine-epsilon\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01default-tolerance\FE\01\00\00#\01machine_constants#default-tolerance\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01galois-height-bound\FE\01\00\00%\01machine_constants#galois-height-bound\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\01\01e\FE\01\00\00\13\01machine_constants#e\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\02\01pi\FE\01\00\00\14\01machine_constants#pi\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01approx-equal?\FE\01\00\00\1F\01machine_constants#approx-equal?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01safe-log\FE\01\00\00\1A\01machine_constants#safe-log\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\18\01height-within-tolerance?\FE\01\00\00*\01machine_constants#height-within-tolerance?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\12\01trim-leading-zeros\FE\01\00\00$\01machine_constants#trim-leading-zeros\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\06\01degree\FE\01\00\00\18\01machine_constants#degree\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01poly-xor\FE\01\00\00\1A\01machine_constants#poly-xor\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01poly-shift\FE\01\00\00\1C\01machine_constants#poly-shift\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01poly-mul\FE\01\00\00\1A\01machine_constants#poly-mul\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\08\01poly-mod\FE\01\00\00\1A\01machine_constants#poly-mod\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01int->bits\FE\01\00\00\1B\01machine_constants#int->bits\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01bits->int\FE\01\00\00\1B\01machine_constants#bits->int\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0E\01hamming-weight\FE\01\00\00 \01machine_constants#hamming-weight\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01galois-height\FE\01\00\00\1F\01machine_constants#galois-height\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01height-discriminant\FE\01\00\00%\01machine_constants#height-discriminant\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01height-comparison\FE\01\00\00#\01machine_constants#height-comparison\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0C\01octad-height\FE\01\00\00\1E\01machine_constants#octad-height\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1A\01witt-galois-correspondence\FE\01\00\00,\01machine_constants#witt-galois-correspondence\FE\FF\0E\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external local_unnamed_addr global i64, align 8
@li26 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1200)\00", align 16
@.str.70 = private unnamed_addr constant [49 x i8] c"machine_constants.scm:17: ##sys#with-environment\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"machine_constants.scm:54: chicken.load#load-extension\00", align 1
@li1 = internal global [56 x i8] c".\00\00\00\00\00\00M(machine_constants#galois-height sigma-action)\00\00", align 16
@li2 = internal global [56 x i8] c"-\00\00\00\00\00\00M(machine_constants#height-discriminant h1 h2)\00\00\00", align 16
@li3 = internal global [72 x i8] c"9\00\00\00\00\00\00M(machine_constants#height-within-tolerance? h1 h2 . rest)\00\00\00\00\00\00\00", align 16
@li4 = internal global [56 x i8] c"+\00\00\00\00\00\00M(machine_constants#height-comparison h1 h2)\00\00\00\00\00", align 16
@li5 = internal global [48 x i8] c"&\00\00\00\00\00\00M(machine_constants#octad-height octad)\00\00", align 16
@li7 = internal global [64 x i8] c"4\00\00\00\00\00\00M(machine_constants#witt-galois-correspondence octad)\00\00\00\00", align 16
@li8 = internal global [56 x i8] c",\00\00\00\00\00\00M(machine_constants#approx-equal? a b . rest)\00\00\00\00", align 16
@li9 = internal global [40 x i8] c"\1E\00\00\00\00\00\00M(machine_constants#safe-log x)\00\00", align 16
@li11 = internal global [56 x i8] c"*\00\00\00\00\00\00M(machine_constants#trim-leading-zeros lst)\00\00\00\00\00\00", align 16
@li12 = internal global [40 x i8] c"\1F\00\00\00\00\00\00M(machine_constants#degree poly)\00", align 16
@li14 = internal global [40 x i8] c" \00\00\00\00\00\00M(machine_constants#poly-xor a b)", align 16
@li15 = internal global [48 x i8] c"%\00\00\00\00\00\00M(machine_constants#poly-shift poly k)\00\00\00", align 16
@li17 = internal global [40 x i8] c" \00\00\00\00\00\00M(machine_constants#poly-mul a b)", align 16
@li19 = internal global [56 x i8] c"-\00\00\00\00\00\00M(machine_constants#poly-mod dividend divisor)\00\00\00", align 16
@li21 = internal global [48 x i8] c"#\00\00\00\00\00\00M(machine_constants#int->bits n len)\00\00\00\00\00", align 16
@li23 = internal global [48 x i8] c"\22\00\00\00\00\00\00M(machine_constants#bits->int bits)\00\00\00\00\00\00", align 16
@li25 = internal global [48 x i8] c"$\00\00\00\00\00\00M(machine_constants#hamming-weight n)\00\00\00\00", align 16
@li0 = internal global [40 x i8] c"\1A\00\00\00\00\00\00M(loop point visited count)\00\00\00\00\00\00", align 16
@.str.72 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:105: safe-log\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:106: safe-log\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:105: scheme#/\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"machine_constants.scm:112: srfi-1#member\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:114: perm\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:114: loop\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:126: scheme#abs\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:127: scheme#max\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:128: scheme#/\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"machine_constants.scm:138: height-discriminant\00", align 1
@.str.82 = private unnamed_addr constant [52 x i8] c"machine_constants.scm:149: height-within-tolerance?\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"machine_constants.scm:169: hamming-weight\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:180: scheme#/\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"machine_constants.scm:197: octad-height\00", align 1
@li6 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(f_683 point)\00\00\00", align 16
@.str.86 = private unnamed_addr constant [42 x i8] c"machine_constants.scm:216: hamming-weight\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:209: scheme#-\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:225: scheme#/\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:237: scheme#abs\00", align 1
@.str.90 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:238: scheme#abs\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:238: scheme#max\00", align 1
@.str.92 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:245: chicken.base#error\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:247: chicken.base#error\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:248: scheme#log\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"machine_constants.scm:252: scheme#reverse\00", align 1
@li10 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a860 x)", align 16
@.str.96 = private unnamed_addr constant [45 x i8] c"machine_constants.scm:253: srfi-1#drop-while\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"machine_constants.scm:254: scheme#reverse\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:257: trim-leading-zeros\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:261: scheme#max\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"machine_constants.scm:262: srfi-1#make-list\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"machine_constants.scm:263: srfi-1#make-list\00", align 1
@li13 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(map-loop138 g150 g151)\00", align 16
@.str.102 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:264: trim-leading-zeros\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"machine_constants.scm:263: scheme#append\00", align 1
@.str.104 = private unnamed_addr constant [41 x i8] c"machine_constants.scm:262: scheme#append\00", align 1
@.str.105 = private unnamed_addr constant [44 x i8] c"machine_constants.scm:267: srfi-1#make-list\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"machine_constants.scm:267: scheme#append\00", align 1
@li16 = internal global [32 x i8] c"\13\00\00\00\00\00\00M(loop bi shift acc)\00\00\00\00\00", align 16
@.str.107 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:272: trim-leading-zeros\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:275: poly-shift\00", align 1
@.str.109 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:276: poly-xor\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:276: loop\00", align 1
@.str.111 = private unnamed_addr constant [46 x i8] c"machine_constants.scm:279: trim-leading-zeros\00", align 1
@li18 = internal global [24 x i8] c"\0A\00\00\00\00\00\00M(loop rem)\00\00\00\00\00\00", align 16
@.str.112 = private unnamed_addr constant [34 x i8] c"machine_constants.scm:280: degree\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"machine_constants.scm:283: poly-shift\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:284: poly-xor\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:285: loop\00", align 1
@li20 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(loop i acc)\00\00\00\00", align 16
@.str.116 = private unnamed_addr constant [36 x i8] c"machine_constants.scm:294: scheme#-\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:291: loop\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"machine_constants.scm:292: scheme#append\00", align 1
@li22 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(loop i acc)\00\00\00\00", align 16
@.str.119 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:301: loop\00", align 1
@li24 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop code count)\00\00\00\00\00\00\00", align 16
@.str.120 = private unnamed_addr constant [32 x i8] c"machine_constants.scm:311: loop\00", align 1
@.str.121 = private unnamed_addr constant [57 x i8] c"machine_constants.scm:17: ##sys#register-compiled-module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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

declare i32 @CHICKEN_main(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @C_save_and_reclaim(ptr noundef @C_toplevel, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %36
  store i1 true, ptr @toplevel_initialized, align 1
  %69 = load ptr, ptr @C_fromspace_top, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 860
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
  call void @C_rereclaim2(i64 noundef 6880, i32 noundef 1)
  %81 = load ptr, ptr @C_temporary_stack, align 8
  %82 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %82, ptr @C_temporary_stack, align 8
  %83 = load i64, ptr %81, align 8
  store i64 %83, ptr %7, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = alloca i8, i64 24, align 16
  store ptr %85, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 71)
  %86 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 18, ptr noundef @.str.1)
  store i64 %86, ptr @lf, align 16
  %87 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 1), i32 noundef 33, ptr noundef @.str.2)
  store i64 %87, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 1), align 8
  %88 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.3)
  store i64 %88, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 2), align 16
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 3), i32 noundef 35, ptr noundef @.str.4)
  store i64 %89, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 3), align 8
  %90 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.5)
  store i64 %90, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 4), align 16
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), i32 noundef 37, ptr noundef @.str.6)
  store i64 %91, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %92 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.7)
  store i64 %92, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 6), align 16
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 7), i32 noundef 19, ptr noundef @.str.8)
  store i64 %93, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 7), align 8
  %94 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.9)
  store i64 %94, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 8), align 16
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 9), i32 noundef 20, ptr noundef @.str.10)
  store i64 %95, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 9), align 8
  %96 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.11)
  store i64 %96, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 10), align 16
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 11), i32 noundef 31, ptr noundef @.str.12)
  store i64 %97, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 11), align 8
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), i32 noundef 8, ptr noundef @.str.13)
  store i64 %98, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), i32 noundef 26, ptr noundef @.str.14)
  store i64 %99, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 14), i32 noundef 13, ptr noundef @.str.15)
  store i64 %100, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 14), align 16
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 15), i32 noundef 37, ptr noundef @.str.16)
  store i64 %101, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 15), align 8
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), i32 noundef 10, ptr noundef @.str.17)
  store i64 %102, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), i32 noundef 10, ptr noundef @.str.18)
  store i64 %103, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 18), i32 noundef 42, ptr noundef @.str.19)
  store i64 %104, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 18), align 16
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 19), i32 noundef 35, ptr noundef @.str.20)
  store i64 %105, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 19), align 8
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 20), i32 noundef 5, ptr noundef @.str.21)
  store i64 %106, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 20), align 16
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 21), i32 noundef 4, ptr noundef @.str.22)
  store i64 %107, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 21), align 8
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 22), i32 noundef 7, ptr noundef @.str.23)
  store i64 %108, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 22), align 16
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 23), i32 noundef 30, ptr noundef @.str.24)
  store i64 %109, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 23), align 8
  %110 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.25)
  store i64 %110, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 24), align 16
  %111 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.26)
  store i64 %111, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 25), align 8
  %112 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.27)
  store i64 %112, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 26), align 16
  %113 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.28)
  store i64 %113, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 27), align 8
  %114 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.29)
  store i64 %114, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 28), align 16
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), i32 noundef 32, ptr noundef @.str.30)
  store i64 %115, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 30), i32 noundef 44, ptr noundef @.str.31)
  store i64 %116, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 30), align 16
  %117 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 31), i32 noundef 6, ptr noundef @.str.32)
  store i64 %117, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 31), align 8
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 32), i32 noundef 11, ptr noundef @.str.33)
  store i64 %118, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 32), align 16
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 33), i32 noundef 10, ptr noundef @.str.34)
  store i64 %119, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 33), align 8
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 34), i32 noundef 12, ptr noundef @.str.35)
  store i64 %120, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 34), align 16
  %121 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.36)
  store i64 %121, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 35), align 8
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 36), i32 noundef 12, ptr noundef @.str.37)
  store i64 %122, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 36), align 16
  %123 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 37), i32 noundef 11, ptr noundef @.str.38)
  store i64 %123, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 37), align 8
  %124 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.39)
  store i64 %124, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 38), align 16
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 39), i32 noundef 12, ptr noundef @.str.40)
  store i64 %125, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 39), align 8
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 40), i32 noundef 13, ptr noundef @.str.41)
  store i64 %126, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 40), align 16
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 41), i32 noundef 31, ptr noundef @.str.42)
  store i64 %127, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 41), align 8
  %128 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.43)
  store i64 %128, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 42), align 16
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), i32 noundef 18, ptr noundef @.str.44)
  store i64 %129, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), align 8
  %130 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %130, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 44), align 16
  %131 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.46)
  store i64 %131, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 45), align 8
  %132 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 46), i32 noundef 10, ptr noundef @.str.47)
  store i64 %132, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 46), align 16
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), i32 noundef 36, ptr noundef @.str.48)
  store i64 %133, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %134 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %134, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 48), align 16
  %135 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), i32 noundef 14, ptr noundef @.str.50)
  store i64 %135, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), align 8
  %136 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 50), i32 noundef 17, ptr noundef @.str.51)
  store i64 %136, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 50), align 16
  %137 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), i32 noundef 24, ptr noundef @.str.52)
  store i64 %137, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
  %138 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), i32 noundef 26, ptr noundef @.str.53)
  store i64 %138, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
  %139 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 53), i32 noundef 3, ptr noundef @.str.54)
  store i64 %139, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 53), align 8
  %140 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), i32 noundef 13, ptr noundef @.str.55)
  store i64 %140, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %141 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), i32 noundef 16, ptr noundef @.str.56)
  store i64 %141, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %142 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), i32 noundef 28, ptr noundef @.str.57)
  store i64 %142, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %143 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 57), i32 noundef 26, ptr noundef @.str.58)
  store i64 %143, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 57), align 8
  %144 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %144, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 58), align 16
  %145 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %145, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 59), align 8
  %146 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 60), i32 noundef 26, ptr noundef @.str.59)
  store i64 %146, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 60), align 16
  %147 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 61), i32 noundef 27, ptr noundef @.str.60)
  store i64 %147, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 61), align 8
  %148 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 62), i32 noundef 27, ptr noundef @.str.61)
  store i64 %148, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 62), align 16
  %149 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.62)
  store i64 %149, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 63), align 8
  %150 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 64), i32 noundef 34, ptr noundef @.str.63)
  store i64 %150, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 64), align 16
  %151 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 65), i32 noundef 27, ptr noundef @.str.64)
  store i64 %151, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 65), align 8
  %152 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 66), i32 noundef 6, ptr noundef @.str.65)
  store i64 %152, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 66), align 16
  %153 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 67), i32 noundef 30, ptr noundef @.str.66)
  store i64 %153, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 67), align 8
  %154 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 68), i32 noundef 17, ptr noundef @.str.67)
  store i64 %154, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 68), align 16
  %155 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.68)
  store i64 %155, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 69), align 8
  %156 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 70), i32 noundef 22, ptr noundef @.str.69)
  store i64 %156, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 70), align 16
  call fastcc void @create_ptable()
  %157 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 71, ptr noundef null)
  %158 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %158, align 8
  %159 = load ptr, ptr %10, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  store i64 ptrtoint (ptr @f_471 to i64), ptr %160, align 8
  %161 = load i64, ptr %7, align 8
  %162 = load ptr, ptr %10, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 2
  store i64 %161, ptr %163, align 8
  %164 = load ptr, ptr %10, align 8
  %165 = ptrtoint ptr %164 to i64
  store i64 %165, ptr %5, align 8
  %166 = load ptr, ptr %10, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 3
  store ptr %167, ptr %10, align 8
  %168 = load i64, ptr %5, align 8
  store i64 %168, ptr %8, align 8
  %169 = load ptr, ptr %4, align 8
  store ptr %169, ptr %14, align 8
  %170 = load ptr, ptr %14, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 0
  store i64 30, ptr %171, align 8
  %172 = load i64, ptr %8, align 8
  %173 = load ptr, ptr %14, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 1
  store i64 %172, ptr %174, align 8
  %175 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %175) #4
  unreachable
}

declare void @C_toplevel_entry(ptr noundef) local_unnamed_addr #1

declare void @C_check_nursery_minimum(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @C_rereclaim2(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @C_initialize_lf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @C_h_intern(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @C_decode_literal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @C_register_lf2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @create_ptable() unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_471(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_471, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_474 to i64), ptr %54, align 8
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
declare void @C_library_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @C_raise_interrupt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_474(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = add nuw nsw i32 14, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_474, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_477 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_1201 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li26 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.70)
  %81 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 70), align 16
  %82 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %81)
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
  %90 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 70), align 16
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
declare void @C_eval_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_477(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !9
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
  call void @C_save_and_reclaim(ptr noundef @f_477, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_480 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.71)
  %67 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 65), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 65), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 66), align 16
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
define internal void @f_1201(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1201, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.121)
  %58 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 67), align 8
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
  %67 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 67), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 68), align 16
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 69), align 8
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
define internal fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call fastcc i64 @C_fast_retrieve(i64 noundef %3)
  %5 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %4)
  ret ptr %5
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_480(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 0
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %6, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 1
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %7, align 8
  %43 = load i64, ptr @C_timer_interrupt_counter, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, ptr @C_timer_interrupt_counter, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %47

47:                                               ; preds = %46, %2
  %48 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !11
  store ptr %48, ptr %33, align 8
  %49 = load ptr, ptr %33, align 8
  store ptr %49, ptr %34, align 8
  %50 = load ptr, ptr %34, align 8
  %51 = load ptr, ptr @C_stack_limit, align 8
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = load i64, ptr %3, align 8
  %57 = icmp sgt i64 %56, 4
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 4
  %60 = add nuw nsw i32 54, %59
  %61 = zext nneg i32 %60 to i64
  %62 = load i64, ptr @C_scratch_usage, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp sgt i64 %55, %63
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = zext nneg i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %47
  %70 = load i64, ptr %3, align 8
  %71 = trunc i64 %70 to i32
  %72 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_480, i32 noundef %71, ptr noundef %72) #4
  unreachable

73:                                               ; preds = %47
  %74 = alloca i8, i64 432, align 16
  store ptr %74, ptr %32, align 8
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 1), align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 2), align 16
  %79 = call fastcc i64 @C_mutate(ptr noundef %77, i64 noundef %78)
  store i64 %79, ptr %8, align 8
  %80 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 3), align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 4), align 16
  %84 = call fastcc i64 @C_mutate(ptr noundef %82, i64 noundef %83)
  store i64 %84, ptr %9, align 8
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 6), align 16
  %89 = call fastcc i64 @C_mutate(ptr noundef %87, i64 noundef %88)
  store i64 %89, ptr %10, align 8
  %90 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 7), align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 8), align 16
  %94 = call fastcc i64 @C_mutate(ptr noundef %92, i64 noundef %93)
  store i64 %94, ptr %11, align 8
  %95 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 9), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 10), align 16
  %99 = call fastcc i64 @C_mutate(ptr noundef %97, i64 noundef %98)
  store i64 %99, ptr %12, align 8
  %100 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 11), align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %103, align 8
  %104 = load ptr, ptr %32, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  store i64 ptrtoint (ptr @f_487 to i64), ptr %105, align 8
  %106 = load ptr, ptr %32, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %107, align 8
  %108 = load ptr, ptr %32, align 8
  %109 = ptrtoint ptr %108 to i64
  store i64 %109, ptr %5, align 8
  %110 = load ptr, ptr %32, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store ptr %111, ptr %32, align 8
  %112 = load i64, ptr %5, align 8
  %113 = call fastcc i64 @C_mutate(ptr noundef %102, i64 noundef %112)
  store i64 %113, ptr %13, align 8
  %114 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 15), align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %117, align 8
  %118 = load ptr, ptr %32, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 ptrtoint (ptr @f_544 to i64), ptr %119, align 8
  %120 = load ptr, ptr %32, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %121, align 8
  %122 = load ptr, ptr %32, align 8
  %123 = ptrtoint ptr %122 to i64
  store i64 %123, ptr %5, align 8
  %124 = load ptr, ptr %32, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store ptr %125, ptr %32, align 8
  %126 = load i64, ptr %5, align 8
  %127 = call fastcc i64 @C_mutate(ptr noundef %116, i64 noundef %126)
  store i64 %127, ptr %14, align 8
  %128 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 18), align 16
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  %131 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %131, align 8
  %132 = load ptr, ptr %32, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  store i64 ptrtoint (ptr @f_560 to i64), ptr %133, align 8
  %134 = load ptr, ptr %32, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %135, align 8
  %136 = load ptr, ptr %32, align 8
  %137 = ptrtoint ptr %136 to i64
  store i64 %137, ptr %5, align 8
  %138 = load ptr, ptr %32, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 3
  store ptr %139, ptr %32, align 8
  %140 = load i64, ptr %5, align 8
  %141 = call fastcc i64 @C_mutate(ptr noundef %130, i64 noundef %140)
  store i64 %141, ptr %15, align 8
  %142 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 19), align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 1
  %145 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %145, align 8
  %146 = load ptr, ptr %32, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  store i64 ptrtoint (ptr @f_579 to i64), ptr %147, align 8
  %148 = load ptr, ptr %32, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 2
  store i64 ptrtoint (ptr @li4 to i64), ptr %149, align 8
  %150 = load ptr, ptr %32, align 8
  %151 = ptrtoint ptr %150 to i64
  store i64 %151, ptr %5, align 8
  %152 = load ptr, ptr %32, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 3
  store ptr %153, ptr %32, align 8
  %154 = load i64, ptr %5, align 8
  %155 = call fastcc i64 @C_mutate(ptr noundef %144, i64 noundef %154)
  store i64 %155, ptr %16, align 8
  %156 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 23), align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds i64, ptr %157, i64 1
  %159 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %159, align 8
  %160 = load ptr, ptr %32, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 1
  store i64 ptrtoint (ptr @f_594 to i64), ptr %161, align 8
  %162 = load ptr, ptr %32, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 2
  store i64 ptrtoint (ptr @li5 to i64), ptr %163, align 8
  %164 = load ptr, ptr %32, align 8
  %165 = ptrtoint ptr %164 to i64
  store i64 %165, ptr %5, align 8
  %166 = load ptr, ptr %32, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 3
  store ptr %167, ptr %32, align 8
  %168 = load i64, ptr %5, align 8
  %169 = call fastcc i64 @C_mutate(ptr noundef %158, i64 noundef %168)
  store i64 %169, ptr %17, align 8
  %170 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 30), align 16
  %171 = inttoptr i64 %170 to ptr
  %172 = getelementptr inbounds i64, ptr %171, i64 1
  %173 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %173, align 8
  %174 = load ptr, ptr %32, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 1
  store i64 ptrtoint (ptr @f_646 to i64), ptr %175, align 8
  %176 = load ptr, ptr %32, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %177, align 8
  %178 = load ptr, ptr %32, align 8
  %179 = ptrtoint ptr %178 to i64
  store i64 %179, ptr %5, align 8
  %180 = load ptr, ptr %32, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 3
  store ptr %181, ptr %32, align 8
  %182 = load i64, ptr %5, align 8
  %183 = call fastcc i64 @C_mutate(ptr noundef %172, i64 noundef %182)
  store i64 %183, ptr %18, align 8
  %184 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 41), align 8
  %185 = inttoptr i64 %184 to ptr
  %186 = getelementptr inbounds i64, ptr %185, i64 1
  %187 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %187, align 8
  %188 = load ptr, ptr %32, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 1
  store i64 ptrtoint (ptr @f_761 to i64), ptr %189, align 8
  %190 = load ptr, ptr %32, align 8
  %191 = getelementptr inbounds i64, ptr %190, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %191, align 8
  %192 = load ptr, ptr %32, align 8
  %193 = ptrtoint ptr %192 to i64
  store i64 %193, ptr %5, align 8
  %194 = load ptr, ptr %32, align 8
  %195 = getelementptr inbounds i64, ptr %194, i64 3
  store ptr %195, ptr %32, align 8
  %196 = load i64, ptr %5, align 8
  %197 = call fastcc i64 @C_mutate(ptr noundef %186, i64 noundef %196)
  store i64 %197, ptr %19, align 8
  %198 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
  %199 = inttoptr i64 %198 to ptr
  %200 = getelementptr inbounds i64, ptr %199, i64 1
  %201 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %201, align 8
  %202 = load ptr, ptr %32, align 8
  %203 = getelementptr inbounds i64, ptr %202, i64 1
  store i64 ptrtoint (ptr @f_808 to i64), ptr %203, align 8
  %204 = load ptr, ptr %32, align 8
  %205 = getelementptr inbounds i64, ptr %204, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %205, align 8
  %206 = load ptr, ptr %32, align 8
  %207 = ptrtoint ptr %206 to i64
  store i64 %207, ptr %5, align 8
  %208 = load ptr, ptr %32, align 8
  %209 = getelementptr inbounds i64, ptr %208, i64 3
  store ptr %209, ptr %32, align 8
  %210 = load i64, ptr %5, align 8
  %211 = call fastcc i64 @C_mutate(ptr noundef %200, i64 noundef %210)
  store i64 %211, ptr %20, align 8
  %212 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %213 = inttoptr i64 %212 to ptr
  %214 = getelementptr inbounds i64, ptr %213, i64 1
  %215 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %215, align 8
  %216 = load ptr, ptr %32, align 8
  %217 = getelementptr inbounds i64, ptr %216, i64 1
  store i64 ptrtoint (ptr @f_836 to i64), ptr %217, align 8
  %218 = load ptr, ptr %32, align 8
  %219 = getelementptr inbounds i64, ptr %218, i64 2
  store i64 ptrtoint (ptr @li11 to i64), ptr %219, align 8
  %220 = load ptr, ptr %32, align 8
  %221 = ptrtoint ptr %220 to i64
  store i64 %221, ptr %5, align 8
  %222 = load ptr, ptr %32, align 8
  %223 = getelementptr inbounds i64, ptr %222, i64 3
  store ptr %223, ptr %32, align 8
  %224 = load i64, ptr %5, align 8
  %225 = call fastcc i64 @C_mutate(ptr noundef %214, i64 noundef %224)
  store i64 %225, ptr %21, align 8
  %226 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
  %227 = inttoptr i64 %226 to ptr
  %228 = getelementptr inbounds i64, ptr %227, i64 1
  %229 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %229, align 8
  %230 = load ptr, ptr %32, align 8
  %231 = getelementptr inbounds i64, ptr %230, i64 1
  store i64 ptrtoint (ptr @f_867 to i64), ptr %231, align 8
  %232 = load ptr, ptr %32, align 8
  %233 = getelementptr inbounds i64, ptr %232, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %233, align 8
  %234 = load ptr, ptr %32, align 8
  %235 = ptrtoint ptr %234 to i64
  store i64 %235, ptr %5, align 8
  %236 = load ptr, ptr %32, align 8
  %237 = getelementptr inbounds i64, ptr %236, i64 3
  store ptr %237, ptr %32, align 8
  %238 = load i64, ptr %5, align 8
  %239 = call fastcc i64 @C_mutate(ptr noundef %228, i64 noundef %238)
  store i64 %239, ptr %22, align 8
  %240 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
  %241 = inttoptr i64 %240 to ptr
  %242 = getelementptr inbounds i64, ptr %241, i64 1
  %243 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %243, align 8
  %244 = load ptr, ptr %32, align 8
  %245 = getelementptr inbounds i64, ptr %244, i64 1
  store i64 ptrtoint (ptr @f_880 to i64), ptr %245, align 8
  %246 = load ptr, ptr %32, align 8
  %247 = getelementptr inbounds i64, ptr %246, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %247, align 8
  %248 = load ptr, ptr %32, align 8
  %249 = ptrtoint ptr %248 to i64
  store i64 %249, ptr %5, align 8
  %250 = load ptr, ptr %32, align 8
  %251 = getelementptr inbounds i64, ptr %250, i64 3
  store ptr %251, ptr %32, align 8
  %252 = load i64, ptr %5, align 8
  %253 = call fastcc i64 @C_mutate(ptr noundef %242, i64 noundef %252)
  store i64 %253, ptr %23, align 8
  %254 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %255 = inttoptr i64 %254 to ptr
  %256 = getelementptr inbounds i64, ptr %255, i64 1
  %257 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %257, align 8
  %258 = load ptr, ptr %32, align 8
  %259 = getelementptr inbounds i64, ptr %258, i64 1
  store i64 ptrtoint (ptr @f_986 to i64), ptr %259, align 8
  %260 = load ptr, ptr %32, align 8
  %261 = getelementptr inbounds i64, ptr %260, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %261, align 8
  %262 = load ptr, ptr %32, align 8
  %263 = ptrtoint ptr %262 to i64
  store i64 %263, ptr %5, align 8
  %264 = load ptr, ptr %32, align 8
  %265 = getelementptr inbounds i64, ptr %264, i64 3
  store ptr %265, ptr %32, align 8
  %266 = load i64, ptr %5, align 8
  %267 = call fastcc i64 @C_mutate(ptr noundef %256, i64 noundef %266)
  store i64 %267, ptr %24, align 8
  %268 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 57), align 8
  %269 = inttoptr i64 %268 to ptr
  %270 = getelementptr inbounds i64, ptr %269, i64 1
  %271 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %271, align 8
  %272 = load ptr, ptr %32, align 8
  %273 = getelementptr inbounds i64, ptr %272, i64 1
  store i64 ptrtoint (ptr @f_996 to i64), ptr %273, align 8
  %274 = load ptr, ptr %32, align 8
  %275 = getelementptr inbounds i64, ptr %274, i64 2
  store i64 ptrtoint (ptr @li17 to i64), ptr %275, align 8
  %276 = load ptr, ptr %32, align 8
  %277 = ptrtoint ptr %276 to i64
  store i64 %277, ptr %5, align 8
  %278 = load ptr, ptr %32, align 8
  %279 = getelementptr inbounds i64, ptr %278, i64 3
  store ptr %279, ptr %32, align 8
  %280 = load i64, ptr %5, align 8
  %281 = call fastcc i64 @C_mutate(ptr noundef %270, i64 noundef %280)
  store i64 %281, ptr %25, align 8
  %282 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 60), align 16
  %283 = inttoptr i64 %282 to ptr
  %284 = getelementptr inbounds i64, ptr %283, i64 1
  %285 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %285, align 8
  %286 = load ptr, ptr %32, align 8
  %287 = getelementptr inbounds i64, ptr %286, i64 1
  store i64 ptrtoint (ptr @f_1040 to i64), ptr %287, align 8
  %288 = load ptr, ptr %32, align 8
  %289 = getelementptr inbounds i64, ptr %288, i64 2
  store i64 ptrtoint (ptr @li19 to i64), ptr %289, align 8
  %290 = load ptr, ptr %32, align 8
  %291 = ptrtoint ptr %290 to i64
  store i64 %291, ptr %5, align 8
  %292 = load ptr, ptr %32, align 8
  %293 = getelementptr inbounds i64, ptr %292, i64 3
  store ptr %293, ptr %32, align 8
  %294 = load i64, ptr %5, align 8
  %295 = call fastcc i64 @C_mutate(ptr noundef %284, i64 noundef %294)
  store i64 %295, ptr %26, align 8
  %296 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 61), align 8
  %297 = inttoptr i64 %296 to ptr
  %298 = getelementptr inbounds i64, ptr %297, i64 1
  %299 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %299, align 8
  %300 = load ptr, ptr %32, align 8
  %301 = getelementptr inbounds i64, ptr %300, i64 1
  store i64 ptrtoint (ptr @f_1077 to i64), ptr %301, align 8
  %302 = load ptr, ptr %32, align 8
  %303 = getelementptr inbounds i64, ptr %302, i64 2
  store i64 ptrtoint (ptr @li21 to i64), ptr %303, align 8
  %304 = load ptr, ptr %32, align 8
  %305 = ptrtoint ptr %304 to i64
  store i64 %305, ptr %5, align 8
  %306 = load ptr, ptr %32, align 8
  %307 = getelementptr inbounds i64, ptr %306, i64 3
  store ptr %307, ptr %32, align 8
  %308 = load i64, ptr %5, align 8
  %309 = call fastcc i64 @C_mutate(ptr noundef %298, i64 noundef %308)
  store i64 %309, ptr %27, align 8
  %310 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 62), align 16
  %311 = inttoptr i64 %310 to ptr
  %312 = getelementptr inbounds i64, ptr %311, i64 1
  %313 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %313, align 8
  %314 = load ptr, ptr %32, align 8
  %315 = getelementptr inbounds i64, ptr %314, i64 1
  store i64 ptrtoint (ptr @f_1119 to i64), ptr %315, align 8
  %316 = load ptr, ptr %32, align 8
  %317 = getelementptr inbounds i64, ptr %316, i64 2
  store i64 ptrtoint (ptr @li23 to i64), ptr %317, align 8
  %318 = load ptr, ptr %32, align 8
  %319 = ptrtoint ptr %318 to i64
  store i64 %319, ptr %5, align 8
  %320 = load ptr, ptr %32, align 8
  %321 = getelementptr inbounds i64, ptr %320, i64 3
  store ptr %321, ptr %32, align 8
  %322 = load i64, ptr %5, align 8
  %323 = call fastcc i64 @C_mutate(ptr noundef %312, i64 noundef %322)
  store i64 %323, ptr %28, align 8
  %324 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %325 = inttoptr i64 %324 to ptr
  %326 = getelementptr inbounds i64, ptr %325, i64 1
  %327 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %327, align 8
  %328 = load ptr, ptr %32, align 8
  %329 = getelementptr inbounds i64, ptr %328, i64 1
  store i64 ptrtoint (ptr @f_1161 to i64), ptr %329, align 8
  %330 = load ptr, ptr %32, align 8
  %331 = getelementptr inbounds i64, ptr %330, i64 2
  store i64 ptrtoint (ptr @li25 to i64), ptr %331, align 8
  %332 = load ptr, ptr %32, align 8
  %333 = ptrtoint ptr %332 to i64
  store i64 %333, ptr %5, align 8
  %334 = load ptr, ptr %32, align 8
  %335 = getelementptr inbounds i64, ptr %334, i64 3
  store ptr %335, ptr %32, align 8
  %336 = load i64, ptr %5, align 8
  %337 = call fastcc i64 @C_mutate(ptr noundef %326, i64 noundef %336)
  store i64 %337, ptr %29, align 8
  %338 = load ptr, ptr %32, align 8
  store i64 2594073385365405698, ptr %338, align 8
  %339 = load ptr, ptr %32, align 8
  %340 = getelementptr inbounds i64, ptr %339, i64 1
  store i64 ptrtoint (ptr @f_1199 to i64), ptr %340, align 8
  %341 = load i64, ptr %6, align 8
  %342 = inttoptr i64 %341 to ptr
  %343 = getelementptr inbounds i64, ptr %342, i64 2
  %344 = load i64, ptr %343, align 8
  %345 = load ptr, ptr %32, align 8
  %346 = getelementptr inbounds i64, ptr %345, i64 2
  store i64 %344, ptr %346, align 8
  %347 = load ptr, ptr %32, align 8
  %348 = ptrtoint ptr %347 to i64
  store i64 %348, ptr %5, align 8
  %349 = load ptr, ptr %32, align 8
  %350 = getelementptr inbounds i64, ptr %349, i64 3
  store ptr %350, ptr %32, align 8
  %351 = load i64, ptr %5, align 8
  store i64 %351, ptr %30, align 8
  call void @C_trace(ptr noundef @.str.63)
  %352 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 64), align 16
  %353 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %352)
  store ptr %353, ptr %35, align 8
  %354 = load ptr, ptr %4, align 8
  store ptr %354, ptr %36, align 8
  %355 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 64), align 16
  %356 = inttoptr i64 %355 to ptr
  %357 = getelementptr inbounds i64, ptr %356, i64 1
  %358 = load i64, ptr %357, align 8
  %359 = load ptr, ptr %36, align 8
  %360 = getelementptr inbounds i64, ptr %359, i64 0
  store i64 %358, ptr %360, align 8
  %361 = load i64, ptr %30, align 8
  %362 = load ptr, ptr %36, align 8
  %363 = getelementptr inbounds i64, ptr %362, i64 1
  store i64 %361, ptr %363, align 8
  %364 = load ptr, ptr %35, align 8
  %365 = load ptr, ptr %36, align 8
  call void %364(i64 noundef 2, ptr noundef %365) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_mutate(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
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
define internal void @f_487(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 2
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %8, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ne i64 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, ptr %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %30, i32 noundef 3, i64 noundef %31) #4
  unreachable

32:                                               ; preds = %2
  %33 = load i64, ptr @C_timer_interrupt_counter, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr @C_timer_interrupt_counter, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @C_raise_interrupt(i32 noundef 255)
  br label %37

37:                                               ; preds = %36, %32
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  store ptr %39, ptr %16, align 8
  %40 = load ptr, ptr %16, align 8
  %41 = load ptr, ptr @C_stack_limit, align 8
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp sgt i64 %46, 5
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 5
  %50 = add nuw nsw i32 10, %49
  %51 = zext nneg i32 %50 to i64
  %52 = load i64, ptr @C_scratch_usage, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sgt i64 %45, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_487, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = alloca i8, i64 80, align 16
  store ptr %64, ptr %14, align 8
  %65 = load ptr, ptr %14, align 8
  store i64 2594073385365405698, ptr %65, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_491 to i64), ptr %67, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store ptr %74, ptr %14, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %76 = load ptr, ptr %14, align 8
  store i64 1, ptr %76, align 8
  %77 = load i64, ptr %10, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %5, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store ptr %83, ptr %14, align 8
  %84 = load i64, ptr %5, align 8
  store i64 %84, ptr %11, align 8
  %85 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %85, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 ptrtoint (ptr @f_514 to i64), ptr %87, align 8
  %88 = load i64, ptr %11, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store i64 ptrtoint (ptr @li0 to i64), ptr %95, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 5
  store ptr %99, ptr %14, align 8
  %100 = load i64, ptr %5, align 8
  %101 = load i64, ptr %11, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds %struct.C_block_struct, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds [0 x i64], ptr %103, i64 0, i64 0
  store i64 %100, ptr %104, align 8
  store i64 %100, ptr %12, align 8
  %105 = load i64, ptr %11, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  store i64 %108, ptr %13, align 8
  %109 = load i64, ptr %13, align 8
  %110 = load i64, ptr %9, align 8
  call void @f_514(i64 noundef %109, i64 noundef %110, i64 noundef 1, i64 noundef 14, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_544(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = load i64, ptr %3, align 8
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i64, ptr %3, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %34, i32 noundef 4, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %2
  %37 = load i64, ptr @C_timer_interrupt_counter, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, ptr @C_timer_interrupt_counter, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @C_raise_interrupt(i32 noundef 255)
  br label %41

41:                                               ; preds = %40, %36
  %42 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  store ptr %42, ptr %14, align 8
  %43 = load ptr, ptr %14, align 8
  store ptr %43, ptr %15, align 8
  %44 = load ptr, ptr %15, align 8
  %45 = load ptr, ptr @C_stack_limit, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = load i64, ptr %3, align 8
  %51 = icmp sgt i64 %50, 2
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 2
  %54 = add nuw nsw i32 34, %53
  %55 = zext nneg i32 %54 to i64
  %56 = load i64, ptr @C_scratch_usage, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp sgt i64 %49, %57
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = zext nneg i32 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %41
  %64 = load i64, ptr %3, align 8
  %65 = trunc i64 %64 to i32
  %66 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_544, i32 noundef %65, ptr noundef %66) #4
  unreachable

67:                                               ; preds = %41
  %68 = alloca i8, i64 272, align 16
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %69, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 ptrtoint (ptr @f_548 to i64), ptr %71, align 8
  %72 = load i64, ptr %7, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %10, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load i64, ptr %9, align 8
  %88 = call i64 @C_s_a_i_minus(ptr noundef %13, i64 noundef 2, i64 noundef %86, i64 noundef %87)
  store i64 %88, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.78)
  %89 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = load i64, ptr %91, align 8
  %93 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %92)
  store ptr %93, ptr %16, align 8
  %94 = load ptr, ptr %4, align 8
  store ptr %94, ptr %17, align 8
  %95 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %17, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 0
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %10, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %11, align 8
  %105 = load ptr, ptr %17, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = load ptr, ptr %17, align 8
  call void %107(i64 noundef 3, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_560(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = load i64, ptr %3, align 8
  %32 = icmp slt i64 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, ptr %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %6, align 8
  call void @C_bad_min_argc_2(i32 noundef %35, i32 noundef 4, i64 noundef %36) #4
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
  store ptr %43, ptr %15, align 8
  %44 = load ptr, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  %45 = load ptr, ptr %16, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nuw nsw i32 4, %54
  %56 = zext nneg i32 %55 to i64
  %57 = load i64, ptr @C_scratch_usage, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %50, %58
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = zext nneg i32 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %42
  %65 = load i64, ptr %3, align 8
  %66 = trunc i64 %65 to i32
  %67 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_560, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 32, align 16
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %3, align 8
  %71 = icmp sge i64 4, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i64 22, i64 6
  store i64 %73, ptr %10, align 8
  %74 = load i64, ptr %10, align 8
  %75 = icmp ne i64 %74, 6
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 3), align 8
  %78 = call fastcc i64 @C_fast_retrieve(i64 noundef %77)
  br label %92

79:                                               ; preds = %68
  %80 = load i64, ptr %3, align 8
  %81 = icmp sge i64 4, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, ptr %3, align 8
  %84 = shl i64 %83, 1
  %85 = or i64 %84, 1
  %86 = load i64, ptr %6, align 8
  call void @C_rest_arg_out_of_bounds_error_2(i64 noundef %85, i64 noundef 9, i64 noundef 9, i64 noundef %86) #4
  unreachable

87:                                               ; preds = %79
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  %90 = load i64, ptr %89, align 8
  br label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %76
  %93 = phi i64 [ %78, %76 ], [ %90, %91 ]
  store i64 %93, ptr %11, align 8
  %94 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_571 to i64), ptr %96, align 8
  %97 = load i64, ptr %7, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %11, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store ptr %106, ptr %14, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.81)
  %108 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 15), align 8
  %109 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %108)
  store ptr %109, ptr %17, align 8
  %110 = load ptr, ptr %4, align 8
  store ptr %110, ptr %18, align 8
  %111 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 15), align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %18, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 0
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %12, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %8, align 8
  %121 = load ptr, ptr %18, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %9, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %17, align 8
  %127 = load ptr, ptr %18, align 8
  call void %126(i64 noundef 4, ptr noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_579(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
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
  %50 = icmp sgt i64 %49, 3
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_579, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_586 to i64), ptr %70, align 8
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
  call void @C_trace(ptr noundef @.str.82)
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 18), align 16
  %86 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %100 = load i64, ptr %9, align 8
  %101 = load ptr, ptr %16, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = load ptr, ptr %16, align 8
  call void %103(i64 noundef 4, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_594(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
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
  %49 = add nuw nsw i32 3, %48
  %50 = zext nneg i32 %49 to i64
  %51 = load i64, ptr @C_scratch_usage, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sgt i64 %44, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = zext nneg i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_594, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 24, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_598 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store ptr %73, ptr %11, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.83)
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %76 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %75)
  store ptr %76, ptr %14, align 8
  %77 = load ptr, ptr %4, align 8
  store ptr %77, ptr %15, align 8
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %9, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %8, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = load ptr, ptr %15, align 8
  call void %90(i64 noundef 3, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_646(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
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
  %49 = add nuw nsw i32 4, %48
  %50 = zext nneg i32 %49 to i64
  %51 = load i64, ptr @C_scratch_usage, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sgt i64 %44, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = zext nneg i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_646, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_650 to i64), ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.85)
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 23), align 8
  %79 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 23), align 8
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
define internal void @f_761(i64 noundef %0, ptr noundef %1) #2 {
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
  %33 = icmp slt i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i64, ptr %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %6, align 8
  call void @C_bad_min_argc_2(i32 noundef %36, i32 noundef 4, i64 noundef %37) #4
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
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
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
  %53 = icmp sgt i64 %52, 2
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 2
  %56 = add nuw nsw i32 35, %55
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
  call void @C_save_and_reclaim(ptr noundef @f_761, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = alloca i8, i64 280, align 16
  store ptr %70, ptr %15, align 8
  %71 = load i64, ptr %3, align 8
  %72 = icmp sge i64 4, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i64 22, i64 6
  store i64 %74, ptr %10, align 8
  %75 = load i64, ptr %10, align 8
  %76 = icmp ne i64 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 3), align 8
  %79 = call fastcc i64 @C_fast_retrieve(i64 noundef %78)
  br label %93

80:                                               ; preds = %69
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 4, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i64, ptr %3, align 8
  %85 = shl i64 %84, 1
  %86 = or i64 %85, 1
  %87 = load i64, ptr %6, align 8
  call void @C_rest_arg_out_of_bounds_error_2(i64 noundef %86, i64 noundef 9, i64 noundef 9, i64 noundef %87) #4
  unreachable

88:                                               ; preds = %80
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  %91 = load i64, ptr %90, align 8
  br label %92

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %77
  %94 = phi i64 [ %79, %77 ], [ %91, %92 ]
  store i64 %94, ptr %11, align 8
  %95 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %95, align 8
  %96 = load ptr, ptr %15, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 ptrtoint (ptr @f_768 to i64), ptr %97, align 8
  %98 = load i64, ptr %11, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %9, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %8, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 5
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 6
  store ptr %113, ptr %15, align 8
  %114 = load i64, ptr %5, align 8
  store i64 %114, ptr %12, align 8
  %115 = load i64, ptr %8, align 8
  %116 = load i64, ptr %9, align 8
  %117 = call i64 @C_s_a_i_minus(ptr noundef %15, i64 noundef 2, i64 noundef %115, i64 noundef %116)
  store i64 %117, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.89)
  %118 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %121)
  store ptr %122, ptr %18, align 8
  %123 = load ptr, ptr %4, align 8
  store ptr %123, ptr %19, align 8
  %124 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %19, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 0
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %12, align 8
  %131 = load ptr, ptr %19, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %13, align 8
  %134 = load ptr, ptr %19, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %18, align 8
  %137 = load ptr, ptr %19, align 8
  call void %136(i64 noundef 3, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_808(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = load i64, ptr %3, align 8
  %30 = icmp ne i64 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i64, ptr %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %33, i32 noundef 3, i64 noundef %34) #4
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
  store ptr %41, ptr %12, align 8
  %42 = load ptr, ptr %12, align 8
  store ptr %42, ptr %13, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = load ptr, ptr @C_stack_limit, align 8
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp sgt i64 %49, 3
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 3
  %53 = add nuw nsw i32 0, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_808, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = load i64, ptr %8, align 8
  %68 = call fastcc i64 @C_i_numberp(i64 noundef %67), !range !20
  store i64 %68, ptr %9, align 8
  %69 = load i64, ptr %9, align 8
  %70 = icmp ne i64 %69, 6
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i64 6, i64 22
  %73 = icmp ne i64 %72, 6
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  call void @C_trace(ptr noundef @.str.92)
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %3, align 8
  %81 = icmp sge i64 %80, 4
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %15, align 8
  br label %86

84:                                               ; preds = %74
  %85 = alloca i8, i64 32, align 16
  store ptr %85, ptr %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %7, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 44), align 16
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %8, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = load ptr, ptr %15, align 8
  call void %102(i64 noundef 4, ptr noundef %103) #4
  unreachable

104:                                              ; preds = %66
  %105 = load i64, ptr %8, align 8
  %106 = call i64 @C_i_less_or_equalp(i64 noundef %105, i64 noundef 1)
  %107 = icmp ne i64 %106, 6
  br i1 %107, label %108, label %138

108:                                              ; preds = %104
  call void @C_trace(ptr noundef @.str.93)
  %109 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  %113 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %112)
  store ptr %113, ptr %16, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 4
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %17, align 8
  br label %120

118:                                              ; preds = %108
  %119 = alloca i8, i64 32, align 16
  store ptr %119, ptr %17, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 43), align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %17, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 0
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %7, align 8
  %128 = load ptr, ptr %17, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 45), align 8
  %131 = load ptr, ptr %17, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 2
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %8, align 8
  %134 = load ptr, ptr %17, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %16, align 8
  %137 = load ptr, ptr %17, align 8
  call void %136(i64 noundef 4, ptr noundef %137) #4
  unreachable

138:                                              ; preds = %104
  call void @C_trace(ptr noundef @.str.94)
  %139 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 46), align 16
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  %142 = load i64, ptr %141, align 8
  %143 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %142)
  store ptr %143, ptr %18, align 8
  %144 = load ptr, ptr %4, align 8
  store ptr %144, ptr %19, align 8
  %145 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 46), align 16
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = load ptr, ptr %19, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 0
  store i64 %148, ptr %150, align 8
  %151 = load i64, ptr %7, align 8
  %152 = load ptr, ptr %19, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %8, align 8
  %155 = load ptr, ptr %19, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 2
  store i64 %154, ptr %156, align 8
  %157 = load ptr, ptr %18, align 8
  %158 = load ptr, ptr %19, align 8
  call void %157(i64 noundef 3, ptr noundef %158) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_836(i64 noundef %0, ptr noundef %1) #2 {
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
  %49 = add nuw nsw i32 3, %48
  %50 = zext nneg i32 %49 to i64
  %51 = load i64, ptr @C_scratch_usage, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sgt i64 %44, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = zext nneg i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_836, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 24, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_844 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store ptr %73, ptr %11, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.95)
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), align 8
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
define internal void @f_867(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
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
  %49 = add nuw nsw i32 3, %48
  %50 = zext nneg i32 %49 to i64
  %51 = load i64, ptr @C_scratch_usage, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp sgt i64 %44, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = zext nneg i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_867, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 24, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_871 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store ptr %73, ptr %11, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.98)
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %76 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %75)
  store ptr %76, ptr %14, align 8
  %77 = load ptr, ptr %4, align 8
  store ptr %77, ptr %15, align 8
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %9, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %8, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = load ptr, ptr %15, align 8
  call void %90(i64 noundef 3, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_880(i64 noundef %0, ptr noundef %1) #2 {
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
  store ptr %43, ptr %15, align 8
  %44 = load ptr, ptr %15, align 8
  store ptr %44, ptr %16, align 8
  %45 = load ptr, ptr %16, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nuw nsw i32 7, %54
  %56 = zext nneg i32 %55 to i64
  %57 = load i64, ptr @C_scratch_usage, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sgt i64 %50, %58
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = zext nneg i32 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %42
  %65 = load i64, ptr %3, align 8
  %66 = trunc i64 %65 to i32
  %67 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_880, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 56, align 16
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_i_length(i64 noundef %70)
  store i64 %71, ptr %10, align 8
  %72 = load i64, ptr %9, align 8
  %73 = call i64 @C_i_length(i64 noundef %72)
  store i64 %73, ptr %11, align 8
  %74 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %74, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_890 to i64), ptr %76, align 8
  %77 = load i64, ptr %7, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %9, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %11, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %10, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 7
  store ptr %95, ptr %14, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.99)
  %97 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %100)
  store ptr %101, ptr %17, align 8
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %18, align 8
  %103 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %18, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %12, align 8
  %110 = load ptr, ptr %18, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %10, align 8
  %113 = load ptr, ptr %18, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %11, align 8
  %116 = load ptr, ptr %18, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %17, align 8
  %119 = load ptr, ptr %18, align 8
  call void %118(i64 noundef 4, ptr noundef %119) #4
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
  %50 = icmp sgt i64 %49, 3
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 3
  %53 = add nuw nsw i32 4, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_986, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 32, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_994 to i64), ptr %70, align 8
  %71 = load i64, ptr %7, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store ptr %80, ptr %12, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.105)
  %82 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %83 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %15, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %16, align 8
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %10, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 1, ptr %98, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = load ptr, ptr %16, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_996(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
  store ptr %41, ptr %15, align 8
  %42 = load ptr, ptr %15, align 8
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = load ptr, ptr @C_stack_limit, align 8
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp sgt i64 %49, 5
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 5
  %53 = add nuw nsw i32 7, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_996, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 56, align 16
  store ptr %67, ptr %14, align 8
  store i64 30, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  store i64 1, ptr %68, align 8
  %69 = load i64, ptr %10, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store ptr %75, ptr %14, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %11, align 8
  %77 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %77, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1002 to i64), ptr %79, align 8
  %80 = load i64, ptr %11, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %8, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store i64 ptrtoint (ptr @li16 to i64), ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %5, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 5
  store ptr %91, ptr %14, align 8
  %92 = load i64, ptr %5, align 8
  %93 = load i64, ptr %11, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds %struct.C_block_struct, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds [0 x i64], ptr %95, i64 0, i64 0
  store i64 %92, ptr %96, align 8
  store i64 %92, ptr %12, align 8
  %97 = load i64, ptr %11, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  store i64 %100, ptr %13, align 8
  %101 = load i64, ptr %13, align 8
  %102 = load i64, ptr %7, align 8
  %103 = load i64, ptr %9, align 8
  %104 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 59), align 8
  call void @f_1002(i64 noundef %101, i64 noundef %102, i64 noundef %103, i64 noundef 1, i64 noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1040(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %53 = add nuw nsw i32 4, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_1040, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 32, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1048 to i64), ptr %70, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %7, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store ptr %80, ptr %12, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.111)
  %82 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %83 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %15, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %16, align 8
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %10, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %8, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = load ptr, ptr %16, align 8
  call void %97(i64 noundef 3, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1077(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
  store ptr %41, ptr %15, align 8
  %42 = load ptr, ptr %15, align 8
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = load ptr, ptr @C_stack_limit, align 8
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp sgt i64 %49, 4
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 4
  %53 = add nuw nsw i32 8, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_1077, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 64, align 16
  store ptr %67, ptr %14, align 8
  store i64 30, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  store i64 1, ptr %68, align 8
  %69 = load i64, ptr %10, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store ptr %75, ptr %14, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %11, align 8
  %77 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %77, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1083 to i64), ptr %79, align 8
  %80 = load i64, ptr %9, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %11, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  store i64 ptrtoint (ptr @li20 to i64), ptr %90, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 6
  store ptr %94, ptr %14, align 8
  %95 = load i64, ptr %5, align 8
  %96 = load i64, ptr %11, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds %struct.C_block_struct, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds [0 x i64], ptr %98, i64 0, i64 0
  store i64 %95, ptr %99, align 8
  store i64 %95, ptr %12, align 8
  %100 = load i64, ptr %11, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %13, align 8
  %104 = load i64, ptr %13, align 8
  %105 = load i64, ptr %7, align 8
  call void @f_1083(i64 noundef %104, i64 noundef %105, i64 noundef 1, i64 noundef 14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1119(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 2
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %8, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ne i64 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, ptr %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %30, i32 noundef 3, i64 noundef %31) #4
  unreachable

32:                                               ; preds = %2
  %33 = load i64, ptr @C_timer_interrupt_counter, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr @C_timer_interrupt_counter, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @C_raise_interrupt(i32 noundef 255)
  br label %37

37:                                               ; preds = %36, %32
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  store ptr %39, ptr %16, align 8
  %40 = load ptr, ptr %16, align 8
  %41 = load ptr, ptr @C_stack_limit, align 8
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp sgt i64 %46, 4
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 4
  %50 = add nuw nsw i32 8, %49
  %51 = zext nneg i32 %50 to i64
  %52 = load i64, ptr @C_scratch_usage, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sgt i64 %45, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1119, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = alloca i8, i64 64, align 16
  store ptr %64, ptr %14, align 8
  %65 = load i64, ptr %8, align 8
  %66 = call i64 @C_i_length(i64 noundef %65)
  store i64 %66, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %67 = load ptr, ptr %14, align 8
  store i64 1, ptr %67, align 8
  %68 = load i64, ptr %10, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store ptr %74, ptr %14, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %11, align 8
  %76 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %76, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_1128 to i64), ptr %78, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %11, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  store i64 ptrtoint (ptr @li22 to i64), ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %5, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 6
  store ptr %93, ptr %14, align 8
  %94 = load i64, ptr %5, align 8
  %95 = load i64, ptr %11, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds %struct.C_block_struct, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds [0 x i64], ptr %97, i64 0, i64 0
  store i64 %94, ptr %98, align 8
  store i64 %94, ptr %12, align 8
  %99 = load i64, ptr %11, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %13, align 8
  %103 = load i64, ptr %13, align 8
  %104 = load i64, ptr %7, align 8
  call void @f_1128(i64 noundef %103, i64 noundef %104, i64 noundef 1, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1161(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 2
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %8, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ne i64 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, ptr %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %30, i32 noundef 3, i64 noundef %31) #4
  unreachable

32:                                               ; preds = %2
  %33 = load i64, ptr @C_timer_interrupt_counter, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr @C_timer_interrupt_counter, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @C_raise_interrupt(i32 noundef 255)
  br label %37

37:                                               ; preds = %36, %32
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  store ptr %39, ptr %16, align 8
  %40 = load ptr, ptr %16, align 8
  %41 = load ptr, ptr @C_stack_limit, align 8
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp sgt i64 %46, 4
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 4
  %50 = add nuw nsw i32 11, %49
  %51 = zext nneg i32 %50 to i64
  %52 = load i64, ptr @C_scratch_usage, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sgt i64 %45, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1161, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = alloca i8, i64 88, align 16
  store ptr %64, ptr %14, align 8
  %65 = load i64, ptr %8, align 8
  %66 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 63), align 8
  %67 = call i64 @C_s_a_i_bitwise_and(ptr noundef %14, i64 noundef 2, i64 noundef %65, i64 noundef %66)
  store i64 %67, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  store i64 1, ptr %68, align 8
  %69 = load i64, ptr %10, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store ptr %75, ptr %14, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %11, align 8
  %77 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %77, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1171 to i64), ptr %79, align 8
  %80 = load i64, ptr %11, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 ptrtoint (ptr @li24 to i64), ptr %84, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  store ptr %88, ptr %14, align 8
  %89 = load i64, ptr %5, align 8
  %90 = load i64, ptr %11, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds %struct.C_block_struct, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds [0 x i64], ptr %92, i64 0, i64 0
  store i64 %89, ptr %93, align 8
  store i64 %89, ptr %12, align 8
  %94 = load i64, ptr %11, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  store i64 %97, ptr %13, align 8
  %98 = load i64, ptr %13, align 8
  %99 = load i64, ptr %7, align 8
  %100 = load i64, ptr %9, align 8
  call void @f_1171(i64 noundef %98, i64 noundef %99, i64 noundef %100, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1199(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
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
  call void @C_save_and_reclaim(ptr noundef @f_1199, i32 noundef %47, ptr noundef %48) #4
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
  %62 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %61)
  %63 = load ptr, ptr %12, align 8
  call void %62(i64 noundef 2, ptr noundef %63) #4
  unreachable
}

declare i64 @C_mutate_slot(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_491(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  %39 = add nuw nsw i32 6, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_491, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_498 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %11, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %8, align 8
  %68 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %68, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_502 to i64), ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store ptr %77, ptr %11, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.72)
  %79 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
  %80 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %79)
  store ptr %80, ptr %14, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %52
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %15, align 8
  br label %87

85:                                               ; preds = %52
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %15, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 0
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %7, align 8
  %98 = load ptr, ptr %15, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %14, align 8
  %101 = load ptr, ptr %15, align 8
  call void %100(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_514(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #2 {
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
  %18 = alloca [4 x i64], align 16
  store i64 %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %5
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
  store ptr %24, ptr %15, align 8
  %25 = load ptr, ptr %15, align 8
  store ptr %25, ptr %16, align 8
  %26 = load ptr, ptr %16, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr @C_scratch_usage, align 8
  %33 = add nsw i64 11, %32
  %34 = icmp sgt i64 %31, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = zext nneg i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load i64, ptr %6, align 8
  %41 = load i64, ptr %7, align 8
  %42 = load i64, ptr %8, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load i64, ptr %10, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_514, i32 noundef 5, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44) #4
  unreachable

45:                                               ; preds = %23
  %46 = alloca i8, i64 64, align 16
  store ptr %46, ptr %14, align 8
  %47 = load ptr, ptr %14, align 8
  store i64 2594073385365405703, ptr %47, align 8
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 ptrtoint (ptr @f_521 to i64), ptr %49, align 8
  %50 = load i64, ptr %7, align 8
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %10, align 8
  %54 = load ptr, ptr %14, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %8, align 8
  %57 = load ptr, ptr %14, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr %9, align 8
  %60 = load ptr, ptr %14, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 5
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 6
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 7
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %11, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 8
  store ptr %77, ptr %14, align 8
  %78 = load i64, ptr %11, align 8
  store i64 %78, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.75)
  %79 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 14), align 16
  %80 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %79)
  store ptr %80, ptr %17, align 8
  %81 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 14), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 0
  store i64 %84, ptr %85, align 16
  %86 = load i64, ptr %12, align 8
  %87 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 1
  store i64 %86, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 2
  store i64 %88, ptr %89, align 16
  %90 = load i64, ptr %9, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 3
  store i64 %90, ptr %91, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 0
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_498(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
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
  %36 = add nuw nsw i32 33, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_498, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 264, align 16
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
  %59 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %60 = call fastcc i64 @C_fast_retrieve(i64 noundef %59)
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_s_a_i_times(ptr noundef %9, i64 noundef 2, i64 noundef %60, i64 noundef %61)
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %8, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  %68 = load i64, ptr %67, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = load ptr, ptr %12, align 8
  call void %69(i64 noundef 2, ptr noundef %70) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_502(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add nuw nsw i32 4, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_502, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_506 to i64), ptr %55, align 8
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
  %65 = load ptr, ptr %10, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  store ptr %68, ptr %10, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.73)
  %70 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
  %71 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %14, align 8
  br label %78

76:                                               ; preds = %51
  %77 = alloca i8, i64 24, align 16
  store ptr %77, ptr %14, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 13), align 8
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
  store i64 49, ptr %89, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = load ptr, ptr %14, align 8
  call void %90(i64 noundef 3, ptr noundef %91) #4
  unreachable
}

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_fast_retrieve(i64 noundef %0) unnamed_addr #0 {
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

declare void @C_unbound_variable(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_506(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
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
  call void @C_save_and_reclaim(ptr noundef @f_506, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.74)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
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
define internal fastcc ptr @C_fast_retrieve_proc(i64 noundef %0) unnamed_addr #0 {
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

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_514(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i64, ptr %10, i64 4
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %5, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 3
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %9, align 8
  %25 = load i64, ptr %5, align 8
  %26 = load i64, ptr %6, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load i64, ptr %8, align 8
  %29 = load i64, ptr %9, align 8
  call void @f_514(i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_521(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nuw nsw i32 7, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_521, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 56, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %8, align 8
  %61 = load ptr, ptr %4, align 8
  store ptr %61, ptr %13, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %13, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %13, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = load ptr, ptr %13, align 8
  call void %75(i64 noundef 2, ptr noundef %76) #4
  unreachable

77:                                               ; preds = %52
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  %81 = load i64, ptr %80, align 8
  %82 = call i64 @C_i_greater_or_equalp(i64 noundef %81, i64 noundef 49)
  %83 = icmp ne i64 %82, 6
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  %88 = load i64, ptr %87, align 8
  store i64 %88, ptr %8, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %14, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 49, ptr %94, align 8
  %95 = load i64, ptr %8, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 2, ptr noundef %100) #4
  unreachable

101:                                              ; preds = %77
  %102 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %102, align 8
  %103 = load ptr, ptr %10, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 ptrtoint (ptr @f_534 to i64), ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 4
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %10, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 5
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %10, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %10, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 4
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %6, align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 6
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %10, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 5
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %6, align 8
  %130 = inttoptr i64 %129 to ptr
  %131 = getelementptr inbounds i64, ptr %130, i64 2
  %132 = load i64, ptr %131, align 8
  %133 = load ptr, ptr %10, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 6
  store i64 %132, ptr %134, align 8
  %135 = load ptr, ptr %10, align 8
  %136 = ptrtoint ptr %135 to i64
  store i64 %136, ptr %5, align 8
  %137 = load ptr, ptr %10, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 7
  store ptr %138, ptr %10, align 8
  %139 = load i64, ptr %5, align 8
  store i64 %139, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.76)
  %140 = load i64, ptr %6, align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 7
  %143 = load i64, ptr %142, align 8
  store i64 %143, ptr %9, align 8
  %144 = load i64, ptr %3, align 8
  %145 = icmp sge i64 %144, 3
  br i1 %145, label %146, label %148

146:                                              ; preds = %101
  %147 = load ptr, ptr %4, align 8
  store ptr %147, ptr %15, align 8
  br label %150

148:                                              ; preds = %101
  %149 = alloca i8, i64 24, align 16
  store ptr %149, ptr %15, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i64, ptr %9, align 8
  %152 = load ptr, ptr %15, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 0
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %8, align 8
  %155 = load ptr, ptr %15, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  store i64 %154, ptr %156, align 8
  %157 = load i64, ptr %6, align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 4
  %160 = load i64, ptr %159, align 8
  %161 = load ptr, ptr %15, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 2
  store i64 %160, ptr %162, align 8
  %163 = load i64, ptr %9, align 8
  %164 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %163)
  %165 = load ptr, ptr %15, align 8
  call void %164(i64 noundef 3, ptr noundef %165) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) local_unnamed_addr #1

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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
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
  %39 = add nuw nsw i32 32, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_534, i32 noundef %50, ptr noundef %51) #4
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
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = load i64, ptr %14, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 1
  store i64 %71, ptr %75, align 8
  %76 = load i64, ptr %14, align 8
  store i64 %76, ptr %15, align 8
  %77 = load i64, ptr %15, align 8
  store i64 %77, ptr %8, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  %81 = load i64, ptr %80, align 8
  %82 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %81, i64 noundef 3)
  store i64 %82, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.77)
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  %86 = load i64, ptr %85, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  store i64 %89, ptr %10, align 8
  %90 = load i64, ptr %10, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 6
  %94 = load i64, ptr %93, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load i64, ptr %8, align 8
  %97 = load i64, ptr %9, align 8
  call void @f_514(i64 noundef %90, i64 noundef %94, i64 noundef %95, i64 noundef %96, i64 noundef %97) #4
  unreachable
}

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_548(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
  %38 = add nuw nsw i32 4, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_548, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_551 to i64), ptr %55, align 8
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
  %65 = load ptr, ptr %10, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  store ptr %68, ptr %10, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.79)
  %70 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %73)
  store ptr %74, ptr %13, align 8
  %75 = load i64, ptr %3, align 8
  %76 = icmp sge i64 %75, 5
  br i1 %76, label %77, label %79

77:                                               ; preds = %51
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  br label %81

79:                                               ; preds = %51
  %80 = alloca i8, i64 40, align 16
  store ptr %80, ptr %14, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
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
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 1), align 8
  %104 = call fastcc i64 @C_fast_retrieve(i64 noundef %103)
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = load ptr, ptr %14, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_551(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_551, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.80)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
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

; Function Attrs: noreturn
declare void @C_bad_min_argc_2(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @C_rest_arg_out_of_bounds_error_2(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_571(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  call void @C_save_and_reclaim(ptr noundef @f_571, i32 noundef %47, ptr noundef %48) #4
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
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  %63 = call i64 @C_i_lessp(i64 noundef %58, i64 noundef %62)
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %8, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %12, align 8
  call void %70(i64 noundef 2, ptr noundef %71) #4
  unreachable
}

declare i64 @C_i_lessp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_586(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_586, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %8, align 8
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %13, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 0
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 20), align 16
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %8, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %13, align 8
  call void %70(i64 noundef 2, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %51
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  %76 = load i64, ptr %75, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  %80 = load i64, ptr %79, align 8
  %81 = call i64 @C_i_lessp(i64 noundef %76, i64 noundef %80)
  store i64 %81, ptr %8, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  %85 = load i64, ptr %84, align 8
  store i64 %85, ptr %9, align 8
  %86 = load ptr, ptr %4, align 8
  store ptr %86, ptr %14, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 0
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = icmp ne i64 %90, 6
  br i1 %91, label %92, label %94

92:                                               ; preds = %72
  %93 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 21), align 8
  br label %96

94:                                               ; preds = %72
  %95 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 22), align 16
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %14, align 8
  call void %104(i64 noundef 2, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_598(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
  store ptr %31, ptr %11, align 8
  %32 = load ptr, ptr %11, align 8
  store ptr %32, ptr %12, align 8
  %33 = load ptr, ptr %12, align 8
  %34 = load ptr, ptr @C_stack_limit, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i64, ptr %3, align 8
  %40 = icmp sgt i64 %39, 3
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 3
  %43 = add nuw nsw i32 33, %42
  %44 = zext nneg i32 %43 to i64
  %45 = load i64, ptr @C_scratch_usage, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sgt i64 %38, %46
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = zext nneg i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load i64, ptr %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_598, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 264, align 16
  store ptr %57, ptr %10, align 8
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_i_nequalp(i64 noundef %58, i64 noundef 1)
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %13, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 24), align 16
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  %76 = load i64, ptr %75, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = load ptr, ptr %13, align 8
  call void %77(i64 noundef 2, ptr noundef %78) #4
  unreachable

79:                                               ; preds = %56
  %80 = load i64, ptr %7, align 8
  %81 = call i64 @C_i_nequalp(i64 noundef %80, i64 noundef 17)
  %82 = icmp ne i64 %81, 6
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %8, align 8
  %88 = load ptr, ptr %4, align 8
  store ptr %88, ptr %14, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 25), align 8
  %93 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %94 = call fastcc i64 @C_fast_retrieve(i64 noundef %93)
  %95 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %92, i64 noundef %94)
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = load ptr, ptr %14, align 8
  call void %102(i64 noundef 2, ptr noundef %103) #4
  unreachable

104:                                              ; preds = %79
  %105 = load i64, ptr %7, align 8
  %106 = call i64 @C_i_nequalp(i64 noundef %105, i64 noundef 25)
  %107 = icmp ne i64 %106, 6
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  %112 = load i64, ptr %111, align 8
  store i64 %112, ptr %8, align 8
  %113 = load ptr, ptr %4, align 8
  store ptr %113, ptr %15, align 8
  %114 = load i64, ptr %8, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 0
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 26), align 16
  %118 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %119 = call fastcc i64 @C_fast_retrieve(i64 noundef %118)
  %120 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %117, i64 noundef %119)
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %8, align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  %126 = load i64, ptr %125, align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = load ptr, ptr %15, align 8
  call void %127(i64 noundef 2, ptr noundef %128) #4
  unreachable

129:                                              ; preds = %104
  %130 = load i64, ptr %7, align 8
  %131 = call i64 @C_i_nequalp(i64 noundef %130, i64 noundef 33)
  %132 = icmp ne i64 %131, 6
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i64, ptr %6, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  %137 = load i64, ptr %136, align 8
  store i64 %137, ptr %8, align 8
  %138 = load ptr, ptr %4, align 8
  store ptr %138, ptr %16, align 8
  %139 = load i64, ptr %8, align 8
  %140 = load ptr, ptr %16, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 0
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 27), align 8
  %143 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %144 = call fastcc i64 @C_fast_retrieve(i64 noundef %143)
  %145 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %142, i64 noundef %144)
  %146 = load ptr, ptr %16, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %8, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 1
  %151 = load i64, ptr %150, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = load ptr, ptr %16, align 8
  call void %152(i64 noundef 2, ptr noundef %153) #4
  unreachable

154:                                              ; preds = %129
  %155 = load i64, ptr %7, align 8
  %156 = call i64 @C_i_nequalp(i64 noundef %155, i64 noundef 49)
  %157 = icmp ne i64 %156, 6
  br i1 %157, label %158, label %177

158:                                              ; preds = %154
  %159 = load i64, ptr %6, align 8
  %160 = inttoptr i64 %159 to ptr
  %161 = getelementptr inbounds i64, ptr %160, i64 2
  %162 = load i64, ptr %161, align 8
  store i64 %162, ptr %8, align 8
  %163 = load ptr, ptr %4, align 8
  store ptr %163, ptr %17, align 8
  %164 = load i64, ptr %8, align 8
  %165 = load ptr, ptr %17, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 0
  store i64 %164, ptr %166, align 8
  %167 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %168 = call fastcc i64 @C_fast_retrieve(i64 noundef %167)
  %169 = load ptr, ptr %17, align 8
  %170 = getelementptr inbounds i64, ptr %169, i64 1
  store i64 %168, ptr %170, align 8
  %171 = load i64, ptr %8, align 8
  %172 = inttoptr i64 %171 to ptr
  %173 = getelementptr inbounds i64, ptr %172, i64 1
  %174 = load i64, ptr %173, align 8
  %175 = inttoptr i64 %174 to ptr
  %176 = load ptr, ptr %17, align 8
  call void %175(i64 noundef 2, ptr noundef %176) #4
  unreachable

177:                                              ; preds = %154
  %178 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %178, align 8
  %179 = load ptr, ptr %10, align 8
  %180 = getelementptr inbounds i64, ptr %179, i64 1
  store i64 ptrtoint (ptr @f_644 to i64), ptr %180, align 8
  %181 = load i64, ptr %6, align 8
  %182 = inttoptr i64 %181 to ptr
  %183 = getelementptr inbounds i64, ptr %182, i64 2
  %184 = load i64, ptr %183, align 8
  %185 = load ptr, ptr %10, align 8
  %186 = getelementptr inbounds i64, ptr %185, i64 2
  store i64 %184, ptr %186, align 8
  %187 = load ptr, ptr %10, align 8
  %188 = ptrtoint ptr %187 to i64
  store i64 %188, ptr %5, align 8
  %189 = load ptr, ptr %10, align 8
  %190 = getelementptr inbounds i64, ptr %189, i64 3
  store ptr %190, ptr %10, align 8
  %191 = load i64, ptr %5, align 8
  store i64 %191, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.84)
  %192 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %193 = inttoptr i64 %192 to ptr
  %194 = getelementptr inbounds i64, ptr %193, i64 1
  %195 = load i64, ptr %194, align 8
  %196 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %195)
  store ptr %196, ptr %18, align 8
  %197 = load i64, ptr %3, align 8
  %198 = icmp sge i64 %197, 4
  br i1 %198, label %199, label %201

199:                                              ; preds = %177
  %200 = load ptr, ptr %4, align 8
  store ptr %200, ptr %19, align 8
  br label %203

201:                                              ; preds = %177
  %202 = alloca i8, i64 32, align 16
  store ptr %202, ptr %19, align 8
  br label %203

203:                                              ; preds = %201, %199
  %204 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %205 = inttoptr i64 %204 to ptr
  %206 = getelementptr inbounds i64, ptr %205, i64 1
  %207 = load i64, ptr %206, align 8
  %208 = load ptr, ptr %19, align 8
  %209 = getelementptr inbounds i64, ptr %208, i64 0
  store i64 %207, ptr %209, align 8
  %210 = load i64, ptr %8, align 8
  %211 = load ptr, ptr %19, align 8
  %212 = getelementptr inbounds i64, ptr %211, i64 1
  store i64 %210, ptr %212, align 8
  %213 = load i64, ptr %7, align 8
  %214 = load ptr, ptr %19, align 8
  %215 = getelementptr inbounds i64, ptr %214, i64 2
  store i64 %213, ptr %215, align 8
  %216 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 28), align 16
  %217 = load ptr, ptr %19, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 3
  store i64 %216, ptr %218, align 8
  %219 = load ptr, ptr %18, align 8
  %220 = load ptr, ptr %19, align 8
  call void %219(i64 noundef 4, ptr noundef %220) #4
  unreachable
}

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_644(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
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
  %36 = add nuw nsw i32 33, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_644, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 264, align 16
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
  %59 = load i64, ptr %7, align 8
  %60 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %61 = call fastcc i64 @C_fast_retrieve(i64 noundef %60)
  %62 = call i64 @C_s_a_i_times(ptr noundef %9, i64 noundef 2, i64 noundef %59, i64 noundef %61)
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %8, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  %68 = load i64, ptr %67, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = load ptr, ptr %12, align 8
  call void %69(i64 noundef 2, ptr noundef %70) #4
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
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
  %40 = add nuw nsw i32 12, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_650, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_683 to i64), ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 ptrtoint (ptr @li6 to i64), ptr %65, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store ptr %69, ptr %12, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %8, align 8
  %71 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %71, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 ptrtoint (ptr @f_656 to i64), ptr %73, align 8
  %74 = load i64, ptr %7, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %5, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  store ptr %89, ptr %12, align 8
  %90 = load i64, ptr %5, align 8
  store i64 %90, ptr %9, align 8
  %91 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %91, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 ptrtoint (ptr @f_714 to i64), ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = load ptr, ptr %12, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %12, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store ptr %100, ptr %12, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.86)
  %102 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %103 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %102)
  store ptr %103, ptr %15, align 8
  %104 = load i64, ptr %3, align 8
  %105 = icmp sge i64 %104, 3
  br i1 %105, label %106, label %108

106:                                              ; preds = %53
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %16, align 8
  br label %110

108:                                              ; preds = %53
  %109 = alloca i8, i64 24, align 16
  store ptr %109, ptr %16, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 29), align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %16, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 0
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %10, align 8
  %118 = load ptr, ptr %16, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %16, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %15, align 8
  %127 = load ptr, ptr %16, align 8
  call void %126(i64 noundef 3, ptr noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_683(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  %45 = icmp sgt i64 %44, 2
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 2
  %48 = add nuw nsw i32 5, %47
  %49 = zext nneg i32 %48 to i64
  %50 = load i64, ptr @C_scratch_usage, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp sgt i64 %43, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = zext nneg i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load i64, ptr %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_683, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 40, align 16
  store ptr %62, ptr %11, align 8
  %63 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %63, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 ptrtoint (ptr @f_708 to i64), ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store ptr %81, ptr %11, align 8
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.87)
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %14, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 0
  store i64 0, ptr %85, align 8
  %86 = load i64, ptr %9, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  call void @C_minus(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_656(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
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
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [4 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  store ptr %29, ptr %14, align 8
  %30 = load ptr, ptr %14, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr @C_scratch_usage, align 8
  %37 = add nsw i64 21, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = zext nneg i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i64, ptr %3, align 8
  %45 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_656, i32 noundef 2, i64 noundef %44, i64 noundef %45) #4
  unreachable

46:                                               ; preds = %27
  %47 = alloca i8, i64 144, align 16
  store ptr %47, ptr %12, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = ptrtoint ptr %48 to i64
  store i64 %49, ptr %15, align 8
  %50 = load ptr, ptr %12, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 0
  store i64 216172782113783810, ptr %51, align 8
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 3
  store ptr %53, ptr %12, align 8
  %54 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 31), align 8
  %55 = load i64, ptr %15, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds %struct.C_block_struct, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds [0 x i64], ptr %57, i64 0, i64 0
  store i64 %54, ptr %58, align 8
  %59 = load i64, ptr %3, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = load i64, ptr %15, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds %struct.C_block_struct, ptr %64, i32 0, i32 1
  %66 = getelementptr inbounds [0 x i64], ptr %65, i64 0, i64 1
  store i64 %62, ptr %66, align 8
  %67 = load i64, ptr %15, align 8
  store i64 %67, ptr %16, align 8
  %68 = load i64, ptr %16, align 8
  store i64 %68, ptr %6, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %17, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 216172782113783810, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store ptr %74, ptr %12, align 8
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 32), align 16
  %76 = load i64, ptr %17, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.C_block_struct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [0 x i64], ptr %78, i64 0, i64 0
  store i64 %75, ptr %79, align 8
  %80 = load i64, ptr %3, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %17, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds %struct.C_block_struct, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [0 x i64], ptr %86, i64 0, i64 1
  store i64 %83, ptr %87, align 8
  %88 = load i64, ptr %17, align 8
  store i64 %88, ptr %18, align 8
  %89 = load i64, ptr %18, align 8
  store i64 %89, ptr %7, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %19, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 0
  store i64 216172782113783810, ptr %93, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store ptr %95, ptr %12, align 8
  %96 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 33), align 8
  %97 = load i64, ptr %19, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds %struct.C_block_struct, ptr %98, i32 0, i32 1
  %100 = getelementptr inbounds [0 x i64], ptr %99, i64 0, i64 0
  store i64 %96, ptr %100, align 8
  %101 = load i64, ptr %4, align 8
  %102 = load i64, ptr %19, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds %struct.C_block_struct, ptr %103, i32 0, i32 1
  %105 = getelementptr inbounds [0 x i64], ptr %104, i64 0, i64 1
  store i64 %101, ptr %105, align 8
  %106 = load i64, ptr %19, align 8
  store i64 %106, ptr %20, align 8
  %107 = load i64, ptr %20, align 8
  store i64 %107, ptr %8, align 8
  %108 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %108, align 8
  %109 = load ptr, ptr %12, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 ptrtoint (ptr @f_679 to i64), ptr %110, align 8
  %111 = load i64, ptr %3, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 4
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %12, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %6, align 8
  %118 = load ptr, ptr %12, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %7, align 8
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 4
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %8, align 8
  %124 = load ptr, ptr %12, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 5
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %12, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %12, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 6
  store ptr %129, ptr %12, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %9, align 8
  %131 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %131, align 8
  %132 = load ptr, ptr %12, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  store i64 ptrtoint (ptr @f_741 to i64), ptr %133, align 8
  %134 = load i64, ptr %9, align 8
  %135 = load ptr, ptr %12, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %12, align 8
  %138 = ptrtoint ptr %137 to i64
  store i64 %138, ptr %5, align 8
  %139 = load ptr, ptr %12, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 3
  store ptr %140, ptr %12, align 8
  %141 = load i64, ptr %5, align 8
  store i64 %141, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.88)
  %142 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 1
  %145 = load i64, ptr %144, align 8
  %146 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %145)
  store ptr %146, ptr %21, align 8
  %147 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 12), align 16
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  %151 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 0
  store i64 %150, ptr %151, align 16
  %152 = load i64, ptr %10, align 8
  %153 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 1
  store i64 %152, ptr %153, align 8
  %154 = load i64, ptr %3, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 2
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 2
  store i64 %157, ptr %158, align 16
  %159 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 5), align 8
  %160 = call fastcc i64 @C_fast_retrieve(i64 noundef %159)
  %161 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 3
  store i64 %160, ptr %161, align 8
  %162 = load ptr, ptr %21, align 8
  %163 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 0
  call void %162(i64 noundef 4, ptr noundef %163) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_714(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
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
  %33 = icmp sgt i64 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  %36 = add nuw nsw i32 33, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_714, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 264, align 16
  store ptr %50, ptr %10, align 8
  %51 = load i64, ptr %7, align 8
  %52 = call i64 @C_i_nequalp(i64 noundef %51, i64 noundef 1)
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  call void @f_656(i64 noundef %59, i64 noundef 3) #4
  unreachable

60:                                               ; preds = %49
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_i_nequalp(i64 noundef %61, i64 noundef 17)
  %63 = icmp ne i64 %62, 6
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr %8, align 8
  call void @f_656(i64 noundef %69, i64 noundef 61) #4
  unreachable

70:                                               ; preds = %60
  %71 = load i64, ptr %7, align 8
  %72 = call i64 @C_i_nequalp(i64 noundef %71, i64 noundef 25)
  store i64 %72, ptr %8, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %9, align 8
  %77 = load i64, ptr %9, align 8
  %78 = load i64, ptr %8, align 8
  %79 = icmp ne i64 %78, 6
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %84

81:                                               ; preds = %70
  %82 = load i64, ptr %7, align 8
  %83 = call i64 @C_s_a_i_times(ptr noundef %10, i64 noundef 2, i64 noundef %82, i64 noundef 61)
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i64 [ 1519, %80 ], [ %83, %81 ]
  call void @f_656(i64 noundef %77, i64 noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_708(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
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
  %37 = icmp sgt i64 %36, 1
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  %40 = add nuw nsw i32 44, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_708, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 352, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %7, align 8
  %60 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %12, i64 noundef 2, i64 noundef %58, i64 noundef %59)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %8, align 8
  %62 = call i64 @C_s_a_i_bitwise_and(ptr noundef %12, i64 noundef 2, i64 noundef %61, i64 noundef 3)
  store i64 %62, ptr %9, align 8
  %63 = load i64, ptr %9, align 8
  %64 = call i64 @C_i_nequalp(i64 noundef %63, i64 noundef 3)
  %65 = icmp ne i64 %64, 6
  br i1 %65, label %66, label %90

66:                                               ; preds = %53
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %70, i64 noundef 3)
  store i64 %71, ptr %10, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %11, align 8
  %76 = load ptr, ptr %4, align 8
  store ptr %76, ptr %15, align 8
  %77 = load i64, ptr %11, align 8
  %78 = load ptr, ptr %15, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = call i64 @C_s_a_i_modulo(ptr noundef %12, i64 noundef 2, i64 noundef %80, i64 noundef 49)
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %11, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = load ptr, ptr %15, align 8
  call void %88(i64 noundef 2, ptr noundef %89) #4
  unreachable

90:                                               ; preds = %53
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  store i64 %94, ptr %10, align 8
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %16, align 8
  %96 = load i64, ptr %10, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %10, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = load ptr, ptr %16, align 8
  call void %109(i64 noundef 2, ptr noundef %110) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_minus(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @C_s_a_i_arithmetic_shift(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_bitwise_and(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_modulo(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_656(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_656(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_679(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i64], align 16
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
  store ptr %19, ptr %9, align 8
  %20 = load ptr, ptr %9, align 8
  store ptr %20, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = load ptr, ptr @C_stack_limit, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i64, ptr @C_scratch_usage, align 8
  %28 = add nsw i64 16, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = zext nneg i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i64, ptr %3, align 8
  %36 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_679, i32 noundef 2, i64 noundef %35, i64 noundef %36) #4
  unreachable

37:                                               ; preds = %18
  %38 = alloca i8, i64 120, align 16
  store ptr %38, ptr %8, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = ptrtoint ptr %39 to i64
  store i64 %40, ptr %11, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 216172782113783810, ptr %42, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 3
  store ptr %44, ptr %8, align 8
  %45 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 34), align 16
  %46 = load i64, ptr %11, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = getelementptr inbounds %struct.C_block_struct, ptr %47, i32 0, i32 1
  %49 = getelementptr inbounds [0 x i64], ptr %48, i64 0, i64 0
  store i64 %45, ptr %49, align 8
  %50 = load i64, ptr %4, align 8
  %51 = load i64, ptr %11, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds %struct.C_block_struct, ptr %52, i32 0, i32 1
  %54 = getelementptr inbounds [0 x i64], ptr %53, i64 0, i64 1
  store i64 %50, ptr %54, align 8
  %55 = load i64, ptr %11, align 8
  store i64 %55, ptr %12, align 8
  %56 = load i64, ptr %12, align 8
  store i64 %56, ptr %6, align 8
  %57 = load i64, ptr %3, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %7, align 8
  %61 = load i64, ptr %7, align 8
  %62 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %61, ptr %62, align 16
  %63 = load i64, ptr %3, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %3, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %3, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 5
  %74 = load i64, ptr %73, align 8
  %75 = load i64, ptr %6, align 8
  %76 = call fastcc i64 @C_a_i_list4(ptr noundef %8, i64 noundef %66, i64 noundef %70, i64 noundef %74, i64 noundef %75)
  %77 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 %76, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %82(i64 noundef 2, ptr noundef %83) #4
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
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
  call void @C_save_and_reclaim(ptr noundef @f_741, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %7, align 8
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 35), align 8
  %52 = call i64 @C_i_lessp(i64 noundef %50, i64 noundef %51)
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 36), align 16
  call void @f_679(i64 noundef %59, i64 noundef %60) #4
  unreachable

61:                                               ; preds = %49
  %62 = load i64, ptr %7, align 8
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 26), align 16
  %64 = call i64 @C_i_lessp(i64 noundef %62, i64 noundef %63)
  %65 = icmp ne i64 %64, 6
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  %70 = load i64, ptr %69, align 8
  store i64 %70, ptr %8, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 37), align 8
  call void @f_679(i64 noundef %71, i64 noundef %72) #4
  unreachable

73:                                               ; preds = %61
  %74 = load i64, ptr %7, align 8
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 38), align 16
  %76 = call i64 @C_i_lessp(i64 noundef %74, i64 noundef %75)
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  %80 = load i64, ptr %79, align 8
  store i64 %80, ptr %9, align 8
  %81 = load i64, ptr %9, align 8
  %82 = load i64, ptr %8, align 8
  %83 = icmp ne i64 %82, 6
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 39), align 8
  br label %88

86:                                               ; preds = %73
  %87 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 40), align 16
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  call void @f_679(i64 noundef %81, i64 noundef %89) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_679(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_679(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_a_i_list4(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i32 4, ptr %7, align 4
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %11, align 8
  %15 = call fastcc i64 @C_a_pair(ptr noundef %13, i64 noundef %14, i64 noundef 14)
  store i64 %15, ptr %12, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load i64, ptr %10, align 8
  %18 = load i64, ptr %12, align 8
  %19 = call fastcc i64 @C_a_pair(ptr noundef %16, i64 noundef %17, i64 noundef %18)
  store i64 %19, ptr %12, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i64, ptr %9, align 8
  %22 = load i64, ptr %12, align 8
  %23 = call fastcc i64 @C_a_pair(ptr noundef %20, i64 noundef %21, i64 noundef %22)
  store i64 %23, ptr %12, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %8, align 8
  %26 = load i64, ptr %12, align 8
  %27 = call fastcc i64 @C_a_pair(ptr noundef %24, i64 noundef %25, i64 noundef %26)
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_a_pair(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds i64, ptr %12, i32 1
  store ptr %13, ptr %7, align 8
  store i64 216172782113783810, ptr %12, align 8
  %14 = load i64, ptr %5, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds i64, ptr %15, i32 1
  store ptr %16, ptr %7, align 8
  store i64 %14, ptr %15, align 8
  %17 = load i64, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %19, ptr %7, align 8
  store i64 %17, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = ptrtoint ptr %22 to i64
  ret i64 %23
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_768(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !51
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
  %40 = add nuw nsw i32 12, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_768, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_771 to i64), ptr %57, align 8
  %58 = load i64, ptr %7, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %12, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %8, align 8
  %78 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %78, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 ptrtoint (ptr @f_788 to i64), ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store ptr %87, ptr %12, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %9, align 8
  %89 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_792 to i64), ptr %91, align 8
  %92 = load i64, ptr %9, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
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
  call void @C_trace(ptr noundef @.str.90)
  %106 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %109)
  store ptr %110, ptr %15, align 8
  %111 = load i64, ptr %3, align 8
  %112 = icmp sge i64 %111, 3
  br i1 %112, label %113, label %115

113:                                              ; preds = %53
  %114 = load ptr, ptr %4, align 8
  store ptr %114, ptr %16, align 8
  br label %117

115:                                              ; preds = %53
  %116 = alloca i8, i64 24, align 16
  store ptr %116, ptr %16, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %10, align 8
  %125 = load ptr, ptr %16, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %6, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 5
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 2
  store i64 %130, ptr %132, align 8
  %133 = load ptr, ptr %15, align 8
  %134 = load ptr, ptr %16, align 8
  call void %133(i64 noundef 3, ptr noundef %134) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_771(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = icmp sgt i64 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  %39 = add nuw nsw i32 33, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_771, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 264, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  %61 = load i64, ptr %60, align 8
  %62 = call i64 @C_i_lessp(i64 noundef %57, i64 noundef %61)
  store i64 %62, ptr %8, align 8
  %63 = load i64, ptr %8, align 8
  %64 = icmp ne i64 %63, 6
  br i1 %64, label %65, label %83

65:                                               ; preds = %52
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %9, align 8
  %70 = load ptr, ptr %4, align 8
  store ptr %70, ptr %14, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 0
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = load ptr, ptr %14, align 8
  call void %81(i64 noundef 2, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %52
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %7, align 8
  %89 = call i64 @C_s_a_i_times(ptr noundef %11, i64 noundef 2, i64 noundef %87, i64 noundef %88)
  store i64 %89, ptr %9, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %10, align 8
  %94 = load ptr, ptr %4, align 8
  store ptr %94, ptr %15, align 8
  %95 = load i64, ptr %10, align 8
  %96 = load ptr, ptr %15, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  %101 = load i64, ptr %100, align 8
  %102 = load i64, ptr %9, align 8
  %103 = call i64 @C_i_lessp(i64 noundef %101, i64 noundef %102)
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %10, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 2, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_788(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = icmp sgt i64 %33, 3
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_788, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.91)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
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
  %75 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 42), align 16
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = load ptr, ptr %13, align 8
  call void %81(i64 noundef 4, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_792(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = add nuw nsw i32 4, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_792, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_796 to i64), ptr %55, align 8
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
  %65 = load ptr, ptr %10, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  store ptr %68, ptr %10, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.90)
  %70 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %73)
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
  %82 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 17), align 8
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
define internal void @f_796(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
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
  call void @C_save_and_reclaim(ptr noundef @f_796, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.91)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 16), align 16
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
define internal fastcc i64 @C_i_numberp(i64 noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 1
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 3
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %2, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = getelementptr inbounds %struct.C_block_struct, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 6124895493223874568
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load i64, ptr %2, align 8
  %18 = inttoptr i64 %17 to ptr
  %19 = getelementptr inbounds %struct.C_block_struct, ptr %18, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, 432345564227567617
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %2, align 8
  %24 = inttoptr i64 %23 to ptr
  %25 = getelementptr inbounds %struct.C_block_struct, ptr %24, i32 0, i32 0
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 864691128455135234
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i64, ptr %2, align 8
  %30 = inttoptr i64 %29 to ptr
  %31 = getelementptr inbounds %struct.C_block_struct, ptr %30, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 1008806316530991106
  br label %34

34:                                               ; preds = %28, %22, %16, %10
  %35 = phi i1 [ true, %22 ], [ true, %16 ], [ true, %10 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi i1 [ false, %6 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %1
  %39 = phi i1 [ true, %1 ], [ %37, %36 ]
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i64 22, i64 6
  ret i64 %41
}

declare i64 @C_i_less_or_equalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_844(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
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
  %39 = add nuw nsw i32 6, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_844, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_850 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %11, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %8, align 8
  %68 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %68, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_861 to i64), ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %72, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store ptr %76, ptr %11, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.96)
  %78 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 50), align 16
  %79 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %3, align 8
  %81 = icmp sge i64 %80, 4
  br i1 %81, label %82, label %84

82:                                               ; preds = %52
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %15, align 8
  br label %86

84:                                               ; preds = %52
  %85 = alloca i8, i64 32, align 16
  store ptr %85, ptr %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 50), align 16
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %8, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %7, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = load ptr, ptr %15, align 8
  call void %102(i64 noundef 4, ptr noundef %103) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_850(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_850, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp eq i64 %52, 14
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 22, i64 6
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %8, align 8
  %62 = load ptr, ptr %4, align 8
  store ptr %62, ptr %12, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 48), align 16
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = load ptr, ptr %12, align 8
  call void %73(i64 noundef 2, ptr noundef %74) #4
  unreachable

75:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.97)
  %76 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %79)
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  br label %87

85:                                               ; preds = %75
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %14, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 49), align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 0
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %7, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = load ptr, ptr %14, align 8
  call void %103(i64 noundef 3, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_861(i64 noundef %0, ptr noundef %1) #2 {
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
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds i64, ptr %20, i64 2
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %8, align 8
  %23 = load i64, ptr %3, align 8
  %24 = icmp ne i64 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, ptr %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %27, i32 noundef 3, i64 noundef %28) #4
  unreachable

29:                                               ; preds = %2
  %30 = load i64, ptr @C_timer_interrupt_counter, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr @C_timer_interrupt_counter, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @C_raise_interrupt(i32 noundef 255)
  br label %34

34:                                               ; preds = %33, %29
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
  store ptr %35, ptr %11, align 8
  %36 = load ptr, ptr %11, align 8
  store ptr %36, ptr %12, align 8
  %37 = load ptr, ptr %12, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  %47 = add nuw nsw i32 0, %46
  %48 = zext nneg i32 %47 to i64
  %49 = load i64, ptr @C_scratch_usage, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp sgt i64 %42, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = zext nneg i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i64, ptr %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_861, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = load i64, ptr %7, align 8
  store i64 %61, ptr %9, align 8
  %62 = load ptr, ptr %4, align 8
  store ptr %62, ptr %13, align 8
  %63 = load i64, ptr %9, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %8, align 8
  %67 = call i64 @C_i_nequalp(i64 noundef %66, i64 noundef 1)
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
define internal void @f_871(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = icmp sgt i64 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = add nuw nsw i32 29, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_871, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 232, align 16
  store ptr %51, ptr %10, align 8
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @C_i_length(i64 noundef %52)
  store i64 %53, ptr %8, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %9, align 8
  %58 = load ptr, ptr %4, align 8
  store ptr %58, ptr %13, align 8
  %59 = load i64, ptr %9, align 8
  %60 = load ptr, ptr %13, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 0
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %8, align 8
  %63 = call i64 @C_s_a_i_minus(ptr noundef %10, i64 noundef 2, i64 noundef %62, i64 noundef 3)
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %9, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = load ptr, ptr %13, align 8
  call void %70(i64 noundef 2, ptr noundef %71) #4
  unreachable
}

declare i64 @C_i_length(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_890(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  %40 = add nuw nsw i32 39, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_890, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 312, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_893 to i64), ptr %57, align 8
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
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %12, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %8, align 8
  %84 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 ptrtoint (ptr @f_980 to i64), ptr %86, align 8
  %87 = load i64, ptr %8, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 5
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %12, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %12, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store ptr %99, ptr %12, align 8
  %100 = load i64, ptr %5, align 8
  store i64 %100, ptr %9, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load i64, ptr %6, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 6
  %105 = load i64, ptr %104, align 8
  %106 = call i64 @C_s_a_i_minus(ptr noundef %12, i64 noundef 2, i64 noundef %101, i64 noundef %105)
  store i64 %106, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.100)
  %107 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %108 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %107)
  store ptr %108, ptr %15, align 8
  %109 = load i64, ptr %3, align 8
  %110 = icmp sge i64 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %53
  %112 = load ptr, ptr %4, align 8
  store ptr %112, ptr %16, align 8
  br label %115

113:                                              ; preds = %53
  %114 = alloca i8, i64 32, align 16
  store ptr %114, ptr %16, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %16, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 0
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %9, align 8
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %10, align 8
  %126 = load ptr, ptr %16, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  store i64 %125, ptr %127, align 8
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 3
  store i64 1, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = load ptr, ptr %16, align 8
  call void %130(i64 noundef 4, ptr noundef %131) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_893(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
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
  %40 = add nuw nsw i32 37, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_893, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 296, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_896 to i64), ptr %57, align 8
  %58 = load i64, ptr %7, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = ptrtoint ptr %67 to i64
  store i64 %68, ptr %5, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  store ptr %70, ptr %12, align 8
  %71 = load i64, ptr %5, align 8
  store i64 %71, ptr %8, align 8
  %72 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_972 to i64), ptr %74, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store ptr %87, ptr %12, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %9, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  %96 = load i64, ptr %95, align 8
  %97 = call i64 @C_s_a_i_minus(ptr noundef %12, i64 noundef 2, i64 noundef %92, i64 noundef %96)
  store i64 %97, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.101)
  %98 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %99 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %98)
  store ptr %99, ptr %15, align 8
  %100 = load i64, ptr %3, align 8
  %101 = icmp sge i64 %100, 4
  br i1 %101, label %102, label %104

102:                                              ; preds = %53
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %16, align 8
  br label %106

104:                                              ; preds = %53
  %105 = alloca i8, i64 32, align 16
  store ptr %105, ptr %16, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 55), align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 0
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %10, align 8
  %117 = load ptr, ptr %16, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %16, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 1, ptr %120, align 8
  %121 = load ptr, ptr %15, align 8
  %122 = load ptr, ptr %16, align 8
  call void %121(i64 noundef 4, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_980(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
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
  call void @C_save_and_reclaim(ptr noundef @f_980, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.104)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_896(i64 noundef %0, ptr noundef %1) #2 {
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
  store ptr %35, ptr %20, align 8
  %36 = load ptr, ptr %20, align 8
  store ptr %36, ptr %21, align 8
  %37 = load ptr, ptr %21, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 4
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 4
  %47 = add nuw nsw i32 16, %46
  %48 = zext nneg i32 %47 to i64
  %49 = load i64, ptr @C_scratch_usage, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp sgt i64 %42, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = zext nneg i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i64, ptr %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_896, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 128, align 16
  store ptr %61, ptr %19, align 8
  %62 = load ptr, ptr %19, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %22, align 8
  %64 = load ptr, ptr %19, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 216172782113783810, ptr %65, align 8
  %66 = load ptr, ptr %19, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store ptr %67, ptr %19, align 8
  %68 = load i64, ptr %22, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds %struct.C_block_struct, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds [0 x i64], ptr %70, i64 0, i64 0
  store i64 30, ptr %71, align 8
  %72 = load i64, ptr %22, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 1
  store i64 14, ptr %75, align 8
  %76 = load i64, ptr %22, align 8
  store i64 %76, ptr %23, align 8
  %77 = load i64, ptr %23, align 8
  store i64 %77, ptr %8, align 8
  %78 = load i64, ptr %8, align 8
  store i64 %78, ptr %9, align 8
  %79 = load ptr, ptr %19, align 8
  store i64 1, ptr %79, align 8
  %80 = load i64, ptr %9, align 8
  %81 = load ptr, ptr %19, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %19, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %19, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  store ptr %86, ptr %19, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %10, align 8
  %88 = load i64, ptr %10, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %11, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  %95 = load i64, ptr %94, align 8
  %96 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 53), align 8
  %97 = call i64 @C_i_check_list_2(i64 noundef %95, i64 noundef %96)
  store i64 %97, ptr %12, align 8
  %98 = load i64, ptr %7, align 8
  %99 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 53), align 8
  %100 = call i64 @C_i_check_list_2(i64 noundef %98, i64 noundef %99)
  store i64 %100, ptr %13, align 8
  %101 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %101, align 8
  %102 = load ptr, ptr %19, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_920 to i64), ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %19, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %19, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %19, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  store ptr %113, ptr %19, align 8
  %114 = load i64, ptr %5, align 8
  store i64 %114, ptr %14, align 8
  store i64 30, ptr %15, align 8
  %115 = load ptr, ptr %19, align 8
  store i64 1, ptr %115, align 8
  %116 = load i64, ptr %15, align 8
  %117 = load ptr, ptr %19, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %19, align 8
  %120 = ptrtoint ptr %119 to i64
  store i64 %120, ptr %5, align 8
  %121 = load ptr, ptr %19, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store ptr %122, ptr %19, align 8
  %123 = load i64, ptr %5, align 8
  store i64 %123, ptr %16, align 8
  %124 = load ptr, ptr %19, align 8
  store i64 2594073385365405701, ptr %124, align 8
  %125 = load ptr, ptr %19, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 ptrtoint (ptr @f_922 to i64), ptr %126, align 8
  %127 = load i64, ptr %10, align 8
  %128 = load ptr, ptr %19, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %16, align 8
  %131 = load ptr, ptr %19, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %11, align 8
  %134 = load ptr, ptr %19, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 4
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %19, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 5
  store i64 ptrtoint (ptr @li13 to i64), ptr %137, align 8
  %138 = load ptr, ptr %19, align 8
  %139 = ptrtoint ptr %138 to i64
  store i64 %139, ptr %5, align 8
  %140 = load ptr, ptr %19, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 6
  store ptr %141, ptr %19, align 8
  %142 = load i64, ptr %5, align 8
  %143 = load i64, ptr %16, align 8
  %144 = inttoptr i64 %143 to ptr
  %145 = getelementptr inbounds %struct.C_block_struct, ptr %144, i32 0, i32 1
  %146 = getelementptr inbounds [0 x i64], ptr %145, i64 0, i64 0
  store i64 %142, ptr %146, align 8
  store i64 %142, ptr %17, align 8
  %147 = load i64, ptr %16, align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  store i64 %150, ptr %18, align 8
  %151 = load i64, ptr %18, align 8
  %152 = load i64, ptr %14, align 8
  %153 = load i64, ptr %6, align 8
  %154 = inttoptr i64 %153 to ptr
  %155 = getelementptr inbounds i64, ptr %154, i64 2
  %156 = load i64, ptr %155, align 8
  %157 = load i64, ptr %7, align 8
  call void @f_922(i64 noundef %151, i64 noundef %152, i64 noundef %156, i64 noundef %157) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_972(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  call void @C_save_and_reclaim(ptr noundef @f_972, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.103)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
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

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_920(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_920, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.102)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %52 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
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
  %60 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_922(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca [2 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %29

29:                                               ; preds = %69, %4
  %30 = load i64, ptr @C_timer_interrupt_counter, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, ptr @C_timer_interrupt_counter, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @C_raise_interrupt(i32 noundef 255)
  br label %34

34:                                               ; preds = %33, %29
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
  store ptr %35, ptr %24, align 8
  %36 = load ptr, ptr %24, align 8
  store ptr %36, ptr %25, align 8
  %37 = load ptr, ptr %25, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr @C_scratch_usage, align 8
  %44 = add nsw i64 6, %43
  %45 = icmp sgt i64 %42, %44
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = zext nneg i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load i64, ptr %5, align 8
  %52 = load i64, ptr %6, align 8
  %53 = load i64, ptr %7, align 8
  %54 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_922, i32 noundef 4, i64 noundef %51, i64 noundef %52, i64 noundef %53, i64 noundef %54) #4
  unreachable

55:                                               ; preds = %34
  %56 = alloca i8, i64 24, align 16
  store ptr %56, ptr %23, align 8
  %57 = load i64, ptr %7, align 8
  %58 = call fastcc i64 @C_i_pairp(i64 noundef %57), !range !20
  store i64 %58, ptr %10, align 8
  %59 = load i64, ptr %10, align 8
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, ptr %8, align 8
  %63 = call fastcc i64 @C_i_pairp(i64 noundef %62), !range !20
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %63, %61 ], [ 6, %64 ]
  store i64 %66, ptr %11, align 8
  %67 = load i64, ptr %11, align 8
  %68 = icmp ne i64 %67, 6
  br i1 %68, label %69, label %138

69:                                               ; preds = %65
  %70 = load i64, ptr %7, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 0
  %74 = load i64, ptr %73, align 8
  store i64 %74, ptr %12, align 8
  %75 = load i64, ptr %8, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds %struct.C_block_struct, ptr %76, i32 0, i32 1
  %78 = getelementptr inbounds [0 x i64], ptr %77, i64 0, i64 0
  %79 = load i64, ptr %78, align 8
  store i64 %79, ptr %13, align 8
  %80 = load i64, ptr %12, align 8
  %81 = load i64, ptr %13, align 8
  %82 = call i64 @C_i_nequalp(i64 noundef %80, i64 noundef %81)
  store i64 %82, ptr %14, align 8
  %83 = load i64, ptr %14, align 8
  %84 = icmp ne i64 %83, 6
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i64 1, i64 3
  store i64 %86, ptr %15, align 8
  %87 = load ptr, ptr %23, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %26, align 8
  %89 = load ptr, ptr %23, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 216172782113783810, ptr %90, align 8
  %91 = load ptr, ptr %23, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store ptr %92, ptr %23, align 8
  %93 = load i64, ptr %15, align 8
  %94 = load i64, ptr %26, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds %struct.C_block_struct, ptr %95, i32 0, i32 1
  %97 = getelementptr inbounds [0 x i64], ptr %96, i64 0, i64 0
  store i64 %93, ptr %97, align 8
  %98 = load i64, ptr %26, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  store i64 14, ptr %101, align 8
  %102 = load i64, ptr %26, align 8
  store i64 %102, ptr %27, align 8
  %103 = load i64, ptr %27, align 8
  store i64 %103, ptr %16, align 8
  %104 = load i64, ptr %5, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  %107 = load i64, ptr %106, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds %struct.C_block_struct, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds [0 x i64], ptr %112, i64 0, i64 1
  %114 = load i64, ptr %16, align 8
  %115 = call fastcc i64 @C_mutate(ptr noundef %113, i64 noundef %114)
  store i64 30, ptr %17, align 8
  %116 = load i64, ptr %5, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  %119 = load i64, ptr %118, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  %122 = load i64, ptr %16, align 8
  %123 = call fastcc i64 @C_mutate(ptr noundef %121, i64 noundef %122)
  store i64 %123, ptr %18, align 8
  %124 = load i64, ptr %6, align 8
  store i64 %124, ptr %20, align 8
  %125 = load i64, ptr %7, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds %struct.C_block_struct, ptr %126, i32 0, i32 1
  %128 = getelementptr inbounds [0 x i64], ptr %127, i64 0, i64 1
  %129 = load i64, ptr %128, align 8
  store i64 %129, ptr %21, align 8
  %130 = load i64, ptr %8, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds %struct.C_block_struct, ptr %131, i32 0, i32 1
  %133 = getelementptr inbounds [0 x i64], ptr %132, i64 0, i64 1
  %134 = load i64, ptr %133, align 8
  store i64 %134, ptr %22, align 8
  %135 = load i64, ptr %20, align 8
  store i64 %135, ptr %6, align 8
  %136 = load i64, ptr %21, align 8
  store i64 %136, ptr %7, align 8
  %137 = load i64, ptr %22, align 8
  store i64 %137, ptr %8, align 8
  br label %29

138:                                              ; preds = %65
  %139 = load i64, ptr %6, align 8
  store i64 %139, ptr %12, align 8
  %140 = load i64, ptr %12, align 8
  %141 = getelementptr inbounds [2 x i64], ptr %28, i64 0, i64 0
  store i64 %140, ptr %141, align 16
  %142 = load i64, ptr %5, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 4
  %145 = load i64, ptr %144, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds %struct.C_block_struct, ptr %146, i32 0, i32 1
  %148 = getelementptr inbounds [0 x i64], ptr %147, i64 0, i64 1
  %149 = load i64, ptr %148, align 8
  %150 = getelementptr inbounds [2 x i64], ptr %28, i64 0, i64 1
  store i64 %149, ptr %150, align 8
  %151 = load i64, ptr %12, align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  %154 = load i64, ptr %153, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds [2 x i64], ptr %28, i64 0, i64 0
  call void %155(i64 noundef 2, ptr noundef %156) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_922(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_922(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_i_pairp(i64 noundef %0) unnamed_addr #0 {
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
define internal void @f_994(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !67
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
  call void @C_save_and_reclaim(ptr noundef @f_994, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.106)
  %51 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
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
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = load ptr, ptr %13, align 8
  call void %84(i64 noundef 4, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1002(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #2 {
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
  %20 = alloca [3 x i64], align 16
  %21 = alloca ptr, align 8
  %22 = alloca [4 x i64], align 16
  %23 = alloca [2 x i64], align 16
  store i64 %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %24 = load i64, ptr @C_timer_interrupt_counter, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr @C_timer_interrupt_counter, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  call void @C_raise_interrupt(i32 noundef 255)
  br label %28

28:                                               ; preds = %27, %5
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
  store ptr %29, ptr %17, align 8
  %30 = load ptr, ptr %17, align 8
  store ptr %30, ptr %18, align 8
  %31 = load ptr, ptr %18, align 8
  %32 = load ptr, ptr @C_stack_limit, align 8
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 10, %37
  %39 = icmp sgt i64 %36, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = zext nneg i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load i64, ptr %6, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %8, align 8
  %48 = load i64, ptr %9, align 8
  %49 = load i64, ptr %10, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1002, i32 noundef 5, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48, i64 noundef %49) #4
  unreachable

50:                                               ; preds = %28
  %51 = alloca i8, i64 56, align 16
  store ptr %51, ptr %16, align 8
  %52 = load i64, ptr %8, align 8
  %53 = icmp eq i64 %52, 14
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 22, i64 6
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  call void @C_trace(ptr noundef @.str.107)
  %58 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %59 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
  store ptr %59, ptr %19, align 8
  %60 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 47), align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 0
  store i64 %63, ptr %64, align 16
  %65 = load i64, ptr %7, align 8
  %66 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 1
  store i64 %65, ptr %66, align 8
  %67 = load i64, ptr %10, align 8
  %68 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 2
  store i64 %67, ptr %68, align 16
  %69 = load ptr, ptr %19, align 8
  %70 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 0
  call void %69(i64 noundef 3, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %50
  %72 = load i64, ptr %8, align 8
  %73 = call i64 @C_i_car(i64 noundef %72)
  store i64 %73, ptr %12, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_cdr(i64 noundef %74)
  store i64 %75, ptr %13, align 8
  %76 = load ptr, ptr %16, align 8
  store i64 2594073385365405702, ptr %76, align 8
  %77 = load ptr, ptr %16, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_1021 to i64), ptr %78, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load ptr, ptr %16, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %16, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %7, align 8
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %13, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 5
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %10, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 6
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %11, align 8
  %99 = load ptr, ptr %16, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  store ptr %100, ptr %16, align 8
  %101 = load i64, ptr %11, align 8
  store i64 %101, ptr %14, align 8
  %102 = load i64, ptr %12, align 8
  %103 = call i64 @C_i_nequalp(i64 noundef %102, i64 noundef 3)
  %104 = icmp ne i64 %103, 6
  br i1 %104, label %105, label %124

105:                                              ; preds = %71
  call void @C_trace(ptr noundef @.str.108)
  %106 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %107 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %106)
  store ptr %107, ptr %21, align 8
  %108 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 0
  store i64 %111, ptr %112, align 16
  %113 = load i64, ptr %14, align 8
  %114 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 1
  store i64 %113, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  %118 = load i64, ptr %117, align 8
  %119 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 2
  store i64 %118, ptr %119, align 16
  %120 = load i64, ptr %9, align 8
  %121 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 3
  store i64 %120, ptr %121, align 8
  %122 = load ptr, ptr %21, align 8
  %123 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 0
  call void %122(i64 noundef 4, ptr noundef %123) #4
  unreachable

124:                                              ; preds = %71
  %125 = load i64, ptr %14, align 8
  store i64 %125, ptr %15, align 8
  %126 = load i64, ptr %15, align 8
  %127 = getelementptr inbounds [2 x i64], ptr %23, i64 0, i64 0
  store i64 %126, ptr %127, align 16
  %128 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 58), align 16
  %129 = getelementptr inbounds [2 x i64], ptr %23, i64 0, i64 1
  store i64 %128, ptr %129, align 8
  %130 = getelementptr inbounds [2 x i64], ptr %23, i64 0, i64 0
  call void @f_1021(i64 noundef 2, ptr noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1002(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i64, ptr %10, i64 4
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %5, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 3
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 2
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %7, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %8, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %9, align 8
  %25 = load i64, ptr %5, align 8
  %26 = load i64, ptr %6, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load i64, ptr %8, align 8
  %29 = load i64, ptr %9, align 8
  call void @f_1002(i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29) #4
  unreachable
}

declare i64 @C_i_car(i64 noundef) local_unnamed_addr #1

declare i64 @C_i_cdr(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1021(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  %39 = add nuw nsw i32 35, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1021, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 280, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %57, i64 noundef 3)
  store i64 %58, ptr %8, align 8
  %59 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %59, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 ptrtoint (ptr @f_1032 to i64), ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 5
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store ptr %86, ptr %11, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.109)
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
  %89 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %14, align 8
  %90 = load i64, ptr %3, align 8
  %91 = icmp sge i64 %90, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %52
  %93 = load ptr, ptr %4, align 8
  store ptr %93, ptr %15, align 8
  br label %96

94:                                               ; preds = %52
  %95 = alloca i8, i64 32, align 16
  store ptr %95, ptr %15, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %15, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 0
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %9, align 8
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %7, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = load ptr, ptr %15, align 8
  call void %115(i64 noundef 4, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1032(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  %32 = icmp sgt i64 %31, 4
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_1032, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.110)
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
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 5
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %7, align 8
  call void @f_1002(i64 noundef %56, i64 noundef %60, i64 noundef %64, i64 noundef %68, i64 noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1048(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  %38 = add nuw nsw i32 7, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1048, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
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
  store i64 2594073385365405700, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1050 to i64), ptr %64, align 8
  %65 = load i64, ptr %9, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 ptrtoint (ptr @li18 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  %81 = load i64, ptr %9, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds %struct.C_block_struct, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds [0 x i64], ptr %83, i64 0, i64 0
  store i64 %80, ptr %84, align 8
  store i64 %80, ptr %10, align 8
  %85 = load i64, ptr %9, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  store i64 %88, ptr %11, align 8
  %89 = load i64, ptr %11, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  %93 = load i64, ptr %92, align 8
  %94 = load i64, ptr %7, align 8
  call void @f_1050(i64 noundef %89, i64 noundef %93, i64 noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1050(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %14 = alloca [3 x i64], align 16
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
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
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
  %29 = add nsw i64 8, %28
  %30 = icmp sgt i64 %27, %29
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = zext nneg i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1050, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 48, align 16
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_1054 to i64), ptr %43, align 8
  %44 = load i64, ptr %5, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %46, align 8
  %47 = load i64, ptr %6, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 3
  store i64 %47, ptr %49, align 8
  %50 = load i64, ptr %4, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  %53 = load i64, ptr %52, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %7, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 6
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %7, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.112)
  %67 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  store i64 %72, ptr %73, align 16
  %74 = load i64, ptr %8, align 8
  %75 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 1
  store i64 %74, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 2
  store i64 %76, ptr %77, align 16
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1050(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1050(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1054(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !73
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
  %38 = add nuw nsw i32 7, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1054, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1057 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.112)
  %88 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
  %89 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
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
  %97 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 51), align 8
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
define internal void @f_1057(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  %37 = icmp sgt i64 %36, 3
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 3
  %40 = add nuw nsw i32 34, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1057, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 272, align 16
  store ptr %54, ptr %11, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %7, align 8
  %60 = call i64 @C_i_lessp(i64 noundef %58, i64 noundef %59)
  %61 = icmp ne i64 %60, 6
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %8, align 8
  %67 = load ptr, ptr %4, align 8
  store ptr %67, ptr %14, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 0
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %8, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = load ptr, ptr %14, align 8
  call void %81(i64 noundef 2, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %53
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %7, align 8
  %89 = call i64 @C_s_a_i_minus(ptr noundef %11, i64 noundef 2, i64 noundef %87, i64 noundef %88)
  store i64 %89, ptr %8, align 8
  %90 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %90, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 ptrtoint (ptr @f_1069 to i64), ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 4
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %11, align 8
  %112 = ptrtoint ptr %111 to i64
  store i64 %112, ptr %5, align 8
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 5
  store ptr %114, ptr %11, align 8
  %115 = load i64, ptr %5, align 8
  store i64 %115, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.113)
  %116 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %117 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %116)
  store ptr %117, ptr %15, align 8
  %118 = load i64, ptr %3, align 8
  %119 = icmp sge i64 %118, 4
  br i1 %119, label %120, label %122

120:                                              ; preds = %83
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %16, align 8
  br label %124

122:                                              ; preds = %83
  %123 = alloca i8, i64 32, align 16
  store ptr %123, ptr %16, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 56), align 16
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %16, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 0
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %9, align 8
  %132 = load ptr, ptr %16, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %6, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds i64, ptr %135, i64 6
  %137 = load i64, ptr %136, align 8
  %138 = load ptr, ptr %16, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr %8, align 8
  %141 = load ptr, ptr %16, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 3
  store i64 %140, ptr %142, align 8
  %143 = load ptr, ptr %15, align 8
  %144 = load ptr, ptr %16, align 8
  call void %143(i64 noundef 4, ptr noundef %144) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1069(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  %38 = add nuw nsw i32 4, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1069, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1072 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.114)
  %73 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
  %74 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
  store ptr %74, ptr %13, align 8
  %75 = load i64, ptr %3, align 8
  %76 = icmp sge i64 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %51
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  br label %81

79:                                               ; preds = %51
  %80 = alloca i8, i64 32, align 16
  store ptr %80, ptr %14, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %7, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 4, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1072(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  call void @C_save_and_reclaim(ptr noundef @f_1072, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.115)
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
  %61 = load i64, ptr %7, align 8
  call void @f_1050(i64 noundef %56, i64 noundef %60, i64 noundef %61) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1083(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
  store ptr %24, ptr %15, align 8
  %25 = load ptr, ptr %15, align 8
  store ptr %25, ptr %16, align 8
  %26 = load ptr, ptr %16, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr @C_scratch_usage, align 8
  %33 = add nsw i64 41, %32
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1083, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 312, align 16
  store ptr %45, ptr %14, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %5, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = call i64 @C_i_nequalp(i64 noundef %46, i64 noundef %50)
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i64, ptr %6, align 8
  store i64 %54, ptr %10, align 8
  %55 = load i64, ptr %10, align 8
  %56 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %10, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %63(i64 noundef 2, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %44
  %66 = load i64, ptr %7, align 8
  %67 = call i64 @C_s_a_i_plus(ptr noundef %14, i64 noundef 2, i64 noundef %66, i64 noundef 3)
  store i64 %67, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1101 to i64), ptr %70, align 8
  %71 = load i64, ptr %5, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %9, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  store ptr %86, ptr %14, align 8
  %87 = load i64, ptr %9, align 8
  store i64 %87, ptr %11, align 8
  %88 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %88, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_1117 to i64), ptr %90, align 8
  %91 = load i64, ptr %5, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %11, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %9, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  store ptr %106, ptr %14, align 8
  %107 = load i64, ptr %9, align 8
  store i64 %107, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.116)
  %108 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 0, ptr %108, align 16
  %109 = load i64, ptr %12, align 8
  %110 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %109, ptr %110, align 8
  %111 = load i64, ptr %7, align 8
  %112 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %111, ptr %112, align 16
  %113 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void @C_minus(i64 noundef 3, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1083(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1083(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1101(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1101, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.117)
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
  %65 = load i64, ptr %7, align 8
  call void @f_1083(i64 noundef %56, i64 noundef %60, i64 noundef %64, i64 noundef %65) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1117(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  %40 = add nuw nsw i32 13, %39
  %41 = zext nneg i32 %40 to i64
  %42 = load i64, ptr @C_scratch_usage, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp sgt i64 %35, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = zext nneg i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1117, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 104, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %7, align 8
  %60 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %12, i64 noundef 2, i64 noundef %58, i64 noundef %59)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %8, align 8
  %62 = call i64 @C_s_a_i_bitwise_and(ptr noundef %12, i64 noundef 2, i64 noundef %61, i64 noundef 3)
  store i64 %62, ptr %9, align 8
  %63 = load i64, ptr %9, align 8
  %64 = call fastcc i64 @C_a_i_list1(ptr noundef %12, i64 noundef %63)
  store i64 %64, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.118)
  %65 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  %68 = load i64, ptr %67, align 8
  %69 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %68)
  store ptr %69, ptr %15, align 8
  %70 = load i64, ptr %3, align 8
  %71 = icmp sge i64 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %16, align 8
  br label %76

74:                                               ; preds = %53
  %75 = alloca i8, i64 32, align 16
  store ptr %75, ptr %16, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i64, ptr getelementptr inbounds ([71 x i64], ptr @lf, i64 0, i64 54), align 16
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %16, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 0
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %16, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %10, align 8
  %96 = load ptr, ptr %16, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %15, align 8
  %99 = load ptr, ptr %16, align 8
  call void %98(i64 noundef 4, ptr noundef %99) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_a_i_list1(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i32 1, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call fastcc i64 @C_a_pair(ptr noundef %6, i64 noundef %7, i64 noundef 14)
  ret i64 %8
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %18 = alloca [2 x i64], align 16
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !80
  store ptr %24, ptr %16, align 8
  %25 = load ptr, ptr %16, align 8
  store ptr %25, ptr %17, align 8
  %26 = load ptr, ptr %17, align 8
  %27 = load ptr, ptr @C_stack_limit, align 8
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = load i64, ptr @C_scratch_usage, align 8
  %33 = add nsw i64 46, %32
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1128, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 352, align 16
  store ptr %45, ptr %15, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %5, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = call i64 @C_i_greater_or_equalp(i64 noundef %46, i64 noundef %50)
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i64, ptr %6, align 8
  store i64 %54, ptr %10, align 8
  %55 = load i64, ptr %10, align 8
  %56 = getelementptr inbounds [2 x i64], ptr %18, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %18, i64 0, i64 1
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %10, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds [2 x i64], ptr %18, i64 0, i64 0
  call void %63(i64 noundef 2, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %44
  %66 = load i64, ptr %5, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %7, align 8
  %71 = call i64 @C_i_list_tail(i64 noundef %69, i64 noundef %70)
  %72 = call i64 @C_i_car(i64 noundef %71)
  store i64 %72, ptr %10, align 8
  %73 = load i64, ptr %7, align 8
  %74 = call i64 @C_s_a_i_plus(ptr noundef %15, i64 noundef 2, i64 noundef %73, i64 noundef 3)
  store i64 %74, ptr %11, align 8
  %75 = load ptr, ptr %15, align 8
  store i64 2594073385365405700, ptr %75, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 ptrtoint (ptr @f_1149 to i64), ptr %77, align 8
  %78 = load i64, ptr %5, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %11, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %15, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 5
  store ptr %93, ptr %15, align 8
  %94 = load i64, ptr %9, align 8
  store i64 %94, ptr %12, align 8
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @C_i_nequalp(i64 noundef %95, i64 noundef 3)
  %97 = icmp ne i64 %96, 6
  br i1 %97, label %98, label %106

98:                                               ; preds = %65
  %99 = load i64, ptr %7, align 8
  %100 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %15, i64 noundef 2, i64 noundef 3, i64 noundef %99)
  store i64 %100, ptr %13, align 8
  %101 = load i64, ptr %12, align 8
  store i64 %101, ptr %14, align 8
  %102 = load i64, ptr %14, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load i64, ptr %13, align 8
  %105 = call i64 @C_s_a_i_bitwise_ior(ptr noundef %15, i64 noundef 2, i64 noundef %103, i64 noundef %104)
  call void @f_1149(i64 noundef %102, i64 noundef %105) #4
  unreachable

106:                                              ; preds = %65
  %107 = load i64, ptr %12, align 8
  store i64 %107, ptr %13, align 8
  %108 = load i64, ptr %13, align 8
  %109 = load i64, ptr %8, align 8
  call void @f_1149(i64 noundef %108, i64 noundef %109) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1128(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1128(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_list_tail(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1149(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %10 = load i64, ptr @C_timer_interrupt_counter, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, ptr @C_timer_interrupt_counter, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %14

14:                                               ; preds = %13, %2
  %15 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
  store ptr %15, ptr %8, align 8
  %16 = load ptr, ptr %8, align 8
  store ptr %16, ptr %9, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = load ptr, ptr @C_stack_limit, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = load i64, ptr @C_scratch_usage, align 8
  %24 = add nsw i64 3, %23
  %25 = icmp sgt i64 %22, %24
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = zext nneg i32 %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i64, ptr %3, align 8
  %32 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1149, i32 noundef 2, i64 noundef %31, i64 noundef %32) #4
  unreachable

33:                                               ; preds = %14
  call void @C_trace(ptr noundef @.str.119)
  %34 = load i64, ptr %3, align 8
  %35 = inttoptr i64 %34 to ptr
  %36 = getelementptr inbounds i64, ptr %35, i64 2
  %37 = load i64, ptr %36, align 8
  %38 = inttoptr i64 %37 to ptr
  %39 = getelementptr inbounds i64, ptr %38, i64 1
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %6, align 8
  %41 = load i64, ptr %6, align 8
  %42 = load i64, ptr %3, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = getelementptr inbounds i64, ptr %43, i64 3
  %45 = load i64, ptr %44, align 8
  %46 = load i64, ptr %3, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = getelementptr inbounds i64, ptr %47, i64 4
  %49 = load i64, ptr %48, align 8
  %50 = load i64, ptr %4, align 8
  call void @f_1128(i64 noundef %41, i64 noundef %45, i64 noundef %49, i64 noundef %50) #4
  unreachable
}

declare i64 @C_s_a_i_bitwise_ior(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1149(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1149(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1171(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %20 = alloca [2 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %21

21:                                               ; preds = %64, %4
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %21
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
  store ptr %27, ptr %18, align 8
  %28 = load ptr, ptr %18, align 8
  store ptr %28, ptr %19, align 8
  %29 = load ptr, ptr %19, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr @C_scratch_usage, align 8
  %36 = add nsw i64 66, %35
  %37 = icmp sgt i64 %34, %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load i64, ptr %5, align 8
  %44 = load i64, ptr %6, align 8
  %45 = load i64, ptr %7, align 8
  %46 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1171, i32 noundef 4, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %26
  %48 = alloca i8, i64 504, align 16
  store ptr %48, ptr %17, align 8
  %49 = load i64, ptr %7, align 8
  %50 = call i64 @C_i_zerop(i64 noundef %49)
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  store i64 %53, ptr %10, align 8
  %54 = load i64, ptr %10, align 8
  %55 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  store i64 %54, ptr %55, align 16
  %56 = load i64, ptr %8, align 8
  %57 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 1
  store i64 %56, ptr %57, align 8
  %58 = load i64, ptr %10, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  %61 = load i64, ptr %60, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  call void %62(i64 noundef 2, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %47
  %65 = load i64, ptr %7, align 8
  %66 = call i64 @C_s_a_i_minus(ptr noundef %17, i64 noundef 2, i64 noundef %65, i64 noundef 3)
  store i64 %66, ptr %10, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load i64, ptr %10, align 8
  %69 = call i64 @C_s_a_i_bitwise_and(ptr noundef %17, i64 noundef 2, i64 noundef %67, i64 noundef %68)
  store i64 %69, ptr %11, align 8
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_s_a_i_plus(ptr noundef %17, i64 noundef 2, i64 noundef %70, i64 noundef 3)
  store i64 %71, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.120)
  %72 = load i64, ptr %6, align 8
  store i64 %72, ptr %14, align 8
  %73 = load i64, ptr %11, align 8
  store i64 %73, ptr %15, align 8
  %74 = load i64, ptr %12, align 8
  store i64 %74, ptr %16, align 8
  %75 = load i64, ptr %14, align 8
  store i64 %75, ptr %6, align 8
  %76 = load i64, ptr %15, align 8
  store i64 %76, ptr %7, align 8
  %77 = load i64, ptr %16, align 8
  store i64 %77, ptr %8, align 8
  br label %21
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1171(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1171(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_zerop(i64 noundef) local_unnamed_addr #1

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
!6 = !{i64 2148775564}
!7 = !{i64 2148711562}
!8 = !{i64 2148712313}
!9 = !{i64 2148713198}
!10 = !{i64 2148710665}
!11 = !{i64 2148714232}
!12 = !{i64 2148716421}
!13 = !{i64 2148724514}
!14 = !{i64 2148726739}
!15 = !{i64 2148728805}
!16 = !{i64 2148730295}
!17 = !{i64 2148733787}
!18 = !{i64 2148744376}
!19 = !{i64 2148749725}
!20 = !{i64 6, i64 23}
!21 = !{i64 2148751300}
!22 = !{i64 2148754758}
!23 = !{i64 2148756231}
!24 = !{i64 2148772242}
!25 = !{i64 2148773761}
!26 = !{i64 2148695119}
!27 = !{i64 2148700906}
!28 = !{i64 2148704689}
!29 = !{i64 2148707952}
!30 = !{i64 2148710122}
!31 = !{i64 2148717866}
!32 = !{i64 2148720904}
!33 = !{i64 2148718728}
!34 = !{i64 2148719345}
!35 = !{i64 2148720232}
!36 = !{i64 2148721644}
!37 = !{i64 2148722965}
!38 = !{i64 2148725248}
!39 = !{i64 2148726052}
!40 = !{i64 2148728237}
!41 = !{i64 2148729546}
!42 = !{i64 2148731028}
!43 = !{i64 2148733165}
!44 = !{i64 2148734528}
!45 = !{i64 2148739871}
!46 = !{i64 2148735501}
!47 = !{i64 2148741807}
!48 = !{i64 2148740608}
!49 = !{i64 2148738519}
!50 = !{i64 2148743511}
!51 = !{i64 2148745889}
!52 = !{i64 2148746858}
!53 = !{i64 2148747588}
!54 = !{i64 2148748252}
!55 = !{i64 2148749051}
!56 = !{i64 2148752041}
!57 = !{i64 2148752915}
!58 = !{i64 2148754106}
!59 = !{i64 2148755495}
!60 = !{i64 2148756975}
!61 = !{i64 2148757981}
!62 = !{i64 2148771560}
!63 = !{i64 2148759017}
!64 = !{i64 2148770893}
!65 = !{i64 2148761205}
!66 = !{i64 2148761927}
!67 = !{i64 2148773069}
!68 = !{i64 2148692029}
!69 = !{i64 2148693600}
!70 = !{i64 2148694508}
!71 = !{i64 2148695864}
!72 = !{i64 2148696996}
!73 = !{i64 2148697729}
!74 = !{i64 2148698546}
!75 = !{i64 2148699498}
!76 = !{i64 2148700295}
!77 = !{i64 2148702194}
!78 = !{i64 2148703221}
!79 = !{i64 2148703829}
!80 = !{i64 2148706025}
!81 = !{i64 2148707334}
!82 = !{i64 2148709185}
