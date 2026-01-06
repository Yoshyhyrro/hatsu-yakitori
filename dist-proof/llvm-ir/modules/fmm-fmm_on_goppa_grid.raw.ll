; ModuleID = '/tmp/hatsu-llvm-fmm_on_goppa_grid-4562/fmm_on_goppa_grid.c'
source_filename = "/tmp/hatsu-llvm-fmm_on_goppa_grid-4562/fmm_on_goppa_grid.c"
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
@lf = internal global [74 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [22 x i8] c"module.fmm.fmm-goppa#\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"module.fmm.fmm-goppa#pi\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\FEU3.141592653589793115997963468544185161590576171875\00\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-add\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-sub\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-mul\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-div\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-abs\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"scheme#sqrt\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-pow\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"module.fmm.fmm-goppa#c-inv\00", align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"\FEU9.9999999999999997988664762925561536725284350612952266601496376097202301025390625e-13\00\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"module.fmm.fmm-goppa#fact\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"module.fmm.fmm-goppa#nCk\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"module.fmm.fmm-goppa#make-stack\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"module.fmm.fmm-goppa#stack-push\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"module.fmm.fmm-goppa#stack-pop\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"module.fmm.fmm-goppa#make-queue\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"module.fmm.fmm-goppa#queue-push\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"module.fmm.fmm-goppa#queue-pop\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"module.fmm.fmm-goppa#adaptive-frontier-push\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"golay_frontier#adaptive-frontier-mode\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"module.fmm.fmm-goppa#adaptive-frontier-pop\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"module.fmm.fmm-goppa#print-frontier-info\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"golay_frontier#print-golay-info\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"module.fmm.fmm-goppa#make-goppa-grid\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"\FEU6.28318530717958623199592693708837032318115234375\00\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"scheme#sin\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"scheme#cos\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"scheme#exact->inexact\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"scheme#make-vector\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"module.fmm.fmm-goppa#local-parameter\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"module.fmm.fmm-goppa#calculate-geometric-center\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"for-each\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"module.fmm.fmm-goppa#p2m-kernel\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"module.fmm.fmm-goppa#m2l-translation\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\FEU-1.0\00\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"module.fmm.fmm-goppa#cartan-fmm-evaluate-golay\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\FEU0.5\00\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"srfi-133#vector-append\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"golay_frontier#make-adaptive-frontier\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"module.fmm.fmm-goppa#demo-cartan-golay\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"##sys#standard-output\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"##sys#print\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"\FEB\00\002\0A(Processing order differs based on Golay weight)\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"##sys#check-output-port\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\FEB\00\00\02i\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"\FEB\00\00\03 + \00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"\FEB\00\00\12Result Potential: \00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"\FEB\00\00)\0A--- Run 2: High Entropy (Queue/BFS) ---\0A\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"\FEB\00\00(\0A--- Run 1: Low Entropy (Stack/DFS) ---\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"srfi-1#iota\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"srfi-1#make-list\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"\FEB\00\00'=== Cartan-FMM with Golay Frontier ===\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"cross_validation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"golay_frontier\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"srfi-133\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"module.fmm.fmm-goppa\00", align 1
@.str.70 = private unnamed_addr constant [1696 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01demo-cartan-golay\FE\01\00\00&\01module.fmm.fmm-goppa#demo-cartan-golay\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\19\01cartan-fmm-evaluate-golay\FE\01\00\00.\01module.fmm.fmm-goppa#cartan-fmm-evaluate-golay\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01m2l-translation\FE\01\00\00$\01module.fmm.fmm-goppa#m2l-translation\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01p2m-kernel\FE\01\00\00\1F\01module.fmm.fmm-goppa#p2m-kernel\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1A\01calculate-geometric-center\FE\01\00\00/\01module.fmm.fmm-goppa#calculate-geometric-center\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01local-parameter\FE\01\00\00$\01module.fmm.fmm-goppa#local-parameter\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01make-goppa-grid\FE\01\00\00$\01module.fmm.fmm-goppa#make-goppa-grid\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01print-frontier-info\FE\01\00\00(\01module.fmm.fmm-goppa#print-frontier-info\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\15\01adaptive-frontier-pop\FE\01\00\00*\01module.fmm.fmm-goppa#adaptive-frontier-pop\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\16\01adaptive-frontier-push\FE\01\00\00+\01module.fmm.fmm-goppa#adaptive-frontier-push\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01queue-pop\FE\01\00\00\1E\01module.fmm.fmm-goppa#queue-pop\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01queue-push\FE\01\00\00\1F\01module.fmm.fmm-goppa#queue-push\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01make-queue\FE\01\00\00\1F\01module.fmm.fmm-goppa#make-queue\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\09\01stack-pop\FE\01\00\00\1E\01module.fmm.fmm-goppa#stack-pop\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01stack-push\FE\01\00\00\1F\01module.fmm.fmm-goppa#stack-push\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01make-stack\FE\01\00\00\1F\01module.fmm.fmm-goppa#make-stack\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\03\01nCk\FE\01\00\00\18\01module.fmm.fmm-goppa#nCk\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\04\01fact\FE\01\00\00\19\01module.fmm.fmm-goppa#fact\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-inv\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-inv\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-pow\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-pow\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-abs\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-abs\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-div\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-div\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-mul\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-mul\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-sub\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-sub\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\05\01c-add\FE\01\00\00\1A\01module.fmm.fmm-goppa#c-add\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\02\01pi\FE\01\00\00\17\01module.fmm.fmm-goppa#pi\FE\FF\0E\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@li46 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a2006)\00", align 16
@.str.72 = private unnamed_addr constant [48 x i8] c"fmm_on_goppa_grid.scm:3: ##sys#with-environment\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"fmm_on_goppa_grid.scm:4: make-goppa-grid\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"fmm_on_goppa_grid.scm:10: chicken.load#load-extension\00", align 1
@li0 = internal global [40 x i8] c" \00\00\00\00\00\00M(module.fmm.fmm-goppa#c-add a b)", align 16
@li1 = internal global [40 x i8] c" \00\00\00\00\00\00M(module.fmm.fmm-goppa#c-sub a b)", align 16
@li2 = internal global [40 x i8] c" \00\00\00\00\00\00M(module.fmm.fmm-goppa#c-mul a b)", align 16
@li3 = internal global [40 x i8] c" \00\00\00\00\00\00M(module.fmm.fmm-goppa#c-div a b)", align 16
@li4 = internal global [40 x i8] c"\1E\00\00\00\00\00\00M(module.fmm.fmm-goppa#c-abs a)\00\00", align 16
@li6 = internal global [40 x i8] c" \00\00\00\00\00\00M(module.fmm.fmm-goppa#c-pow z n)", align 16
@li7 = internal global [40 x i8] c"\1E\00\00\00\00\00\00M(module.fmm.fmm-goppa#c-inv z)\00\00", align 16
@li8 = internal global [40 x i8] c"\1D\00\00\00\00\00\00M(module.fmm.fmm-goppa#fact n)\00\00\00", align 16
@li9 = internal global [40 x i8] c"\1E\00\00\00\00\00\00M(module.fmm.fmm-goppa#nCk n k)\00\00", align 16
@li10 = internal global [48 x i8] c"!\00\00\00\00\00\00M(module.fmm.fmm-goppa#make-stack)\00\00\00\00\00\00\00", align 16
@li11 = internal global [56 x i8] c",\00\00\00\00\00\00M(module.fmm.fmm-goppa#stack-push stack item)\00\00\00\00", align 16
@li12 = internal global [48 x i8] c"&\00\00\00\00\00\00M(module.fmm.fmm-goppa#stack-pop stack)\00\00", align 16
@li13 = internal global [48 x i8] c"!\00\00\00\00\00\00M(module.fmm.fmm-goppa#make-queue)\00\00\00\00\00\00\00", align 16
@li14 = internal global [56 x i8] c",\00\00\00\00\00\00M(module.fmm.fmm-goppa#queue-push queue item)\00\00\00\00", align 16
@li15 = internal global [48 x i8] c"&\00\00\00\00\00\00M(module.fmm.fmm-goppa#queue-pop queue)\00\00", align 16
@li16 = internal global [72 x i8] c";\00\00\00\00\00\00M(module.fmm.fmm-goppa#adaptive-frontier-push frontier item)\00\00\00\00\00", align 16
@li21 = internal global [64 x i8] c"5\00\00\00\00\00\00M(module.fmm.fmm-goppa#adaptive-frontier-pop frontier)\00\00\00", align 16
@li23 = internal global [64 x i8] c"5\00\00\00\00\00\00M(module.fmm.fmm-goppa#make-goppa-grid q m num-points)\00\00\00", align 16
@li24 = internal global [56 x i8] c"-\00\00\00\00\00\00M(module.fmm.fmm-goppa#local-parameter grid i)\00\00\00", align 16
@li27 = internal global [72 x i8] c">\00\00\00\00\00\00M(module.fmm.fmm-goppa#calculate-geometric-center grid indices)\00\00", align 16
@li31 = internal global [88 x i8] c"J\00\00\00\00\00\00M(module.fmm.fmm-goppa#p2m-kernel grid sources source-charges center order)\00\00\00\00\00\00", align 16
@li35 = internal global [64 x i8] c"6\00\00\00\00\00\00M(module.fmm.fmm-goppa#m2l-translation M z-s z-t order)\00\00", align 16
@li44 = internal global [120 x i8] c"p\00\00\00\00\00\00M(module.fmm.fmm-goppa#cartan-fmm-evaluate-golay grid hierarchy sources charges target-idx order golay-info-bits)", align 16
@li45 = internal global [48 x i8] c"(\00\00\00\00\00\00M(module.fmm.fmm-goppa#demo-cartan-golay)", align 16
@.str.75 = private unnamed_addr constant [35 x i8] c"fmm_on_goppa_grid.scm:39: scheme#/\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"fmm_on_goppa_grid.scm:40: scheme#/\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"fmm_on_goppa_grid.scm:42: scheme#sqrt\00", align 1
@li5 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(loop i acc)\00\00\00\00", align 16
@.str.78 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:46: c-mul\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"fmm_on_goppa_grid.scm:46: loop\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"fmm_on_goppa_grid.scm:52: scheme#/\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"fmm_on_goppa_grid.scm:52: scheme#-\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"fmm_on_goppa_grid.scm:56: fact\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"fmm_on_goppa_grid.scm:59: fact\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"fmm_on_goppa_grid.scm:59: scheme#/\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"fmm_on_goppa_grid.scm:68: scheme#values\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"fmm_on_goppa_grid.scm:69: scheme#values\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"fmm_on_goppa_grid.scm:84: scheme#values\00", align 1
@.str.88 = private unnamed_addr constant [40 x i8] c"fmm_on_goppa_grid.scm:89: scheme#values\00", align 1
@.str.89 = private unnamed_addr constant [64 x i8] c"fmm_on_goppa_grid.scm:93: golay_frontier#adaptive-frontier-mode\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"fmm_on_goppa_grid.scm:97: stack-push\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"fmm_on_goppa_grid.scm:98: queue-push\00", align 1
@.str.92 = private unnamed_addr constant [65 x i8] c"fmm_on_goppa_grid.scm:102: golay_frontier#adaptive-frontier-mode\00", align 1
@li17 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1285)\00", align 16
@li18 = internal global [40 x i8] c"\19\00\00\00\00\00\00M(a1291 item90 new-data92)\00\00\00\00\00\00\00", align 16
@.str.93 = private unnamed_addr constant [50 x i8] c"fmm_on_goppa_grid.scm:105: ##sys#call-with-values\00", align 1
@li19 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1303)\00", align 16
@li20 = internal global [40 x i8] c"\1A\00\00\00\00\00\00M(a1309 item99 new-data101)\00\00\00\00\00\00", align 16
@.str.94 = private unnamed_addr constant [50 x i8] c"fmm_on_goppa_grid.scm:108: ##sys#call-with-values\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"fmm_on_goppa_grid.scm:105: stack-pop\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"fmm_on_goppa_grid.scm:107: scheme#values\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"fmm_on_goppa_grid.scm:108: queue-pop\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"fmm_on_goppa_grid.scm:110: scheme#values\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"fmm_on_goppa_grid.scm:120: scheme#make-vector\00", align 1
@li22 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(doloop115 k acc)\00\00\00\00\00\00\00", align 16
@.str.100 = private unnamed_addr constant [49 x i8] c"fmm_on_goppa_grid.scm:122: scheme#exact->inexact\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"fmm_on_goppa_grid.scm:123: scheme#cos\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"fmm_on_goppa_grid.scm:123: scheme#sin\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"fmm_on_goppa_grid.scm:122: scheme#/\00", align 1
@li25 = internal global [24 x i8] c"\0A\00\00\00\00\00\00M(g134 idx)\00\00\00\00\00\00", align 16
@li26 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop133 g140)\00", align 16
@.str.104 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:135: local-parameter\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:135: c-add\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"fmm_on_goppa_grid.scm:137: scheme#/\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:134: g134\00", align 1
@.str.108 = private unnamed_addr constant [46 x i8] c"fmm_on_goppa_grid.scm:143: scheme#make-vector\00", align 1
@li29 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(g160 idx q)\00\00\00\00", align 16
@li30 = internal global [40 x i8] c"\1C\00\00\00\00\00\00M(for-each-loop159 g166 g167)\00\00\00\00", align 16
@.str.109 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:145: local-parameter\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:146: c-sub\00", align 1
@li28 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop175 k)\00\00\00", align 16
@.str.111 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:148: c-pow\00", align 1
@.str.112 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:150: c-mul\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:151: c-add\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:144: g160\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"fmm_on_goppa_grid.scm:156: scheme#make-vector\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:157: c-sub\00", align 1
@li34 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop199 j)\00\00\00", align 16
@li33 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop203 k)\00\00\00", align 16
@.str.117 = private unnamed_addr constant [31 x i8] c"fmm_on_goppa_grid.scm:162: nCk\00", align 1
@li32 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(va2093)", align 16
@.str.118 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:166: c-div\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:167: c-mul\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:168: c-add\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:164: c-pow\00", align 1
@.str.122 = private unnamed_addr constant [49 x i8] c"fmm_on_goppa_grid.scm:162: scheme#exact->inexact\00", align 1
@.str.123 = private unnamed_addr constant [65 x i8] c"fmm_on_goppa_grid.scm:177: golay_frontier#make-adaptive-frontier\00", align 1
@.str.124 = private unnamed_addr constant [38 x i8] c"fmm_on_goppa_grid.scm:178: make-stack\00", align 1
@.str.125 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:179: local-parameter\00", align 1
@.str.126 = private unnamed_addr constant [47 x i8] c"fmm_on_goppa_grid.scm:182: print-frontier-info\00", align 1
@li43 = internal global [24 x i8] c"\0D\00\00\00\00\00\00M(doloop230 i)\00\00\00", align 16
@li42 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(loop)\00\00", align 16
@li36 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1698)\00", align 16
@li41 = internal global [48 x i8] c"(\00\00\00\00\00\00M(a1704 level-idx236 updated-frontier238)", align 16
@.str.127 = private unnamed_addr constant [50 x i8] c"fmm_on_goppa_grid.scm:191: ##sys#call-with-values\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"fmm_on_goppa_grid.scm:191: adaptive-frontier-pop\00", align 1
@.str.129 = private unnamed_addr constant [54 x i8] c"fmm_on_goppa_grid.scm:197: calculate-geometric-center\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:222: loop\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:198: c-sub\00", align 1
@li37 = internal global [24 x i8] c"\0E\00\00\00\00\00\00M(g254 src-idx)\00\00", align 16
@li38 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop253 g260)\00", align 16
@li39 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(g282 x)", align 16
@li40 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop276 g288)\00\00\00\00\00\00", align 16
@.str.132 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:207: local-parameter\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:208: c-sub\00", align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:210: c-div\00", align 1
@.str.135 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:211: c-add\00", align 1
@.str.136 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:204: g254\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:219: m2l-translation\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:220: c-add\00", align 1
@.str.139 = private unnamed_addr constant [38 x i8] c"fmm_on_goppa_grid.scm:216: p2m-kernel\00", align 1
@.str.140 = private unnamed_addr constant [32 x i8] c"fmm_on_goppa_grid.scm:217: g282\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"fmm_on_goppa_grid.scm:198: c-abs\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"fmm_on_goppa_grid.scm:187: adaptive-frontier-push\00", align 1
@.str.143 = private unnamed_addr constant [50 x i8] c"fmm_on_goppa_grid.scm:178: srfi-133#vector-append\00", align 1
@.str.144 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:230: ##sys#check-output-port\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:230: ##sys#print\00", align 1
@.str.146 = private unnamed_addr constant [43 x i8] c"fmm_on_goppa_grid.scm:233: make-goppa-grid\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:234: srfi-1#iota\00", align 1
@.str.148 = private unnamed_addr constant [44 x i8] c"fmm_on_goppa_grid.scm:235: srfi-1#make-list\00", align 1
@.str.149 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:239: srfi-1#iota\00", align 1
@.str.150 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:240: srfi-1#iota\00", align 1
@.str.151 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:241: srfi-1#iota\00", align 1
@.str.152 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:242: srfi-1#iota\00", align 1
@.str.153 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:244: ##sys#check-output-port\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:244: ##sys#print\00", align 1
@.str.155 = private unnamed_addr constant [53 x i8] c"fmm_on_goppa_grid.scm:245: cartan-fmm-evaluate-golay\00", align 1
@.str.156 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:247: ##sys#check-output-port\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:247: ##sys#print\00", align 1
@.str.158 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:249: ##sys#check-output-port\00", align 1
@.str.159 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:249: ##sys#print\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"fmm_on_goppa_grid.scm:250: cartan-fmm-evaluate-golay\00", align 1
@.str.161 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:252: ##sys#check-output-port\00", align 1
@.str.162 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:252: ##sys#print\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"fmm_on_goppa_grid.scm:254: ##sys#check-output-port\00", align 1
@.str.164 = private unnamed_addr constant [39 x i8] c"fmm_on_goppa_grid.scm:254: ##sys#print\00", align 1
@.str.165 = private unnamed_addr constant [56 x i8] c"fmm_on_goppa_grid.scm:3: ##sys#register-compiled-module\00", align 1

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
  %71 = getelementptr inbounds i64, ptr %70, i64 940
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
  call void @C_rereclaim2(i64 noundef 7520, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 74)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 21, ptr noundef @.str.1)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 1), i32 noundef 23, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), i32 noundef 26, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), i32 noundef 26, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), i32 noundef 26, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), i32 noundef 26, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), i32 noundef 8, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 9), i32 noundef 26, ptr noundef @.str.10)
  store i64 %96, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 9), align 8
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 10), i32 noundef 11, ptr noundef @.str.11)
  store i64 %97, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 10), align 16
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), i32 noundef 26, ptr noundef @.str.12)
  store i64 %98, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %99 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.13)
  store i64 %99, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 12), align 16
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 13), i32 noundef 26, ptr noundef @.str.14)
  store i64 %100, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 13), align 8
  %101 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.15)
  store i64 %101, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 14), align 16
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), i32 noundef 25, ptr noundef @.str.16)
  store i64 %102, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 16), i32 noundef 24, ptr noundef @.str.17)
  store i64 %103, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 16), align 16
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 17), i32 noundef 31, ptr noundef @.str.18)
  store i64 %104, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 17), align 8
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 18), i32 noundef 31, ptr noundef @.str.19)
  store i64 %105, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 18), align 16
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 19), i32 noundef 30, ptr noundef @.str.20)
  store i64 %106, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 19), align 8
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 20), i32 noundef 31, ptr noundef @.str.21)
  store i64 %107, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 20), align 16
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 21), i32 noundef 31, ptr noundef @.str.22)
  store i64 %108, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 21), align 8
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 22), i32 noundef 30, ptr noundef @.str.23)
  store i64 %109, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 22), align 16
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 23), i32 noundef 43, ptr noundef @.str.24)
  store i64 %110, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 23), align 8
  %111 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 24), i32 noundef 5, ptr noundef @.str.25)
  store i64 %111, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 24), align 16
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), i32 noundef 37, ptr noundef @.str.26)
  store i64 %112, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), align 8
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 26), i32 noundef 42, ptr noundef @.str.27)
  store i64 %113, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 26), align 16
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 27), i32 noundef 40, ptr noundef @.str.28)
  store i64 %114, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 27), align 8
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 28), i32 noundef 31, ptr noundef @.str.29)
  store i64 %115, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 28), align 16
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), i32 noundef 36, ptr noundef @.str.30)
  store i64 %116, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
  %117 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %117, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 30), align 16
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 31), i32 noundef 10, ptr noundef @.str.32)
  store i64 %118, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 31), align 8
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 32), i32 noundef 10, ptr noundef @.str.33)
  store i64 %119, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 32), align 16
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), i32 noundef 21, ptr noundef @.str.34)
  store i64 %120, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), align 8
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), i32 noundef 18, ptr noundef @.str.35)
  store i64 %121, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), i32 noundef 36, ptr noundef @.str.36)
  store i64 %122, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %123 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), i32 noundef 47, ptr noundef @.str.37)
  store i64 %123, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), align 16
  %124 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), i32 noundef 8, ptr noundef @.str.38)
  store i64 %124, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), align 8
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 38), i32 noundef 31, ptr noundef @.str.39)
  store i64 %125, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 38), align 16
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 39), i32 noundef 36, ptr noundef @.str.40)
  store i64 %126, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 39), align 8
  %127 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.41)
  store i64 %127, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 40), align 16
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), i32 noundef 46, ptr noundef @.str.42)
  store i64 %128, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %129 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.43)
  store i64 %129, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 42), align 16
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 43), i32 noundef 3, ptr noundef @.str.44)
  store i64 %130, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 43), align 8
  %131 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 44), i32 noundef 22, ptr noundef @.str.45)
  store i64 %131, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 44), align 16
  %132 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 45), i32 noundef 37, ptr noundef @.str.46)
  store i64 %132, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 45), align 8
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 46), i32 noundef 38, ptr noundef @.str.47)
  store i64 %133, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 46), align 16
  %134 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), i32 noundef 21, ptr noundef @.str.48)
  store i64 %134, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %135 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), i32 noundef 11, ptr noundef @.str.49)
  store i64 %135, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %136 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.50)
  store i64 %136, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 49), align 8
  %137 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), i32 noundef 23, ptr noundef @.str.51)
  store i64 %137, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %138 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), i32 noundef 6, ptr noundef @.str.52)
  store i64 %138, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %139 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %139, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 52), align 16
  %140 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.54)
  store i64 %140, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 53), align 8
  %141 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %141, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 54), align 16
  %142 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.56)
  store i64 %142, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 55), align 8
  %143 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %143, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 56), align 16
  %144 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.54)
  store i64 %144, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 57), align 8
  %145 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %145, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 58), align 16
  %146 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.57)
  store i64 %146, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 59), align 8
  %147 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), i32 noundef 11, ptr noundef @.str.58)
  store i64 %147, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %148 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 61), i32 noundef 16, ptr noundef @.str.59)
  store i64 %148, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 61), align 8
  %149 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.60)
  store i64 %149, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 62), align 16
  %150 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 63), i32 noundef 34, ptr noundef @.str.61)
  store i64 %150, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 63), align 8
  %151 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), i32 noundef 27, ptr noundef @.str.62)
  store i64 %151, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
  %152 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 65), i32 noundef 16, ptr noundef @.str.63)
  store i64 %152, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 65), align 8
  %153 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 66), i32 noundef 14, ptr noundef @.str.64)
  store i64 %153, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 66), align 16
  %154 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 67), i32 noundef 8, ptr noundef @.str.65)
  store i64 %154, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 67), align 8
  %155 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 68), i32 noundef 7, ptr noundef @.str.66)
  store i64 %155, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 68), align 16
  %156 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 69), i32 noundef 6, ptr noundef @.str.67)
  store i64 %156, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 69), align 8
  %157 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 70), i32 noundef 30, ptr noundef @.str.68)
  store i64 %157, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 70), align 16
  %158 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 71), i32 noundef 20, ptr noundef @.str.69)
  store i64 %158, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 71), align 8
  %159 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.70)
  store i64 %159, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 72), align 16
  %160 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 73), i32 noundef 22, ptr noundef @.str.71)
  store i64 %160, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 73), align 8
  %161 = call ptr @create_ptable()
  %162 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 74, ptr noundef %161)
  %163 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %163, align 8
  %164 = load ptr, ptr %10, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 ptrtoint (ptr @f_701 to i64), ptr %165, align 8
  %166 = load i64, ptr %7, align 8
  %167 = load ptr, ptr %10, align 8
  %168 = getelementptr inbounds i64, ptr %167, i64 2
  store i64 %166, ptr %168, align 8
  %169 = load ptr, ptr %10, align 8
  %170 = ptrtoint ptr %169 to i64
  store i64 %170, ptr %5, align 8
  %171 = load ptr, ptr %10, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 3
  store ptr %172, ptr %10, align 8
  %173 = load i64, ptr %5, align 8
  store i64 %173, ptr %8, align 8
  %174 = load ptr, ptr %4, align 8
  store ptr %174, ptr %14, align 8
  %175 = load ptr, ptr %14, align 8
  %176 = getelementptr inbounds i64, ptr %175, i64 0
  store i64 30, ptr %176, align 8
  %177 = load i64, ptr %8, align 8
  %178 = load ptr, ptr %14, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 1
  store i64 %177, ptr %179, align 8
  %180 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %180) #4
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
define internal void @f_701(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_701, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_704 to i64), ptr %54, align 8
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
define internal void @f_704(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_704, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_707 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_2007 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li46 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.72)
  %81 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 73), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 73), align 8
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
define internal void @f_707(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 5
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 5
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
  call void @C_save_and_reclaim(ptr noundef @f_707, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_710 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.73)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 6
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 48, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %86 = call i64 @C_fast_retrieve(i64 noundef %85)
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), align 16
  %90 = call i64 @C_fast_retrieve(i64 noundef %89)
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %94 = call i64 @C_fast_retrieve(i64 noundef %93)
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 46), align 16
  %98 = call i64 @C_fast_retrieve(i64 noundef %97)
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = load ptr, ptr %14, align 8
  call void %101(i64 noundef 6, ptr noundef %102) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_2007(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_2007, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.165)
  %58 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 70), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 70), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 71), align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 72), align 16
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
define internal void @f_710(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !11
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
  call void @C_save_and_reclaim(ptr noundef @f_710, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_713 to i64), ptr %54, align 8
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_713(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
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
  call void @C_save_and_reclaim(ptr noundef @f_713, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_716 to i64), ptr %54, align 8
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

; Function Attrs: noreturn
declare void @C_extras_toplevel(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_716(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_716, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_719 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.74)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 69), align 8
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
define internal void @f_719(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_719, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_722 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.74)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 68), align 16
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
  call void @C_save_and_reclaim(ptr noundef @f_722, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_725 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.74)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 67), align 8
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
define internal void @f_725(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_725, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_728 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.74)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 64), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 65), align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 66), align 16
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
define internal void @f_728(i64 noundef %0, ptr noundef %1) #2 {
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
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 0
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %6, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 1
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %7, align 8
  %47 = load i64, ptr @C_timer_interrupt_counter, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, ptr @C_timer_interrupt_counter, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %51

51:                                               ; preds = %50, %2
  %52 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
  store ptr %52, ptr %37, align 8
  %53 = load ptr, ptr %37, align 8
  store ptr %53, ptr %38, align 8
  %54 = load ptr, ptr %38, align 8
  %55 = load ptr, ptr @C_stack_limit, align 8
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  %60 = load i64, ptr %3, align 8
  %61 = icmp sgt i64 %60, 9
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 9
  %64 = add nsw i32 75, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, ptr @C_scratch_usage, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sgt i64 %59, %67
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %51
  %74 = load i64, ptr %3, align 8
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_728, i32 noundef %75, ptr noundef %76) #4
  unreachable

77:                                               ; preds = %51
  %78 = alloca i8, i64 600, align 16
  store ptr %78, ptr %36, align 8
  %79 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 1), align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 2), align 16
  %83 = call i64 @C_mutate(ptr noundef %81, i64 noundef %82)
  store i64 %83, ptr %8, align 8
  %84 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %87, align 8
  %88 = load ptr, ptr %36, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  store i64 ptrtoint (ptr @f_731 to i64), ptr %89, align 8
  %90 = load ptr, ptr %36, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %91, align 8
  %92 = load ptr, ptr %36, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %36, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store ptr %95, ptr %36, align 8
  %96 = load i64, ptr %5, align 8
  %97 = call i64 @C_mutate(ptr noundef %86, i64 noundef %96)
  store i64 %97, ptr %9, align 8
  %98 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %101, align 8
  %102 = load ptr, ptr %36, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_761 to i64), ptr %103, align 8
  %104 = load ptr, ptr %36, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %105, align 8
  %106 = load ptr, ptr %36, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %36, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store ptr %109, ptr %36, align 8
  %110 = load i64, ptr %5, align 8
  %111 = call i64 @C_mutate(ptr noundef %100, i64 noundef %110)
  store i64 %111, ptr %10, align 8
  %112 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %115, align 8
  %116 = load ptr, ptr %36, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 ptrtoint (ptr @f_791 to i64), ptr %117, align 8
  %118 = load ptr, ptr %36, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %119, align 8
  %120 = load ptr, ptr %36, align 8
  %121 = ptrtoint ptr %120 to i64
  store i64 %121, ptr %5, align 8
  %122 = load ptr, ptr %36, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store ptr %123, ptr %36, align 8
  %124 = load i64, ptr %5, align 8
  %125 = call i64 @C_mutate(ptr noundef %114, i64 noundef %124)
  store i64 %125, ptr %11, align 8
  %126 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %129, align 8
  %130 = load ptr, ptr %36, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 ptrtoint (ptr @f_853 to i64), ptr %131, align 8
  %132 = load ptr, ptr %36, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %133, align 8
  %134 = load ptr, ptr %36, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %5, align 8
  %136 = load ptr, ptr %36, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 3
  store ptr %137, ptr %36, align 8
  %138 = load i64, ptr %5, align 8
  %139 = call i64 @C_mutate(ptr noundef %128, i64 noundef %138)
  store i64 %139, ptr %12, align 8
  %140 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 9), align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %143, align 8
  %144 = load ptr, ptr %36, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 1
  store i64 ptrtoint (ptr @f_959 to i64), ptr %145, align 8
  %146 = load ptr, ptr %36, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 ptrtoint (ptr @li4 to i64), ptr %147, align 8
  %148 = load ptr, ptr %36, align 8
  %149 = ptrtoint ptr %148 to i64
  store i64 %149, ptr %5, align 8
  %150 = load ptr, ptr %36, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 3
  store ptr %151, ptr %36, align 8
  %152 = load i64, ptr %5, align 8
  %153 = call i64 @C_mutate(ptr noundef %142, i64 noundef %152)
  store i64 %153, ptr %13, align 8
  %154 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  %157 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %157, align 8
  %158 = load ptr, ptr %36, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  store i64 ptrtoint (ptr @f_993 to i64), ptr %159, align 8
  %160 = load ptr, ptr %36, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %161, align 8
  %162 = load ptr, ptr %36, align 8
  %163 = ptrtoint ptr %162 to i64
  store i64 %163, ptr %5, align 8
  %164 = load ptr, ptr %36, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 3
  store ptr %165, ptr %36, align 8
  %166 = load i64, ptr %5, align 8
  %167 = call i64 @C_mutate(ptr noundef %156, i64 noundef %166)
  store i64 %167, ptr %14, align 8
  %168 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 13), align 8
  %169 = inttoptr i64 %168 to ptr
  %170 = getelementptr inbounds i64, ptr %169, i64 1
  %171 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %171, align 8
  %172 = load ptr, ptr %36, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 1
  store i64 ptrtoint (ptr @f_1023 to i64), ptr %173, align 8
  %174 = load ptr, ptr %36, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %175, align 8
  %176 = load ptr, ptr %36, align 8
  %177 = ptrtoint ptr %176 to i64
  store i64 %177, ptr %5, align 8
  %178 = load ptr, ptr %36, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 3
  store ptr %179, ptr %36, align 8
  %180 = load i64, ptr %5, align 8
  %181 = call i64 @C_mutate(ptr noundef %170, i64 noundef %180)
  store i64 %181, ptr %15, align 8
  %182 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %183 = inttoptr i64 %182 to ptr
  %184 = getelementptr inbounds i64, ptr %183, i64 1
  %185 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %185, align 8
  %186 = load ptr, ptr %36, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 1
  store i64 ptrtoint (ptr @f_1085 to i64), ptr %187, align 8
  %188 = load ptr, ptr %36, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %189, align 8
  %190 = load ptr, ptr %36, align 8
  %191 = ptrtoint ptr %190 to i64
  store i64 %191, ptr %5, align 8
  %192 = load ptr, ptr %36, align 8
  %193 = getelementptr inbounds i64, ptr %192, i64 3
  store ptr %193, ptr %36, align 8
  %194 = load i64, ptr %5, align 8
  %195 = call i64 @C_mutate(ptr noundef %184, i64 noundef %194)
  store i64 %195, ptr %16, align 8
  %196 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 16), align 16
  %197 = inttoptr i64 %196 to ptr
  %198 = getelementptr inbounds i64, ptr %197, i64 1
  %199 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %199, align 8
  %200 = load ptr, ptr %36, align 8
  %201 = getelementptr inbounds i64, ptr %200, i64 1
  store i64 ptrtoint (ptr @f_1105 to i64), ptr %201, align 8
  %202 = load ptr, ptr %36, align 8
  %203 = getelementptr inbounds i64, ptr %202, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %203, align 8
  %204 = load ptr, ptr %36, align 8
  %205 = ptrtoint ptr %204 to i64
  store i64 %205, ptr %5, align 8
  %206 = load ptr, ptr %36, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 3
  store ptr %207, ptr %36, align 8
  %208 = load i64, ptr %5, align 8
  %209 = call i64 @C_mutate(ptr noundef %198, i64 noundef %208)
  store i64 %209, ptr %17, align 8
  %210 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 17), align 8
  %211 = inttoptr i64 %210 to ptr
  %212 = getelementptr inbounds i64, ptr %211, i64 1
  %213 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %213, align 8
  %214 = load ptr, ptr %36, align 8
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  store i64 ptrtoint (ptr @f_1131 to i64), ptr %215, align 8
  %216 = load ptr, ptr %36, align 8
  %217 = getelementptr inbounds i64, ptr %216, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %217, align 8
  %218 = load ptr, ptr %36, align 8
  %219 = ptrtoint ptr %218 to i64
  store i64 %219, ptr %5, align 8
  %220 = load ptr, ptr %36, align 8
  %221 = getelementptr inbounds i64, ptr %220, i64 3
  store ptr %221, ptr %36, align 8
  %222 = load i64, ptr %5, align 8
  %223 = call i64 @C_mutate(ptr noundef %212, i64 noundef %222)
  store i64 %223, ptr %18, align 8
  %224 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 18), align 16
  %225 = inttoptr i64 %224 to ptr
  %226 = getelementptr inbounds i64, ptr %225, i64 1
  %227 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %227, align 8
  %228 = load ptr, ptr %36, align 8
  %229 = getelementptr inbounds i64, ptr %228, i64 1
  store i64 ptrtoint (ptr @f_1134 to i64), ptr %229, align 8
  %230 = load ptr, ptr %36, align 8
  %231 = getelementptr inbounds i64, ptr %230, i64 2
  store i64 ptrtoint (ptr @li11 to i64), ptr %231, align 8
  %232 = load ptr, ptr %36, align 8
  %233 = ptrtoint ptr %232 to i64
  store i64 %233, ptr %5, align 8
  %234 = load ptr, ptr %36, align 8
  %235 = getelementptr inbounds i64, ptr %234, i64 3
  store ptr %235, ptr %36, align 8
  %236 = load i64, ptr %5, align 8
  %237 = call i64 @C_mutate(ptr noundef %226, i64 noundef %236)
  store i64 %237, ptr %19, align 8
  %238 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 19), align 8
  %239 = inttoptr i64 %238 to ptr
  %240 = getelementptr inbounds i64, ptr %239, i64 1
  %241 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %241, align 8
  %242 = load ptr, ptr %36, align 8
  %243 = getelementptr inbounds i64, ptr %242, i64 1
  store i64 ptrtoint (ptr @f_1140 to i64), ptr %243, align 8
  %244 = load ptr, ptr %36, align 8
  %245 = getelementptr inbounds i64, ptr %244, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %245, align 8
  %246 = load ptr, ptr %36, align 8
  %247 = ptrtoint ptr %246 to i64
  store i64 %247, ptr %5, align 8
  %248 = load ptr, ptr %36, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 3
  store ptr %249, ptr %36, align 8
  %250 = load i64, ptr %5, align 8
  %251 = call i64 @C_mutate(ptr noundef %240, i64 noundef %250)
  store i64 %251, ptr %20, align 8
  %252 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 20), align 16
  %253 = inttoptr i64 %252 to ptr
  %254 = getelementptr inbounds i64, ptr %253, i64 1
  %255 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %255, align 8
  %256 = load ptr, ptr %36, align 8
  %257 = getelementptr inbounds i64, ptr %256, i64 1
  store i64 ptrtoint (ptr @f_1163 to i64), ptr %257, align 8
  %258 = load ptr, ptr %36, align 8
  %259 = getelementptr inbounds i64, ptr %258, i64 2
  store i64 ptrtoint (ptr @li13 to i64), ptr %259, align 8
  %260 = load ptr, ptr %36, align 8
  %261 = ptrtoint ptr %260 to i64
  store i64 %261, ptr %5, align 8
  %262 = load ptr, ptr %36, align 8
  %263 = getelementptr inbounds i64, ptr %262, i64 3
  store ptr %263, ptr %36, align 8
  %264 = load i64, ptr %5, align 8
  %265 = call i64 @C_mutate(ptr noundef %254, i64 noundef %264)
  store i64 %265, ptr %21, align 8
  %266 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 21), align 8
  %267 = inttoptr i64 %266 to ptr
  %268 = getelementptr inbounds i64, ptr %267, i64 1
  %269 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %269, align 8
  %270 = load ptr, ptr %36, align 8
  %271 = getelementptr inbounds i64, ptr %270, i64 1
  store i64 ptrtoint (ptr @f_1169 to i64), ptr %271, align 8
  %272 = load ptr, ptr %36, align 8
  %273 = getelementptr inbounds i64, ptr %272, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %273, align 8
  %274 = load ptr, ptr %36, align 8
  %275 = ptrtoint ptr %274 to i64
  store i64 %275, ptr %5, align 8
  %276 = load ptr, ptr %36, align 8
  %277 = getelementptr inbounds i64, ptr %276, i64 3
  store ptr %277, ptr %36, align 8
  %278 = load i64, ptr %5, align 8
  %279 = call i64 @C_mutate(ptr noundef %268, i64 noundef %278)
  store i64 %279, ptr %22, align 8
  %280 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 22), align 16
  %281 = inttoptr i64 %280 to ptr
  %282 = getelementptr inbounds i64, ptr %281, i64 1
  %283 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %283, align 8
  %284 = load ptr, ptr %36, align 8
  %285 = getelementptr inbounds i64, ptr %284, i64 1
  store i64 ptrtoint (ptr @f_1201 to i64), ptr %285, align 8
  %286 = load ptr, ptr %36, align 8
  %287 = getelementptr inbounds i64, ptr %286, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %287, align 8
  %288 = load ptr, ptr %36, align 8
  %289 = ptrtoint ptr %288 to i64
  store i64 %289, ptr %5, align 8
  %290 = load ptr, ptr %36, align 8
  %291 = getelementptr inbounds i64, ptr %290, i64 3
  store ptr %291, ptr %36, align 8
  %292 = load i64, ptr %5, align 8
  %293 = call i64 @C_mutate(ptr noundef %282, i64 noundef %292)
  store i64 %293, ptr %23, align 8
  %294 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 23), align 8
  %295 = inttoptr i64 %294 to ptr
  %296 = getelementptr inbounds i64, ptr %295, i64 1
  %297 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %297, align 8
  %298 = load ptr, ptr %36, align 8
  %299 = getelementptr inbounds i64, ptr %298, i64 1
  store i64 ptrtoint (ptr @f_1243 to i64), ptr %299, align 8
  %300 = load ptr, ptr %36, align 8
  %301 = getelementptr inbounds i64, ptr %300, i64 2
  store i64 ptrtoint (ptr @li16 to i64), ptr %301, align 8
  %302 = load ptr, ptr %36, align 8
  %303 = ptrtoint ptr %302 to i64
  store i64 %303, ptr %5, align 8
  %304 = load ptr, ptr %36, align 8
  %305 = getelementptr inbounds i64, ptr %304, i64 3
  store ptr %305, ptr %36, align 8
  %306 = load i64, ptr %5, align 8
  %307 = call i64 @C_mutate(ptr noundef %296, i64 noundef %306)
  store i64 %307, ptr %24, align 8
  %308 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 26), align 16
  %309 = inttoptr i64 %308 to ptr
  %310 = getelementptr inbounds i64, ptr %309, i64 1
  %311 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %311, align 8
  %312 = load ptr, ptr %36, align 8
  %313 = getelementptr inbounds i64, ptr %312, i64 1
  store i64 ptrtoint (ptr @f_1268 to i64), ptr %313, align 8
  %314 = load ptr, ptr %36, align 8
  %315 = getelementptr inbounds i64, ptr %314, i64 2
  store i64 ptrtoint (ptr @li21 to i64), ptr %315, align 8
  %316 = load ptr, ptr %36, align 8
  %317 = ptrtoint ptr %316 to i64
  store i64 %317, ptr %5, align 8
  %318 = load ptr, ptr %36, align 8
  %319 = getelementptr inbounds i64, ptr %318, i64 3
  store ptr %319, ptr %36, align 8
  %320 = load i64, ptr %5, align 8
  %321 = call i64 @C_mutate(ptr noundef %310, i64 noundef %320)
  store i64 %321, ptr %25, align 8
  %322 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 27), align 8
  %323 = inttoptr i64 %322 to ptr
  %324 = getelementptr inbounds i64, ptr %323, i64 1
  %325 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 28), align 16
  %326 = call i64 @C_fast_retrieve(i64 noundef %325)
  %327 = call i64 @C_mutate(ptr noundef %324, i64 noundef %326)
  store i64 %327, ptr %26, align 8
  %328 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
  %329 = inttoptr i64 %328 to ptr
  %330 = getelementptr inbounds i64, ptr %329, i64 1
  %331 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %331, align 8
  %332 = load ptr, ptr %36, align 8
  %333 = getelementptr inbounds i64, ptr %332, i64 1
  store i64 ptrtoint (ptr @f_1320 to i64), ptr %333, align 8
  %334 = load ptr, ptr %36, align 8
  %335 = getelementptr inbounds i64, ptr %334, i64 2
  store i64 ptrtoint (ptr @li23 to i64), ptr %335, align 8
  %336 = load ptr, ptr %36, align 8
  %337 = ptrtoint ptr %336 to i64
  store i64 %337, ptr %5, align 8
  %338 = load ptr, ptr %36, align 8
  %339 = getelementptr inbounds i64, ptr %338, i64 3
  store ptr %339, ptr %36, align 8
  %340 = load i64, ptr %5, align 8
  %341 = call i64 @C_mutate(ptr noundef %330, i64 noundef %340)
  store i64 %341, ptr %27, align 8
  %342 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %343 = inttoptr i64 %342 to ptr
  %344 = getelementptr inbounds i64, ptr %343, i64 1
  %345 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %345, align 8
  %346 = load ptr, ptr %36, align 8
  %347 = getelementptr inbounds i64, ptr %346, i64 1
  store i64 ptrtoint (ptr @f_1371 to i64), ptr %347, align 8
  %348 = load ptr, ptr %36, align 8
  %349 = getelementptr inbounds i64, ptr %348, i64 2
  store i64 ptrtoint (ptr @li24 to i64), ptr %349, align 8
  %350 = load ptr, ptr %36, align 8
  %351 = ptrtoint ptr %350 to i64
  store i64 %351, ptr %5, align 8
  %352 = load ptr, ptr %36, align 8
  %353 = getelementptr inbounds i64, ptr %352, i64 3
  store ptr %353, ptr %36, align 8
  %354 = load i64, ptr %5, align 8
  %355 = call i64 @C_mutate(ptr noundef %344, i64 noundef %354)
  store i64 %355, ptr %28, align 8
  %356 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), align 16
  %357 = inttoptr i64 %356 to ptr
  %358 = getelementptr inbounds i64, ptr %357, i64 1
  %359 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %359, align 8
  %360 = load ptr, ptr %36, align 8
  %361 = getelementptr inbounds i64, ptr %360, i64 1
  store i64 ptrtoint (ptr @f_1385 to i64), ptr %361, align 8
  %362 = load ptr, ptr %36, align 8
  %363 = getelementptr inbounds i64, ptr %362, i64 2
  store i64 ptrtoint (ptr @li27 to i64), ptr %363, align 8
  %364 = load ptr, ptr %36, align 8
  %365 = ptrtoint ptr %364 to i64
  store i64 %365, ptr %5, align 8
  %366 = load ptr, ptr %36, align 8
  %367 = getelementptr inbounds i64, ptr %366, i64 3
  store ptr %367, ptr %36, align 8
  %368 = load i64, ptr %5, align 8
  %369 = call i64 @C_mutate(ptr noundef %358, i64 noundef %368)
  store i64 %369, ptr %29, align 8
  %370 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 38), align 16
  %371 = inttoptr i64 %370 to ptr
  %372 = getelementptr inbounds i64, ptr %371, i64 1
  %373 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %373, align 8
  %374 = load ptr, ptr %36, align 8
  %375 = getelementptr inbounds i64, ptr %374, i64 1
  store i64 ptrtoint (ptr @f_1461 to i64), ptr %375, align 8
  %376 = load ptr, ptr %36, align 8
  %377 = getelementptr inbounds i64, ptr %376, i64 2
  store i64 ptrtoint (ptr @li31 to i64), ptr %377, align 8
  %378 = load ptr, ptr %36, align 8
  %379 = ptrtoint ptr %378 to i64
  store i64 %379, ptr %5, align 8
  %380 = load ptr, ptr %36, align 8
  %381 = getelementptr inbounds i64, ptr %380, i64 3
  store ptr %381, ptr %36, align 8
  %382 = load i64, ptr %5, align 8
  %383 = call i64 @C_mutate(ptr noundef %372, i64 noundef %382)
  store i64 %383, ptr %30, align 8
  %384 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 39), align 8
  %385 = inttoptr i64 %384 to ptr
  %386 = getelementptr inbounds i64, ptr %385, i64 1
  %387 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %387, align 8
  %388 = load ptr, ptr %36, align 8
  %389 = getelementptr inbounds i64, ptr %388, i64 1
  store i64 ptrtoint (ptr @f_1564 to i64), ptr %389, align 8
  %390 = load ptr, ptr %36, align 8
  %391 = getelementptr inbounds i64, ptr %390, i64 2
  store i64 ptrtoint (ptr @li35 to i64), ptr %391, align 8
  %392 = load ptr, ptr %36, align 8
  %393 = ptrtoint ptr %392 to i64
  store i64 %393, ptr %5, align 8
  %394 = load ptr, ptr %36, align 8
  %395 = getelementptr inbounds i64, ptr %394, i64 3
  store ptr %395, ptr %36, align 8
  %396 = load i64, ptr %5, align 8
  %397 = call i64 @C_mutate(ptr noundef %386, i64 noundef %396)
  store i64 %397, ptr %31, align 8
  %398 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %399 = inttoptr i64 %398 to ptr
  %400 = getelementptr inbounds i64, ptr %399, i64 1
  %401 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %401, align 8
  %402 = load ptr, ptr %36, align 8
  %403 = getelementptr inbounds i64, ptr %402, i64 1
  store i64 ptrtoint (ptr @f_1666 to i64), ptr %403, align 8
  %404 = load ptr, ptr %36, align 8
  %405 = getelementptr inbounds i64, ptr %404, i64 2
  store i64 ptrtoint (ptr @li44 to i64), ptr %405, align 8
  %406 = load ptr, ptr %36, align 8
  %407 = ptrtoint ptr %406 to i64
  store i64 %407, ptr %5, align 8
  %408 = load ptr, ptr %36, align 8
  %409 = getelementptr inbounds i64, ptr %408, i64 3
  store ptr %409, ptr %36, align 8
  %410 = load i64, ptr %5, align 8
  %411 = call i64 @C_mutate(ptr noundef %400, i64 noundef %410)
  store i64 %411, ptr %32, align 8
  %412 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 46), align 16
  %413 = inttoptr i64 %412 to ptr
  %414 = getelementptr inbounds i64, ptr %413, i64 1
  %415 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %415, align 8
  %416 = load ptr, ptr %36, align 8
  %417 = getelementptr inbounds i64, ptr %416, i64 1
  store i64 ptrtoint (ptr @f_1888 to i64), ptr %417, align 8
  %418 = load ptr, ptr %36, align 8
  %419 = getelementptr inbounds i64, ptr %418, i64 2
  store i64 ptrtoint (ptr @li45 to i64), ptr %419, align 8
  %420 = load ptr, ptr %36, align 8
  %421 = ptrtoint ptr %420 to i64
  store i64 %421, ptr %5, align 8
  %422 = load ptr, ptr %36, align 8
  %423 = getelementptr inbounds i64, ptr %422, i64 3
  store ptr %423, ptr %36, align 8
  %424 = load i64, ptr %5, align 8
  %425 = call i64 @C_mutate(ptr noundef %414, i64 noundef %424)
  store i64 %425, ptr %33, align 8
  %426 = load ptr, ptr %36, align 8
  store i64 2594073385365405698, ptr %426, align 8
  %427 = load ptr, ptr %36, align 8
  %428 = getelementptr inbounds i64, ptr %427, i64 1
  store i64 ptrtoint (ptr @f_2005 to i64), ptr %428, align 8
  %429 = load i64, ptr %6, align 8
  %430 = inttoptr i64 %429 to ptr
  %431 = getelementptr inbounds i64, ptr %430, i64 2
  %432 = load i64, ptr %431, align 8
  %433 = load ptr, ptr %36, align 8
  %434 = getelementptr inbounds i64, ptr %433, i64 2
  store i64 %432, ptr %434, align 8
  %435 = load ptr, ptr %36, align 8
  %436 = ptrtoint ptr %435 to i64
  store i64 %436, ptr %5, align 8
  %437 = load ptr, ptr %36, align 8
  %438 = getelementptr inbounds i64, ptr %437, i64 3
  store ptr %438, ptr %36, align 8
  %439 = load i64, ptr %5, align 8
  store i64 %439, ptr %34, align 8
  call void @C_trace(ptr noundef @.str.61)
  %440 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 63), align 8
  %441 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %440)
  store ptr %441, ptr %39, align 8
  %442 = load ptr, ptr %4, align 8
  store ptr %442, ptr %40, align 8
  %443 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 63), align 8
  %444 = inttoptr i64 %443 to ptr
  %445 = getelementptr inbounds i64, ptr %444, i64 1
  %446 = load i64, ptr %445, align 8
  %447 = load ptr, ptr %40, align 8
  %448 = getelementptr inbounds i64, ptr %447, i64 0
  store i64 %446, ptr %448, align 8
  %449 = load i64, ptr %34, align 8
  %450 = load ptr, ptr %40, align 8
  %451 = getelementptr inbounds i64, ptr %450, i64 1
  store i64 %449, ptr %451, align 8
  %452 = load ptr, ptr %39, align 8
  %453 = load ptr, ptr %40, align 8
  call void %452(i64 noundef 2, ptr noundef %453) #4
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
define internal void @f_731(i64 noundef %0, ptr noundef %1) #2 {
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
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
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 3
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %9, align 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, ptr %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %39, i32 noundef 4, i64 noundef %40) #4
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
  store ptr %47, ptr %18, align 8
  %48 = load ptr, ptr %18, align 8
  store ptr %48, ptr %19, align 8
  %49 = load ptr, ptr %19, align 8
  %50 = load ptr, ptr @C_stack_limit, align 8
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64, ptr %3, align 8
  %56 = icmp sgt i64 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = add nsw i32 61, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, ptr @C_scratch_usage, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp sgt i64 %54, %62
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, ptr %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_731, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 488, align 16
  store ptr %73, ptr %17, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_car(i64 noundef %74)
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %9, align 8
  %77 = call i64 @C_i_car(i64 noundef %76)
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %10, align 8
  %79 = load i64, ptr %11, align 8
  %80 = call i64 @C_s_a_i_plus(ptr noundef %17, i64 noundef 2, i64 noundef %78, i64 noundef %79)
  store i64 %80, ptr %12, align 8
  %81 = load i64, ptr %8, align 8
  %82 = call i64 @C_i_cdr(i64 noundef %81)
  store i64 %82, ptr %13, align 8
  %83 = load i64, ptr %9, align 8
  %84 = call i64 @C_i_cdr(i64 noundef %83)
  store i64 %84, ptr %14, align 8
  %85 = load i64, ptr %13, align 8
  %86 = load i64, ptr %14, align 8
  %87 = call i64 @C_s_a_i_plus(ptr noundef %17, i64 noundef 2, i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %15, align 8
  %88 = load i64, ptr %7, align 8
  store i64 %88, ptr %16, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %20, align 8
  %90 = load i64, ptr %16, align 8
  %91 = load ptr, ptr %20, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %17, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %21, align 8
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 216172782113783810, ptr %96, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store ptr %98, ptr %17, align 8
  %99 = load i64, ptr %12, align 8
  %100 = load i64, ptr %21, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds %struct.C_block_struct, ptr %101, i32 0, i32 1
  %103 = getelementptr inbounds [0 x i64], ptr %102, i64 0, i64 0
  store i64 %99, ptr %103, align 8
  %104 = load i64, ptr %15, align 8
  %105 = load i64, ptr %21, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds %struct.C_block_struct, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [0 x i64], ptr %107, i64 0, i64 1
  store i64 %104, ptr %108, align 8
  %109 = load i64, ptr %21, align 8
  store i64 %109, ptr %22, align 8
  %110 = load i64, ptr %22, align 8
  %111 = load ptr, ptr %20, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %16, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = load ptr, ptr %20, align 8
  call void %117(i64 noundef 2, ptr noundef %118) #4
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
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
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 3
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %9, align 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, ptr %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %39, i32 noundef 4, i64 noundef %40) #4
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
  store ptr %47, ptr %18, align 8
  %48 = load ptr, ptr %18, align 8
  store ptr %48, ptr %19, align 8
  %49 = load ptr, ptr %19, align 8
  %50 = load ptr, ptr @C_stack_limit, align 8
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64, ptr %3, align 8
  %56 = icmp sgt i64 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = add nsw i32 61, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, ptr @C_scratch_usage, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp sgt i64 %54, %62
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, ptr %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_761, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 488, align 16
  store ptr %73, ptr %17, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_car(i64 noundef %74)
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %9, align 8
  %77 = call i64 @C_i_car(i64 noundef %76)
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %10, align 8
  %79 = load i64, ptr %11, align 8
  %80 = call i64 @C_s_a_i_minus(ptr noundef %17, i64 noundef 2, i64 noundef %78, i64 noundef %79)
  store i64 %80, ptr %12, align 8
  %81 = load i64, ptr %8, align 8
  %82 = call i64 @C_i_cdr(i64 noundef %81)
  store i64 %82, ptr %13, align 8
  %83 = load i64, ptr %9, align 8
  %84 = call i64 @C_i_cdr(i64 noundef %83)
  store i64 %84, ptr %14, align 8
  %85 = load i64, ptr %13, align 8
  %86 = load i64, ptr %14, align 8
  %87 = call i64 @C_s_a_i_minus(ptr noundef %17, i64 noundef 2, i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %15, align 8
  %88 = load i64, ptr %7, align 8
  store i64 %88, ptr %16, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %20, align 8
  %90 = load i64, ptr %16, align 8
  %91 = load ptr, ptr %20, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %17, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %21, align 8
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 216172782113783810, ptr %96, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store ptr %98, ptr %17, align 8
  %99 = load i64, ptr %12, align 8
  %100 = load i64, ptr %21, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds %struct.C_block_struct, ptr %101, i32 0, i32 1
  %103 = getelementptr inbounds [0 x i64], ptr %102, i64 0, i64 0
  store i64 %99, ptr %103, align 8
  %104 = load i64, ptr %15, align 8
  %105 = load i64, ptr %21, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds %struct.C_block_struct, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [0 x i64], ptr %107, i64 0, i64 1
  store i64 %104, ptr %108, align 8
  %109 = load i64, ptr %21, align 8
  store i64 %109, ptr %22, align 8
  %110 = load i64, ptr %22, align 8
  %111 = load ptr, ptr %20, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %16, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = load ptr, ptr %20, align 8
  call void %117(i64 noundef 2, ptr noundef %118) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_791(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %6, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds i64, ptr %34, i64 1
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %7, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 2
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %8, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 3
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %9, align 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp ne i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i64, ptr %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %47, i32 noundef 4, i64 noundef %48) #4
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
  %55 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
  store ptr %55, ptr %26, align 8
  %56 = load ptr, ptr %26, align 8
  store ptr %56, ptr %27, align 8
  %57 = load ptr, ptr %27, align 8
  %58 = load ptr, ptr @C_stack_limit, align 8
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = load i64, ptr %3, align 8
  %64 = icmp sgt i64 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = add nsw i32 193, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, ptr @C_scratch_usage, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp sgt i64 %62, %70
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %54
  %77 = load i64, ptr %3, align 8
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_791, i32 noundef %78, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %54
  %81 = alloca i8, i64 1544, align 16
  store ptr %81, ptr %25, align 8
  %82 = load i64, ptr %8, align 8
  %83 = call i64 @C_i_car(i64 noundef %82)
  store i64 %83, ptr %10, align 8
  %84 = load i64, ptr %9, align 8
  %85 = call i64 @C_i_car(i64 noundef %84)
  store i64 %85, ptr %11, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load i64, ptr %11, align 8
  %88 = call i64 @C_s_a_i_times(ptr noundef %25, i64 noundef 2, i64 noundef %86, i64 noundef %87)
  store i64 %88, ptr %12, align 8
  %89 = load i64, ptr %8, align 8
  %90 = call i64 @C_i_cdr(i64 noundef %89)
  store i64 %90, ptr %13, align 8
  %91 = load i64, ptr %9, align 8
  %92 = call i64 @C_i_cdr(i64 noundef %91)
  store i64 %92, ptr %14, align 8
  %93 = load i64, ptr %13, align 8
  %94 = load i64, ptr %14, align 8
  %95 = call i64 @C_s_a_i_times(ptr noundef %25, i64 noundef 2, i64 noundef %93, i64 noundef %94)
  store i64 %95, ptr %15, align 8
  %96 = load i64, ptr %12, align 8
  %97 = load i64, ptr %15, align 8
  %98 = call i64 @C_s_a_i_minus(ptr noundef %25, i64 noundef 2, i64 noundef %96, i64 noundef %97)
  store i64 %98, ptr %16, align 8
  %99 = load i64, ptr %8, align 8
  %100 = call i64 @C_i_car(i64 noundef %99)
  store i64 %100, ptr %17, align 8
  %101 = load i64, ptr %9, align 8
  %102 = call i64 @C_i_cdr(i64 noundef %101)
  store i64 %102, ptr %18, align 8
  %103 = load i64, ptr %17, align 8
  %104 = load i64, ptr %18, align 8
  %105 = call i64 @C_s_a_i_times(ptr noundef %25, i64 noundef 2, i64 noundef %103, i64 noundef %104)
  store i64 %105, ptr %19, align 8
  %106 = load i64, ptr %8, align 8
  %107 = call i64 @C_i_cdr(i64 noundef %106)
  store i64 %107, ptr %20, align 8
  %108 = load i64, ptr %9, align 8
  %109 = call i64 @C_i_car(i64 noundef %108)
  store i64 %109, ptr %21, align 8
  %110 = load i64, ptr %20, align 8
  %111 = load i64, ptr %21, align 8
  %112 = call i64 @C_s_a_i_times(ptr noundef %25, i64 noundef 2, i64 noundef %110, i64 noundef %111)
  store i64 %112, ptr %22, align 8
  %113 = load i64, ptr %19, align 8
  %114 = load i64, ptr %22, align 8
  %115 = call i64 @C_s_a_i_plus(ptr noundef %25, i64 noundef 2, i64 noundef %113, i64 noundef %114)
  store i64 %115, ptr %23, align 8
  %116 = load i64, ptr %7, align 8
  store i64 %116, ptr %24, align 8
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %28, align 8
  %118 = load i64, ptr %24, align 8
  %119 = load ptr, ptr %28, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %25, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %29, align 8
  %123 = load ptr, ptr %25, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 216172782113783810, ptr %124, align 8
  %125 = load ptr, ptr %25, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  store ptr %126, ptr %25, align 8
  %127 = load i64, ptr %16, align 8
  %128 = load i64, ptr %29, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds %struct.C_block_struct, ptr %129, i32 0, i32 1
  %131 = getelementptr inbounds [0 x i64], ptr %130, i64 0, i64 0
  store i64 %127, ptr %131, align 8
  %132 = load i64, ptr %23, align 8
  %133 = load i64, ptr %29, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds %struct.C_block_struct, ptr %134, i32 0, i32 1
  %136 = getelementptr inbounds [0 x i64], ptr %135, i64 0, i64 1
  store i64 %132, ptr %136, align 8
  %137 = load i64, ptr %29, align 8
  store i64 %137, ptr %30, align 8
  %138 = load i64, ptr %30, align 8
  %139 = load ptr, ptr %28, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  store i64 %138, ptr %140, align 8
  %141 = load i64, ptr %24, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds i64, ptr %142, i64 1
  %144 = load i64, ptr %143, align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = load ptr, ptr %28, align 8
  call void %145(i64 noundef 2, ptr noundef %146) #4
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
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds i64, ptr %34, i64 0
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %6, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 1
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %7, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 2
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 3
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %9, align 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp ne i64 %46, 4
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i64, ptr %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %50, i32 noundef 4, i64 noundef %51) #4
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
  %58 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
  store ptr %58, ptr %27, align 8
  %59 = load ptr, ptr %27, align 8
  store ptr %59, ptr %28, align 8
  %60 = load ptr, ptr %28, align 8
  %61 = load ptr, ptr @C_stack_limit, align 8
  %62 = ptrtoint ptr %60 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = load i64, ptr %3, align 8
  %67 = icmp sgt i64 %66, 3
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 3
  %70 = add nsw i32 196, %69
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
  call void @C_save_and_reclaim(ptr noundef @f_853, i32 noundef %81, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %57
  %84 = alloca i8, i64 1568, align 16
  store ptr %84, ptr %26, align 8
  %85 = load i64, ptr %9, align 8
  %86 = call i64 @C_i_car(i64 noundef %85)
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %9, align 8
  %88 = call i64 @C_i_car(i64 noundef %87)
  store i64 %88, ptr %11, align 8
  %89 = load i64, ptr %10, align 8
  %90 = load i64, ptr %11, align 8
  %91 = call i64 @C_s_a_i_times(ptr noundef %26, i64 noundef 2, i64 noundef %89, i64 noundef %90)
  store i64 %91, ptr %12, align 8
  %92 = load i64, ptr %9, align 8
  %93 = call i64 @C_i_cdr(i64 noundef %92)
  store i64 %93, ptr %13, align 8
  %94 = load i64, ptr %9, align 8
  %95 = call i64 @C_i_cdr(i64 noundef %94)
  store i64 %95, ptr %14, align 8
  %96 = load i64, ptr %13, align 8
  %97 = load i64, ptr %14, align 8
  %98 = call i64 @C_s_a_i_times(ptr noundef %26, i64 noundef 2, i64 noundef %96, i64 noundef %97)
  store i64 %98, ptr %15, align 8
  %99 = load i64, ptr %12, align 8
  %100 = load i64, ptr %15, align 8
  %101 = call i64 @C_s_a_i_plus(ptr noundef %26, i64 noundef 2, i64 noundef %99, i64 noundef %100)
  store i64 %101, ptr %16, align 8
  %102 = load i64, ptr %16, align 8
  %103 = call i64 @C_i_zerop(i64 noundef %102)
  %104 = icmp ne i64 %103, 6
  br i1 %104, label %105, label %137

105:                                              ; preds = %83
  %106 = load i64, ptr %7, align 8
  store i64 %106, ptr %17, align 8
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %29, align 8
  %108 = load i64, ptr %17, align 8
  %109 = load ptr, ptr %29, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %26, align 8
  %112 = ptrtoint ptr %111 to i64
  store i64 %112, ptr %30, align 8
  %113 = load ptr, ptr %26, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 216172782113783810, ptr %114, align 8
  %115 = load ptr, ptr %26, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store ptr %116, ptr %26, align 8
  %117 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %118 = load i64, ptr %30, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds %struct.C_block_struct, ptr %119, i32 0, i32 1
  %121 = getelementptr inbounds [0 x i64], ptr %120, i64 0, i64 0
  store i64 %117, ptr %121, align 8
  %122 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %123 = load i64, ptr %30, align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds %struct.C_block_struct, ptr %124, i32 0, i32 1
  %126 = getelementptr inbounds [0 x i64], ptr %125, i64 0, i64 1
  store i64 %122, ptr %126, align 8
  %127 = load i64, ptr %30, align 8
  store i64 %127, ptr %31, align 8
  %128 = load i64, ptr %31, align 8
  %129 = load ptr, ptr %29, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %17, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  %134 = load i64, ptr %133, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = load ptr, ptr %29, align 8
  call void %135(i64 noundef 2, ptr noundef %136) #4
  unreachable

137:                                              ; preds = %83
  %138 = load ptr, ptr %26, align 8
  store i64 2594073385365405701, ptr %138, align 8
  %139 = load ptr, ptr %26, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  store i64 ptrtoint (ptr @f_873 to i64), ptr %140, align 8
  %141 = load i64, ptr %7, align 8
  %142 = load ptr, ptr %26, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 2
  store i64 %141, ptr %143, align 8
  %144 = load i64, ptr %8, align 8
  %145 = load ptr, ptr %26, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 3
  store i64 %144, ptr %146, align 8
  %147 = load i64, ptr %9, align 8
  %148 = load ptr, ptr %26, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 4
  store i64 %147, ptr %149, align 8
  %150 = load i64, ptr %16, align 8
  %151 = load ptr, ptr %26, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 5
  store i64 %150, ptr %152, align 8
  %153 = load ptr, ptr %26, align 8
  %154 = ptrtoint ptr %153 to i64
  store i64 %154, ptr %5, align 8
  %155 = load ptr, ptr %26, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 6
  store ptr %156, ptr %26, align 8
  %157 = load i64, ptr %5, align 8
  store i64 %157, ptr %17, align 8
  %158 = load i64, ptr %8, align 8
  %159 = call i64 @C_i_car(i64 noundef %158)
  store i64 %159, ptr %18, align 8
  %160 = load i64, ptr %9, align 8
  %161 = call i64 @C_i_car(i64 noundef %160)
  store i64 %161, ptr %19, align 8
  %162 = load i64, ptr %18, align 8
  %163 = load i64, ptr %19, align 8
  %164 = call i64 @C_s_a_i_times(ptr noundef %26, i64 noundef 2, i64 noundef %162, i64 noundef %163)
  store i64 %164, ptr %20, align 8
  %165 = load i64, ptr %8, align 8
  %166 = call i64 @C_i_cdr(i64 noundef %165)
  store i64 %166, ptr %21, align 8
  %167 = load i64, ptr %9, align 8
  %168 = call i64 @C_i_cdr(i64 noundef %167)
  store i64 %168, ptr %22, align 8
  %169 = load i64, ptr %21, align 8
  %170 = load i64, ptr %22, align 8
  %171 = call i64 @C_s_a_i_times(ptr noundef %26, i64 noundef 2, i64 noundef %169, i64 noundef %170)
  store i64 %171, ptr %23, align 8
  %172 = load i64, ptr %20, align 8
  %173 = load i64, ptr %23, align 8
  %174 = call i64 @C_s_a_i_plus(ptr noundef %26, i64 noundef 2, i64 noundef %172, i64 noundef %173)
  store i64 %174, ptr %24, align 8
  call void @C_trace(ptr noundef @.str.75)
  %175 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %176 = inttoptr i64 %175 to ptr
  %177 = getelementptr inbounds i64, ptr %176, i64 1
  %178 = load i64, ptr %177, align 8
  %179 = call ptr @C_fast_retrieve_proc(i64 noundef %178)
  store ptr %179, ptr %32, align 8
  %180 = load ptr, ptr %4, align 8
  store ptr %180, ptr %33, align 8
  %181 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %182 = inttoptr i64 %181 to ptr
  %183 = getelementptr inbounds i64, ptr %182, i64 1
  %184 = load i64, ptr %183, align 8
  %185 = load ptr, ptr %33, align 8
  %186 = getelementptr inbounds i64, ptr %185, i64 0
  store i64 %184, ptr %186, align 8
  %187 = load i64, ptr %17, align 8
  %188 = load ptr, ptr %33, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 1
  store i64 %187, ptr %189, align 8
  %190 = load i64, ptr %24, align 8
  %191 = load ptr, ptr %33, align 8
  %192 = getelementptr inbounds i64, ptr %191, i64 2
  store i64 %190, ptr %192, align 8
  %193 = load i64, ptr %16, align 8
  %194 = load ptr, ptr %33, align 8
  %195 = getelementptr inbounds i64, ptr %194, i64 3
  store i64 %193, ptr %195, align 8
  %196 = load ptr, ptr %32, align 8
  %197 = load ptr, ptr %33, align 8
  call void %196(i64 noundef 4, ptr noundef %197) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_959(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = load i64, ptr %3, align 8
  %32 = icmp ne i64 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, ptr %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %35, i32 noundef 3, i64 noundef %36) #4
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
  store ptr %43, ptr %18, align 8
  %44 = load ptr, ptr %18, align 8
  store ptr %44, ptr %19, align 8
  %45 = load ptr, ptr %19, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 2
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 2
  %55 = add nsw i32 95, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_959, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 760, align 16
  store ptr %69, ptr %17, align 8
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_i_car(i64 noundef %70)
  store i64 %71, ptr %9, align 8
  %72 = load i64, ptr %8, align 8
  %73 = call i64 @C_i_car(i64 noundef %72)
  store i64 %73, ptr %10, align 8
  %74 = load i64, ptr %9, align 8
  %75 = load i64, ptr %10, align 8
  %76 = call i64 @C_s_a_i_times(ptr noundef %17, i64 noundef 2, i64 noundef %74, i64 noundef %75)
  store i64 %76, ptr %11, align 8
  %77 = load i64, ptr %8, align 8
  %78 = call i64 @C_i_cdr(i64 noundef %77)
  store i64 %78, ptr %12, align 8
  %79 = load i64, ptr %8, align 8
  %80 = call i64 @C_i_cdr(i64 noundef %79)
  store i64 %80, ptr %13, align 8
  %81 = load i64, ptr %12, align 8
  %82 = load i64, ptr %13, align 8
  %83 = call i64 @C_s_a_i_times(ptr noundef %17, i64 noundef 2, i64 noundef %81, i64 noundef %82)
  store i64 %83, ptr %14, align 8
  %84 = load i64, ptr %11, align 8
  %85 = load i64, ptr %14, align 8
  %86 = call i64 @C_s_a_i_plus(ptr noundef %17, i64 noundef 2, i64 noundef %84, i64 noundef %85)
  store i64 %86, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.77)
  %87 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 10), align 16
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = call ptr @C_fast_retrieve_proc(i64 noundef %90)
  store ptr %91, ptr %20, align 8
  %92 = load ptr, ptr %4, align 8
  store ptr %92, ptr %21, align 8
  %93 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 10), align 16
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %21, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %7, align 8
  %100 = load ptr, ptr %21, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %15, align 8
  %103 = load ptr, ptr %21, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = load ptr, ptr %21, align 8
  call void %105(i64 noundef 3, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_993(i64 noundef %0, ptr noundef %1) #2 {
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
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
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
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  %56 = add nsw i32 11, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, ptr @C_scratch_usage, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp sgt i64 %51, %59
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i64, ptr %3, align 8
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_993, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = alloca i8, i64 88, align 16
  store ptr %70, ptr %15, align 8
  %71 = load ptr, ptr %15, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %18, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 216172782113783810, ptr %74, align 8
  %75 = load ptr, ptr %15, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store ptr %76, ptr %15, align 8
  %77 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 12), align 16
  %78 = load i64, ptr %18, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 0
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %83 = load i64, ptr %18, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  store i64 %82, ptr %86, align 8
  %87 = load i64, ptr %18, align 8
  store i64 %87, ptr %19, align 8
  %88 = load i64, ptr %19, align 8
  store i64 %88, ptr %10, align 8
  store i64 30, ptr %11, align 8
  %89 = load ptr, ptr %15, align 8
  store i64 1, ptr %89, align 8
  %90 = load i64, ptr %11, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store ptr %96, ptr %15, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %12, align 8
  %98 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %98, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 ptrtoint (ptr @f_1003 to i64), ptr %100, align 8
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %12, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %8, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 5
  store i64 ptrtoint (ptr @li5 to i64), ptr %111, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 6
  store ptr %115, ptr %15, align 8
  %116 = load i64, ptr %5, align 8
  %117 = load i64, ptr %12, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds %struct.C_block_struct, ptr %118, i32 0, i32 1
  %120 = getelementptr inbounds [0 x i64], ptr %119, i64 0, i64 0
  store i64 %116, ptr %120, align 8
  store i64 %116, ptr %13, align 8
  %121 = load i64, ptr %12, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  store i64 %124, ptr %14, align 8
  %125 = load i64, ptr %14, align 8
  %126 = load i64, ptr %7, align 8
  %127 = load i64, ptr %10, align 8
  call void @f_1003(i64 noundef %125, i64 noundef %126, i64 noundef 1, i64 noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1023(i64 noundef %0, ptr noundef %1) #2 {
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
  store ptr %47, ptr %19, align 8
  %48 = load ptr, ptr %19, align 8
  store ptr %48, ptr %20, align 8
  %49 = load ptr, ptr %20, align 8
  %50 = load ptr, ptr @C_stack_limit, align 8
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64, ptr %3, align 8
  %56 = icmp sgt i64 %55, 3
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 3
  %59 = add nsw i32 100, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, ptr @C_scratch_usage, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp sgt i64 %54, %62
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, ptr %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1023, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 800, align 16
  store ptr %73, ptr %18, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_car(i64 noundef %74)
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %8, align 8
  %77 = call i64 @C_i_car(i64 noundef %76)
  store i64 %77, ptr %10, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load i64, ptr %10, align 8
  %80 = call i64 @C_s_a_i_times(ptr noundef %18, i64 noundef 2, i64 noundef %78, i64 noundef %79)
  store i64 %80, ptr %11, align 8
  %81 = load i64, ptr %8, align 8
  %82 = call i64 @C_i_cdr(i64 noundef %81)
  store i64 %82, ptr %12, align 8
  %83 = load i64, ptr %8, align 8
  %84 = call i64 @C_i_cdr(i64 noundef %83)
  store i64 %84, ptr %13, align 8
  %85 = load i64, ptr %12, align 8
  %86 = load i64, ptr %13, align 8
  %87 = call i64 @C_s_a_i_times(ptr noundef %18, i64 noundef 2, i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %14, align 8
  %88 = load i64, ptr %11, align 8
  %89 = load i64, ptr %14, align 8
  %90 = call i64 @C_s_a_i_plus(ptr noundef %18, i64 noundef 2, i64 noundef %88, i64 noundef %89)
  store i64 %90, ptr %15, align 8
  %91 = load i64, ptr %15, align 8
  %92 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 14), align 16
  %93 = call i64 @C_i_lessp(i64 noundef %91, i64 noundef %92)
  %94 = icmp ne i64 %93, 6
  br i1 %94, label %95, label %127

95:                                               ; preds = %72
  %96 = load i64, ptr %7, align 8
  store i64 %96, ptr %16, align 8
  %97 = load ptr, ptr %4, align 8
  store ptr %97, ptr %21, align 8
  %98 = load i64, ptr %16, align 8
  %99 = load ptr, ptr %21, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 0
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %18, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %22, align 8
  %103 = load ptr, ptr %18, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 0
  store i64 216172782113783810, ptr %104, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store ptr %106, ptr %18, align 8
  %107 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %108 = load i64, ptr %22, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds %struct.C_block_struct, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [0 x i64], ptr %110, i64 0, i64 0
  store i64 %107, ptr %111, align 8
  %112 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %113 = load i64, ptr %22, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds %struct.C_block_struct, ptr %114, i32 0, i32 1
  %116 = getelementptr inbounds [0 x i64], ptr %115, i64 0, i64 1
  store i64 %112, ptr %116, align 8
  %117 = load i64, ptr %22, align 8
  store i64 %117, ptr %23, align 8
  %118 = load i64, ptr %23, align 8
  %119 = load ptr, ptr %21, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %16, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = load ptr, ptr %21, align 8
  call void %125(i64 noundef 2, ptr noundef %126) #4
  unreachable

127:                                              ; preds = %72
  %128 = load ptr, ptr %18, align 8
  store i64 2594073385365405700, ptr %128, align 8
  %129 = load ptr, ptr %18, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 ptrtoint (ptr @f_1043 to i64), ptr %130, align 8
  %131 = load i64, ptr %7, align 8
  %132 = load ptr, ptr %18, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %15, align 8
  %135 = load ptr, ptr %18, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 3
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %8, align 8
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 4
  store i64 %137, ptr %139, align 8
  %140 = load ptr, ptr %18, align 8
  %141 = ptrtoint ptr %140 to i64
  store i64 %141, ptr %5, align 8
  %142 = load ptr, ptr %18, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 5
  store ptr %143, ptr %18, align 8
  %144 = load i64, ptr %5, align 8
  store i64 %144, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.80)
  %145 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = call ptr @C_fast_retrieve_proc(i64 noundef %148)
  store ptr %149, ptr %24, align 8
  %150 = load i64, ptr %3, align 8
  %151 = icmp sge i64 %150, 4
  br i1 %151, label %152, label %154

152:                                              ; preds = %127
  %153 = load ptr, ptr %4, align 8
  store ptr %153, ptr %25, align 8
  br label %156

154:                                              ; preds = %127
  %155 = alloca i8, i64 32, align 16
  store ptr %155, ptr %25, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  %160 = load i64, ptr %159, align 8
  %161 = load ptr, ptr %25, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 0
  store i64 %160, ptr %162, align 8
  %163 = load i64, ptr %16, align 8
  %164 = load ptr, ptr %25, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 %163, ptr %165, align 8
  %166 = load i64, ptr %8, align 8
  %167 = call i64 @C_i_car(i64 noundef %166)
  %168 = load ptr, ptr %25, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 2
  store i64 %167, ptr %169, align 8
  %170 = load i64, ptr %15, align 8
  %171 = load ptr, ptr %25, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 3
  store i64 %170, ptr %172, align 8
  %173 = load ptr, ptr %24, align 8
  %174 = load ptr, ptr %25, align 8
  call void %173(i64 noundef 4, ptr noundef %174) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1085(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = load i64, ptr %3, align 8
  %28 = icmp ne i64 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, ptr %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %31, i32 noundef 3, i64 noundef %32) #4
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
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
  %51 = add nsw i32 33, %50
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
  call void @C_save_and_reclaim(ptr noundef @f_1085, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = alloca i8, i64 264, align 16
  store ptr %65, ptr %12, align 8
  %66 = load i64, ptr %8, align 8
  %67 = call i64 @C_i_less_or_equalp(i64 noundef %66, i64 noundef 3)
  %68 = icmp ne i64 %67, 6
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i64, ptr %7, align 8
  store i64 %70, ptr %9, align 8
  %71 = load ptr, ptr %4, align 8
  store ptr %71, ptr %15, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %15, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 3, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = load ptr, ptr %15, align 8
  call void %81(i64 noundef 2, ptr noundef %82) #4
  unreachable

83:                                               ; preds = %64
  %84 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 ptrtoint (ptr @f_1099 to i64), ptr %86, align 8
  %87 = load i64, ptr %7, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %8, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %12, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store ptr %96, ptr %12, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %9, align 8
  %98 = load i64, ptr %8, align 8
  %99 = call i64 @C_s_a_i_minus(ptr noundef %12, i64 noundef 2, i64 noundef %98, i64 noundef 3)
  store i64 %99, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.82)
  %100 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %101 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %100)
  store ptr %101, ptr %16, align 8
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %17, align 8
  %103 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %17, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %9, align 8
  %110 = load ptr, ptr %17, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %10, align 8
  %113 = load ptr, ptr %17, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %16, align 8
  %116 = load ptr, ptr %17, align 8
  call void %115(i64 noundef 3, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1105(i64 noundef %0, ptr noundef %1) #2 {
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
  %53 = add nsw i32 5, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, ptr @C_scratch_usage, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %48, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, ptr %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1105, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1113 to i64), ptr %70, align 8
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
  call void @C_trace(ptr noundef @.str.83)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
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
define internal void @f_1131(i64 noundef %0, ptr noundef %1) #2 {
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
  %19 = load i64, ptr %3, align 8
  %20 = icmp ne i64 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, ptr %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %23, i32 noundef 2, i64 noundef %24) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i64, ptr @C_timer_interrupt_counter, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr @C_timer_interrupt_counter, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @C_raise_interrupt(i32 noundef 255)
  br label %30

30:                                               ; preds = %29, %25
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
  store ptr %31, ptr %10, align 8
  %32 = load ptr, ptr %10, align 8
  store ptr %32, ptr %11, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = load ptr, ptr @C_stack_limit, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i64, ptr %3, align 8
  %40 = icmp sgt i64 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = add nsw i32 0, %42
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
  call void @C_save_and_reclaim(ptr noundef @f_1131, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = load i64, ptr %7, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %4, align 8
  store ptr %58, ptr %12, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 0
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  store i64 14, ptr %63, align 8
  %64 = load i64, ptr %8, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = load ptr, ptr %12, align 8
  call void %68(i64 noundef 2, ptr noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1134(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
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
  %50 = icmp sgt i64 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = add nsw i32 3, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, ptr @C_scratch_usage, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %48, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, ptr %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1134, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 24, align 16
  store ptr %67, ptr %11, align 8
  %68 = load i64, ptr %7, align 8
  store i64 %68, ptr %10, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %10, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %15, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 216172782113783810, ptr %76, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store ptr %78, ptr %11, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load i64, ptr %15, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds %struct.C_block_struct, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds [0 x i64], ptr %82, i64 0, i64 0
  store i64 %79, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = load i64, ptr %15, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds %struct.C_block_struct, ptr %86, i32 0, i32 1
  %88 = getelementptr inbounds [0 x i64], ptr %87, i64 0, i64 1
  store i64 %84, ptr %88, align 8
  %89 = load i64, ptr %15, align 8
  store i64 %89, ptr %16, align 8
  %90 = load i64, ptr %16, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %10, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = load ptr, ptr %14, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1140(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
  store ptr %36, ptr %11, align 8
  %37 = load ptr, ptr %11, align 8
  store ptr %37, ptr %12, align 8
  %38 = load ptr, ptr %12, align 8
  %39 = load ptr, ptr @C_stack_limit, align 8
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = load i64, ptr %3, align 8
  %45 = icmp sgt i64 %44, 3
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1140, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = icmp eq i64 %62, 14
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i64 22, i64 6
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  call void @C_trace(ptr noundef @.str.85)
  %68 = load i64, ptr %3, align 8
  %69 = icmp sge i64 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load ptr, ptr %4, align 8
  store ptr %71, ptr %13, align 8
  br label %74

72:                                               ; preds = %67
  %73 = alloca i8, i64 32, align 16
  store ptr %73, ptr %13, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 0, ptr %76, align 8
  %77 = load i64, ptr %7, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 6, ptr %81, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 14, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  call void @C_values(i64 noundef 4, ptr noundef %84) #4
  unreachable

85:                                               ; preds = %61
  call void @C_trace(ptr noundef @.str.86)
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 4
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %14, align 8
  br label %92

90:                                               ; preds = %85
  %91 = alloca i8, i64 32, align 16
  store ptr %91, ptr %14, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 0
  store i64 0, ptr %94, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = call i64 @C_i_car(i64 noundef %98)
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %8, align 8
  %103 = call i64 @C_i_cdr(i64 noundef %102)
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %14, align 8
  call void @C_values(i64 noundef 4, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1163(i64 noundef %0, ptr noundef %1) #2 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
  store ptr %33, ptr %10, align 8
  %34 = load ptr, ptr %10, align 8
  store ptr %34, ptr %11, align 8
  %35 = load ptr, ptr %11, align 8
  %36 = load ptr, ptr @C_stack_limit, align 8
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp sgt i64 %41, 1
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1163, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %9, align 8
  %60 = load i64, ptr %7, align 8
  store i64 %60, ptr %8, align 8
  %61 = load ptr, ptr %4, align 8
  store ptr %61, ptr %12, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 %62, ptr %64, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %13, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 216172782113783810, ptr %68, align 8
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store ptr %70, ptr %9, align 8
  %71 = load i64, ptr %13, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 0
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %13, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds %struct.C_block_struct, ptr %76, i32 0, i32 1
  %78 = getelementptr inbounds [0 x i64], ptr %77, i64 0, i64 1
  store i64 14, ptr %78, align 8
  %79 = load i64, ptr %13, align 8
  store i64 %79, ptr %14, align 8
  %80 = load i64, ptr %14, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %8, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = load ptr, ptr %12, align 8
  call void %87(i64 noundef 2, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1169(i64 noundef %0, ptr noundef %1) #2 {
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
  store ptr %43, ptr %17, align 8
  %44 = load ptr, ptr %17, align 8
  store ptr %44, ptr %18, align 8
  %45 = load ptr, ptr %18, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 2
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 2
  %55 = add nsw i32 7, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_1169, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 56, align 16
  store ptr %69, ptr %16, align 8
  %70 = load i64, ptr %9, align 8
  %71 = call i64 @C_a_i_list1(ptr noundef %16, i32 noundef 1, i64 noundef %70)
  store i64 %71, ptr %10, align 8
  %72 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %72, align 8
  %73 = load ptr, ptr %16, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_1176 to i64), ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %16, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %16, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %16, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store ptr %84, ptr %16, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %11, align 8
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_car(i64 noundef %86)
  store i64 %87, ptr %12, align 8
  %88 = load i64, ptr %12, align 8
  %89 = icmp eq i64 %88, 14
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i64 22, i64 6
  %92 = icmp ne i64 %91, 6
  br i1 %92, label %93, label %102

93:                                               ; preds = %68
  %94 = load i64, ptr %8, align 8
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @C_i_set_car(i64 noundef %94, i64 noundef %95)
  store i64 %96, ptr %13, align 8
  %97 = load i64, ptr %11, align 8
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %14, align 8
  %99 = load i64, ptr %8, align 8
  %100 = load i64, ptr %10, align 8
  %101 = call i64 @C_i_set_cdr(i64 noundef %99, i64 noundef %100)
  call void @f_1176(i64 noundef %98, i64 noundef %101) #4
  unreachable

102:                                              ; preds = %68
  %103 = load i64, ptr %8, align 8
  %104 = call i64 @C_i_cdr(i64 noundef %103)
  store i64 %104, ptr %13, align 8
  %105 = load i64, ptr %13, align 8
  %106 = load i64, ptr %10, align 8
  %107 = call i64 @C_i_set_cdr(i64 noundef %105, i64 noundef %106)
  store i64 %107, ptr %14, align 8
  %108 = load i64, ptr %11, align 8
  store i64 %108, ptr %15, align 8
  %109 = load i64, ptr %15, align 8
  %110 = load i64, ptr %8, align 8
  %111 = load i64, ptr %10, align 8
  %112 = call i64 @C_i_set_cdr(i64 noundef %110, i64 noundef %111)
  call void @f_1176(i64 noundef %109, i64 noundef %112) #4
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
  %31 = load i64, ptr %3, align 8
  %32 = icmp ne i64 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i64, ptr %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %35, i32 noundef 3, i64 noundef %36) #4
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
  store ptr %43, ptr %18, align 8
  %44 = load ptr, ptr %18, align 8
  store ptr %44, ptr %19, align 8
  %45 = load ptr, ptr %19, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nsw i32 0, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_1201, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = load i64, ptr %8, align 8
  %70 = call i64 @C_i_car(i64 noundef %69)
  store i64 %70, ptr %9, align 8
  %71 = load i64, ptr %9, align 8
  %72 = icmp eq i64 %71, 14
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i64 22, i64 6
  %75 = icmp ne i64 %74, 6
  br i1 %75, label %76, label %95

76:                                               ; preds = %68
  call void @C_trace(ptr noundef @.str.87)
  %77 = load i64, ptr %3, align 8
  %78 = icmp sge i64 %77, 4
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %20, align 8
  br label %83

81:                                               ; preds = %76
  %82 = alloca i8, i64 32, align 16
  store ptr %82, ptr %20, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = load ptr, ptr %20, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 0
  store i64 0, ptr %85, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %20, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 6, ptr %90, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %20, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %20, align 8
  call void @C_values(i64 noundef 4, ptr noundef %94) #4
  unreachable

95:                                               ; preds = %68
  %96 = load i64, ptr %8, align 8
  %97 = call i64 @C_i_caar(i64 noundef %96)
  store i64 %97, ptr %10, align 8
  %98 = load i64, ptr %8, align 8
  %99 = call i64 @C_i_cdar(i64 noundef %98)
  store i64 %99, ptr %11, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load i64, ptr %11, align 8
  %102 = call i64 @C_i_set_car(i64 noundef %100, i64 noundef %101)
  store i64 %102, ptr %12, align 8
  %103 = load i64, ptr %8, align 8
  %104 = call i64 @C_i_car(i64 noundef %103)
  store i64 %104, ptr %13, align 8
  %105 = load i64, ptr %13, align 8
  %106 = icmp eq i64 %105, 14
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i64 22, i64 6
  store i64 %108, ptr %14, align 8
  %109 = load i64, ptr %14, align 8
  %110 = icmp ne i64 %109, 6
  br i1 %110, label %111, label %114

111:                                              ; preds = %95
  %112 = load i64, ptr %8, align 8
  %113 = call i64 @C_i_set_cdr(i64 noundef %112, i64 noundef 14)
  br label %115

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i64 [ %113, %111 ], [ 30, %114 ]
  store i64 %116, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.88)
  %117 = load i64, ptr %3, align 8
  %118 = icmp sge i64 %117, 4
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load ptr, ptr %4, align 8
  store ptr %120, ptr %21, align 8
  br label %123

121:                                              ; preds = %115
  %122 = alloca i8, i64 32, align 16
  store ptr %122, ptr %21, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = load ptr, ptr %21, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 0
  store i64 0, ptr %125, align 8
  %126 = load i64, ptr %7, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %10, align 8
  %130 = load ptr, ptr %21, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 2
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %8, align 8
  %133 = load ptr, ptr %21, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 3
  store i64 %132, ptr %134, align 8
  %135 = load ptr, ptr %21, align 8
  call void @C_values(i64 noundef 4, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1243(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
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
  %53 = add nsw i32 5, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, ptr @C_scratch_usage, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %48, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, ptr %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1243, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1247 to i64), ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.89)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), align 8
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
define internal void @f_1268(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
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
  call void @C_save_and_reclaim(ptr noundef @f_1268, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_1272 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.92)
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), align 8
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 25), align 8
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
define internal void @f_1320(i64 noundef %0, ptr noundef %1) #2 {
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
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
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
  %54 = icmp sgt i64 %53, 3
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 3
  %57 = add nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, ptr @C_scratch_usage, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp sgt i64 %52, %60
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %44
  %67 = load i64, ptr %3, align 8
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1320, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 32, align 16
  store ptr %71, ptr %13, align 8
  %72 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %72, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_1328 to i64), ptr %74, align 8
  %75 = load i64, ptr %10, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %7, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.99)
  %86 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  %90 = call ptr @C_fast_retrieve_proc(i64 noundef %89)
  store ptr %90, ptr %16, align 8
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %17, align 8
  %92 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %17, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %11, align 8
  %99 = load ptr, ptr %17, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %10, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 14, ptr %105, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = load ptr, ptr %17, align 8
  call void %106(i64 noundef 4, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1371(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
  store ptr %41, ptr %14, align 8
  %42 = load ptr, ptr %14, align 8
  store ptr %42, ptr %15, align 8
  %43 = load ptr, ptr %15, align 8
  %44 = load ptr, ptr @C_stack_limit, align 8
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp sgt i64 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = add nsw i32 5, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, ptr @C_scratch_usage, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %48, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, ptr %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1371, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %13, align 8
  %68 = load i64, ptr %8, align 8
  %69 = call i64 @C_i_vector_length(i64 noundef %68)
  store i64 %69, ptr %10, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load i64, ptr %10, align 8
  %72 = call i64 @C_s_a_i_modulo(ptr noundef %13, i64 noundef 2, i64 noundef %70, i64 noundef %71)
  store i64 %72, ptr %11, align 8
  %73 = load i64, ptr %7, align 8
  store i64 %73, ptr %12, align 8
  %74 = load ptr, ptr %4, align 8
  store ptr %74, ptr %16, align 8
  %75 = load i64, ptr %12, align 8
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load i64, ptr %11, align 8
  %80 = call i64 @C_i_vector_ref(i64 noundef %78, i64 noundef %79)
  %81 = load ptr, ptr %16, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %12, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = load ptr, ptr %16, align 8
  call void %87(i64 noundef 2, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1385(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 0
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %6, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 1
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %7, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 2
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %8, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 3
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %9, align 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i64, ptr %3, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %45, i32 noundef 4, i64 noundef %46) #4
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
  %53 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
  store ptr %53, ptr %22, align 8
  %54 = load ptr, ptr %22, align 8
  store ptr %54, ptr %23, align 8
  %55 = load ptr, ptr %23, align 8
  %56 = load ptr, ptr @C_stack_limit, align 8
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = load i64, ptr %3, align 8
  %62 = icmp sgt i64 %61, 3
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 3
  %65 = add nsw i32 22, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, ptr @C_scratch_usage, align 8
  %68 = add nsw i64 %66, %67
  %69 = icmp sgt i64 %60, %68
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i64, ptr %3, align 8
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1385, i32 noundef %76, ptr noundef %77) #4
  unreachable

78:                                               ; preds = %52
  %79 = alloca i8, i64 176, align 16
  store ptr %79, ptr %21, align 8
  %80 = load i64, ptr %9, align 8
  %81 = icmp eq i64 %80, 14
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i64 22, i64 6
  %84 = icmp ne i64 %83, 6
  br i1 %84, label %85, label %117

85:                                               ; preds = %78
  %86 = load i64, ptr %7, align 8
  store i64 %86, ptr %10, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %24, align 8
  %88 = load i64, ptr %10, align 8
  %89 = load ptr, ptr %24, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %21, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %25, align 8
  %93 = load ptr, ptr %21, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 0
  store i64 216172782113783810, ptr %94, align 8
  %95 = load ptr, ptr %21, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store ptr %96, ptr %21, align 8
  %97 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %98 = load i64, ptr %25, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 0
  store i64 %97, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %103 = load i64, ptr %25, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds %struct.C_block_struct, ptr %104, i32 0, i32 1
  %106 = getelementptr inbounds [0 x i64], ptr %105, i64 0, i64 1
  store i64 %102, ptr %106, align 8
  %107 = load i64, ptr %25, align 8
  store i64 %107, ptr %26, align 8
  %108 = load i64, ptr %26, align 8
  %109 = load ptr, ptr %24, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %10, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = load ptr, ptr %24, align 8
  call void %115(i64 noundef 2, ptr noundef %116) #4
  unreachable

117:                                              ; preds = %78
  %118 = load ptr, ptr %21, align 8
  %119 = ptrtoint ptr %118 to i64
  store i64 %119, ptr %27, align 8
  %120 = load ptr, ptr %21, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 0
  store i64 216172782113783810, ptr %121, align 8
  %122 = load ptr, ptr %21, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store ptr %123, ptr %21, align 8
  %124 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %125 = load i64, ptr %27, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds %struct.C_block_struct, ptr %126, i32 0, i32 1
  %128 = getelementptr inbounds [0 x i64], ptr %127, i64 0, i64 0
  store i64 %124, ptr %128, align 8
  %129 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %130 = load i64, ptr %27, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds %struct.C_block_struct, ptr %131, i32 0, i32 1
  %133 = getelementptr inbounds [0 x i64], ptr %132, i64 0, i64 1
  store i64 %129, ptr %133, align 8
  %134 = load i64, ptr %27, align 8
  store i64 %134, ptr %28, align 8
  %135 = load i64, ptr %28, align 8
  store i64 %135, ptr %10, align 8
  %136 = load i64, ptr %10, align 8
  store i64 %136, ptr %11, align 8
  %137 = load ptr, ptr %21, align 8
  store i64 1, ptr %137, align 8
  %138 = load i64, ptr %11, align 8
  %139 = load ptr, ptr %21, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  store i64 %138, ptr %140, align 8
  %141 = load ptr, ptr %21, align 8
  %142 = ptrtoint ptr %141 to i64
  store i64 %142, ptr %5, align 8
  %143 = load ptr, ptr %21, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store ptr %144, ptr %21, align 8
  %145 = load i64, ptr %5, align 8
  store i64 %145, ptr %12, align 8
  %146 = load i64, ptr %9, align 8
  %147 = call i64 @C_i_length(i64 noundef %146)
  store i64 %147, ptr %13, align 8
  %148 = load ptr, ptr %21, align 8
  store i64 2594073385365405700, ptr %148, align 8
  %149 = load ptr, ptr %21, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 1
  store i64 ptrtoint (ptr @f_1402 to i64), ptr %150, align 8
  %151 = load i64, ptr %12, align 8
  %152 = load ptr, ptr %21, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 2
  store i64 %151, ptr %153, align 8
  %154 = load i64, ptr %8, align 8
  %155 = load ptr, ptr %21, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 3
  store i64 %154, ptr %156, align 8
  %157 = load ptr, ptr %21, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 4
  store i64 ptrtoint (ptr @li25 to i64), ptr %158, align 8
  %159 = load ptr, ptr %21, align 8
  %160 = ptrtoint ptr %159 to i64
  store i64 %160, ptr %5, align 8
  %161 = load ptr, ptr %21, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 5
  store ptr %162, ptr %21, align 8
  %163 = load i64, ptr %5, align 8
  store i64 %163, ptr %14, align 8
  %164 = load i64, ptr %9, align 8
  %165 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), align 8
  %166 = call i64 @C_i_check_list_2(i64 noundef %164, i64 noundef %165)
  store i64 %166, ptr %15, align 8
  %167 = load ptr, ptr %21, align 8
  store i64 2594073385365405700, ptr %167, align 8
  %168 = load ptr, ptr %21, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 1
  store i64 ptrtoint (ptr @f_1417 to i64), ptr %169, align 8
  %170 = load i64, ptr %7, align 8
  %171 = load ptr, ptr %21, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 2
  store i64 %170, ptr %172, align 8
  %173 = load i64, ptr %12, align 8
  %174 = load ptr, ptr %21, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 3
  store i64 %173, ptr %175, align 8
  %176 = load i64, ptr %13, align 8
  %177 = load ptr, ptr %21, align 8
  %178 = getelementptr inbounds i64, ptr %177, i64 4
  store i64 %176, ptr %178, align 8
  %179 = load ptr, ptr %21, align 8
  %180 = ptrtoint ptr %179 to i64
  store i64 %180, ptr %5, align 8
  %181 = load ptr, ptr %21, align 8
  %182 = getelementptr inbounds i64, ptr %181, i64 5
  store ptr %182, ptr %21, align 8
  %183 = load i64, ptr %5, align 8
  store i64 %183, ptr %16, align 8
  store i64 30, ptr %17, align 8
  %184 = load ptr, ptr %21, align 8
  store i64 1, ptr %184, align 8
  %185 = load i64, ptr %17, align 8
  %186 = load ptr, ptr %21, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 1
  store i64 %185, ptr %187, align 8
  %188 = load ptr, ptr %21, align 8
  %189 = ptrtoint ptr %188 to i64
  store i64 %189, ptr %5, align 8
  %190 = load ptr, ptr %21, align 8
  %191 = getelementptr inbounds i64, ptr %190, i64 2
  store ptr %191, ptr %21, align 8
  %192 = load i64, ptr %5, align 8
  store i64 %192, ptr %18, align 8
  %193 = load ptr, ptr %21, align 8
  store i64 2594073385365405700, ptr %193, align 8
  %194 = load ptr, ptr %21, align 8
  %195 = getelementptr inbounds i64, ptr %194, i64 1
  store i64 ptrtoint (ptr @f_1438 to i64), ptr %195, align 8
  %196 = load i64, ptr %18, align 8
  %197 = load ptr, ptr %21, align 8
  %198 = getelementptr inbounds i64, ptr %197, i64 2
  store i64 %196, ptr %198, align 8
  %199 = load i64, ptr %14, align 8
  %200 = load ptr, ptr %21, align 8
  %201 = getelementptr inbounds i64, ptr %200, i64 3
  store i64 %199, ptr %201, align 8
  %202 = load ptr, ptr %21, align 8
  %203 = getelementptr inbounds i64, ptr %202, i64 4
  store i64 ptrtoint (ptr @li26 to i64), ptr %203, align 8
  %204 = load ptr, ptr %21, align 8
  %205 = ptrtoint ptr %204 to i64
  store i64 %205, ptr %5, align 8
  %206 = load ptr, ptr %21, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 5
  store ptr %207, ptr %21, align 8
  %208 = load i64, ptr %5, align 8
  %209 = load i64, ptr %18, align 8
  %210 = inttoptr i64 %209 to ptr
  %211 = getelementptr inbounds %struct.C_block_struct, ptr %210, i32 0, i32 1
  %212 = getelementptr inbounds [0 x i64], ptr %211, i64 0, i64 0
  store i64 %208, ptr %212, align 8
  store i64 %208, ptr %19, align 8
  %213 = load i64, ptr %18, align 8
  %214 = inttoptr i64 %213 to ptr
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  %216 = load i64, ptr %215, align 8
  store i64 %216, ptr %20, align 8
  %217 = load i64, ptr %20, align 8
  %218 = load i64, ptr %16, align 8
  %219 = load i64, ptr %9, align 8
  call void @f_1438(i64 noundef %217, i64 noundef %218, i64 noundef %219) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1461(i64 noundef %0, ptr noundef %1) #2 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
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
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 3
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %9, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 4
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %10, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 5
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %11, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 6
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %12, align 8
  %44 = load i64, ptr %3, align 8
  %45 = icmp ne i64 %44, 7
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i64, ptr %3, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %48, i32 noundef 7, i64 noundef %49) #4
  unreachable

50:                                               ; preds = %2
  %51 = load i64, ptr @C_timer_interrupt_counter, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, ptr @C_timer_interrupt_counter, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @C_raise_interrupt(i32 noundef 255)
  br label %55

55:                                               ; preds = %54, %50
  %56 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !38
  store ptr %56, ptr %17, align 8
  %57 = load ptr, ptr %17, align 8
  store ptr %57, ptr %18, align 8
  %58 = load ptr, ptr %18, align 8
  %59 = load ptr, ptr @C_stack_limit, align 8
  %60 = ptrtoint ptr %58 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  %64 = load i64, ptr %3, align 8
  %65 = icmp sgt i64 %64, 3
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 3
  %68 = add nsw i32 11, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, ptr @C_scratch_usage, align 8
  %71 = add nsw i64 %69, %70
  %72 = icmp sgt i64 %63, %71
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %55
  %78 = load i64, ptr %3, align 8
  %79 = trunc i64 %78 to i32
  %80 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1461, i32 noundef %79, ptr noundef %80) #4
  unreachable

81:                                               ; preds = %55
  %82 = alloca i8, i64 88, align 16
  store ptr %82, ptr %16, align 8
  %83 = load ptr, ptr %16, align 8
  store i64 2594073385365405703, ptr %83, align 8
  %84 = load ptr, ptr %16, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_1465 to i64), ptr %85, align 8
  %86 = load i64, ptr %12, align 8
  %87 = load ptr, ptr %16, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %11, align 8
  %90 = load ptr, ptr %16, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %9, align 8
  %96 = load ptr, ptr %16, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %10, align 8
  %99 = load ptr, ptr %16, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 6
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load ptr, ptr %16, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 7
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %16, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 8
  store ptr %107, ptr %16, align 8
  %108 = load i64, ptr %5, align 8
  store i64 %108, ptr %13, align 8
  %109 = load ptr, ptr %16, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %19, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 0
  store i64 216172782113783810, ptr %112, align 8
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store ptr %114, ptr %16, align 8
  %115 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %116 = load i64, ptr %19, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds %struct.C_block_struct, ptr %117, i32 0, i32 1
  %119 = getelementptr inbounds [0 x i64], ptr %118, i64 0, i64 0
  store i64 %115, ptr %119, align 8
  %120 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %121 = load i64, ptr %19, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds %struct.C_block_struct, ptr %122, i32 0, i32 1
  %124 = getelementptr inbounds [0 x i64], ptr %123, i64 0, i64 1
  store i64 %120, ptr %124, align 8
  %125 = load i64, ptr %19, align 8
  store i64 %125, ptr %20, align 8
  %126 = load i64, ptr %20, align 8
  store i64 %126, ptr %14, align 8
  call void @C_trace(ptr noundef @.str.108)
  %127 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  %130 = load i64, ptr %129, align 8
  %131 = call ptr @C_fast_retrieve_proc(i64 noundef %130)
  store ptr %131, ptr %21, align 8
  %132 = load ptr, ptr %4, align 8
  store ptr %132, ptr %22, align 8
  %133 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  %137 = load ptr, ptr %22, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 0
  store i64 %136, ptr %138, align 8
  %139 = load i64, ptr %13, align 8
  %140 = load ptr, ptr %22, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %12, align 8
  %143 = load ptr, ptr %22, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store i64 %142, ptr %144, align 8
  %145 = load i64, ptr %14, align 8
  %146 = load ptr, ptr %22, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 %145, ptr %147, align 8
  %148 = load ptr, ptr %21, align 8
  %149 = load ptr, ptr %22, align 8
  call void %148(i64 noundef 4, ptr noundef %149) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1564(i64 noundef %0, ptr noundef %1) #2 {
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
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
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
  %40 = load i64, ptr %3, align 8
  %41 = icmp ne i64 %40, 6
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i64, ptr %3, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %44, i32 noundef 6, i64 noundef %45) #4
  unreachable

46:                                               ; preds = %2
  %47 = load i64, ptr @C_timer_interrupt_counter, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, ptr @C_timer_interrupt_counter, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void @C_raise_interrupt(i32 noundef 255)
  br label %51

51:                                               ; preds = %50, %46
  %52 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !39
  store ptr %52, ptr %16, align 8
  %53 = load ptr, ptr %16, align 8
  store ptr %53, ptr %17, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = load ptr, ptr @C_stack_limit, align 8
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  %60 = load i64, ptr %3, align 8
  %61 = icmp sgt i64 %60, 3
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 3
  %64 = add nsw i32 10, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, ptr @C_scratch_usage, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sgt i64 %59, %67
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %51
  %74 = load i64, ptr %3, align 8
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1564, i32 noundef %75, ptr noundef %76) #4
  unreachable

77:                                               ; preds = %51
  %78 = alloca i8, i64 80, align 16
  store ptr %78, ptr %15, align 8
  %79 = load ptr, ptr %15, align 8
  store i64 2594073385365405702, ptr %79, align 8
  %80 = load ptr, ptr %15, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 ptrtoint (ptr @f_1568 to i64), ptr %81, align 8
  %82 = load i64, ptr %11, align 8
  %83 = load ptr, ptr %15, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %7, align 8
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %10, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 5
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 6
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  store ptr %100, ptr %15, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %12, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %18, align 8
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 216172782113783810, ptr %105, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 3
  store ptr %107, ptr %15, align 8
  %108 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %109 = load i64, ptr %18, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds %struct.C_block_struct, ptr %110, i32 0, i32 1
  %112 = getelementptr inbounds [0 x i64], ptr %111, i64 0, i64 0
  store i64 %108, ptr %112, align 8
  %113 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %114 = load i64, ptr %18, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds %struct.C_block_struct, ptr %115, i32 0, i32 1
  %117 = getelementptr inbounds [0 x i64], ptr %116, i64 0, i64 1
  store i64 %113, ptr %117, align 8
  %118 = load i64, ptr %18, align 8
  store i64 %118, ptr %19, align 8
  %119 = load i64, ptr %19, align 8
  store i64 %119, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.115)
  %120 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = load i64, ptr %122, align 8
  %124 = call ptr @C_fast_retrieve_proc(i64 noundef %123)
  store ptr %124, ptr %20, align 8
  %125 = load ptr, ptr %4, align 8
  store ptr %125, ptr %21, align 8
  %126 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 34), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = load ptr, ptr %21, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 0
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %12, align 8
  %133 = load ptr, ptr %21, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %11, align 8
  %136 = load ptr, ptr %21, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 %135, ptr %137, align 8
  %138 = load i64, ptr %13, align 8
  %139 = load ptr, ptr %21, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 3
  store i64 %138, ptr %140, align 8
  %141 = load ptr, ptr %20, align 8
  %142 = load ptr, ptr %21, align 8
  call void %141(i64 noundef 4, ptr noundef %142) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1666(i64 noundef %0, ptr noundef %1) #2 {
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
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds i64, ptr %46, i64 8
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %14, align 8
  %49 = load i64, ptr %3, align 8
  %50 = icmp ne i64 %49, 9
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %53, i32 noundef 9, i64 noundef %54) #4
  unreachable

55:                                               ; preds = %2
  %56 = load i64, ptr @C_timer_interrupt_counter, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, ptr @C_timer_interrupt_counter, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @C_raise_interrupt(i32 noundef 255)
  br label %60

60:                                               ; preds = %59, %55
  %61 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
  store ptr %61, ptr %18, align 8
  %62 = load ptr, ptr %18, align 8
  store ptr %62, ptr %19, align 8
  %63 = load ptr, ptr %19, align 8
  %64 = load ptr, ptr @C_stack_limit, align 8
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sgt i64 %69, 2
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 2
  %73 = add nsw i32 8, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, ptr @C_scratch_usage, align 8
  %76 = add nsw i64 %74, %75
  %77 = icmp sgt i64 %68, %76
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %60
  %83 = load i64, ptr %3, align 8
  %84 = trunc i64 %83 to i32
  %85 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1666, i32 noundef %84, ptr noundef %85) #4
  unreachable

86:                                               ; preds = %60
  %87 = alloca i8, i64 64, align 16
  store ptr %87, ptr %17, align 8
  %88 = load ptr, ptr %17, align 8
  store i64 2594073385365405703, ptr %88, align 8
  %89 = load ptr, ptr %17, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_1670 to i64), ptr %90, align 8
  %91 = load i64, ptr %9, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %7, align 8
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %12, align 8
  %98 = load ptr, ptr %17, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %11, align 8
  %101 = load ptr, ptr %17, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %13, align 8
  %107 = load ptr, ptr %17, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 7
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %17, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %17, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 8
  store ptr %112, ptr %17, align 8
  %113 = load i64, ptr %5, align 8
  store i64 %113, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.123)
  %114 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 45), align 8
  %115 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %114)
  store ptr %115, ptr %20, align 8
  %116 = load ptr, ptr %4, align 8
  store ptr %116, ptr %21, align 8
  %117 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 45), align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %21, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 0
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %15, align 8
  %124 = load ptr, ptr %21, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %14, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %20, align 8
  %130 = load ptr, ptr %21, align 8
  call void %129(i64 noundef 3, ptr noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1888(i64 noundef %0, ptr noundef %1) #2 {
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
  %22 = load i64, ptr %3, align 8
  %23 = icmp ne i64 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, ptr %3, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %26, i32 noundef 2, i64 noundef %27) #4
  unreachable

28:                                               ; preds = %2
  %29 = load i64, ptr @C_timer_interrupt_counter, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr @C_timer_interrupt_counter, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @C_raise_interrupt(i32 noundef 255)
  br label %33

33:                                               ; preds = %32, %28
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !41
  store ptr %34, ptr %12, align 8
  %35 = load ptr, ptr %12, align 8
  store ptr %35, ptr %13, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 4
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 4
  %46 = add nsw i32 4, %45
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
  call void @C_save_and_reclaim(ptr noundef @f_1888, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  %60 = alloca i8, i64 32, align 16
  store ptr %60, ptr %11, align 8
  %61 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  %64 = load i64, ptr %63, align 8
  store i64 %64, ptr %8, align 8
  %65 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %65, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_1892 to i64), ptr %67, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store ptr %77, ptr %11, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.144)
  %79 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = call ptr @C_fast_retrieve_proc(i64 noundef %82)
  store ptr %83, ptr %14, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 5
  br i1 %85, label %86, label %88

86:                                               ; preds = %59
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %15, align 8
  br label %90

88:                                               ; preds = %59
  %89 = alloca i8, i64 40, align 16
  store ptr %89, ptr %15, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %9, align 8
  %98 = load ptr, ptr %15, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 3
  store i64 22, ptr %107, align 8
  %108 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = load ptr, ptr %15, align 8
  call void %111(i64 noundef 5, ptr noundef %112) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_2005(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
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
  call void @C_save_and_reclaim(ptr noundef @f_2005, i32 noundef %47, ptr noundef %48) #4
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

declare i64 @C_i_car(i64 noundef) #1

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_cdr(i64 noundef) #1

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_zerop(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_873(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = load i64, ptr @C_timer_interrupt_counter, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, ptr @C_timer_interrupt_counter, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %32

32:                                               ; preds = %31, %2
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
  store ptr %33, ptr %18, align 8
  %34 = load ptr, ptr %18, align 8
  store ptr %34, ptr %19, align 8
  %35 = load ptr, ptr %19, align 8
  %36 = load ptr, ptr @C_stack_limit, align 8
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = load i64, ptr %3, align 8
  %42 = icmp sgt i64 %41, 3
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 3
  %45 = add nsw i32 99, %44
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
  call void @C_save_and_reclaim(ptr noundef @f_873, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 792, align 16
  store ptr %59, ptr %17, align 8
  %60 = load ptr, ptr %17, align 8
  store i64 2594073385365405699, ptr %60, align 8
  %61 = load ptr, ptr %17, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_877 to i64), ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %17, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %7, align 8
  %70 = load ptr, ptr %17, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %17, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %17, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store ptr %75, ptr %17, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  %80 = load i64, ptr %79, align 8
  %81 = call i64 @C_i_cdr(i64 noundef %80)
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  %85 = load i64, ptr %84, align 8
  %86 = call i64 @C_i_car(i64 noundef %85)
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load i64, ptr %10, align 8
  %89 = call i64 @C_s_a_i_times(ptr noundef %17, i64 noundef 2, i64 noundef %87, i64 noundef %88)
  store i64 %89, ptr %11, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  %93 = load i64, ptr %92, align 8
  %94 = call i64 @C_i_car(i64 noundef %93)
  store i64 %94, ptr %12, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = call i64 @C_i_cdr(i64 noundef %98)
  store i64 %99, ptr %13, align 8
  %100 = load i64, ptr %12, align 8
  %101 = load i64, ptr %13, align 8
  %102 = call i64 @C_s_a_i_times(ptr noundef %17, i64 noundef 2, i64 noundef %100, i64 noundef %101)
  store i64 %102, ptr %14, align 8
  %103 = load i64, ptr %11, align 8
  %104 = load i64, ptr %14, align 8
  %105 = call i64 @C_s_a_i_minus(ptr noundef %17, i64 noundef 2, i64 noundef %103, i64 noundef %104)
  store i64 %105, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.76)
  %106 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = call ptr @C_fast_retrieve_proc(i64 noundef %109)
  store ptr %110, ptr %20, align 8
  %111 = load i64, ptr %3, align 8
  %112 = icmp sge i64 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %58
  %114 = load ptr, ptr %4, align 8
  store ptr %114, ptr %21, align 8
  br label %117

115:                                              ; preds = %58
  %116 = alloca i8, i64 32, align 16
  store ptr %116, ptr %21, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %21, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %8, align 8
  %125 = load ptr, ptr %21, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %15, align 8
  %128 = load ptr, ptr %21, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 5
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %21, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %20, align 8
  %137 = load ptr, ptr %21, align 8
  call void %136(i64 noundef 4, ptr noundef %137) #4
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
define internal void @f_877(i64 noundef %0, ptr noundef %1) #2 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %35 = icmp sgt i64 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_877, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %9, align 8
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
  %61 = load ptr, ptr %9, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %13, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %9, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %13, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 0
  store i64 %70, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load i64, ptr %13, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.C_block_struct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [0 x i64], ptr %78, i64 0, i64 1
  store i64 %75, ptr %79, align 8
  %80 = load i64, ptr %13, align 8
  store i64 %80, ptr %14, align 8
  %81 = load i64, ptr %14, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = load ptr, ptr %12, align 8
  call void %88(i64 noundef 2, ptr noundef %89) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1003(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %18 = alloca [4 x i64], align 16
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  %33 = add nsw i64 37, %32
  %34 = icmp sgt i64 %31, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1003, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 272, align 16
  store ptr %45, ptr %13, align 8
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
  %56 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %10, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %63(i64 noundef 2, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %44
  %66 = load i64, ptr %7, align 8
  %67 = call i64 @C_s_a_i_plus(ptr noundef %13, i64 noundef 2, i64 noundef %66, i64 noundef 3)
  store i64 %67, ptr %10, align 8
  %68 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %13, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1021 to i64), ptr %70, align 8
  %71 = load i64, ptr %5, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %9, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %9, align 8
  store i64 %87, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.78)
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %89 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %17, align 8
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 0
  store i64 %93, ptr %94, align 16
  %95 = load i64, ptr %11, align 8
  %96 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 1
  store i64 %95, ptr %96, align 8
  %97 = load i64, ptr %8, align 8
  %98 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 2
  store i64 %97, ptr %98, align 16
  %99 = load i64, ptr %5, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 4
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 3
  store i64 %102, ptr %103, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds [4 x i64], ptr %18, i64 0, i64 0
  call void %104(i64 noundef 4, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1003(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1003(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1021(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  call void @C_save_and_reclaim(ptr noundef @f_1021, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.79)
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
  call void @f_1003(i64 noundef %56, i64 noundef %60, i64 noundef %64, i64 noundef %65) #4
  unreachable
}

declare i64 @C_i_lessp(i64 noundef, i64 noundef) #1

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
  call void @C_save_and_reclaim(ptr noundef @f_1043, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1047 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %7, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  store i64 %62, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  store ptr %68, ptr %11, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %8, align 8
  %70 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 ptrtoint (ptr @f_1051 to i64), ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store ptr %85, ptr %11, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.81)
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 24, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 0, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 4
  %102 = load i64, ptr %101, align 8
  %103 = call i64 @C_i_cdr(i64 noundef %102)
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %14, align 8
  call void @C_minus(i64 noundef 3, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1047(i64 noundef %0, ptr noundef %1) #2 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %35 = icmp sgt i64 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1047, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %9, align 8
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
  %61 = load ptr, ptr %9, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %13, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %9, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %13, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 0
  store i64 %70, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load i64, ptr %13, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.C_block_struct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [0 x i64], ptr %78, i64 0, i64 1
  store i64 %75, ptr %79, align 8
  %80 = load i64, ptr %13, align 8
  store i64 %80, ptr %14, align 8
  %81 = load i64, ptr %14, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = load ptr, ptr %12, align 8
  call void %88(i64 noundef 2, ptr noundef %89) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1051(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
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
  call void @C_save_and_reclaim(ptr noundef @f_1051, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.80)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %63 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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

; Function Attrs: noreturn
declare void @C_minus(i64 noundef, ptr noundef) #3

declare i64 @C_i_less_or_equalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1099(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
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
  %36 = add nsw i32 33, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_1099, i32 noundef %47, ptr noundef %48) #4
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
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  %63 = load i64, ptr %7, align 8
  %64 = call i64 @C_s_a_i_times(ptr noundef %9, i64 noundef 2, i64 noundef %62, i64 noundef %63)
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = load ptr, ptr %12, align 8
  call void %71(i64 noundef 2, ptr noundef %72) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1113(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1113, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1121 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.83)
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
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
define internal void @f_1121(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = add nsw i32 34, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1121, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 272, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1125 to i64), ptr %56, align 8
  %57 = load i64, ptr %7, align 8
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  store ptr %75, ptr %11, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  %80 = load i64, ptr %79, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  %84 = load i64, ptr %83, align 8
  %85 = call i64 @C_s_a_i_minus(ptr noundef %11, i64 noundef 2, i64 noundef %80, i64 noundef %84)
  store i64 %85, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.83)
  %86 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %87 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %86)
  store ptr %87, ptr %14, align 8
  %88 = load i64, ptr %3, align 8
  %89 = icmp sge i64 %88, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %52
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %15, align 8
  br label %94

92:                                               ; preds = %52
  %93 = alloca i8, i64 24, align 16
  store ptr %93, ptr %15, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 15), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 0
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %8, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %9, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 3, ptr noundef %108) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
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
  call void @C_save_and_reclaim(ptr noundef @f_1125, i32 noundef %49, ptr noundef %50) #4
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
  call void @C_trace(ptr noundef @.str.84)
  %59 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %71 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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

; Function Attrs: noreturn
declare void @C_values(i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_list1(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %6, align 8
  %9 = call i64 @C_a_pair(ptr noundef %7, i64 noundef %8, i64 noundef 14)
  ret i64 %9
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1176(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %11 = load i64, ptr @C_timer_interrupt_counter, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, ptr @C_timer_interrupt_counter, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %15

15:                                               ; preds = %14, %2
  %16 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  store ptr %17, ptr %9, align 8
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr @C_stack_limit, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = load i64, ptr @C_scratch_usage, align 8
  %25 = add nsw i64 1, %24
  %26 = icmp sgt i64 %23, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i64, ptr %3, align 8
  %33 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1176, i32 noundef 2, i64 noundef %32, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %15
  %35 = load i64, ptr %3, align 8
  %36 = inttoptr i64 %35 to ptr
  %37 = getelementptr inbounds i64, ptr %36, i64 2
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %6, align 8
  %39 = load i64, ptr %6, align 8
  %40 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  store i64 %39, ptr %40, align 16
  %41 = load i64, ptr %3, align 8
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds i64, ptr %42, i64 3
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  store i64 %44, ptr %45, align 8
  %46 = load i64, ptr %6, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = getelementptr inbounds i64, ptr %47, i64 1
  %49 = load i64, ptr %48, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  call void %50(i64 noundef 2, ptr noundef %51) #4
  unreachable
}

declare i64 @C_i_set_car(i64 noundef, i64 noundef) #1

declare i64 @C_i_set_cdr(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_pair(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
define internal void @trf_1176(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1176(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

declare i64 @C_i_caar(i64 noundef) #1

declare i64 @C_i_cdar(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1247(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  store ptr %30, ptr %13, align 8
  %31 = load ptr, ptr %13, align 8
  store ptr %31, ptr %14, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 3
  %42 = add nsw i32 4, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1247, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 32, align 16
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @C_i_vector_ref(i64 noundef %60, i64 noundef 9)
  store i64 %61, ptr %8, align 8
  %62 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1257 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
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
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %7, align 8
  %83 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 24), align 16
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i64 22, i64 6
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %10, align 8
  %88 = icmp ne i64 %87, 6
  br i1 %88, label %89, label %119

89:                                               ; preds = %55
  call void @C_trace(ptr noundef @.str.90)
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 18), align 16
  %91 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %90)
  store ptr %91, ptr %15, align 8
  %92 = load i64, ptr %3, align 8
  %93 = icmp sge i64 %92, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %16, align 8
  br label %98

96:                                               ; preds = %89
  %97 = alloca i8, i64 32, align 16
  store ptr %97, ptr %16, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 18), align 16
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 0
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %9, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %8, align 8
  %109 = load ptr, ptr %16, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 4
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %16, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %15, align 8
  %118 = load ptr, ptr %16, align 8
  call void %117(i64 noundef 4, ptr noundef %118) #4
  unreachable

119:                                              ; preds = %55
  call void @C_trace(ptr noundef @.str.91)
  %120 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 21), align 8
  %121 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %120)
  store ptr %121, ptr %17, align 8
  %122 = load i64, ptr %3, align 8
  %123 = icmp sge i64 %122, 4
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load ptr, ptr %4, align 8
  store ptr %125, ptr %18, align 8
  br label %128

126:                                              ; preds = %119
  %127 = alloca i8, i64 32, align 16
  store ptr %127, ptr %18, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 21), align 8
  %130 = inttoptr i64 %129 to ptr
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  %132 = load i64, ptr %131, align 8
  %133 = load ptr, ptr %18, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 0
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %9, align 8
  %136 = load ptr, ptr %18, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  store i64 %135, ptr %137, align 8
  %138 = load i64, ptr %8, align 8
  %139 = load ptr, ptr %18, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 2
  store i64 %138, ptr %140, align 8
  %141 = load i64, ptr %6, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds i64, ptr %142, i64 4
  %144 = load i64, ptr %143, align 8
  %145 = load ptr, ptr %18, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 3
  store i64 %144, ptr %146, align 8
  %147 = load ptr, ptr %17, align 8
  %148 = load ptr, ptr %18, align 8
  call void %147(i64 noundef 4, ptr noundef %148) #4
  unreachable
}

declare i64 @C_i_vector_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1257(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1257, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = load i64, ptr %6, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 2
  %54 = load i64, ptr %53, align 8
  %55 = load i64, ptr %7, align 8
  %56 = call i64 @C_i_vector_set(i64 noundef %54, i64 noundef 9, i64 noundef %55)
  store i64 %56, ptr %8, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %9, align 8
  %61 = load ptr, ptr %4, align 8
  store ptr %61, ptr %13, align 8
  %62 = load i64, ptr %9, align 8
  %63 = load ptr, ptr %13, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %13, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %9, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = load ptr, ptr %13, align 8
  call void %75(i64 noundef 2, ptr noundef %76) #4
  unreachable
}

declare i64 @C_i_vector_set(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1272(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  %41 = add nsw i32 8, %40
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
  call void @C_save_and_reclaim(ptr noundef @f_1272, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 64, align 16
  store ptr %55, ptr %13, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = call i64 @C_i_vector_ref(i64 noundef %59, i64 noundef 9)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 24), align 16
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i64 22, i64 6
  store i64 %65, ptr %9, align 8
  %66 = load i64, ptr %9, align 8
  %67 = icmp ne i64 %66, 6
  br i1 %67, label %68, label %120

68:                                               ; preds = %54
  %69 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %69, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 ptrtoint (ptr @f_1286 to i64), ptr %71, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 ptrtoint (ptr @li17 to i64), ptr %76, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %10, align 8
  %82 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 ptrtoint (ptr @f_1292 to i64), ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 ptrtoint (ptr @li18 to i64), ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store ptr %96, ptr %13, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.93)
  %98 = load i64, ptr %3, align 8
  %99 = icmp sge i64 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %68
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %16, align 8
  br label %104

102:                                              ; preds = %68
  %103 = alloca i8, i64 32, align 16
  store ptr %103, ptr %16, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 0
  store i64 0, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %10, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %11, align 8
  %117 = load ptr, ptr %16, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %16, align 8
  call void @C_call_with_values(i64 noundef 4, ptr noundef %119) #4
  unreachable

120:                                              ; preds = %54
  %121 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %121, align 8
  %122 = load ptr, ptr %13, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 ptrtoint (ptr @f_1304 to i64), ptr %123, align 8
  %124 = load i64, ptr %8, align 8
  %125 = load ptr, ptr %13, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 2
  store i64 %124, ptr %126, align 8
  %127 = load ptr, ptr %13, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 3
  store i64 ptrtoint (ptr @li19 to i64), ptr %128, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = ptrtoint ptr %129 to i64
  store i64 %130, ptr %5, align 8
  %131 = load ptr, ptr %13, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 4
  store ptr %132, ptr %13, align 8
  %133 = load i64, ptr %5, align 8
  store i64 %133, ptr %10, align 8
  %134 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %134, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 1
  store i64 ptrtoint (ptr @f_1310 to i64), ptr %136, align 8
  %137 = load i64, ptr %6, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %13, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store i64 %140, ptr %142, align 8
  %143 = load ptr, ptr %13, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 3
  store i64 ptrtoint (ptr @li20 to i64), ptr %144, align 8
  %145 = load ptr, ptr %13, align 8
  %146 = ptrtoint ptr %145 to i64
  store i64 %146, ptr %5, align 8
  %147 = load ptr, ptr %13, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 4
  store ptr %148, ptr %13, align 8
  %149 = load i64, ptr %5, align 8
  store i64 %149, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.94)
  %150 = load i64, ptr %3, align 8
  %151 = icmp sge i64 %150, 4
  br i1 %151, label %152, label %154

152:                                              ; preds = %120
  %153 = load ptr, ptr %4, align 8
  store ptr %153, ptr %17, align 8
  br label %156

154:                                              ; preds = %120
  %155 = alloca i8, i64 32, align 16
  store ptr %155, ptr %17, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = load ptr, ptr %17, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 0
  store i64 0, ptr %158, align 8
  %159 = load i64, ptr %6, align 8
  %160 = inttoptr i64 %159 to ptr
  %161 = getelementptr inbounds i64, ptr %160, i64 3
  %162 = load i64, ptr %161, align 8
  %163 = load ptr, ptr %17, align 8
  %164 = getelementptr inbounds i64, ptr %163, i64 1
  store i64 %162, ptr %164, align 8
  %165 = load i64, ptr %10, align 8
  %166 = load ptr, ptr %17, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 2
  store i64 %165, ptr %167, align 8
  %168 = load i64, ptr %11, align 8
  %169 = load ptr, ptr %17, align 8
  %170 = getelementptr inbounds i64, ptr %169, i64 3
  store i64 %168, ptr %170, align 8
  %171 = load ptr, ptr %17, align 8
  call void @C_call_with_values(i64 noundef 4, ptr noundef %171) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1286(i64 noundef %0, ptr noundef %1) #2 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  call void @C_save_and_reclaim(ptr noundef @f_1286, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.95)
  %58 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 19), align 8
  %59 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
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
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 19), align 8
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
define internal void @f_1292(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
  store ptr %40, ptr %13, align 8
  %41 = load ptr, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  %42 = load ptr, ptr %14, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1292, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %9, align 8
  %71 = call i64 @C_i_vector_set(i64 noundef %69, i64 noundef 9, i64 noundef %70)
  store i64 %71, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.96)
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %15, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 0, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %15, align 8
  call void @C_values(i64 noundef 4, ptr noundef %87) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_call_with_values(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1304(i64 noundef %0, ptr noundef %1) #2 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  call void @C_save_and_reclaim(ptr noundef @f_1304, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.97)
  %58 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 22), align 16
  %59 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
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
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 22), align 16
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
define internal void @f_1310(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
  store ptr %40, ptr %13, align 8
  %41 = load ptr, ptr %13, align 8
  store ptr %41, ptr %14, align 8
  %42 = load ptr, ptr %14, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1310, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %9, align 8
  %71 = call i64 @C_i_vector_set(i64 noundef %69, i64 noundef 9, i64 noundef %70)
  store i64 %71, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.98)
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %15, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 0, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %15, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %15, align 8
  call void @C_values(i64 noundef 4, ptr noundef %87) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1328(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_1328, i32 noundef %49, ptr noundef %50) #4
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
  store i64 ptrtoint (ptr @f_1330 to i64), ptr %64, align 8
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
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 ptrtoint (ptr @li22 to i64), ptr %75, align 8
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
  call void @f_1330(i64 noundef %89, i64 noundef %93, i64 noundef 1, i64 noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1330(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
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
  %33 = add nsw i64 12, %32
  %34 = icmp sgt i64 %31, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1330, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 80, align 16
  store ptr %45, ptr %13, align 8
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
  %56 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %55, ptr %56, align 16
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %10, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %63(i64 noundef 2, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %44
  %66 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %66, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_1365 to i64), ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %7, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %5, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %9, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store ptr %87, ptr %13, align 8
  %88 = load i64, ptr %9, align 8
  store i64 %88, ptr %10, align 8
  %89 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %89, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_1369 to i64), ptr %91, align 8
  %92 = load i64, ptr %10, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %9, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 4
  store ptr %101, ptr %13, align 8
  %102 = load i64, ptr %9, align 8
  store i64 %102, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.100)
  %103 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = call ptr @C_fast_retrieve_proc(i64 noundef %106)
  store ptr %107, ptr %17, align 8
  %108 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %111, ptr %112, align 16
  %113 = load i64, ptr %11, align 8
  %114 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %113, ptr %114, align 8
  %115 = load i64, ptr %5, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  %118 = load i64, ptr %117, align 8
  %119 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %118, ptr %119, align 16
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %120(i64 noundef 3, ptr noundef %121) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1330(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1330(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1365(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  %39 = add nsw i32 40, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1365, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 320, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 30), align 16
  %55 = load i64, ptr %7, align 8
  %56 = call i64 @C_s_a_i_times(ptr noundef %11, i64 noundef 2, i64 noundef %54, i64 noundef %55)
  store i64 %56, ptr %8, align 8
  %57 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %57, align 8
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_1357 to i64), ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %5, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store ptr %90, ptr %11, align 8
  %91 = load i64, ptr %5, align 8
  store i64 %91, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.101)
  %92 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 32), align 16
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %94, align 8
  %96 = call ptr @C_fast_retrieve_proc(i64 noundef %95)
  store ptr %96, ptr %14, align 8
  %97 = load i64, ptr %3, align 8
  %98 = icmp sge i64 %97, 3
  br i1 %98, label %99, label %101

99:                                               ; preds = %52
  %100 = load ptr, ptr %4, align 8
  store ptr %100, ptr %15, align 8
  br label %103

101:                                              ; preds = %52
  %102 = alloca i8, i64 24, align 16
  store ptr %102, ptr %15, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 32), align 16
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %9, align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %8, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = load ptr, ptr %15, align 8
  call void %116(i64 noundef 3, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1369(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1369, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.103)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %63 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
define internal void @f_1357(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  call void @C_save_and_reclaim(ptr noundef @f_1357, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1361 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.102)
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 31), align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = call ptr @C_fast_retrieve_proc(i64 noundef %91)
  store ptr %92, ptr %13, align 8
  %93 = load i64, ptr %3, align 8
  %94 = icmp sge i64 %93, 3
  br i1 %94, label %95, label %97

95:                                               ; preds = %51
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %14, align 8
  br label %99

97:                                               ; preds = %51
  %98 = alloca i8, i64 24, align 16
  store ptr %98, ptr %14, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 31), align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %8, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 6
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %13, align 8
  %116 = load ptr, ptr %14, align 8
  call void %115(i64 noundef 3, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1361(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !67
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
  %40 = add nsw i32 32, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1361, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 256, align 16
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
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load i64, ptr %15, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds %struct.C_block_struct, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds [0 x i64], ptr %67, i64 0, i64 0
  store i64 %64, ptr %68, align 8
  %69 = load i64, ptr %7, align 8
  %70 = load i64, ptr %15, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 1
  store i64 %69, ptr %73, align 8
  %74 = load i64, ptr %15, align 8
  store i64 %74, ptr %16, align 8
  %75 = load i64, ptr %16, align 8
  store i64 %75, ptr %8, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %8, align 8
  %85 = call i64 @C_i_vector_set(i64 noundef %79, i64 noundef %83, i64 noundef %84)
  store i64 %85, ptr %9, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %89, i64 noundef 3)
  store i64 %90, ptr %10, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 5
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  store i64 %97, ptr %11, align 8
  %98 = load i64, ptr %11, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 6
  %102 = load i64, ptr %101, align 8
  %103 = load i64, ptr %10, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  %107 = load i64, ptr %106, align 8
  call void @f_1330(i64 noundef %98, i64 noundef %102, i64 noundef %103, i64 noundef %107) #4
  unreachable
}

declare i64 @C_i_vector_length(i64 noundef) #1

declare i64 @C_s_a_i_modulo(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_length(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1402(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
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
  %30 = add nsw i64 11, %29
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1402, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 64, align 16
  store ptr %41, ptr %11, align 8
  %42 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %42, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 ptrtoint (ptr @f_1407 to i64), ptr %44, align 8
  %45 = load i64, ptr %4, align 8
  %46 = inttoptr i64 %45 to ptr
  %47 = getelementptr inbounds i64, ptr %46, i64 2
  %48 = load i64, ptr %47, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %5, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 3
  store i64 %51, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = ptrtoint ptr %54 to i64
  store i64 %55, ptr %7, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 4
  store ptr %57, ptr %11, align 8
  %58 = load i64, ptr %7, align 8
  store i64 %58, ptr %8, align 8
  %59 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %59, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 ptrtoint (ptr @f_1411 to i64), ptr %61, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %4, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %7, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store ptr %74, ptr %11, align 8
  %75 = load i64, ptr %7, align 8
  store i64 %75, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.104)
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %14, align 8
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %81, ptr %82, align 16
  %83 = load i64, ptr %9, align 8
  %84 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %83, ptr %84, align 8
  %85 = load i64, ptr %4, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %88, ptr %89, align 16
  %90 = load i64, ptr %6, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %90, ptr %91, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1417(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  call void @C_save_and_reclaim(ptr noundef @f_1417, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1424 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.106)
  %79 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = call ptr @C_fast_retrieve_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  br label %90

88:                                               ; preds = %51
  %89 = alloca i8, i64 32, align 16
  store ptr %89, ptr %14, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = call i64 @C_i_car(i64 noundef %106)
  %108 = load ptr, ptr %14, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %6, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %14, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = load ptr, ptr %14, align 8
  call void %116(i64 noundef 4, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1438(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1438, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1448 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.107)
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
  call void @f_1402(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
define internal void @trf_1402(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1402(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1407(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  call void @C_save_and_reclaim(ptr noundef @f_1407, i32 noundef %48, ptr noundef %49) #4
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
define internal void @f_1411(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
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
  call void @C_save_and_reclaim(ptr noundef @f_1411, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.105)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 32, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
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
define internal void @f_1424(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1424, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1428 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.106)
  %70 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = call ptr @C_fast_retrieve_proc(i64 noundef %73)
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
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = call i64 @C_i_cdr(i64 noundef %97)
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 4
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = load ptr, ptr %14, align 8
  call void %107(i64 noundef 4, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1428(i64 noundef %0, ptr noundef %1) #2 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  %35 = icmp sgt i64 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1428, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %9, align 8
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
  %61 = load ptr, ptr %9, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %13, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %9, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %13, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 0
  store i64 %70, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load i64, ptr %13, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.C_block_struct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [0 x i64], ptr %78, i64 0, i64 1
  store i64 %75, ptr %79, align 8
  %80 = load i64, ptr %13, align 8
  store i64 %80, ptr %14, align 8
  %81 = load i64, ptr %14, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = load ptr, ptr %12, align 8
  call void %88(i64 noundef 2, ptr noundef %89) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1438(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1438(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
define internal void @f_1448(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  call void @C_save_and_reclaim(ptr noundef @f_1448, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_1438(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1465(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  %39 = icmp sgt i64 %38, 4
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 4
  %42 = add nsw i32 18, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1465, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 144, align 16
  store ptr %56, ptr %16, align 8
  %57 = load ptr, ptr %16, align 8
  store i64 2594073385365405702, ptr %57, align 8
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_1466 to i64), ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %7, align 8
  %67 = load ptr, ptr %16, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %16, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %16, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %16, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store i64 ptrtoint (ptr @li29 to i64), ptr %82, align 8
  %83 = load ptr, ptr %16, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %5, align 8
  %85 = load ptr, ptr %16, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 7
  store ptr %86, ptr %16, align 8
  %87 = load i64, ptr %5, align 8
  store i64 %87, ptr %8, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), align 8
  %93 = call i64 @C_i_check_list_2(i64 noundef %91, i64 noundef %92)
  store i64 %93, ptr %9, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 6
  %97 = load i64, ptr %96, align 8
  %98 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), align 8
  %99 = call i64 @C_i_check_list_2(i64 noundef %97, i64 noundef %98)
  store i64 %99, ptr %10, align 8
  %100 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %100, align 8
  %101 = load ptr, ptr %16, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 ptrtoint (ptr @f_1521 to i64), ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 7
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %7, align 8
  %110 = load ptr, ptr %16, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %16, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  store ptr %115, ptr %16, align 8
  %116 = load i64, ptr %5, align 8
  store i64 %116, ptr %11, align 8
  store i64 30, ptr %12, align 8
  %117 = load ptr, ptr %16, align 8
  store i64 1, ptr %117, align 8
  %118 = load i64, ptr %12, align 8
  %119 = load ptr, ptr %16, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %16, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %5, align 8
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store ptr %124, ptr %16, align 8
  %125 = load i64, ptr %5, align 8
  store i64 %125, ptr %13, align 8
  %126 = load ptr, ptr %16, align 8
  store i64 2594073385365405700, ptr %126, align 8
  %127 = load ptr, ptr %16, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  store i64 ptrtoint (ptr @f_1523 to i64), ptr %128, align 8
  %129 = load i64, ptr %13, align 8
  %130 = load ptr, ptr %16, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 2
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr %8, align 8
  %133 = load ptr, ptr %16, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 3
  store i64 %132, ptr %134, align 8
  %135 = load ptr, ptr %16, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 4
  store i64 ptrtoint (ptr @li30 to i64), ptr %136, align 8
  %137 = load ptr, ptr %16, align 8
  %138 = ptrtoint ptr %137 to i64
  store i64 %138, ptr %5, align 8
  %139 = load ptr, ptr %16, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 5
  store ptr %140, ptr %16, align 8
  %141 = load i64, ptr %5, align 8
  %142 = load i64, ptr %13, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds %struct.C_block_struct, ptr %143, i32 0, i32 1
  %145 = getelementptr inbounds [0 x i64], ptr %144, i64 0, i64 0
  store i64 %141, ptr %145, align 8
  store i64 %141, ptr %14, align 8
  %146 = load i64, ptr %13, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  %149 = load i64, ptr %148, align 8
  store i64 %149, ptr %15, align 8
  %150 = load i64, ptr %15, align 8
  %151 = load i64, ptr %11, align 8
  %152 = load i64, ptr %6, align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 5
  %155 = load i64, ptr %154, align 8
  %156 = load i64, ptr %6, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds i64, ptr %157, i64 6
  %159 = load i64, ptr %158, align 8
  call void @f_1523(i64 noundef %150, i64 noundef %151, i64 noundef %155, i64 noundef %159) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1466(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %16 = alloca [4 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %17 = load i64, ptr @C_timer_interrupt_counter, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, ptr @C_timer_interrupt_counter, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %21

21:                                               ; preds = %20, %4
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
  store ptr %22, ptr %13, align 8
  %23 = load ptr, ptr %13, align 8
  store ptr %23, ptr %14, align 8
  %24 = load ptr, ptr %14, align 8
  %25 = load ptr, ptr @C_stack_limit, align 8
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = load i64, ptr @C_scratch_usage, align 8
  %31 = add nsw i64 10, %30
  %32 = icmp sgt i64 %29, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  %40 = load i64, ptr %7, align 8
  %41 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1466, i32 noundef 4, i64 noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %21
  %43 = alloca i8, i64 56, align 16
  store ptr %43, ptr %12, align 8
  %44 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %44, align 8
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_1470 to i64), ptr %46, align 8
  %47 = load i64, ptr %5, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %12, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %8, align 8
  %54 = load ptr, ptr %12, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %5, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 4
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 5
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %5, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 4
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 6
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %9, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 7
  store ptr %74, ptr %12, align 8
  %75 = load i64, ptr %9, align 8
  store i64 %75, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.109)
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %15, align 8
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %16, i64 0, i64 0
  store i64 %81, ptr %82, align 16
  %83 = load i64, ptr %10, align 8
  %84 = getelementptr inbounds [4 x i64], ptr %16, i64 0, i64 1
  store i64 %83, ptr %84, align 8
  %85 = load i64, ptr %5, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds [4 x i64], ptr %16, i64 0, i64 2
  store i64 %88, ptr %89, align 16
  %90 = load i64, ptr %7, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %16, i64 0, i64 3
  store i64 %90, ptr %91, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds [4 x i64], ptr %16, i64 0, i64 0
  call void %92(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1521(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !78
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
  call void @C_save_and_reclaim(ptr noundef @f_1521, i32 noundef %47, ptr noundef %48) #4
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
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %8, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = load ptr, ptr %12, align 8
  call void %68(i64 noundef 2, ptr noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1523(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %18 = load i64, ptr @C_timer_interrupt_counter, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, ptr @C_timer_interrupt_counter, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %22

22:                                               ; preds = %21, %4
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  %32 = add nsw i64 9, %31
  %33 = icmp sgt i64 %30, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %6, align 8
  %41 = load i64, ptr %7, align 8
  %42 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1523, i32 noundef 4, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42) #4
  unreachable

43:                                               ; preds = %22
  %44 = alloca i8, i64 48, align 16
  store ptr %44, ptr %14, align 8
  %45 = load i64, ptr %7, align 8
  %46 = call i64 @C_i_pairp(i64 noundef %45)
  store i64 %46, ptr %10, align 8
  %47 = load i64, ptr %10, align 8
  %48 = icmp ne i64 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, ptr %8, align 8
  %51 = call i64 @C_i_pairp(i64 noundef %50)
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i64 [ %51, %49 ], [ 6, %52 ]
  store i64 %54, ptr %11, align 8
  %55 = load i64, ptr %11, align 8
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1533 to i64), ptr %60, align 8
  %61 = load i64, ptr %5, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %9, align 8
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 6
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %9, align 8
  store i64 %80, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.114)
  %81 = load i64, ptr %5, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  %84 = load i64, ptr %83, align 8
  store i64 %84, ptr %13, align 8
  %85 = load i64, ptr %13, align 8
  %86 = load i64, ptr %12, align 8
  %87 = load i64, ptr %7, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds %struct.C_block_struct, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds [0 x i64], ptr %89, i64 0, i64 0
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr %8, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds %struct.C_block_struct, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds [0 x i64], ptr %94, i64 0, i64 0
  %96 = load i64, ptr %95, align 8
  call void @f_1466(i64 noundef %85, i64 noundef %86, i64 noundef %91, i64 noundef %96) #4
  unreachable

97:                                               ; preds = %53
  %98 = load i64, ptr %6, align 8
  store i64 %98, ptr %12, align 8
  %99 = load i64, ptr %12, align 8
  %100 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %99, ptr %100, align 16
  %101 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 30, ptr %101, align 8
  %102 = load i64, ptr %12, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %106(i64 noundef 2, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1466(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1466(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1470(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !80
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
  call void @C_save_and_reclaim(ptr noundef @f_1470, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1473 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.110)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 32, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %7, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 4, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1473(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
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
  %38 = add nsw i32 10, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1473, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 80, align 16
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
  store i64 2594073385365405703, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1478 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %9, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 6
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 ptrtoint (ptr @li28 to i64), ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store ptr %94, ptr %12, align 8
  %95 = load i64, ptr %5, align 8
  %96 = load i64, ptr %9, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds %struct.C_block_struct, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds [0 x i64], ptr %98, i64 0, i64 0
  store i64 %95, ptr %99, align 8
  store i64 %95, ptr %10, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %11, align 8
  %104 = load i64, ptr %11, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 5
  %108 = load i64, ptr %107, align 8
  call void @f_1478(i64 noundef %104, i64 noundef %108, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1478(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
  store ptr %21, ptr %11, align 8
  %22 = load ptr, ptr %11, align 8
  store ptr %22, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1478, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 56, align 16
  store ptr %41, ptr %10, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load i64, ptr %4, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  %47 = call i64 @C_i_nequalp(i64 noundef %42, i64 noundef %46)
  %48 = icmp ne i64 %47, 6
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i64, ptr %5, align 8
  store i64 %50, ptr %8, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %51, ptr %52, align 16
  %53 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 30, ptr %53, align 8
  %54 = load i64, ptr %8, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %58(i64 noundef 2, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %40
  %61 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  store i64 ptrtoint (ptr @f_1488 to i64), ptr %63, align 8
  %64 = load i64, ptr %4, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %4, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %5, align 8
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %10, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %7, align 8
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  store ptr %91, ptr %10, align 8
  %92 = load i64, ptr %7, align 8
  store i64 %92, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.111)
  %93 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %94 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %93)
  store ptr %94, ptr %14, align 8
  %95 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %98, ptr %99, align 16
  %100 = load i64, ptr %8, align 8
  %101 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %100, ptr %101, align 8
  %102 = load i64, ptr %4, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 6
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %105, ptr %106, align 16
  %107 = load i64, ptr %6, align 8
  %108 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %107, ptr %108, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %109(i64 noundef 4, ptr noundef %110) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1478(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1478(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1488(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !83
  store ptr %29, ptr %12, align 8
  %30 = load ptr, ptr %12, align 8
  store ptr %30, ptr %13, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = load ptr, ptr @C_stack_limit, align 8
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load i64, ptr %3, align 8
  %38 = icmp sgt i64 %37, 3
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 3
  %41 = add nsw i32 9, %40
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
  call void @C_save_and_reclaim(ptr noundef @f_1488, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 72, align 16
  store ptr %55, ptr %11, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = ptrtoint ptr %56 to i64
  store i64 %57, ptr %14, align 8
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 0
  store i64 216172782113783810, ptr %59, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  store ptr %61, ptr %11, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %14, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds %struct.C_block_struct, ptr %67, i32 0, i32 1
  %69 = getelementptr inbounds [0 x i64], ptr %68, i64 0, i64 0
  store i64 %65, ptr %69, align 8
  %70 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %71 = load i64, ptr %14, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 %70, ptr %74, align 8
  %75 = load i64, ptr %14, align 8
  store i64 %75, ptr %15, align 8
  %76 = load i64, ptr %15, align 8
  store i64 %76, ptr %8, align 8
  %77 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %77, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1494 to i64), ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 6
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %11, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %11, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 6
  store ptr %107, ptr %11, align 8
  %108 = load i64, ptr %5, align 8
  store i64 %108, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.112)
  %109 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %110 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %109)
  store ptr %110, ptr %16, align 8
  %111 = load i64, ptr %3, align 8
  %112 = icmp sge i64 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %54
  %114 = load ptr, ptr %4, align 8
  store ptr %114, ptr %17, align 8
  br label %117

115:                                              ; preds = %54
  %116 = alloca i8, i64 32, align 16
  store ptr %116, ptr %17, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %17, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %9, align 8
  %125 = load ptr, ptr %17, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %8, align 8
  %128 = load ptr, ptr %17, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %7, align 8
  %131 = load ptr, ptr %17, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  store i64 %130, ptr %132, align 8
  %133 = load ptr, ptr %16, align 8
  %134 = load ptr, ptr %17, align 8
  call void %133(i64 noundef 4, ptr noundef %134) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1494(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !84
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
  call void @C_save_and_reclaim(ptr noundef @f_1494, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1508 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.113)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 32, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  %110 = load i64, ptr %109, align 8
  %111 = call i64 @C_i_vector_ref(i64 noundef %106, i64 noundef %110)
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %7, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = load ptr, ptr %14, align 8
  call void %117(i64 noundef 4, ptr noundef %118) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1508(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !85
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %12, align 8
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 29, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1508, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 232, align 16
  store ptr %51, ptr %11, align 8
  %52 = load i64, ptr %6, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 2
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %7, align 8
  %61 = call i64 @C_i_vector_set(i64 noundef %55, i64 noundef %59, i64 noundef %60)
  store i64 %61, ptr %8, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %65, i64 noundef 3)
  store i64 %66, ptr %9, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  store i64 %73, ptr %10, align 8
  %74 = load i64, ptr %10, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load i64, ptr %9, align 8
  call void @f_1478(i64 noundef %74, i64 noundef %78, i64 noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1523(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1523(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1533(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !86
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
  call void @C_save_and_reclaim(ptr noundef @f_1533, i32 noundef %46, ptr noundef %47) #4
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
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 5
  %72 = load i64, ptr %71, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 1
  %76 = load i64, ptr %75, align 8
  call void @f_1523(i64 noundef %56, i64 noundef %60, i64 noundef %68, i64 noundef %76) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1568(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !87
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
  call void @C_save_and_reclaim(ptr noundef @f_1568, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1571 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.116)
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  br label %90

88:                                               ; preds = %51
  %89 = alloca i8, i64 32, align 16
  store ptr %89, ptr %14, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
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
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 4, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1571(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !88
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
  %38 = add nsw i32 10, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1571, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 80, align 16
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
  store i64 2594073385365405703, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1576 to i64), ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %9, align 8
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
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 6
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store i64 ptrtoint (ptr @li34 to i64), ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store ptr %94, ptr %12, align 8
  %95 = load i64, ptr %5, align 8
  %96 = load i64, ptr %9, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds %struct.C_block_struct, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds [0 x i64], ptr %98, i64 0, i64 0
  store i64 %95, ptr %99, align 8
  store i64 %95, ptr %10, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %11, align 8
  %104 = load i64, ptr %11, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 5
  %108 = load i64, ptr %107, align 8
  call void @f_1576(i64 noundef %104, i64 noundef %108, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1576(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = alloca [2 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %3
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !89
  store ptr %27, ptr %17, align 8
  %28 = load ptr, ptr %17, align 8
  store ptr %28, ptr %18, align 8
  %29 = load ptr, ptr %18, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr @C_scratch_usage, align 8
  %36 = add nsw i64 26, %35
  %37 = icmp sgt i64 %34, %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i64, ptr %4, align 8
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1576, i32 noundef 3, i64 noundef %43, i64 noundef %44, i64 noundef %45) #4
  unreachable

46:                                               ; preds = %26
  %47 = alloca i8, i64 184, align 16
  store ptr %47, ptr %16, align 8
  %48 = load i64, ptr %6, align 8
  %49 = load i64, ptr %4, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = call i64 @C_i_nequalp(i64 noundef %48, i64 noundef %52)
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i64, ptr %5, align 8
  store i64 %56, ptr %8, align 8
  %57 = load i64, ptr %8, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %19, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = load i64, ptr %4, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds [2 x i64], ptr %19, i64 0, i64 1
  store i64 %62, ptr %63, align 8
  %64 = load i64, ptr %8, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds [2 x i64], ptr %19, i64 0, i64 0
  call void %68(i64 noundef 2, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %46
  %71 = load ptr, ptr %16, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %20, align 8
  %73 = load ptr, ptr %16, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 216172782113783810, ptr %74, align 8
  %75 = load ptr, ptr %16, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store ptr %76, ptr %16, align 8
  %77 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %78 = load i64, ptr %20, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 0
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %83 = load i64, ptr %20, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  store i64 %82, ptr %86, align 8
  %87 = load i64, ptr %20, align 8
  store i64 %87, ptr %21, align 8
  %88 = load i64, ptr %21, align 8
  store i64 %88, ptr %8, align 8
  %89 = load i64, ptr %8, align 8
  store i64 %89, ptr %9, align 8
  %90 = load ptr, ptr %16, align 8
  store i64 1, ptr %90, align 8
  %91 = load i64, ptr %9, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %16, align 8
  %95 = ptrtoint ptr %94 to i64
  store i64 %95, ptr %7, align 8
  %96 = load ptr, ptr %16, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store ptr %97, ptr %16, align 8
  %98 = load i64, ptr %7, align 8
  store i64 %98, ptr %10, align 8
  %99 = load ptr, ptr %16, align 8
  store i64 2594073385365405702, ptr %99, align 8
  %100 = load ptr, ptr %16, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 ptrtoint (ptr @f_1589 to i64), ptr %101, align 8
  %102 = load i64, ptr %4, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %6, align 8
  %109 = load ptr, ptr %16, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 3
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %10, align 8
  %112 = load ptr, ptr %16, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 4
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %4, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 4
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %16, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 5
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %5, align 8
  %121 = load ptr, ptr %16, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 6
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %16, align 8
  %124 = ptrtoint ptr %123 to i64
  store i64 %124, ptr %7, align 8
  %125 = load ptr, ptr %16, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  store ptr %126, ptr %16, align 8
  %127 = load i64, ptr %7, align 8
  store i64 %127, ptr %11, align 8
  store i64 30, ptr %12, align 8
  %128 = load ptr, ptr %16, align 8
  store i64 1, ptr %128, align 8
  %129 = load i64, ptr %12, align 8
  %130 = load ptr, ptr %16, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %16, align 8
  %133 = ptrtoint ptr %132 to i64
  store i64 %133, ptr %7, align 8
  %134 = load ptr, ptr %16, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store ptr %135, ptr %16, align 8
  %136 = load i64, ptr %7, align 8
  store i64 %136, ptr %13, align 8
  %137 = load ptr, ptr %16, align 8
  store i64 2594073385365405704, ptr %137, align 8
  %138 = load ptr, ptr %16, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  store i64 ptrtoint (ptr @f_1601 to i64), ptr %139, align 8
  %140 = load i64, ptr %4, align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %16, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %10, align 8
  %147 = load ptr, ptr %16, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  store i64 %146, ptr %148, align 8
  %149 = load i64, ptr %13, align 8
  %150 = load ptr, ptr %16, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 4
  store i64 %149, ptr %151, align 8
  %152 = load i64, ptr %4, align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 5
  %155 = load i64, ptr %154, align 8
  %156 = load ptr, ptr %16, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 5
  store i64 %155, ptr %157, align 8
  %158 = load i64, ptr %4, align 8
  %159 = inttoptr i64 %158 to ptr
  %160 = getelementptr inbounds i64, ptr %159, i64 6
  %161 = load i64, ptr %160, align 8
  %162 = load ptr, ptr %16, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 6
  store i64 %161, ptr %163, align 8
  %164 = load i64, ptr %6, align 8
  %165 = load ptr, ptr %16, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 7
  store i64 %164, ptr %166, align 8
  %167 = load ptr, ptr %16, align 8
  %168 = getelementptr inbounds i64, ptr %167, i64 8
  store i64 ptrtoint (ptr @li33 to i64), ptr %168, align 8
  %169 = load ptr, ptr %16, align 8
  %170 = ptrtoint ptr %169 to i64
  store i64 %170, ptr %7, align 8
  %171 = load ptr, ptr %16, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 9
  store ptr %172, ptr %16, align 8
  %173 = load i64, ptr %7, align 8
  %174 = load i64, ptr %13, align 8
  %175 = inttoptr i64 %174 to ptr
  %176 = getelementptr inbounds %struct.C_block_struct, ptr %175, i32 0, i32 1
  %177 = getelementptr inbounds [0 x i64], ptr %176, i64 0, i64 0
  store i64 %173, ptr %177, align 8
  store i64 %173, ptr %14, align 8
  %178 = load i64, ptr %13, align 8
  %179 = inttoptr i64 %178 to ptr
  %180 = getelementptr inbounds i64, ptr %179, i64 1
  %181 = load i64, ptr %180, align 8
  store i64 %181, ptr %15, align 8
  %182 = load i64, ptr %15, align 8
  %183 = load i64, ptr %11, align 8
  call void @f_1601(i64 noundef %182, i64 noundef %183, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1576(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1576(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1589(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !90
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %12, align 8
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 29, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1589, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 232, align 16
  store ptr %51, ptr %11, align 8
  %52 = load i64, ptr %6, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 2
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 4
  %63 = load i64, ptr %62, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = call i64 @C_i_vector_set(i64 noundef %55, i64 noundef %59, i64 noundef %66)
  store i64 %67, ptr %8, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %71, i64 noundef 3)
  store i64 %72, ptr %9, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  store i64 %79, ptr %10, align 8
  %80 = load i64, ptr %10, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr %9, align 8
  call void @f_1576(i64 noundef %80, i64 noundef %84, i64 noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1601(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %15 = alloca [2 x i64], align 16
  %16 = alloca ptr, align 8
  %17 = alloca [4 x i64], align 16
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !91
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
  %32 = add nsw i64 44, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1601, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 328, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %6, align 8
  %45 = load i64, ptr %4, align 8
  %46 = inttoptr i64 %45 to ptr
  %47 = getelementptr inbounds i64, ptr %46, i64 2
  %48 = load i64, ptr %47, align 8
  %49 = call i64 @C_i_nequalp(i64 noundef %44, i64 noundef %48)
  %50 = icmp ne i64 %49, 6
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i64, ptr %5, align 8
  store i64 %52, ptr %8, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  store i64 %53, ptr %54, align 16
  %55 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 30, ptr %55, align 8
  %56 = load i64, ptr %8, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  %59 = load i64, ptr %58, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  call void %60(i64 noundef 2, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %42
  %63 = load ptr, ptr %12, align 8
  store i64 2594073385365405704, ptr %63, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 ptrtoint (ptr @f_1611 to i64), ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %4, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %4, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %5, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %4, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 6
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %4, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 6
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 7
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %4, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 7
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %12, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 8
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %12, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %7, align 8
  %104 = load ptr, ptr %12, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 9
  store ptr %105, ptr %12, align 8
  %106 = load i64, ptr %7, align 8
  store i64 %106, ptr %8, align 8
  %107 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %107, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 ptrtoint (ptr @f_1656 to i64), ptr %109, align 8
  %110 = load i64, ptr %8, align 8
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %12, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %7, align 8
  %115 = load ptr, ptr %12, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store ptr %116, ptr %12, align 8
  %117 = load i64, ptr %7, align 8
  store i64 %117, ptr %9, align 8
  %118 = load i64, ptr %4, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 7
  %121 = load i64, ptr %120, align 8
  %122 = load i64, ptr %6, align 8
  %123 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %121, i64 noundef %122)
  store i64 %123, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.117)
  %124 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 16), align 16
  %125 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %124)
  store ptr %125, ptr %16, align 8
  %126 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 16), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 0
  store i64 %129, ptr %130, align 16
  %131 = load i64, ptr %9, align 8
  %132 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 1
  store i64 %131, ptr %132, align 8
  %133 = load i64, ptr %10, align 8
  %134 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 2
  store i64 %133, ptr %134, align 16
  %135 = load i64, ptr %6, align 8
  %136 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 3
  store i64 %135, ptr %136, align 8
  %137 = load ptr, ptr %16, align 8
  %138 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 0
  call void %137(i64 noundef 4, ptr noundef %138) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1601(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1601(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1611(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !92
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
  %39 = add nsw i32 43, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1611, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 344, align 16
  store ptr %53, ptr %13, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @C_i_oddp(i64 noundef %57)
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 40), align 16
  br label %65

63:                                               ; preds = %52
  %64 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 12), align 16
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  store i64 %66, ptr %9, align 8
  %67 = load ptr, ptr %13, align 8
  store i64 2594073385365405704, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_1617 to i64), ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 4
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 6
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 5
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 7
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 6
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 8
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 9
  store ptr %109, ptr %13, align 8
  %110 = load i64, ptr %5, align 8
  store i64 %110, ptr %10, align 8
  %111 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 ptrtoint (ptr @va2093 to i64), ptr %113, align 8
  %114 = load i64, ptr %10, align 8
  %115 = load ptr, ptr %13, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 7
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %13, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 3
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 4
  store i64 ptrtoint (ptr @li32 to i64), ptr %124, align 8
  %125 = load ptr, ptr %13, align 8
  %126 = ptrtoint ptr %125 to i64
  store i64 %126, ptr %5, align 8
  %127 = load ptr, ptr %13, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 5
  store ptr %128, ptr %13, align 8
  %129 = load i64, ptr %5, align 8
  store i64 %129, ptr %11, align 8
  %130 = load i64, ptr %11, align 8
  store i64 %130, ptr %12, align 8
  %131 = load i64, ptr %12, align 8
  %132 = load i64, ptr %6, align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 8
  %135 = load i64, ptr %134, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 2
  %139 = load i64, ptr %138, align 8
  %140 = call i64 @C_s_a_i_plus(ptr noundef %13, i64 noundef 2, i64 noundef %135, i64 noundef %139)
  call void @va2093(i64 noundef %131, i64 noundef %140) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1656(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !93
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
  call void @C_save_and_reclaim(ptr noundef @f_1656, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.122)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 33), align 8
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

declare i64 @C_i_oddp(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1617(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = load i64, ptr @C_timer_interrupt_counter, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr @C_timer_interrupt_counter, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !94
  store ptr %30, ptr %13, align 8
  %31 = load ptr, ptr %13, align 8
  store ptr %31, ptr %14, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 3
  %42 = add nsw i32 43, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1617, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 344, align 16
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @C_s_a_i_times(ptr noundef %12, i64 noundef 2, i64 noundef %60, i64 noundef %64)
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %15, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 216172782113783810, ptr %69, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store ptr %71, ptr %12, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load i64, ptr %15, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds %struct.C_block_struct, ptr %74, i32 0, i32 1
  %76 = getelementptr inbounds [0 x i64], ptr %75, i64 0, i64 0
  store i64 %72, ptr %76, align 8
  %77 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %78 = load i64, ptr %15, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 1
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr %15, align 8
  store i64 %82, ptr %16, align 8
  %83 = load i64, ptr %16, align 8
  store i64 %83, ptr %9, align 8
  %84 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 ptrtoint (ptr @f_1623 to i64), ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %12, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 6
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 7
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %12, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 5
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 8
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %12, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 6
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %12, align 8
  %118 = ptrtoint ptr %117 to i64
  store i64 %118, ptr %5, align 8
  %119 = load ptr, ptr %12, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 7
  store ptr %120, ptr %12, align 8
  %121 = load i64, ptr %5, align 8
  store i64 %121, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.118)
  %122 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %123 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %122)
  store ptr %123, ptr %17, align 8
  %124 = load i64, ptr %3, align 8
  %125 = icmp sge i64 %124, 4
  br i1 %125, label %126, label %128

126:                                              ; preds = %55
  %127 = load ptr, ptr %4, align 8
  store ptr %127, ptr %18, align 8
  br label %130

128:                                              ; preds = %55
  %129 = alloca i8, i64 32, align 16
  store ptr %129, ptr %18, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %18, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 0
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %10, align 8
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr %9, align 8
  %141 = load ptr, ptr %18, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %7, align 8
  %144 = load ptr, ptr %18, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 3
  store i64 %143, ptr %145, align 8
  %146 = load ptr, ptr %17, align 8
  %147 = load ptr, ptr %18, align 8
  call void %146(i64 noundef 4, ptr noundef %147) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @va2093(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [4 x i64], align 16
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
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !95
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
  %27 = add nsw i64 32, %26
  %28 = icmp sgt i64 %25, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, ptr %3, align 8
  %35 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trva2093, i32 noundef 2, i64 noundef %34, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %17
  %37 = alloca i8, i64 232, align 16
  store ptr %37, ptr %8, align 8
  %38 = load i64, ptr %4, align 8
  %39 = call i64 @C_s_a_i_plus(ptr noundef %8, i64 noundef 2, i64 noundef %38, i64 noundef 3)
  store i64 %39, ptr %6, align 8
  call void @C_trace(ptr noundef @.str.121)
  %40 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %41 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %40)
  store ptr %41, ptr %11, align 8
  %42 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 11), align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = getelementptr inbounds i64, ptr %43, i64 1
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 0
  store i64 %45, ptr %46, align 16
  %47 = load i64, ptr %3, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 1
  store i64 %50, ptr %51, align 8
  %52 = load i64, ptr %3, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 3
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 2
  store i64 %55, ptr %56, align 16
  %57 = load i64, ptr %6, align 8
  %58 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 3
  store i64 %57, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 0
  call void %59(i64 noundef 4, ptr noundef %60) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1623(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !96
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
  call void @C_save_and_reclaim(ptr noundef @f_1623, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1626 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.119)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 32, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 5), align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  %106 = load i64, ptr %105, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  %110 = load i64, ptr %109, align 8
  %111 = call i64 @C_i_vector_ref(i64 noundef %106, i64 noundef %110)
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %7, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = load ptr, ptr %14, align 8
  call void %117(i64 noundef 4, ptr noundef %118) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1626(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !97
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
  call void @C_save_and_reclaim(ptr noundef @f_1626, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1630 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.120)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 32, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %7, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %13, align 8
  %116 = load ptr, ptr %14, align 8
  call void %115(i64 noundef 4, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1630(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !98
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %12, align 8
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 29, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1630, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 232, align 16
  store ptr %51, ptr %11, align 8
  %52 = load i64, ptr %6, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 2
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_mutate(ptr noundef %57, i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %63, i64 noundef 3)
  store i64 %64, ptr %9, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 4
  %68 = load i64, ptr %67, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %10, align 8
  %72 = load i64, ptr %10, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load i64, ptr %9, align 8
  call void @f_1601(i64 noundef %72, i64 noundef %76, i64 noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trva2093(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @va2093(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1670(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !99
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
  call void @C_save_and_reclaim(ptr noundef @f_1670, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405704, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1673 to i64), ptr %56, align 8
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
  %93 = load i64, ptr %7, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 8
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 9
  store ptr %99, ptr %11, align 8
  %100 = load i64, ptr %5, align 8
  store i64 %100, ptr %8, align 8
  %101 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %101, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_1886 to i64), ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load ptr, ptr %11, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %7, align 8
  %108 = load ptr, ptr %11, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %11, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 4
  store ptr %113, ptr %11, align 8
  %114 = load i64, ptr %5, align 8
  store i64 %114, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.124)
  %115 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 17), align 8
  %116 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %115)
  store ptr %116, ptr %14, align 8
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %15, align 8
  %118 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 17), align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %15, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 0
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %9, align 8
  %125 = load ptr, ptr %15, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load ptr, ptr %14, align 8
  %128 = load ptr, ptr %15, align 8
  call void %127(i64 noundef 2, ptr noundef %128) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1673(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !100
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
  call void @C_save_and_reclaim(ptr noundef @f_1673, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %7, align 8
  store i64 %55, ptr %8, align 8
  %56 = load ptr, ptr %12, align 8
  store i64 1, ptr %56, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 %57, ptr %59, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %5, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store ptr %63, ptr %12, align 8
  %64 = load i64, ptr %5, align 8
  store i64 %64, ptr %9, align 8
  %65 = load ptr, ptr %12, align 8
  store i64 2594073385365405705, ptr %65, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_1676 to i64), ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %9, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 5
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 6
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 6
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 7
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 8
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 8
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 9
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %12, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %5, align 8
  %115 = load ptr, ptr %12, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 10
  store ptr %116, ptr %12, align 8
  %117 = load i64, ptr %5, align 8
  store i64 %117, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.125)
  %118 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %119 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %118)
  store ptr %119, ptr %15, align 8
  %120 = load i64, ptr %3, align 8
  %121 = icmp sge i64 %120, 4
  br i1 %121, label %122, label %124

122:                                              ; preds = %53
  %123 = load ptr, ptr %4, align 8
  store ptr %123, ptr %16, align 8
  br label %126

124:                                              ; preds = %53
  %125 = alloca i8, i64 32, align 16
  store ptr %125, ptr %16, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 0
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %10, align 8
  %134 = load ptr, ptr %16, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 6
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %16, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 4
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %16, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 %145, ptr %147, align 8
  %148 = load ptr, ptr %15, align 8
  %149 = load ptr, ptr %16, align 8
  call void %148(i64 noundef 4, ptr noundef %149) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1886(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !101
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
  %38 = add nsw i32 2, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_1886, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 16, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %7, align 8
  %54 = call i64 @C_a_i_vector1(ptr noundef %10, i32 noundef 1, i64 noundef %53)
  store i64 %54, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.143)
  %55 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 44), align 16
  %56 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %55)
  store ptr %56, ptr %13, align 8
  %57 = load i64, ptr %3, align 8
  %58 = icmp sge i64 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load ptr, ptr %4, align 8
  store ptr %60, ptr %14, align 8
  br label %63

61:                                               ; preds = %51
  %62 = alloca i8, i64 32, align 16
  store ptr %62, ptr %14, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 44), align 16
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = load ptr, ptr %14, align 8
  call void %85(i64 noundef 4, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1676(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !102
  store ptr %31, ptr %14, align 8
  %32 = load ptr, ptr %14, align 8
  store ptr %32, ptr %15, align 8
  %33 = load ptr, ptr %15, align 8
  %34 = load ptr, ptr @C_stack_limit, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i64, ptr %3, align 8
  %40 = icmp sgt i64 %39, 2
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 2
  %43 = add nsw i32 16, %42
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
  call void @C_save_and_reclaim(ptr noundef @f_1676, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 128, align 16
  store ptr %57, ptr %13, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = ptrtoint ptr %58 to i64
  store i64 %59, ptr %16, align 8
  %60 = load ptr, ptr %13, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 0
  store i64 216172782113783810, ptr %61, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %65 = load i64, ptr %16, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds %struct.C_block_struct, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds [0 x i64], ptr %67, i64 0, i64 0
  store i64 %64, ptr %68, align 8
  %69 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %70 = load i64, ptr %16, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 1
  store i64 %69, ptr %73, align 8
  %74 = load i64, ptr %16, align 8
  store i64 %74, ptr %17, align 8
  %75 = load i64, ptr %17, align 8
  store i64 %75, ptr %8, align 8
  %76 = load i64, ptr %8, align 8
  store i64 %76, ptr %9, align 8
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
  store i64 2594073385365405706, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1682 to i64), ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %10, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 4
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 5
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %6, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 5
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 6
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 6
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 7
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %7, align 8
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 8
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 7
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 9
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 8
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 10
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %13, align 8
  %138 = ptrtoint ptr %137 to i64
  store i64 %138, ptr %5, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 11
  store ptr %140, ptr %13, align 8
  %141 = load i64, ptr %5, align 8
  store i64 %141, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.126)
  %142 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 27), align 8
  %143 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %142)
  store ptr %143, ptr %18, align 8
  %144 = load i64, ptr %3, align 8
  %145 = icmp sge i64 %144, 3
  br i1 %145, label %146, label %148

146:                                              ; preds = %56
  %147 = load ptr, ptr %4, align 8
  store ptr %147, ptr %19, align 8
  br label %150

148:                                              ; preds = %56
  %149 = alloca i8, i64 24, align 16
  store ptr %149, ptr %19, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 27), align 8
  %152 = inttoptr i64 %151 to ptr
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  %154 = load i64, ptr %153, align 8
  %155 = load ptr, ptr %19, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 0
  store i64 %154, ptr %156, align 8
  %157 = load i64, ptr %11, align 8
  %158 = load ptr, ptr %19, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  store i64 %157, ptr %159, align 8
  %160 = load i64, ptr %6, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 9
  %163 = load i64, ptr %162, align 8
  %164 = load ptr, ptr %19, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 2
  store i64 %163, ptr %165, align 8
  %166 = load ptr, ptr %18, align 8
  %167 = load ptr, ptr %19, align 8
  call void %166(i64 noundef 3, ptr noundef %167) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1682(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !103
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
  %40 = add nsw i32 19, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1682, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 152, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = call i64 @C_i_vector_length(i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load ptr, ptr %14, align 8
  store i64 2594073385365405706, ptr %60, align 8
  %61 = load ptr, ptr %14, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_1688 to i64), ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 6
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 6
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 7
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 7
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 8
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 8
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 9
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 9
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 10
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 10
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = ptrtoint ptr %117 to i64
  store i64 %118, ptr %5, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 11
  store ptr %120, ptr %14, align 8
  %121 = load i64, ptr %5, align 8
  store i64 %121, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %122 = load ptr, ptr %14, align 8
  store i64 1, ptr %122, align 8
  %123 = load i64, ptr %10, align 8
  %124 = load ptr, ptr %14, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %14, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store ptr %129, ptr %14, align 8
  %130 = load i64, ptr %5, align 8
  store i64 %130, ptr %11, align 8
  %131 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %131, align 8
  %132 = load ptr, ptr %14, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  store i64 ptrtoint (ptr @f_1860 to i64), ptr %133, align 8
  %134 = load i64, ptr %8, align 8
  %135 = load ptr, ptr %14, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %6, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 5
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %14, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 3
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %11, align 8
  %144 = load ptr, ptr %14, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 4
  store i64 %143, ptr %145, align 8
  %146 = load ptr, ptr %14, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 5
  store i64 ptrtoint (ptr @li43 to i64), ptr %147, align 8
  %148 = load ptr, ptr %14, align 8
  %149 = ptrtoint ptr %148 to i64
  store i64 %149, ptr %5, align 8
  %150 = load ptr, ptr %14, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 6
  store ptr %151, ptr %14, align 8
  %152 = load i64, ptr %5, align 8
  %153 = load i64, ptr %11, align 8
  %154 = inttoptr i64 %153 to ptr
  %155 = getelementptr inbounds %struct.C_block_struct, ptr %154, i32 0, i32 1
  %156 = getelementptr inbounds [0 x i64], ptr %155, i64 0, i64 0
  store i64 %152, ptr %156, align 8
  store i64 %152, ptr %12, align 8
  %157 = load i64, ptr %11, align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  %160 = load i64, ptr %159, align 8
  store i64 %160, ptr %13, align 8
  %161 = load i64, ptr %13, align 8
  %162 = load i64, ptr %9, align 8
  call void @f_1860(i64 noundef %161, i64 noundef %162, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1688(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !104
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
  %39 = add nsw i32 18, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1688, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 144, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1691 to i64), ptr %56, align 8
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
  %69 = load ptr, ptr %13, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %5, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store ptr %72, ptr %13, align 8
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %74 = load ptr, ptr %13, align 8
  store i64 1, ptr %74, align 8
  %75 = load i64, ptr %9, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store ptr %81, ptr %13, align 8
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %10, align 8
  %83 = load ptr, ptr %13, align 8
  store i64 2594073385365405707, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_1693 to i64), ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %10, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 6
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 7
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %13, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 6
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 7
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %6, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 8
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 8
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 9
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %13, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 9
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 10
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 10
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %13, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 11
  store i64 ptrtoint (ptr @li42 to i64), ptr %138, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = ptrtoint ptr %139 to i64
  store i64 %140, ptr %5, align 8
  %141 = load ptr, ptr %13, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 12
  store ptr %142, ptr %13, align 8
  %143 = load i64, ptr %5, align 8
  %144 = load i64, ptr %10, align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds %struct.C_block_struct, ptr %145, i32 0, i32 1
  %147 = getelementptr inbounds [0 x i64], ptr %146, i64 0, i64 0
  store i64 %143, ptr %147, align 8
  store i64 %143, ptr %11, align 8
  %148 = load i64, ptr %10, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 1
  %151 = load i64, ptr %150, align 8
  store i64 %151, ptr %12, align 8
  %152 = load i64, ptr %12, align 8
  %153 = load i64, ptr %8, align 8
  call void @f_1693(i64 noundef %152, i64 noundef %153) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1860(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !105
  store ptr %21, ptr %11, align 8
  %22 = load ptr, ptr %11, align 8
  store ptr %22, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = load ptr, ptr @C_stack_limit, align 8
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = load i64, ptr @C_scratch_usage, align 8
  %30 = add nsw i64 9, %29
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1860, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 48, align 16
  store ptr %41, ptr %10, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load i64, ptr %4, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  %47 = call i64 @C_i_nequalp(i64 noundef %42, i64 noundef %46)
  %48 = icmp ne i64 %47, 6
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i64, ptr %5, align 8
  store i64 %50, ptr %8, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %51, ptr %52, align 16
  %53 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 30, ptr %53, align 8
  %54 = load i64, ptr %8, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %58(i64 noundef 2, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %40
  %61 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  store i64 ptrtoint (ptr @f_1871 to i64), ptr %63, align 8
  %64 = load i64, ptr %4, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %4, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %5, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %7, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store ptr %85, ptr %10, align 8
  %86 = load i64, ptr %7, align 8
  store i64 %86, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.142)
  %87 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 23), align 8
  %88 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %87)
  store ptr %88, ptr %14, align 8
  %89 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 23), align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %92, ptr %93, align 16
  %94 = load i64, ptr %8, align 8
  %95 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %94, ptr %95, align 8
  %96 = load i64, ptr %4, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  %99 = load i64, ptr %98, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %102, ptr %103, align 16
  %104 = load i64, ptr %6, align 8
  %105 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %104, ptr %105, align 8
  %106 = load ptr, ptr %14, align 8
  %107 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %106(i64 noundef 4, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1691(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !106
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
  call void @C_save_and_reclaim(ptr noundef @f_1691, i32 noundef %47, ptr noundef %48) #4
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
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  %61 = load i64, ptr %60, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = load ptr, ptr %12, align 8
  call void %71(i64 noundef 2, ptr noundef %72) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1693(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [4 x i64], align 16
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
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !107
  store ptr %18, ptr %10, align 8
  %19 = load ptr, ptr %10, align 8
  store ptr %19, ptr %11, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr @C_stack_limit, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = load i64, ptr @C_scratch_usage, align 8
  %27 = add nsw i64 20, %26
  %28 = icmp sgt i64 %25, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, ptr %3, align 8
  %35 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1693, i32 noundef 2, i64 noundef %34, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %17
  %37 = alloca i8, i64 128, align 16
  store ptr %37, ptr %9, align 8
  %38 = load ptr, ptr %9, align 8
  store i64 2594073385365405699, ptr %38, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds i64, ptr %39, i64 1
  store i64 ptrtoint (ptr @f_1699 to i64), ptr %40, align 8
  %41 = load i64, ptr %3, align 8
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds i64, ptr %42, i64 2
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %46, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 ptrtoint (ptr @li36 to i64), ptr %48, align 8
  %49 = load ptr, ptr %9, align 8
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %5, align 8
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 4
  store ptr %52, ptr %9, align 8
  %53 = load i64, ptr %5, align 8
  store i64 %53, ptr %6, align 8
  %54 = load ptr, ptr %9, align 8
  store i64 2594073385365405707, ptr %54, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1705 to i64), ptr %56, align 8
  %57 = load i64, ptr %3, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %3, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %3, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %3, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %9, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %3, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %9, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %3, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %9, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 7
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %3, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 8
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %9, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 8
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %3, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %9, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 9
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %3, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 10
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %9, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 10
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %9, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 11
  store i64 ptrtoint (ptr @li41 to i64), ptr %112, align 8
  %113 = load ptr, ptr %9, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %5, align 8
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 12
  store ptr %116, ptr %9, align 8
  %117 = load i64, ptr %5, align 8
  store i64 %117, ptr %7, align 8
  call void @C_trace(ptr noundef @.str.127)
  %118 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 0
  store i64 0, ptr %118, align 16
  %119 = load i64, ptr %4, align 8
  %120 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 1
  store i64 %119, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 2
  store i64 %121, ptr %122, align 16
  %123 = load i64, ptr %7, align 8
  %124 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 3
  store i64 %123, ptr %124, align 8
  %125 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 0
  call void @C_call_with_values(i64 noundef 4, ptr noundef %125) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1693(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1693(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1699(i64 noundef %0, ptr noundef %1) #2 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !108
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
  call void @C_save_and_reclaim(ptr noundef @f_1699, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.128)
  %58 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 26), align 16
  %59 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %58)
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
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 26), align 16
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
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = load ptr, ptr %13, align 8
  call void %85(i64 noundef 3, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1705(i64 noundef %0, ptr noundef %1) #2 {
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
  %34 = load i64, ptr %3, align 8
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i64, ptr %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %38, i32 noundef 4, i64 noundef %39) #4
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
  %46 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !109
  store ptr %46, ptr %16, align 8
  %47 = load ptr, ptr %16, align 8
  store ptr %47, ptr %17, align 8
  %48 = load ptr, ptr %17, align 8
  %49 = load ptr, ptr @C_stack_limit, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sgt i64 %54, 3
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 3
  %58 = add nsw i32 14, %57
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
  call void @C_save_and_reclaim(ptr noundef @f_1705, i32 noundef %69, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %45
  %72 = alloca i8, i64 112, align 16
  store ptr %72, ptr %15, align 8
  %73 = load i64, ptr %8, align 8
  %74 = icmp ne i64 %73, 6
  br i1 %74, label %75, label %195

75:                                               ; preds = %71
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  %79 = load i64, ptr %78, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %9, align 8
  %83 = call i64 @C_mutate(ptr noundef %81, i64 noundef %82)
  store i64 %83, ptr %10, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %8, align 8
  %89 = call i64 @C_i_vector_ref(i64 noundef %87, i64 noundef %88)
  store i64 %89, ptr %11, align 8
  %90 = load ptr, ptr %15, align 8
  store i64 2594073385365405699, ptr %90, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 ptrtoint (ptr @f_1716 to i64), ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %7, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %5, align 8
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store ptr %105, ptr %15, align 8
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %12, align 8
  %107 = load i64, ptr %11, align 8
  %108 = icmp eq i64 %107, 14
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i64 22, i64 6
  %111 = icmp ne i64 %110, 6
  br i1 %111, label %112, label %121

112:                                              ; preds = %75
  %113 = load i64, ptr %12, align 8
  store i64 %113, ptr %13, align 8
  %114 = load ptr, ptr %4, align 8
  store ptr %114, ptr %18, align 8
  %115 = load i64, ptr %13, align 8
  %116 = load ptr, ptr %18, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 0
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 30, ptr %119, align 8
  %120 = load ptr, ptr %18, align 8
  call void @f_1716(i64 noundef 2, ptr noundef %120) #4
  unreachable

121:                                              ; preds = %75
  %122 = load ptr, ptr %15, align 8
  store i64 2594073385365405705, ptr %122, align 8
  %123 = load ptr, ptr %15, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 ptrtoint (ptr @f_1725 to i64), ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 5
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %15, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 2
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 6
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %15, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 3
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %6, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 7
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %15, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 4
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %6, align 8
  %144 = inttoptr i64 %143 to ptr
  %145 = getelementptr inbounds i64, ptr %144, i64 8
  %146 = load i64, ptr %145, align 8
  %147 = load ptr, ptr %15, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 5
  store i64 %146, ptr %148, align 8
  %149 = load i64, ptr %6, align 8
  %150 = inttoptr i64 %149 to ptr
  %151 = getelementptr inbounds i64, ptr %150, i64 9
  %152 = load i64, ptr %151, align 8
  %153 = load ptr, ptr %15, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 6
  store i64 %152, ptr %154, align 8
  %155 = load i64, ptr %11, align 8
  %156 = load ptr, ptr %15, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 7
  store i64 %155, ptr %157, align 8
  %158 = load i64, ptr %12, align 8
  %159 = load ptr, ptr %15, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 8
  store i64 %158, ptr %160, align 8
  %161 = load i64, ptr %6, align 8
  %162 = inttoptr i64 %161 to ptr
  %163 = getelementptr inbounds i64, ptr %162, i64 10
  %164 = load i64, ptr %163, align 8
  %165 = load ptr, ptr %15, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 9
  store i64 %164, ptr %166, align 8
  %167 = load ptr, ptr %15, align 8
  %168 = ptrtoint ptr %167 to i64
  store i64 %168, ptr %5, align 8
  %169 = load ptr, ptr %15, align 8
  %170 = getelementptr inbounds i64, ptr %169, i64 10
  store ptr %170, ptr %15, align 8
  %171 = load i64, ptr %5, align 8
  store i64 %171, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.129)
  %172 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), align 16
  %173 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %172)
  store ptr %173, ptr %19, align 8
  %174 = load ptr, ptr %4, align 8
  store ptr %174, ptr %20, align 8
  %175 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 36), align 16
  %176 = inttoptr i64 %175 to ptr
  %177 = getelementptr inbounds i64, ptr %176, i64 1
  %178 = load i64, ptr %177, align 8
  %179 = load ptr, ptr %20, align 8
  %180 = getelementptr inbounds i64, ptr %179, i64 0
  store i64 %178, ptr %180, align 8
  %181 = load i64, ptr %13, align 8
  %182 = load ptr, ptr %20, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 1
  store i64 %181, ptr %183, align 8
  %184 = load i64, ptr %6, align 8
  %185 = inttoptr i64 %184 to ptr
  %186 = getelementptr inbounds i64, ptr %185, i64 9
  %187 = load i64, ptr %186, align 8
  %188 = load ptr, ptr %20, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 2
  store i64 %187, ptr %189, align 8
  %190 = load i64, ptr %11, align 8
  %191 = load ptr, ptr %20, align 8
  %192 = getelementptr inbounds i64, ptr %191, i64 3
  store i64 %190, ptr %192, align 8
  %193 = load ptr, ptr %19, align 8
  %194 = load ptr, ptr %20, align 8
  call void %193(i64 noundef 4, ptr noundef %194) #4
  unreachable

195:                                              ; preds = %71
  %196 = load i64, ptr %7, align 8
  store i64 %196, ptr %10, align 8
  %197 = load ptr, ptr %4, align 8
  store ptr %197, ptr %21, align 8
  %198 = load i64, ptr %10, align 8
  %199 = load ptr, ptr %21, align 8
  %200 = getelementptr inbounds i64, ptr %199, i64 0
  store i64 %198, ptr %200, align 8
  %201 = load ptr, ptr %21, align 8
  %202 = getelementptr inbounds i64, ptr %201, i64 1
  store i64 30, ptr %202, align 8
  %203 = load i64, ptr %10, align 8
  %204 = inttoptr i64 %203 to ptr
  %205 = getelementptr inbounds i64, ptr %204, i64 1
  %206 = load i64, ptr %205, align 8
  %207 = inttoptr i64 %206 to ptr
  %208 = load ptr, ptr %21, align 8
  call void %207(i64 noundef 2, ptr noundef %208) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1716(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !110
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
  %32 = icmp sgt i64 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1716, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.130)
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
  call void @f_1693(i64 noundef %56, i64 noundef %60) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1725(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !111
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
  %39 = add nsw i32 14, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1725, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 112, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405706, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1728 to i64), ptr %56, align 8
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
  %99 = load i64, ptr %7, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %6, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 9
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %11, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 10
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %11, align 8
  %109 = ptrtoint ptr %108 to i64
  store i64 %109, ptr %5, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 11
  store ptr %111, ptr %11, align 8
  %112 = load i64, ptr %5, align 8
  store i64 %112, ptr %8, align 8
  %113 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %113, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 ptrtoint (ptr @f_1858 to i64), ptr %115, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load ptr, ptr %11, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %11, align 8
  %120 = ptrtoint ptr %119 to i64
  store i64 %120, ptr %5, align 8
  %121 = load ptr, ptr %11, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 3
  store ptr %122, ptr %11, align 8
  %123 = load i64, ptr %5, align 8
  store i64 %123, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.131)
  %124 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %125 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %124)
  store ptr %125, ptr %14, align 8
  %126 = load i64, ptr %3, align 8
  %127 = icmp sge i64 %126, 4
  br i1 %127, label %128, label %130

128:                                              ; preds = %52
  %129 = load ptr, ptr %4, align 8
  store ptr %129, ptr %15, align 8
  br label %132

130:                                              ; preds = %52
  %131 = alloca i8, i64 32, align 16
  store ptr %131, ptr %15, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  %137 = load ptr, ptr %15, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 0
  store i64 %136, ptr %138, align 8
  %139 = load i64, ptr %9, align 8
  %140 = load ptr, ptr %15, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 5
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %15, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %7, align 8
  %149 = load ptr, ptr %15, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 3
  store i64 %148, ptr %150, align 8
  %151 = load ptr, ptr %14, align 8
  %152 = load ptr, ptr %15, align 8
  call void %151(i64 noundef 4, ptr noundef %152) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1728(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = load i64, ptr @C_timer_interrupt_counter, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr @C_timer_interrupt_counter, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %35

35:                                               ; preds = %34, %2
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !112
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
  %45 = icmp sgt i64 %44, 3
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 3
  %48 = add nsw i32 32, %47
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
  call void @C_save_and_reclaim(ptr noundef @f_1728, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 256, align 16
  store ptr %62, ptr %20, align 8
  %63 = load i64, ptr %7, align 8
  %64 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 42), align 16
  %65 = call i64 @C_i_lessp(i64 noundef %63, i64 noundef %64)
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %156

67:                                               ; preds = %61
  %68 = load ptr, ptr %20, align 8
  store i64 2594073385365405703, ptr %68, align 8
  %69 = load ptr, ptr %20, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1735 to i64), ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %20, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %20, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 5
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %20, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 6
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %20, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 6
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %20, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 7
  store i64 ptrtoint (ptr @li37 to i64), ptr %102, align 8
  %103 = load ptr, ptr %20, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 8
  store ptr %106, ptr %20, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %8, align 8
  %108 = load i64, ptr %6, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 7
  %111 = load i64, ptr %110, align 8
  %112 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 37), align 8
  %113 = call i64 @C_i_check_list_2(i64 noundef %111, i64 noundef %112)
  store i64 %113, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %114 = load ptr, ptr %20, align 8
  store i64 1, ptr %114, align 8
  %115 = load i64, ptr %10, align 8
  %116 = load ptr, ptr %20, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = ptrtoint ptr %118 to i64
  store i64 %119, ptr %5, align 8
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store ptr %121, ptr %20, align 8
  %122 = load i64, ptr %5, align 8
  store i64 %122, ptr %11, align 8
  %123 = load ptr, ptr %20, align 8
  store i64 2594073385365405700, ptr %123, align 8
  %124 = load ptr, ptr %20, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  store i64 ptrtoint (ptr @f_1770 to i64), ptr %125, align 8
  %126 = load i64, ptr %11, align 8
  %127 = load ptr, ptr %20, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %8, align 8
  %130 = load ptr, ptr %20, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 3
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %20, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 4
  store i64 ptrtoint (ptr @li38 to i64), ptr %133, align 8
  %134 = load ptr, ptr %20, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %5, align 8
  %136 = load ptr, ptr %20, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 5
  store ptr %137, ptr %20, align 8
  %138 = load i64, ptr %5, align 8
  %139 = load i64, ptr %11, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds %struct.C_block_struct, ptr %140, i32 0, i32 1
  %142 = getelementptr inbounds [0 x i64], ptr %141, i64 0, i64 0
  store i64 %138, ptr %142, align 8
  store i64 %138, ptr %12, align 8
  %143 = load i64, ptr %11, align 8
  %144 = inttoptr i64 %143 to ptr
  %145 = getelementptr inbounds i64, ptr %144, i64 1
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %13, align 8
  %147 = load i64, ptr %13, align 8
  %148 = load i64, ptr %6, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 8
  %151 = load i64, ptr %150, align 8
  %152 = load i64, ptr %6, align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 7
  %155 = load i64, ptr %154, align 8
  call void @f_1770(i64 noundef %147, i64 noundef %151, i64 noundef %155) #4
  unreachable

156:                                              ; preds = %61
  %157 = load ptr, ptr %20, align 8
  store i64 2594073385365405702, ptr %157, align 8
  %158 = load ptr, ptr %20, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  store i64 ptrtoint (ptr @f_1794 to i64), ptr %159, align 8
  %160 = load i64, ptr %6, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 4
  %163 = load i64, ptr %162, align 8
  %164 = load ptr, ptr %20, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 2
  store i64 %163, ptr %165, align 8
  %166 = load i64, ptr %6, align 8
  %167 = inttoptr i64 %166 to ptr
  %168 = getelementptr inbounds i64, ptr %167, i64 8
  %169 = load i64, ptr %168, align 8
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 3
  store i64 %169, ptr %171, align 8
  %172 = load i64, ptr %6, align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 9
  %175 = load i64, ptr %174, align 8
  %176 = load ptr, ptr %20, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 4
  store i64 %175, ptr %177, align 8
  %178 = load i64, ptr %6, align 8
  %179 = inttoptr i64 %178 to ptr
  %180 = getelementptr inbounds i64, ptr %179, i64 5
  %181 = load i64, ptr %180, align 8
  %182 = load ptr, ptr %20, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 5
  store i64 %181, ptr %183, align 8
  %184 = load i64, ptr %6, align 8
  %185 = inttoptr i64 %184 to ptr
  %186 = getelementptr inbounds i64, ptr %185, i64 10
  %187 = load i64, ptr %186, align 8
  %188 = load ptr, ptr %20, align 8
  %189 = getelementptr inbounds i64, ptr %188, i64 6
  store i64 %187, ptr %189, align 8
  %190 = load ptr, ptr %20, align 8
  %191 = ptrtoint ptr %190 to i64
  store i64 %191, ptr %5, align 8
  %192 = load ptr, ptr %20, align 8
  %193 = getelementptr inbounds i64, ptr %192, i64 7
  store ptr %193, ptr %20, align 8
  %194 = load i64, ptr %5, align 8
  store i64 %194, ptr %8, align 8
  %195 = load ptr, ptr %20, align 8
  %196 = ptrtoint ptr %195 to i64
  store i64 %196, ptr %23, align 8
  %197 = load ptr, ptr %20, align 8
  %198 = getelementptr inbounds i64, ptr %197, i64 0
  store i64 216172782113783810, ptr %198, align 8
  %199 = load ptr, ptr %20, align 8
  %200 = getelementptr inbounds i64, ptr %199, i64 3
  store ptr %200, ptr %20, align 8
  %201 = load i64, ptr %23, align 8
  %202 = inttoptr i64 %201 to ptr
  %203 = getelementptr inbounds %struct.C_block_struct, ptr %202, i32 0, i32 1
  %204 = getelementptr inbounds [0 x i64], ptr %203, i64 0, i64 0
  store i64 30, ptr %204, align 8
  %205 = load i64, ptr %23, align 8
  %206 = inttoptr i64 %205 to ptr
  %207 = getelementptr inbounds %struct.C_block_struct, ptr %206, i32 0, i32 1
  %208 = getelementptr inbounds [0 x i64], ptr %207, i64 0, i64 1
  store i64 14, ptr %208, align 8
  %209 = load i64, ptr %23, align 8
  store i64 %209, ptr %24, align 8
  %210 = load i64, ptr %24, align 8
  store i64 %210, ptr %9, align 8
  %211 = load i64, ptr %9, align 8
  store i64 %211, ptr %10, align 8
  %212 = load ptr, ptr %20, align 8
  store i64 1, ptr %212, align 8
  %213 = load i64, ptr %10, align 8
  %214 = load ptr, ptr %20, align 8
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  store i64 %213, ptr %215, align 8
  %216 = load ptr, ptr %20, align 8
  %217 = ptrtoint ptr %216 to i64
  store i64 %217, ptr %5, align 8
  %218 = load ptr, ptr %20, align 8
  %219 = getelementptr inbounds i64, ptr %218, i64 2
  store ptr %219, ptr %20, align 8
  %220 = load i64, ptr %5, align 8
  store i64 %220, ptr %11, align 8
  %221 = load i64, ptr %11, align 8
  %222 = inttoptr i64 %221 to ptr
  %223 = getelementptr inbounds i64, ptr %222, i64 1
  %224 = load i64, ptr %223, align 8
  store i64 %224, ptr %12, align 8
  %225 = load ptr, ptr %20, align 8
  store i64 2594073385365405699, ptr %225, align 8
  %226 = load ptr, ptr %20, align 8
  %227 = getelementptr inbounds i64, ptr %226, i64 1
  store i64 ptrtoint (ptr @f_1810 to i64), ptr %227, align 8
  %228 = load i64, ptr %6, align 8
  %229 = inttoptr i64 %228 to ptr
  %230 = getelementptr inbounds i64, ptr %229, i64 3
  %231 = load i64, ptr %230, align 8
  %232 = load ptr, ptr %20, align 8
  %233 = getelementptr inbounds i64, ptr %232, i64 2
  store i64 %231, ptr %233, align 8
  %234 = load ptr, ptr %20, align 8
  %235 = getelementptr inbounds i64, ptr %234, i64 3
  store i64 ptrtoint (ptr @li39 to i64), ptr %235, align 8
  %236 = load ptr, ptr %20, align 8
  %237 = ptrtoint ptr %236 to i64
  store i64 %237, ptr %5, align 8
  %238 = load ptr, ptr %20, align 8
  %239 = getelementptr inbounds i64, ptr %238, i64 4
  store ptr %239, ptr %20, align 8
  %240 = load i64, ptr %5, align 8
  store i64 %240, ptr %13, align 8
  %241 = load i64, ptr %6, align 8
  %242 = inttoptr i64 %241 to ptr
  %243 = getelementptr inbounds i64, ptr %242, i64 7
  %244 = load i64, ptr %243, align 8
  %245 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 43), align 8
  %246 = call i64 @C_i_check_list_2(i64 noundef %244, i64 noundef %245)
  store i64 %246, ptr %14, align 8
  %247 = load ptr, ptr %20, align 8
  store i64 2594073385365405702, ptr %247, align 8
  %248 = load ptr, ptr %20, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 1
  store i64 ptrtoint (ptr @f_1820 to i64), ptr %249, align 8
  %250 = load i64, ptr %8, align 8
  %251 = load ptr, ptr %20, align 8
  %252 = getelementptr inbounds i64, ptr %251, i64 2
  store i64 %250, ptr %252, align 8
  %253 = load i64, ptr %6, align 8
  %254 = inttoptr i64 %253 to ptr
  %255 = getelementptr inbounds i64, ptr %254, i64 6
  %256 = load i64, ptr %255, align 8
  %257 = load ptr, ptr %20, align 8
  %258 = getelementptr inbounds i64, ptr %257, i64 3
  store i64 %256, ptr %258, align 8
  %259 = load i64, ptr %6, align 8
  %260 = inttoptr i64 %259 to ptr
  %261 = getelementptr inbounds i64, ptr %260, i64 7
  %262 = load i64, ptr %261, align 8
  %263 = load ptr, ptr %20, align 8
  %264 = getelementptr inbounds i64, ptr %263, i64 4
  store i64 %262, ptr %264, align 8
  %265 = load i64, ptr %6, align 8
  %266 = inttoptr i64 %265 to ptr
  %267 = getelementptr inbounds i64, ptr %266, i64 9
  %268 = load i64, ptr %267, align 8
  %269 = load ptr, ptr %20, align 8
  %270 = getelementptr inbounds i64, ptr %269, i64 5
  store i64 %268, ptr %270, align 8
  %271 = load i64, ptr %6, align 8
  %272 = inttoptr i64 %271 to ptr
  %273 = getelementptr inbounds i64, ptr %272, i64 10
  %274 = load i64, ptr %273, align 8
  %275 = load ptr, ptr %20, align 8
  %276 = getelementptr inbounds i64, ptr %275, i64 6
  store i64 %274, ptr %276, align 8
  %277 = load ptr, ptr %20, align 8
  %278 = ptrtoint ptr %277 to i64
  store i64 %278, ptr %5, align 8
  %279 = load ptr, ptr %20, align 8
  %280 = getelementptr inbounds i64, ptr %279, i64 7
  store ptr %280, ptr %20, align 8
  %281 = load i64, ptr %5, align 8
  store i64 %281, ptr %15, align 8
  store i64 30, ptr %16, align 8
  %282 = load ptr, ptr %20, align 8
  store i64 1, ptr %282, align 8
  %283 = load i64, ptr %16, align 8
  %284 = load ptr, ptr %20, align 8
  %285 = getelementptr inbounds i64, ptr %284, i64 1
  store i64 %283, ptr %285, align 8
  %286 = load ptr, ptr %20, align 8
  %287 = ptrtoint ptr %286 to i64
  store i64 %287, ptr %5, align 8
  %288 = load ptr, ptr %20, align 8
  %289 = getelementptr inbounds i64, ptr %288, i64 2
  store ptr %289, ptr %20, align 8
  %290 = load i64, ptr %5, align 8
  store i64 %290, ptr %17, align 8
  %291 = load ptr, ptr %20, align 8
  store i64 2594073385365405702, ptr %291, align 8
  %292 = load ptr, ptr %20, align 8
  %293 = getelementptr inbounds i64, ptr %292, i64 1
  store i64 ptrtoint (ptr @f_1822 to i64), ptr %293, align 8
  %294 = load i64, ptr %11, align 8
  %295 = load ptr, ptr %20, align 8
  %296 = getelementptr inbounds i64, ptr %295, i64 2
  store i64 %294, ptr %296, align 8
  %297 = load i64, ptr %17, align 8
  %298 = load ptr, ptr %20, align 8
  %299 = getelementptr inbounds i64, ptr %298, i64 3
  store i64 %297, ptr %299, align 8
  %300 = load i64, ptr %13, align 8
  %301 = load ptr, ptr %20, align 8
  %302 = getelementptr inbounds i64, ptr %301, i64 4
  store i64 %300, ptr %302, align 8
  %303 = load i64, ptr %12, align 8
  %304 = load ptr, ptr %20, align 8
  %305 = getelementptr inbounds i64, ptr %304, i64 5
  store i64 %303, ptr %305, align 8
  %306 = load ptr, ptr %20, align 8
  %307 = getelementptr inbounds i64, ptr %306, i64 6
  store i64 ptrtoint (ptr @li40 to i64), ptr %307, align 8
  %308 = load ptr, ptr %20, align 8
  %309 = ptrtoint ptr %308 to i64
  store i64 %309, ptr %5, align 8
  %310 = load ptr, ptr %20, align 8
  %311 = getelementptr inbounds i64, ptr %310, i64 7
  store ptr %311, ptr %20, align 8
  %312 = load i64, ptr %5, align 8
  %313 = load i64, ptr %17, align 8
  %314 = inttoptr i64 %313 to ptr
  %315 = getelementptr inbounds %struct.C_block_struct, ptr %314, i32 0, i32 1
  %316 = getelementptr inbounds [0 x i64], ptr %315, i64 0, i64 0
  store i64 %312, ptr %316, align 8
  store i64 %312, ptr %18, align 8
  %317 = load i64, ptr %17, align 8
  %318 = inttoptr i64 %317 to ptr
  %319 = getelementptr inbounds i64, ptr %318, i64 1
  %320 = load i64, ptr %319, align 8
  store i64 %320, ptr %19, align 8
  %321 = load i64, ptr %19, align 8
  %322 = load i64, ptr %15, align 8
  %323 = load i64, ptr %6, align 8
  %324 = inttoptr i64 %323 to ptr
  %325 = getelementptr inbounds i64, ptr %324, i64 7
  %326 = load i64, ptr %325, align 8
  call void @f_1822(i64 noundef %321, i64 noundef %322, i64 noundef %326) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1858(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !113
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
  call void @C_save_and_reclaim(ptr noundef @f_1858, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.141)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 9), align 8
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
  %60 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 9), align 8
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
define internal void @f_1735(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !114
  store ptr %21, ptr %11, align 8
  %22 = load ptr, ptr %11, align 8
  store ptr %22, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1735, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 56, align 16
  store ptr %41, ptr %10, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load i64, ptr %4, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  %46 = load i64, ptr %45, align 8
  %47 = call i64 @C_i_nequalp(i64 noundef %42, i64 noundef %46)
  %48 = icmp ne i64 %47, 6
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i64, ptr %5, align 8
  store i64 %50, ptr %8, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %51, ptr %52, align 16
  %53 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 30, ptr %53, align 8
  %54 = load i64, ptr %8, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %58(i64 noundef 2, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %40
  %61 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %61, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  store i64 ptrtoint (ptr @f_1745 to i64), ptr %63, align 8
  %64 = load i64, ptr %4, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %4, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %5, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %4, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %10, align 8
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %7, align 8
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  store ptr %91, ptr %10, align 8
  %92 = load i64, ptr %7, align 8
  store i64 %92, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.132)
  %93 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %94 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %93)
  store ptr %94, ptr %14, align 8
  %95 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 35), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %98, ptr %99, align 16
  %100 = load i64, ptr %8, align 8
  %101 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %100, ptr %101, align 8
  %102 = load i64, ptr %4, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 6
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %105, ptr %106, align 16
  %107 = load i64, ptr %6, align 8
  %108 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %107, ptr %108, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %109(i64 noundef 4, ptr noundef %110) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1770(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !115
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1770, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1780 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.136)
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
  call void @f_1735(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
define internal void @f_1794(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !116
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
  %35 = icmp sgt i64 %34, 5
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 5
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
  call void @C_save_and_reclaim(ptr noundef @f_1794, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1797 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.137)
  %73 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 39), align 8
  %74 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
  store ptr %74, ptr %13, align 8
  %75 = load i64, ptr %3, align 8
  %76 = icmp sge i64 %75, 6
  br i1 %76, label %77, label %79

77:                                               ; preds = %51
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  br label %81

79:                                               ; preds = %51
  %80 = alloca i8, i64 48, align 16
  store ptr %80, ptr %14, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %91 = load i64, ptr %7, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 6
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 5
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 6, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1810(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [2 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %13 = load i64, ptr @C_timer_interrupt_counter, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr @C_timer_interrupt_counter, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %17

17:                                               ; preds = %16, %3
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !117
  store ptr %18, ptr %10, align 8
  %19 = load ptr, ptr %10, align 8
  store ptr %19, ptr %11, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr @C_stack_limit, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = load i64, ptr @C_scratch_usage, align 8
  %27 = add nsw i64 1, %26
  %28 = icmp sgt i64 %25, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i64, ptr %4, align 8
  %35 = load i64, ptr %5, align 8
  %36 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1810, i32 noundef 3, i64 noundef %34, i64 noundef %35, i64 noundef %36) #4
  unreachable

37:                                               ; preds = %17
  %38 = load i64, ptr %5, align 8
  store i64 %38, ptr %8, align 8
  %39 = load i64, ptr %8, align 8
  %40 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 0
  store i64 %39, ptr %40, align 16
  %41 = load i64, ptr %4, align 8
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds i64, ptr %42, i64 2
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %6, align 8
  %46 = call i64 @C_i_list_tail(i64 noundef %44, i64 noundef %45)
  %47 = call i64 @C_i_car(i64 noundef %46)
  %48 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 1
  store i64 %47, ptr %48, align 8
  %49 = load i64, ptr %8, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 1
  %52 = load i64, ptr %51, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 0
  call void %53(i64 noundef 2, ptr noundef %54) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1820(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !118
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
  %34 = icmp sgt i64 %33, 6
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 6
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
  call void @C_save_and_reclaim(ptr noundef @f_1820, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.139)
  %51 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 38), align 16
  %52 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
  store ptr %52, ptr %12, align 8
  %53 = load i64, ptr %3, align 8
  %54 = icmp sge i64 %53, 7
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %4, align 8
  store ptr %56, ptr %13, align 8
  br label %59

57:                                               ; preds = %50
  %58 = alloca i8, i64 56, align 16
  store ptr %58, ptr %13, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 38), align 16
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
  %84 = load i64, ptr %7, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 5
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 6
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 6
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = load ptr, ptr %13, align 8
  call void %99(i64 noundef 7, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1822(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !119
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1822, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1847 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.140)
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
  call void @f_1810(i64 noundef %74, i64 noundef %75, i64 noundef %80) #4
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
define internal void @trf_1735(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1735(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1745(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !120
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
  call void @C_save_and_reclaim(ptr noundef @f_1745, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1748 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.133)
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 32, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 4), align 16
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 2
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %7, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 4, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1748(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = load i64, ptr @C_timer_interrupt_counter, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr @C_timer_interrupt_counter, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !121
  store ptr %30, ptr %13, align 8
  %31 = load ptr, ptr %13, align 8
  store ptr %31, ptr %14, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 3
  %42 = add nsw i32 7, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, ptr @C_scratch_usage, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp sgt i64 %37, %45
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load i64, ptr %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1748, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 56, align 16
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @C_i_list_tail(i64 noundef %60, i64 noundef %64)
  %66 = call i64 @C_i_car(i64 noundef %65)
  store i64 %66, ptr %8, align 8
  %67 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %67, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_1754 to i64), ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store ptr %85, ptr %12, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %9, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %15, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 216172782113783810, ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store ptr %92, ptr %12, align 8
  %93 = load i64, ptr %8, align 8
  %94 = load i64, ptr %15, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds %struct.C_block_struct, ptr %95, i32 0, i32 1
  %97 = getelementptr inbounds [0 x i64], ptr %96, i64 0, i64 0
  store i64 %93, ptr %97, align 8
  %98 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 7), align 8
  %99 = load i64, ptr %15, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds %struct.C_block_struct, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds [0 x i64], ptr %101, i64 0, i64 1
  store i64 %98, ptr %102, align 8
  %103 = load i64, ptr %15, align 8
  store i64 %103, ptr %16, align 8
  %104 = load i64, ptr %16, align 8
  store i64 %104, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.134)
  %105 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %106 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %105)
  store ptr %106, ptr %17, align 8
  %107 = load i64, ptr %3, align 8
  %108 = icmp sge i64 %107, 4
  br i1 %108, label %109, label %111

109:                                              ; preds = %55
  %110 = load ptr, ptr %4, align 8
  store ptr %110, ptr %18, align 8
  br label %113

111:                                              ; preds = %55
  %112 = alloca i8, i64 32, align 16
  store ptr %112, ptr %18, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 6), align 16
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 0
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %9, align 8
  %121 = load ptr, ptr %18, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %10, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %7, align 8
  %127 = load ptr, ptr %18, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 3
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %17, align 8
  %130 = load ptr, ptr %18, align 8
  call void %129(i64 noundef 4, ptr noundef %130) #4
  unreachable
}

declare i64 @C_i_list_tail(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1754(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !122
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
  call void @C_save_and_reclaim(ptr noundef @f_1754, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1758 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.135)
  %73 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %74 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
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
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %7, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = load ptr, ptr %14, align 8
  call void %103(i64 noundef 4, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1758(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !123
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
  call void @C_save_and_reclaim(ptr noundef @f_1758, i32 noundef %48, ptr noundef %49) #4
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
define internal void @trf_1770(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1770(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1780(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !124
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
  call void @C_save_and_reclaim(ptr noundef @f_1780, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_1770(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1797(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !125
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
  call void @C_save_and_reclaim(ptr noundef @f_1797, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1801 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.138)
  %73 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
  %74 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %73)
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
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %7, align 8
  %101 = call i64 @C_i_vector_ref(i64 noundef %100, i64 noundef 1)
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = load ptr, ptr %14, align 8
  call void %104(i64 noundef 4, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1801(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !126
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
  call void @C_save_and_reclaim(ptr noundef @f_1801, i32 noundef %48, ptr noundef %49) #4
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
  %70 = load ptr, ptr %13, align 8
  call void @f_1716(i64 noundef 2, ptr noundef %70) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1810(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1810(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1822(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1822(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1847(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !127
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
  call void @C_save_and_reclaim(ptr noundef @f_1847, i32 noundef %51, ptr noundef %52) #4
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
  call void @f_1822(i64 noundef %99, i64 noundef %103, i64 noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1860(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1860(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1871(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !128
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %12, align 8
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %13, align 8
  %28 = load ptr, ptr @C_stack_limit, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, ptr %3, align 8
  %34 = icmp sgt i64 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  %37 = add nsw i32 29, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1871, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 232, align 16
  store ptr %51, ptr %11, align 8
  %52 = load i64, ptr %6, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 2
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_mutate(ptr noundef %57, i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %63, i64 noundef 3)
  store i64 %64, ptr %9, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 4
  %68 = load i64, ptr %67, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %10, align 8
  %72 = load i64, ptr %10, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load i64, ptr %9, align 8
  call void @f_1860(i64 noundef %72, i64 noundef %76, i64 noundef %77) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_vector1(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1892(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !129
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
  call void @C_save_and_reclaim(ptr noundef @f_1892, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1895 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.145)
  %66 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %9, align 8
  %70 = load i64, ptr %3, align 8
  %71 = icmp sge i64 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %13, align 8
  br label %76

74:                                               ; preds = %50
  %75 = alloca i8, i64 40, align 16
  store ptr %75, ptr %13, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i64, ptr %9, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 62), align 16
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 6, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = load ptr, ptr %13, align 8
  call void %98(i64 noundef 5, ptr noundef %99) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1895(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !130
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
  call void @C_save_and_reclaim(ptr noundef @f_1895, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1898 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.146)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  store i64 5, ptr %86, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 11, ptr %88, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 129, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 5, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1898(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !131
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
  call void @C_save_and_reclaim(ptr noundef @f_1898, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1901 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.147)
  %70 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %71 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
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
  store i64 129, ptr %89, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = load ptr, ptr %14, align 8
  call void %90(i64 noundef 3, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1901(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !132
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
  call void @C_save_and_reclaim(ptr noundef @f_1901, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1904 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.148)
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 61), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load i64, ptr %3, align 8
  %79 = icmp sge i64 %78, 4
  br i1 %79, label %80, label %82

80:                                               ; preds = %51
  %81 = load ptr, ptr %4, align 8
  store ptr %81, ptr %14, align 8
  br label %84

82:                                               ; preds = %51
  %83 = alloca i8, i64 32, align 16
  store ptr %83, ptr %14, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 61), align 8
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
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 129, ptr %95, align 8
  %96 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 12), align 16
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1904(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !133
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
  call void @C_save_and_reclaim(ptr noundef @f_1904, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1987 to i64), ptr %55, align 8
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
  %77 = load ptr, ptr %10, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 6
  store ptr %80, ptr %10, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.149)
  %82 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %14, align 8
  br label %90

88:                                               ; preds = %51
  %89 = alloca i8, i64 32, align 16
  store ptr %89, ptr %14, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
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
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 17, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 3, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = load ptr, ptr %14, align 8
  call void %104(i64 noundef 4, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1987(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !134
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
  call void @C_save_and_reclaim(ptr noundef @f_1987, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1991 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.150)
  %88 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %89 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %88)
  store ptr %89, ptr %13, align 8
  %90 = load i64, ptr %3, align 8
  %91 = icmp sge i64 %90, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %51
  %93 = load ptr, ptr %4, align 8
  store ptr %93, ptr %14, align 8
  br label %96

94:                                               ; preds = %51
  %95 = alloca i8, i64 32, align 16
  store ptr %95, ptr %14, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
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
  %106 = load ptr, ptr %14, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 17, ptr %107, align 8
  %108 = load ptr, ptr %14, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 19, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = load ptr, ptr %14, align 8
  call void %110(i64 noundef 4, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1991(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !135
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
  call void @C_save_and_reclaim(ptr noundef @f_1991, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1995 to i64), ptr %55, align 8
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
  %89 = load ptr, ptr %10, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 8
  store ptr %92, ptr %10, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.151)
  %94 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %95 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
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
  %103 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
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
  %112 = load ptr, ptr %14, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 33, ptr %113, align 8
  %114 = load ptr, ptr %14, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 35, ptr %115, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = load ptr, ptr %14, align 8
  call void %116(i64 noundef 4, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1995(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !136
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
  call void @C_save_and_reclaim(ptr noundef @f_1995, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 72, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1999 to i64), ptr %55, align 8
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
  %95 = load ptr, ptr %10, align 8
  %96 = ptrtoint ptr %95 to i64
  store i64 %96, ptr %5, align 8
  %97 = load ptr, ptr %10, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 9
  store ptr %98, ptr %10, align 8
  %99 = load i64, ptr %5, align 8
  store i64 %99, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.152)
  %100 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
  %101 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %100)
  store ptr %101, ptr %13, align 8
  %102 = load i64, ptr %3, align 8
  %103 = icmp sge i64 %102, 4
  br i1 %103, label %104, label %106

104:                                              ; preds = %51
  %105 = load ptr, ptr %4, align 8
  store ptr %105, ptr %14, align 8
  br label %108

106:                                              ; preds = %51
  %107 = alloca i8, i64 32, align 16
  store ptr %107, ptr %14, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 60), align 16
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
  %118 = load ptr, ptr %14, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 63, ptr %119, align 8
  %120 = load ptr, ptr %14, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 3
  store i64 67, ptr %121, align 8
  %122 = load ptr, ptr %13, align 8
  %123 = load ptr, ptr %14, align 8
  call void %122(i64 noundef 4, ptr noundef %123) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1999(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !137
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
  %37 = icmp sgt i64 %36, 4
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 4
  %40 = add nsw i32 13, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1999, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 104, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 4
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %7, align 8
  %68 = call i64 @C_a_i_vector4(ptr noundef %12, i32 noundef 4, i64 noundef %58, i64 noundef %62, i64 noundef %66, i64 noundef %67)
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  store i64 %72, ptr %9, align 8
  %73 = load ptr, ptr %12, align 8
  store i64 2594073385365405703, ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_1910 to i64), ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %12, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 5
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 8
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 6
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %9, align 8
  %104 = load ptr, ptr %12, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 7
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %12, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 8
  store ptr %109, ptr %12, align 8
  %110 = load i64, ptr %5, align 8
  store i64 %110, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.153)
  %111 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = call ptr @C_fast_retrieve_proc(i64 noundef %114)
  store ptr %115, ptr %15, align 8
  %116 = load i64, ptr %3, align 8
  %117 = icmp sge i64 %116, 5
  br i1 %117, label %118, label %120

118:                                              ; preds = %53
  %119 = load ptr, ptr %4, align 8
  store ptr %119, ptr %16, align 8
  br label %122

120:                                              ; preds = %53
  %121 = alloca i8, i64 40, align 16
  store ptr %121, ptr %16, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %16, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 0
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %10, align 8
  %130 = load ptr, ptr %16, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load i64, ptr %134, align 8
  %136 = load ptr, ptr %16, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 %135, ptr %137, align 8
  %138 = load ptr, ptr %16, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 3
  store i64 22, ptr %139, align 8
  %140 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %141 = load ptr, ptr %16, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 4
  store i64 %140, ptr %142, align 8
  %143 = load ptr, ptr %15, align 8
  %144 = load ptr, ptr %16, align 8
  call void %143(i64 noundef 5, ptr noundef %144) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_vector4(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  store i64 %5, ptr %12, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %13, align 8
  %17 = load ptr, ptr %13, align 8
  store ptr %17, ptr %14, align 8
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds i64, ptr %18, i32 1
  store ptr %19, ptr %13, align 8
  store i64 4, ptr %18, align 8
  %20 = load i64, ptr %9, align 8
  %21 = load ptr, ptr %13, align 8
  %22 = getelementptr inbounds i64, ptr %21, i32 1
  store ptr %22, ptr %13, align 8
  store i64 %20, ptr %21, align 8
  %23 = load i64, ptr %10, align 8
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds i64, ptr %24, i32 1
  store ptr %25, ptr %13, align 8
  store i64 %23, ptr %24, align 8
  %26 = load i64, ptr %11, align 8
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr inbounds i64, ptr %27, i32 1
  store ptr %28, ptr %13, align 8
  store i64 %26, ptr %27, align 8
  %29 = load i64, ptr %12, align 8
  %30 = load ptr, ptr %13, align 8
  %31 = getelementptr inbounds i64, ptr %30, i32 1
  store ptr %31, ptr %13, align 8
  store i64 %29, ptr %30, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = load ptr, ptr %7, align 8
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %14, align 8
  %35 = ptrtoint ptr %34 to i64
  ret i64 %35
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1910(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !138
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
  %37 = add nsw i32 7, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1910, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 56, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1913 to i64), ptr %54, align 8
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
  %85 = load ptr, ptr %10, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store ptr %88, ptr %10, align 8
  %89 = load i64, ptr %5, align 8
  store i64 %89, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.154)
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %9, align 8
  %94 = load i64, ptr %3, align 8
  %95 = icmp sge i64 %94, 5
  br i1 %95, label %96, label %98

96:                                               ; preds = %50
  %97 = load ptr, ptr %4, align 8
  store ptr %97, ptr %13, align 8
  br label %100

98:                                               ; preds = %50
  %99 = alloca i8, i64 40, align 16
  store ptr %99, ptr %13, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 0
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 59), align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 6, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %9, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = load ptr, ptr %13, align 8
  call void %122(i64 noundef 5, ptr noundef %123) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1913(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !139
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
  %35 = icmp sgt i64 %34, 8
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1913, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1916 to i64), ptr %55, align 8
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
  %86 = load ptr, ptr %10, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %5, align 8
  %88 = load ptr, ptr %10, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  store ptr %89, ptr %10, align 8
  %90 = load i64, ptr %5, align 8
  store i64 %90, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.155)
  %91 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %92 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %91)
  store ptr %92, ptr %13, align 8
  %93 = load i64, ptr %3, align 8
  %94 = icmp sge i64 %93, 9
  br i1 %94, label %95, label %97

95:                                               ; preds = %51
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %14, align 8
  br label %99

97:                                               ; preds = %51
  %98 = alloca i8, i64 72, align 16
  store ptr %98, ptr %14, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %8, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 5
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 4
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %6, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 6
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %14, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 5
  store i64 %130, ptr %132, align 8
  %133 = load ptr, ptr %14, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 6
  store i64 1, ptr %134, align 8
  %135 = load ptr, ptr %14, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 7
  store i64 17, ptr %136, align 8
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 8
  store i64 1, ptr %138, align 8
  %139 = load ptr, ptr %13, align 8
  %140 = load ptr, ptr %14, align 8
  call void %139(i64 noundef 9, ptr noundef %140) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1916(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !140
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
  %39 = add nsw i32 9, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1916, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405704, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1919 to i64), ptr %60, align 8
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
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %7, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store ptr %100, ptr %11, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.156)
  %102 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = call ptr @C_fast_retrieve_proc(i64 noundef %105)
  store ptr %106, ptr %14, align 8
  %107 = load i64, ptr %3, align 8
  %108 = icmp sge i64 %107, 5
  br i1 %108, label %109, label %111

109:                                              ; preds = %52
  %110 = load ptr, ptr %4, align 8
  store ptr %110, ptr %15, align 8
  br label %113

111:                                              ; preds = %52
  %112 = alloca i8, i64 40, align 16
  store ptr %112, ptr %15, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 0
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %9, align 8
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %15, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %15, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 3
  store i64 22, ptr %130, align 8
  %131 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %132 = load ptr, ptr %15, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 4
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = load ptr, ptr %15, align 8
  call void %134(i64 noundef 5, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1919(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !141
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
  %37 = add nsw i32 9, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1919, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 72, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1922 to i64), ptr %54, align 8
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
  %97 = load ptr, ptr %10, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store ptr %100, ptr %10, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.157)
  %102 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %9, align 8
  %106 = load i64, ptr %3, align 8
  %107 = icmp sge i64 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %50
  %109 = load ptr, ptr %4, align 8
  store ptr %109, ptr %13, align 8
  br label %112

110:                                              ; preds = %50
  %111 = alloca i8, i64 40, align 16
  store ptr %111, ptr %13, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 0
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 58), align 16
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %13, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store i64 6, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %13, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 4
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %9, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = load ptr, ptr %13, align 8
  call void %134(i64 noundef 5, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1922(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !142
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
  %37 = add nsw i32 9, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1922, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 72, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1925 to i64), ptr %54, align 8
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
  %97 = load ptr, ptr %10, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store ptr %100, ptr %10, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.157)
  %102 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %9, align 8
  %106 = load i64, ptr %3, align 8
  %107 = icmp sge i64 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %50
  %109 = load ptr, ptr %4, align 8
  store ptr %109, ptr %13, align 8
  br label %112

110:                                              ; preds = %50
  %111 = alloca i8, i64 40, align 16
  store ptr %111, ptr %13, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 0
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %6, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 8
  %122 = load i64, ptr %121, align 8
  %123 = call i64 @C_i_car(i64 noundef %122)
  %124 = load ptr, ptr %13, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store i64 6, ptr %127, align 8
  %128 = load i64, ptr %6, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 7
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %13, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 4
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %9, align 8
  %135 = inttoptr i64 %134 to ptr
  %136 = getelementptr inbounds i64, ptr %135, i64 1
  %137 = load i64, ptr %136, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = load ptr, ptr %13, align 8
  call void %138(i64 noundef 5, ptr noundef %139) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1925(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !143
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
  %37 = add nsw i32 9, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1925, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 72, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1928 to i64), ptr %54, align 8
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
  %97 = load ptr, ptr %10, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %5, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 9
  store ptr %100, ptr %10, align 8
  %101 = load i64, ptr %5, align 8
  store i64 %101, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.157)
  %102 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %9, align 8
  %106 = load i64, ptr %3, align 8
  %107 = icmp sge i64 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %50
  %109 = load ptr, ptr %4, align 8
  store ptr %109, ptr %13, align 8
  br label %112

110:                                              ; preds = %50
  %111 = alloca i8, i64 40, align 16
  store ptr %111, ptr %13, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 0
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 57), align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %13, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store i64 6, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %13, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 4
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %9, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = load ptr, ptr %13, align 8
  call void %134(i64 noundef 5, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1928(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !144
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
  %37 = add nsw i32 8, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1928, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 64, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1931 to i64), ptr %54, align 8
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
  %91 = load ptr, ptr %10, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 8
  store ptr %94, ptr %10, align 8
  %95 = load i64, ptr %5, align 8
  store i64 %95, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.157)
  %96 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  store i64 %99, ptr %9, align 8
  %100 = load i64, ptr %3, align 8
  %101 = icmp sge i64 %100, 5
  br i1 %101, label %102, label %104

102:                                              ; preds = %50
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %13, align 8
  br label %106

104:                                              ; preds = %50
  %105 = alloca i8, i64 40, align 16
  store ptr %105, ptr %13, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i64, ptr %9, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %8, align 8
  %111 = load ptr, ptr %13, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 8
  %116 = load i64, ptr %115, align 8
  %117 = call i64 @C_i_cdr(i64 noundef %116)
  %118 = load ptr, ptr %13, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 %117, ptr %119, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 3
  store i64 6, ptr %121, align 8
  %122 = load i64, ptr %6, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 7
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %9, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  %131 = load i64, ptr %130, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = load ptr, ptr %13, align 8
  call void %132(i64 noundef 5, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1931(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !145
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
  %37 = add nsw i32 7, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1931, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 56, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1934 to i64), ptr %54, align 8
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
  %85 = load ptr, ptr %10, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store ptr %88, ptr %10, align 8
  %89 = load i64, ptr %5, align 8
  store i64 %89, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.157)
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %9, align 8
  %94 = load i64, ptr %3, align 8
  %95 = icmp sge i64 %94, 5
  br i1 %95, label %96, label %98

96:                                               ; preds = %50
  %97 = load ptr, ptr %4, align 8
  store ptr %97, ptr %13, align 8
  br label %100

98:                                               ; preds = %50
  %99 = alloca i8, i64 40, align 16
  store ptr %99, ptr %13, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 0
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 56), align 16
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 6, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %9, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = load ptr, ptr %13, align 8
  call void %122(i64 noundef 5, ptr noundef %123) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1934(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !146
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
  call void @C_save_and_reclaim(ptr noundef @f_1934, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 64, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405703, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1937 to i64), ptr %60, align 8
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
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = ptrtoint ptr %94 to i64
  store i64 %95, ptr %5, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 8
  store ptr %97, ptr %11, align 8
  %98 = load i64, ptr %5, align 8
  store i64 %98, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.158)
  %99 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = call ptr @C_fast_retrieve_proc(i64 noundef %102)
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
  %111 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 0
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %9, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = load i64, ptr %122, align 8
  %124 = load ptr, ptr %15, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %15, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store i64 22, ptr %127, align 8
  %128 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %129 = load ptr, ptr %15, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 4
  store i64 %128, ptr %130, align 8
  %131 = load ptr, ptr %14, align 8
  %132 = load ptr, ptr %15, align 8
  call void %131(i64 noundef 5, ptr noundef %132) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1937(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !147
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
  %37 = add nsw i32 7, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1937, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 56, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1940 to i64), ptr %54, align 8
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
  %85 = load ptr, ptr %10, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store ptr %88, ptr %10, align 8
  %89 = load i64, ptr %5, align 8
  store i64 %89, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.159)
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %9, align 8
  %94 = load i64, ptr %3, align 8
  %95 = icmp sge i64 %94, 5
  br i1 %95, label %96, label %98

96:                                               ; preds = %50
  %97 = load ptr, ptr %4, align 8
  store ptr %97, ptr %13, align 8
  br label %100

98:                                               ; preds = %50
  %99 = alloca i8, i64 40, align 16
  store ptr %99, ptr %13, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 0
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 55), align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 6, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %9, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = load ptr, ptr %13, align 8
  call void %122(i64 noundef 5, ptr noundef %123) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1940(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !148
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
  %35 = icmp sgt i64 %34, 8
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1940, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1943 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.160)
  %67 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 9
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 72, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 41), align 8
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
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 5
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 5
  store i64 %106, ptr %108, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 6
  store i64 1, ptr %110, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 7
  store i64 17, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 8
  store i64 8191, ptr %114, align 8
  %115 = load ptr, ptr %13, align 8
  %116 = load ptr, ptr %14, align 8
  call void %115(i64 noundef 9, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1943(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !149
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
  %39 = add nsw i32 5, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1943, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1946 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %11, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.161)
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = call ptr @C_fast_retrieve_proc(i64 noundef %81)
  store ptr %82, ptr %14, align 8
  %83 = load i64, ptr %3, align 8
  %84 = icmp sge i64 %83, 5
  br i1 %84, label %85, label %87

85:                                               ; preds = %52
  %86 = load ptr, ptr %4, align 8
  store ptr %86, ptr %15, align 8
  br label %89

87:                                               ; preds = %52
  %88 = alloca i8, i64 40, align 16
  store ptr %88, ptr %15, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
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
  %99 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 22, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1946(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !150
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
  %37 = add nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1946, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1949 to i64), ptr %54, align 8
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
  %73 = load ptr, ptr %10, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %10, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.162)
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %3, align 8
  %83 = icmp sge i64 %82, 5
  br i1 %83, label %84, label %86

84:                                               ; preds = %50
  %85 = load ptr, ptr %4, align 8
  store ptr %85, ptr %13, align 8
  br label %88

86:                                               ; preds = %50
  %87 = alloca i8, i64 40, align 16
  store ptr %87, ptr %13, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 54), align 16
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %9, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = load ptr, ptr %13, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1949(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !151
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
  %37 = add nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1949, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1952 to i64), ptr %54, align 8
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
  %73 = load ptr, ptr %10, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %10, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.162)
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %3, align 8
  %83 = icmp sge i64 %82, 5
  br i1 %83, label %84, label %86

84:                                               ; preds = %50
  %85 = load ptr, ptr %4, align 8
  store ptr %85, ptr %13, align 8
  br label %88

86:                                               ; preds = %50
  %87 = alloca i8, i64 40, align 16
  store ptr %87, ptr %13, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = call i64 @C_i_car(i64 noundef %98)
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 6, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %9, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = load ptr, ptr %13, align 8
  call void %114(i64 noundef 5, ptr noundef %115) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1952(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !152
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
  %37 = add nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1952, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1955 to i64), ptr %54, align 8
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
  %73 = load ptr, ptr %10, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %10, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.162)
  %78 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %3, align 8
  %83 = icmp sge i64 %82, 5
  br i1 %83, label %84, label %86

84:                                               ; preds = %50
  %85 = load ptr, ptr %4, align 8
  store ptr %85, ptr %13, align 8
  br label %88

86:                                               ; preds = %50
  %87 = alloca i8, i64 40, align 16
  store ptr %87, ptr %13, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 53), align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %9, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = load ptr, ptr %13, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1955(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !153
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
  %37 = add nsw i32 4, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1955, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1958 to i64), ptr %54, align 8
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
  %67 = load ptr, ptr %10, align 8
  %68 = ptrtoint ptr %67 to i64
  store i64 %68, ptr %5, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  store ptr %70, ptr %10, align 8
  %71 = load i64, ptr %5, align 8
  store i64 %71, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.162)
  %72 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %3, align 8
  %77 = icmp sge i64 %76, 5
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %13, align 8
  br label %82

80:                                               ; preds = %50
  %81 = alloca i8, i64 40, align 16
  store ptr %81, ptr %13, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i64, ptr %9, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 0
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  %93 = call i64 @C_i_cdr(i64 noundef %92)
  %94 = load ptr, ptr %13, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 6, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 4
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %9, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = load ptr, ptr %13, align 8
  call void %108(i64 noundef 5, ptr noundef %109) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1958(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !154
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
  call void @C_save_and_reclaim(ptr noundef @f_1958, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1961 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.162)
  %66 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %9, align 8
  %70 = load i64, ptr %3, align 8
  %71 = icmp sge i64 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %13, align 8
  br label %76

74:                                               ; preds = %50
  %75 = alloca i8, i64 40, align 16
  store ptr %75, ptr %13, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i64, ptr %9, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 52), align 16
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 6, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = load ptr, ptr %13, align 8
  call void %98(i64 noundef 5, ptr noundef %99) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1961(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !155
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
  %39 = add nsw i32 4, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1961, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1964 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store ptr %73, ptr %11, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.163)
  %75 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = call ptr @C_fast_retrieve_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %3, align 8
  %81 = icmp sge i64 %80, 5
  br i1 %81, label %82, label %84

82:                                               ; preds = %52
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %15, align 8
  br label %86

84:                                               ; preds = %52
  %85 = alloca i8, i64 40, align 16
  store ptr %85, ptr %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 50), align 16
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %9, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 47), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 51), align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1964(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !156
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
  call void @C_save_and_reclaim(ptr noundef @f_1964, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.164)
  %50 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %70 = load i64, ptr getelementptr inbounds ([74 x i64], ptr @lf, i64 0, i64 49), align 8
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
!6 = !{i64 2148953858}
!7 = !{i64 2148932226}
!8 = !{i64 2148932977}
!9 = !{i64 2148933861}
!10 = !{i64 2148931330}
!11 = !{i64 2148934658}
!12 = !{i64 2148935397}
!13 = !{i64 2148936136}
!14 = !{i64 2148937058}
!15 = !{i64 2148937980}
!16 = !{i64 2148938902}
!17 = !{i64 2148939900}
!18 = !{i64 2148942670}
!19 = !{i64 2148944026}
!20 = !{i64 2148945424}
!21 = !{i64 2148946833}
!22 = !{i64 2148950637}
!23 = !{i64 2148951325}
!24 = !{i64 2148791750}
!25 = !{i64 2148796272}
!26 = !{i64 2148798090}
!27 = !{i64 2148801155}
!28 = !{i64 2148801764}
!29 = !{i64 2148803081}
!30 = !{i64 2148804460}
!31 = !{i64 2148806055}
!32 = !{i64 2148807814}
!33 = !{i64 2148809643}
!34 = !{i64 2148812387}
!35 = !{i64 2148817464}
!36 = !{i64 2148824276}
!37 = !{i64 2148824943}
!38 = !{i64 2148836977}
!39 = !{i64 2148853438}
!40 = !{i64 2148866580}
!41 = !{i64 2148904063}
!42 = !{i64 2148930787}
!43 = !{i64 2148948427}
!44 = !{i64 2148949245}
!45 = !{i64 2148790156}
!46 = !{i64 2148791111}
!47 = !{i64 2148793380}
!48 = !{i64 2148794244}
!49 = !{i64 2148795594}
!50 = !{i64 2148797458}
!51 = !{i64 2148798810}
!52 = !{i64 2148799619}
!53 = !{i64 2148800425}
!54 = !{i64 2148807221}
!55 = !{i64 2148810406}
!56 = !{i64 2148811720}
!57 = !{i64 2148813156}
!58 = !{i64 2148814720}
!59 = !{i64 2148815388}
!60 = !{i64 2148816082}
!61 = !{i64 2148816750}
!62 = !{i64 2148818270}
!63 = !{i64 2148819513}
!64 = !{i64 2148822783}
!65 = !{i64 2148823594}
!66 = !{i64 2148820469}
!67 = !{i64 2148821300}
!68 = !{i64 2148828188}
!69 = !{i64 2148830230}
!70 = !{i64 2148833209}
!71 = !{i64 2148829008}
!72 = !{i64 2148829566}
!73 = !{i64 2148831052}
!74 = !{i64 2148831859}
!75 = !{i64 2148835194}
!76 = !{i64 2148838470}
!77 = !{i64 2148839776}
!78 = !{i64 2148846672}
!79 = !{i64 2148847240}
!80 = !{i64 2148840528}
!81 = !{i64 2148841349}
!82 = !{i64 2148842644}
!83 = !{i64 2148843575}
!84 = !{i64 2148845125}
!85 = !{i64 2148845946}
!86 = !{i64 2148850462}
!87 = !{i64 2148854899}
!88 = !{i64 2148855720}
!89 = !{i64 2148857047}
!90 = !{i64 2148859308}
!91 = !{i64 2148860056}
!92 = !{i64 2148861082}
!93 = !{i64 2148865870}
!94 = !{i64 2148861975}
!95 = !{i64 2148961493}
!96 = !{i64 2148863509}
!97 = !{i64 2148864323}
!98 = !{i64 2148865144}
!99 = !{i64 2148867341}
!100 = !{i64 2148868185}
!101 = !{i64 2148903320}
!102 = !{i64 2148869059}
!103 = !{i64 2148870656}
!104 = !{i64 2148872037}
!105 = !{i64 2148901639}
!106 = !{i64 2148873443}
!107 = !{i64 2148874003}
!108 = !{i64 2148874867}
!109 = !{i64 2148875569}
!110 = !{i64 2148877155}
!111 = !{i64 2148877753}
!112 = !{i64 2148878709}
!113 = !{i64 2148900990}
!114 = !{i64 2148881834}
!115 = !{i64 2148886533}
!116 = !{i64 2148890269}
!117 = !{i64 2148892539}
!118 = !{i64 2148893138}
!119 = !{i64 2148893812}
!120 = !{i64 2148882770}
!121 = !{i64 2148883589}
!122 = !{i64 2148885171}
!123 = !{i64 2148885975}
!124 = !{i64 2148888518}
!125 = !{i64 2148891088}
!126 = !{i64 2148891991}
!127 = !{i64 2148896959}
!128 = !{i64 2148902589}
!129 = !{i64 2148904936}
!130 = !{i64 2148905797}
!131 = !{i64 2148906894}
!132 = !{i64 2148907789}
!133 = !{i64 2148908694}
!134 = !{i64 2148926827}
!135 = !{i64 2148927835}
!136 = !{i64 2148928850}
!137 = !{i64 2148929882}
!138 = !{i64 2148909697}
!139 = !{i64 2148910578}
!140 = !{i64 2148911729}
!141 = !{i64 2148912627}
!142 = !{i64 2148913518}
!143 = !{i64 2148914414}
!144 = !{i64 2148915305}
!145 = !{i64 2148916196}
!146 = !{i64 2148917082}
!147 = !{i64 2148917980}
!148 = !{i64 2148918861}
!149 = !{i64 2148919995}
!150 = !{i64 2148920873}
!151 = !{i64 2148921744}
!152 = !{i64 2148922620}
!153 = !{i64 2148923491}
!154 = !{i64 2148924362}
!155 = !{i64 2148925228}
!156 = !{i64 2148926101}
