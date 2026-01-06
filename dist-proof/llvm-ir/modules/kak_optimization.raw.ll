; ModuleID = '/tmp/hatsu-llvm-kak_optimization-4583/kak_optimization.c'
source_filename = "/tmp/hatsu-llvm-kak_optimization-4583/kak_optimization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.C_block_struct = type { i64, [0 x i64] }

@toplevel_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kak_optimization\00", align 1
@C_stack_limit = external global ptr, align 8
@C_scratch_usage = external global i64, align 8
@C_fromspace_top = external global ptr, align 8
@C_fromspace_limit = external global ptr, align 8
@C_temporary_stack = external global ptr, align 8
@lf = internal global [59 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"kak_optimization#\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"kak_optimization#make-kak-context\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"kak-context\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"kak_optimization#cartan-lazy-vector\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"kak_optimization#kak-context?\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"kak_optimization#kak-context-info-bits\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"kak_optimization#kak-context-base\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"kak_optimization#kak-context-steps\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"kak_optimization#kak-context-mode\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"kak_optimization#kak-context-tau\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"kak_optimization#kak-context-codeword\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"kak_optimization#kak-context-decomp\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"kak_optimization#popcount-fast\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"scheme#exp\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"scheme#make-vector\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"scheme#log\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"kak_optimization#frontier-create\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\FEB\00\00\15Unknown frontier mode\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"kak_optimization#frontier-push\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"kak_optimization#frontier-pop\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"kak_optimization#frontier-empty?\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"srfi-69#hash-table-ref/default\00", align 1
@.str.28 = private unnamed_addr constant [105 x i8] c"\FEU999999999999999967336168804116691273849533185806555472917961779471295845921727862608739868455469056.0\00\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"kak_optimization#kak-optimize-config\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"\FEU0.1000000000000000055511151231257827021181583404541015625\00\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"\FEU1.1999999999999999555910790149937383830547332763671875\00\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"\FEU0.01000000000000000020816681711721685132943093776702880859375\00\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\FEU1.5\00\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"scheme#sqrt\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"kak_optimization#kak-apply-cached\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"srfi-1#assoc\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"srfi-69#hash-table?\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-set!\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"for-each\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"\FEU+inf.0\00\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"srfi-1#fold\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"srfi-69#make-hash-table\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"\FEB\00\004kak-apply-cached: context must be kak-context object\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"##sys#get-keyword\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"relax-bound\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"kak_optimization#kak-apply-optimized\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.53 = private unnamed_addr constant [1288 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01make-kak-context\FE\01\00\00!\01kak_optimization#make-kak-context\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01kak-apply-cached\FE\01\00\00!\01kak_optimization#kak-apply-cached\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01kak-apply-optimized\FE\01\00\00$\01kak_optimization#kak-apply-optimized\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01popcount-fast\FE\01\00\00\1E\01kak_optimization#popcount-fast\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\12\01cartan-lazy-vector\FE\01\00\00#\01kak_optimization#cartan-lazy-vector\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01kak-optimize-config\FE\01\00\00$\01kak_optimization#kak-optimize-config\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01frontier-create\FE\01\00\00 \01kak_optimization#frontier-create\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01frontier-push\FE\01\00\00\1E\01kak_optimization#frontier-push\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0C\01frontier-pop\FE\01\00\00\1D\01kak_optimization#frontier-pop\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01frontier-empty?\FE\01\00\00 \01kak_optimization#frontier-empty?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0C\01kak-context?\FE\01\00\00\1D\01kak_optimization#kak-context?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01kak-context-mode\FE\01\00\00!\01kak_optimization#kak-context-mode\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0F\01kak-context-tau\FE\01\00\00 \01kak_optimization#kak-context-tau\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\12\01kak-context-decomp\FE\01\00\00#\01kak_optimization#kak-context-decomp\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\15\01kak-context-info-bits\FE\01\00\00&\01kak_optimization#kak-context-info-bits\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01kak-context-steps\FE\01\00\00\22\01kak_optimization#kak-context-steps\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01kak-context-base\FE\01\00\00!\01kak_optimization#kak-context-base\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01kak-context-codeword\FE\01\00\00%\01kak_optimization#kak-context-codeword\FE\FF\0E\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@.str.55 = private unnamed_addr constant [53 x i8] c"kak_optimization.scm:14: chicken.load#load-extension\00", align 1
@li36 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1305)\00", align 16
@.str.56 = private unnamed_addr constant [48 x i8] c"kak_optimization.scm:16: ##sys#with-environment\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"kak_optimization.scm:44: chicken.load#load-extension\00", align 1
@li2 = internal global [80 x i8] c"C\00\00\00\00\00\00M(kak_optimization#make-kak-context info-bits B max-steps af-config)\00\00\00\00\00", align 16
@li3 = internal global [48 x i8] c"#\00\00\00\00\00\00M(kak_optimization#kak-context? obj)\00\00\00\00\00", align 16
@li4 = internal global [56 x i8] c",\00\00\00\00\00\00M(kak_optimization#kak-context-info-bits ctx)\00\00\00\00", align 16
@li5 = internal global [48 x i8] c"'\00\00\00\00\00\00M(kak_optimization#kak-context-base ctx)\00", align 16
@li6 = internal global [48 x i8] c"(\00\00\00\00\00\00M(kak_optimization#kak-context-steps ctx)", align 16
@li7 = internal global [48 x i8] c"'\00\00\00\00\00\00M(kak_optimization#kak-context-mode ctx)\00", align 16
@li8 = internal global [48 x i8] c"&\00\00\00\00\00\00M(kak_optimization#kak-context-tau ctx)\00\00", align 16
@li9 = internal global [56 x i8] c"+\00\00\00\00\00\00M(kak_optimization#kak-context-codeword ctx)\00\00\00\00\00", align 16
@li10 = internal global [56 x i8] c")\00\00\00\00\00\00M(kak_optimization#kak-context-decomp ctx)\00\00\00\00\00\00\00", align 16
@.str.58 = private unnamed_addr constant [44 x i8] c"kak_optimization.scm:83: scheme#make-vector\00", align 1
@li0 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(a561)\00\00", align 16
@li1 = internal global [40 x i8] c"\1E\00\00\00\00\00\00M(a567 mode27 tau29 codeword31)\00\00", align 16
@.str.59 = private unnamed_addr constant [48 x i8] c"kak_optimization.scm:53: ##sys#call-with-values\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"kak_optimization.scm:53: af-config\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"kak_optimization.scm:55: cartan-lazy-vector\00", align 1
@li35 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(loop i)", align 16
@li12 = internal global [48 x i8] c"\22\00\00\00\00\00\00M(kak_optimization#popcount-fast n)\00\00\00\00\00\00", align 16
@li14 = internal global [64 x i8] c"1\00\00\00\00\00\00M(kak_optimization#cartan-lazy-vector B max-steps)\00\00\00\00\00\00\00", align 16
@li15 = internal global [48 x i8] c"'\00\00\00\00\00\00M(kak_optimization#frontier-create mode)\00", align 16
@li16 = internal global [56 x i8] c"-\00\00\00\00\00\00M(kak_optimization#frontier-push frontier val)\00\00\00", align 16
@li17 = internal global [48 x i8] c"(\00\00\00\00\00\00M(kak_optimization#frontier-pop frontier)", align 16
@li18 = internal global [56 x i8] c"+\00\00\00\00\00\00M(kak_optimization#frontier-empty? frontier)\00\00\00\00\00", align 16
@li19 = internal global [72 x i8] c"<\00\00\00\00\00\00M(kak_optimization#relax-bound-default dist-table v new-dist)\00\00\00\00", align 16
@li20 = internal global [80 x i8] c"F\00\00\00\00\00\00M(kak_optimization#kak-optimize-config graph-size avg-degree max-steps)\00\00", align 16
@li32 = internal global [72 x i8] c"@\00\00\00\00\00\00M(kak_optimization#kak-apply-cached graph sources context . rest)", align 16
@li33 = internal global [112 x i8] c"b\00\00\00\00\00\00M(kak_optimization#kak-apply-optimized graph sources B frontier-mode max-steps info-bits af-config)\00\00\00\00\00\00", align 16
@.str.62 = private unnamed_addr constant [32 x i8] c"kak_optimization#*popcount-lut*\00", align 1
@li11 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(va1372)", align 16
@.str.63 = private unnamed_addr constant [37 x i8] c"kak_optimization.scm:106: scheme#log\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:107: scheme#make-vector\00", align 1
@li13 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(loop k)", align 16
@.str.65 = private unnamed_addr constant [37 x i8] c"kak_optimization.scm:110: scheme#exp\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"kak_optimization.scm:112: loop\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"kak_optimization.scm:110: scheme#/\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:125: chicken.base#error\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:144: scheme#values\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:145: scheme#values\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:152: scheme#values\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:155: scheme#values\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"kak_optimization.scm:157: scheme#reverse\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:161: chicken.base#error\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:158: scheme#values\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:170: chicken.base#error\00", align 1
@.str.77 = private unnamed_addr constant [57 x i8] c"kak_optimization.scm:177: srfi-69#hash-table-ref/default\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"kak_optimization.scm:181: scheme#sqrt\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:183: scheme#values\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:184: scheme#values\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:185: scheme#values\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"kak_optimization.scm:181: scheme#/\00", align 1
@li31 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1235)\00", align 16
@.str.83 = private unnamed_addr constant [44 x i8] c"kak_optimization.scm:192: ##sys#get-keyword\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"kak_optimization.scm:196: kak-context?\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"kak_optimization.scm:199: kak-context-mode\00", align 1
@.str.86 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:200: kak-context-decomp\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"kak_optimization.scm:201: kak-context-steps\00", align 1
@.str.88 = private unnamed_addr constant [50 x i8] c"kak_optimization.scm:202: srfi-69#make-hash-table\00", align 1
@li21 = internal global [32 x i8] c"\16\00\00\00\00\00\00M(graph-neighbors node)\00\00", align 16
@li22 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(g165 s)", align 16
@li30 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop164 g171)\00", align 16
@.str.89 = private unnamed_addr constant [46 x i8] c"kak_optimization.scm:207: srfi-69#hash-table?\00", align 1
@.str.90 = private unnamed_addr constant [57 x i8] c"kak_optimization.scm:208: srfi-69#hash-table-ref/default\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"kak_optimization.scm:210: srfi-1#assoc\00", align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"kak_optimization.scm:215: srfi-69#hash-table-set!\00", align 1
@li29 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(a1196 s f)\00\00\00\00\00", align 16
@.str.93 = private unnamed_addr constant [42 x i8] c"kak_optimization.scm:221: frontier-create\00", align 1
@li28 = internal global [32 x i8] c"\14\00\00\00\00\00\00M(loop frontier step)\00\00\00\00", align 16
@.str.94 = private unnamed_addr constant [42 x i8] c"kak_optimization.scm:226: frontier-empty?\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"kak_optimization.scm:231: frontier-create\00", align 1
@li27 = internal global [24 x i8] c"\0E\00\00\00\00\00\00M(loop-level f)\00\00", align 16
@li23 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1105)\00", align 16
@li26 = internal global [48 x i8] c"#\00\00\00\00\00\00M(a1111 success193 node195 new-f197)\00\00\00\00\00", align 16
@.str.96 = private unnamed_addr constant [49 x i8] c"kak_optimization.scm:235: ##sys#call-with-values\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"kak_optimization.scm:235: frontier-pop\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"kak_optimization.scm:238: loop\00", align 1
@.str.99 = private unnamed_addr constant [57 x i8] c"kak_optimization.scm:241: srfi-69#hash-table-ref/default\00", align 1
@li24 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g209 edge)\00\00\00\00\00", align 16
@.str.100 = private unnamed_addr constant [42 x i8] c"kak_optimization.scm:253: graph-neighbors\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"kak_optimization.scm:250: relax-bound\00", align 1
@.str.102 = private unnamed_addr constant [50 x i8] c"kak_optimization.scm:251: srfi-69#hash-table-set!\00", align 1
@.str.103 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:252: frontier-push\00", align 1
@li25 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop208 g215)\00", align 16
@.str.104 = private unnamed_addr constant [37 x i8] c"kak_optimization.scm:256: loop-level\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"kak_optimization.scm:244: g209\00", align 1
@.str.106 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:220: frontier-push\00", align 1
@.str.107 = private unnamed_addr constant [38 x i8] c"kak_optimization.scm:220: srfi-1#fold\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"kak_optimization.scm:215: g165\00", align 1
@.str.109 = private unnamed_addr constant [45 x i8] c"kak_optimization.scm:197: chicken.base#error\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"kak_optimization#relax-bound-default\00", align 1
@.str.111 = private unnamed_addr constant [43 x i8] c"kak_optimization.scm:264: make-kak-context\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"kak_optimization.scm:265: kak-apply-cached\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"kak_optimization.scm:267: kak-context-tau\00", align 1
@.str.114 = private unnamed_addr constant [47 x i8] c"kak_optimization.scm:268: kak-context-codeword\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"kak_optimization.scm:266: scheme#values\00", align 1
@li34 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(loop-count n cnt)\00\00\00\00\00\00", align 16
@.str.116 = private unnamed_addr constant [30 x i8] c"kak_optimization.scm:92: loop\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"kak_optimization.scm:91: loop-count\00", align 1
@.str.118 = private unnamed_addr constant [56 x i8] c"kak_optimization.scm:16: ##sys#register-compiled-module\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @C_kak_5foptimization_toplevel(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @C_kak_5foptimization_toplevel, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %37
  store i32 1, ptr @toplevel_initialized, align 4
  %70 = load ptr, ptr @C_fromspace_top, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 700
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
  call void @C_rereclaim2(i64 noundef 5600, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 59)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 16, ptr noundef @.str)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 1), i32 noundef 17, ptr noundef @.str.1)
  store i64 %88, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 2), i32 noundef 33, ptr noundef @.str.2)
  store i64 %89, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 3), i32 noundef 11, ptr noundef @.str.3)
  store i64 %90, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 4), i32 noundef 35, ptr noundef @.str.4)
  store i64 %91, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 4), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 5), i32 noundef 29, ptr noundef @.str.5)
  store i64 %92, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 5), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 6), i32 noundef 38, ptr noundef @.str.6)
  store i64 %93, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 7), i32 noundef 33, ptr noundef @.str.7)
  store i64 %94, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 7), align 8
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 8), i32 noundef 34, ptr noundef @.str.8)
  store i64 %95, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 8), align 16
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 9), i32 noundef 33, ptr noundef @.str.9)
  store i64 %96, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 9), align 8
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 10), i32 noundef 32, ptr noundef @.str.10)
  store i64 %97, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 10), align 16
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 11), i32 noundef 37, ptr noundef @.str.11)
  store i64 %98, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 11), align 8
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 12), i32 noundef 35, ptr noundef @.str.12)
  store i64 %99, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 12), align 16
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 14), i32 noundef 30, ptr noundef @.str.13)
  store i64 %100, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 14), align 16
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), i32 noundef 8, ptr noundef @.str.14)
  store i64 %101, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), align 8
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 16), i32 noundef 10, ptr noundef @.str.15)
  store i64 %102, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 16), align 16
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), i32 noundef 18, ptr noundef @.str.16)
  store i64 %103, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), align 8
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 18), i32 noundef 10, ptr noundef @.str.17)
  store i64 %104, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 18), align 16
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), i32 noundef 32, ptr noundef @.str.18)
  store i64 %105, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), i32 noundef 5, ptr noundef @.str.19)
  store i64 %106, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), i32 noundef 5, ptr noundef @.str.20)
  store i64 %107, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), i32 noundef 18, ptr noundef @.str.21)
  store i64 %108, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %109 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.22)
  store i64 %109, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 23), align 8
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), i32 noundef 30, ptr noundef @.str.23)
  store i64 %110, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
  %111 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 25), i32 noundef 29, ptr noundef @.str.24)
  store i64 %111, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 25), align 8
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 26), i32 noundef 14, ptr noundef @.str.25)
  store i64 %112, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 26), align 16
  %113 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.22)
  store i64 %113, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 27), align 8
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 28), i32 noundef 32, ptr noundef @.str.26)
  store i64 %114, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 28), align 16
  %115 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.22)
  store i64 %115, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 29), align 8
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), i32 noundef 30, ptr noundef @.str.27)
  store i64 %116, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %117 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.28)
  store i64 %117, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 32), align 16
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 33), i32 noundef 36, ptr noundef @.str.29)
  store i64 %118, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 33), align 8
  %119 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.30)
  store i64 %119, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 34), align 16
  %120 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %120, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 35), align 8
  %121 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.32)
  store i64 %121, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 36), align 16
  %122 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.33)
  store i64 %122, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 37), align 8
  %123 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.34)
  store i64 %123, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 38), align 16
  %124 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 39), i32 noundef 11, ptr noundef @.str.35)
  store i64 %124, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 39), align 8
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 40), i32 noundef 33, ptr noundef @.str.36)
  store i64 %125, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 40), align 16
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 41), i32 noundef 12, ptr noundef @.str.37)
  store i64 %126, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 41), align 8
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 42), i32 noundef 19, ptr noundef @.str.38)
  store i64 %127, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 42), align 16
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), i32 noundef 23, ptr noundef @.str.39)
  store i64 %128, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), align 8
  %129 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.40)
  store i64 %129, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 44), align 16
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 45), i32 noundef 8, ptr noundef @.str.41)
  store i64 %130, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 45), align 8
  %131 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.42)
  store i64 %131, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 46), align 16
  %132 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 47), i32 noundef 11, ptr noundef @.str.43)
  store i64 %132, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 47), align 8
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 48), i32 noundef 23, ptr noundef @.str.44)
  store i64 %133, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 48), align 16
  %134 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %134, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 49), align 8
  %135 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 50), i32 noundef 17, ptr noundef @.str.46)
  store i64 %135, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 50), align 16
  %136 = call i64 @C_h_intern_kw(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 51), i32 noundef 11, ptr noundef @.str.47)
  store i64 %136, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 51), align 8
  %137 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 52), i32 noundef 36, ptr noundef @.str.48)
  store i64 %137, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 52), align 16
  %138 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), i32 noundef 27, ptr noundef @.str.49)
  store i64 %138, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
  %139 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 54), i32 noundef 7, ptr noundef @.str.50)
  store i64 %139, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 54), align 16
  %140 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 55), i32 noundef 6, ptr noundef @.str.51)
  store i64 %140, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 55), align 8
  %141 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 56), i32 noundef 30, ptr noundef @.str.52)
  store i64 %141, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 56), align 16
  %142 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %142, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 57), align 8
  %143 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 58), i32 noundef 22, ptr noundef @.str.54)
  store i64 %143, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 58), align 16
  %144 = call ptr @create_ptable()
  %145 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 59, ptr noundef %144)
  %146 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %146, align 8
  %147 = load ptr, ptr %10, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  store i64 ptrtoint (ptr @f_536 to i64), ptr %148, align 8
  %149 = load i64, ptr %7, align 8
  %150 = load ptr, ptr %10, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 2
  store i64 %149, ptr %151, align 8
  %152 = load ptr, ptr %10, align 8
  %153 = ptrtoint ptr %152 to i64
  store i64 %153, ptr %5, align 8
  %154 = load ptr, ptr %10, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 3
  store ptr %155, ptr %10, align 8
  %156 = load i64, ptr %5, align 8
  store i64 %156, ptr %8, align 8
  %157 = load ptr, ptr %4, align 8
  store ptr %157, ptr %14, align 8
  %158 = load ptr, ptr %14, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 0
  store i64 30, ptr %159, align 8
  %160 = load i64, ptr %8, align 8
  %161 = load ptr, ptr %14, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  store i64 %160, ptr %162, align 8
  %163 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %163) #4
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

declare i64 @C_h_intern_kw(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @C_register_lf2(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_ptable() #3 {
  ret ptr null
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_536(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_536, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_539 to i64), ptr %54, align 8
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
define internal void @f_539(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
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
  %39 = add nsw i32 11, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_539, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 88, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr @lf, align 16
  %55 = call i64 @C_a_i_provide(ptr noundef %11, i32 noundef 1, i64 noundef %54)
  store i64 %55, ptr %8, align 8
  %56 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %56, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 ptrtoint (ptr @f_542 to i64), ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  store i64 %62, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %5, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store ptr %68, ptr %11, align 8
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.55)
  %70 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
  %71 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
  store ptr %71, ptr %14, align 8
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 %72, 5
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %15, align 8
  br label %78

76:                                               ; preds = %52
  %77 = alloca i8, i64 40, align 16
  store ptr %77, ptr %15, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %15, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 0
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %9, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 55), align 8
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 22, ptr %92, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store i64 6, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = load ptr, ptr %15, align 8
  call void %95(i64 noundef 5, ptr noundef %96) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_eval_toplevel(i64 noundef, ptr noundef) #2

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_542(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_542, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_545 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.55)
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 54), align 16
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_545(i64 noundef %0, ptr noundef %1) #0 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !10
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
  call void @C_save_and_reclaim(ptr noundef @f_545, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 112, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 1), align 8
  %56 = call i64 @C_a_i_provide(ptr noundef %12, i32 noundef 1, i64 noundef %55)
  store i64 %56, ptr %8, align 8
  %57 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %57, align 8
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_548 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_1306 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li36 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.56)
  %81 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 58), align 16
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
  %90 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 58), align 16
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_548(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_548, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.57)
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 55), align 8
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
define internal void @f_1306(i64 noundef %0, ptr noundef %1) #0 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
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
  call void @C_save_and_reclaim(ptr noundef @f_1306, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.118)
  %58 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 56), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 56), align 16
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
  %83 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 57), align 8
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_551(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_551, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_554 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.57)
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 53), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 54), align 16
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
define internal void @f_554(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  %44 = icmp sgt i64 %43, 6
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 6
  %47 = add nsw i32 30, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_554, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 240, align 16
  store ptr %61, ptr %19, align 8
  %62 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 2), align 16
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  %65 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %65, align 8
  %66 = load ptr, ptr %19, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_556 to i64), ptr %67, align 8
  %68 = load ptr, ptr %19, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %69, align 8
  %70 = load ptr, ptr %19, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %19, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store ptr %73, ptr %19, align 8
  %74 = load i64, ptr %5, align 8
  %75 = call i64 @C_mutate(ptr noundef %64, i64 noundef %74)
  store i64 %75, ptr %8, align 8
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 5), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %79, align 8
  %80 = load ptr, ptr %19, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 ptrtoint (ptr @f_577 to i64), ptr %81, align 8
  %82 = load ptr, ptr %19, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %83, align 8
  %84 = load ptr, ptr %19, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %19, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store ptr %87, ptr %19, align 8
  %88 = load i64, ptr %5, align 8
  %89 = call i64 @C_mutate(ptr noundef %78, i64 noundef %88)
  store i64 %89, ptr %9, align 8
  %90 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 6), align 16
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %93, align 8
  %94 = load ptr, ptr %19, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 ptrtoint (ptr @f_603 to i64), ptr %95, align 8
  %96 = load ptr, ptr %19, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 ptrtoint (ptr @li4 to i64), ptr %97, align 8
  %98 = load ptr, ptr %19, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %5, align 8
  %100 = load ptr, ptr %19, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store ptr %101, ptr %19, align 8
  %102 = load i64, ptr %5, align 8
  %103 = call i64 @C_mutate(ptr noundef %92, i64 noundef %102)
  store i64 %103, ptr %10, align 8
  %104 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 7), align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %107, align 8
  %108 = load ptr, ptr %19, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 ptrtoint (ptr @f_609 to i64), ptr %109, align 8
  %110 = load ptr, ptr %19, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  store i64 ptrtoint (ptr @li5 to i64), ptr %111, align 8
  %112 = load ptr, ptr %19, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %19, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store ptr %115, ptr %19, align 8
  %116 = load i64, ptr %5, align 8
  %117 = call i64 @C_mutate(ptr noundef %106, i64 noundef %116)
  store i64 %117, ptr %11, align 8
  %118 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 8), align 16
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %121, align 8
  %122 = load ptr, ptr %19, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 ptrtoint (ptr @f_615 to i64), ptr %123, align 8
  %124 = load ptr, ptr %19, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %125, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %19, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 3
  store ptr %129, ptr %19, align 8
  %130 = load i64, ptr %5, align 8
  %131 = call i64 @C_mutate(ptr noundef %120, i64 noundef %130)
  store i64 %131, ptr %12, align 8
  %132 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 9), align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %135, align 8
  %136 = load ptr, ptr %19, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  store i64 ptrtoint (ptr @f_621 to i64), ptr %137, align 8
  %138 = load ptr, ptr %19, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %139, align 8
  %140 = load ptr, ptr %19, align 8
  %141 = ptrtoint ptr %140 to i64
  store i64 %141, ptr %5, align 8
  %142 = load ptr, ptr %19, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 3
  store ptr %143, ptr %19, align 8
  %144 = load i64, ptr %5, align 8
  %145 = call i64 @C_mutate(ptr noundef %134, i64 noundef %144)
  store i64 %145, ptr %13, align 8
  %146 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 10), align 16
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  %149 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %149, align 8
  %150 = load ptr, ptr %19, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 1
  store i64 ptrtoint (ptr @f_627 to i64), ptr %151, align 8
  %152 = load ptr, ptr %19, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %153, align 8
  %154 = load ptr, ptr %19, align 8
  %155 = ptrtoint ptr %154 to i64
  store i64 %155, ptr %5, align 8
  %156 = load ptr, ptr %19, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 3
  store ptr %157, ptr %19, align 8
  %158 = load i64, ptr %5, align 8
  %159 = call i64 @C_mutate(ptr noundef %148, i64 noundef %158)
  store i64 %159, ptr %14, align 8
  %160 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 11), align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  %163 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %163, align 8
  %164 = load ptr, ptr %19, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 ptrtoint (ptr @f_633 to i64), ptr %165, align 8
  %166 = load ptr, ptr %19, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %167, align 8
  %168 = load ptr, ptr %19, align 8
  %169 = ptrtoint ptr %168 to i64
  store i64 %169, ptr %5, align 8
  %170 = load ptr, ptr %19, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 3
  store ptr %171, ptr %19, align 8
  %172 = load i64, ptr %5, align 8
  %173 = call i64 @C_mutate(ptr noundef %162, i64 noundef %172)
  store i64 %173, ptr %15, align 8
  %174 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 12), align 16
  %175 = inttoptr i64 %174 to ptr
  %176 = getelementptr inbounds i64, ptr %175, i64 1
  %177 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %177, align 8
  %178 = load ptr, ptr %19, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 1
  store i64 ptrtoint (ptr @f_639 to i64), ptr %179, align 8
  %180 = load ptr, ptr %19, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %181, align 8
  %182 = load ptr, ptr %19, align 8
  %183 = ptrtoint ptr %182 to i64
  store i64 %183, ptr %5, align 8
  %184 = load ptr, ptr %19, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 3
  store ptr %185, ptr %19, align 8
  %186 = load i64, ptr %5, align 8
  %187 = call i64 @C_mutate(ptr noundef %176, i64 noundef %186)
  store i64 %187, ptr %16, align 8
  %188 = load ptr, ptr %19, align 8
  store i64 2594073385365405698, ptr %188, align 8
  %189 = load ptr, ptr %19, align 8
  %190 = getelementptr inbounds i64, ptr %189, i64 1
  store i64 ptrtoint (ptr @f_647 to i64), ptr %190, align 8
  %191 = load i64, ptr %6, align 8
  %192 = inttoptr i64 %191 to ptr
  %193 = getelementptr inbounds i64, ptr %192, i64 2
  %194 = load i64, ptr %193, align 8
  %195 = load ptr, ptr %19, align 8
  %196 = getelementptr inbounds i64, ptr %195, i64 2
  store i64 %194, ptr %196, align 8
  %197 = load ptr, ptr %19, align 8
  %198 = ptrtoint ptr %197 to i64
  store i64 %198, ptr %5, align 8
  %199 = load ptr, ptr %19, align 8
  %200 = getelementptr inbounds i64, ptr %199, i64 3
  store ptr %200, ptr %19, align 8
  %201 = load i64, ptr %5, align 8
  store i64 %201, ptr %17, align 8
  call void @C_trace(ptr noundef @.str.58)
  %202 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), align 8
  %203 = inttoptr i64 %202 to ptr
  %204 = getelementptr inbounds i64, ptr %203, i64 1
  %205 = load i64, ptr %204, align 8
  %206 = call ptr @C_fast_retrieve_proc(i64 noundef %205)
  store ptr %206, ptr %22, align 8
  %207 = load i64, ptr %3, align 8
  %208 = icmp sge i64 %207, 4
  br i1 %208, label %209, label %211

209:                                              ; preds = %60
  %210 = load ptr, ptr %4, align 8
  store ptr %210, ptr %23, align 8
  br label %213

211:                                              ; preds = %60
  %212 = alloca i8, i64 32, align 16
  store ptr %212, ptr %23, align 8
  br label %213

213:                                              ; preds = %211, %209
  %214 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), align 8
  %215 = inttoptr i64 %214 to ptr
  %216 = getelementptr inbounds i64, ptr %215, i64 1
  %217 = load i64, ptr %216, align 8
  %218 = load ptr, ptr %23, align 8
  %219 = getelementptr inbounds i64, ptr %218, i64 0
  store i64 %217, ptr %219, align 8
  %220 = load i64, ptr %17, align 8
  %221 = load ptr, ptr %23, align 8
  %222 = getelementptr inbounds i64, ptr %221, i64 1
  store i64 %220, ptr %222, align 8
  %223 = load ptr, ptr %23, align 8
  %224 = getelementptr inbounds i64, ptr %223, i64 2
  store i64 513, ptr %224, align 8
  %225 = load ptr, ptr %23, align 8
  %226 = getelementptr inbounds i64, ptr %225, i64 3
  store i64 1, ptr %226, align 8
  %227 = load ptr, ptr %22, align 8
  %228 = load ptr, ptr %23, align 8
  call void %227(i64 noundef 4, ptr noundef %228) #4
  unreachable
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
define internal void @f_556(i64 noundef %0, ptr noundef %1) #0 {
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
  %38 = icmp ne i64 %37, 6
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i64, ptr %3, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %41, i32 noundef 6, i64 noundef %42) #4
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
  %49 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store ptr %49, ptr %16, align 8
  %50 = load ptr, ptr %16, align 8
  store ptr %50, ptr %17, align 8
  %51 = load ptr, ptr %17, align 8
  %52 = load ptr, ptr @C_stack_limit, align 8
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = load i64, ptr %3, align 8
  %58 = icmp sgt i64 %57, 5
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 5
  %61 = add nsw i32 10, %60
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
  call void @C_save_and_reclaim(ptr noundef @f_556, i32 noundef %72, ptr noundef %73) #4
  unreachable

74:                                               ; preds = %48
  %75 = alloca i8, i64 80, align 16
  store ptr %75, ptr %15, align 8
  %76 = load ptr, ptr %15, align 8
  store i64 2594073385365405699, ptr %76, align 8
  %77 = load ptr, ptr %15, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_562 to i64), ptr %78, align 8
  %79 = load i64, ptr %11, align 8
  %80 = load ptr, ptr %15, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 ptrtoint (ptr @li0 to i64), ptr %83, align 8
  %84 = load ptr, ptr %15, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store ptr %87, ptr %15, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %12, align 8
  %89 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %89, align 8
  %90 = load ptr, ptr %15, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_568 to i64), ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %15, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %9, align 8
  %96 = load ptr, ptr %15, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %10, align 8
  %99 = load ptr, ptr %15, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %15, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 5
  store i64 ptrtoint (ptr @li1 to i64), ptr %102, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 6
  store ptr %106, ptr %15, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.59)
  %108 = load ptr, ptr %4, align 8
  store ptr %108, ptr %18, align 8
  %109 = load ptr, ptr %18, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 0, ptr %110, align 8
  %111 = load i64, ptr %7, align 8
  %112 = load ptr, ptr %18, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %12, align 8
  %115 = load ptr, ptr %18, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %13, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 %117, ptr %119, align 8
  %120 = load ptr, ptr %18, align 8
  call void @C_call_with_values(i64 noundef 4, ptr noundef %120) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_577(i64 noundef %0, ptr noundef %1) #0 {
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
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
  store ptr %38, ptr %13, align 8
  %39 = load ptr, ptr %13, align 8
  store ptr %39, ptr %14, align 8
  %40 = load ptr, ptr %14, align 8
  %41 = load ptr, ptr @C_stack_limit, align 8
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = load i64, ptr %3, align 8
  %47 = icmp sgt i64 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  %50 = add nsw i32 0, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, ptr @C_scratch_usage, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sgt i64 %45, %53
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_577, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = load i64, ptr %8, align 8
  %65 = call i64 @C_i_vectorp(i64 noundef %64)
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = load i64, ptr %8, align 8
  %69 = call i64 @C_i_vector_length(i64 noundef %68)
  store i64 %69, ptr %9, align 8
  %70 = load i64, ptr %9, align 8
  %71 = call i64 @C_i_greaterp(i64 noundef %70, i64 noundef 1)
  store i64 %71, ptr %10, align 8
  %72 = load i64, ptr %7, align 8
  store i64 %72, ptr %11, align 8
  %73 = load ptr, ptr %4, align 8
  store ptr %73, ptr %15, align 8
  %74 = load i64, ptr %11, align 8
  %75 = load ptr, ptr %15, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %10, align 8
  %78 = icmp ne i64 %77, 6
  br i1 %78, label %79, label %86

79:                                               ; preds = %67
  %80 = load i64, ptr %8, align 8
  %81 = call i64 @C_i_vector_ref(i64 noundef %80, i64 noundef 1)
  %82 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 3), align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i64 22, i64 6
  br label %87

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i64 [ %85, %79 ], [ 6, %86 ]
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %11, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = load ptr, ptr %15, align 8
  call void %95(i64 noundef 2, ptr noundef %96) #4
  unreachable

97:                                               ; preds = %63
  %98 = load i64, ptr %7, align 8
  store i64 %98, ptr %9, align 8
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %16, align 8
  %100 = load i64, ptr %9, align 8
  %101 = load ptr, ptr %16, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 0
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 6, ptr %104, align 8
  %105 = load i64, ptr %9, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = load ptr, ptr %16, align 8
  call void %109(i64 noundef 2, ptr noundef %110) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_603(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
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
  call void @C_save_and_reclaim(ptr noundef @f_603, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 3)
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
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
  call void @C_save_and_reclaim(ptr noundef @f_609, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 5)
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
define internal void @f_615(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
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
  call void @C_save_and_reclaim(ptr noundef @f_615, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 7)
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
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
  call void @C_save_and_reclaim(ptr noundef @f_621, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 9)
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
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
  call void @C_save_and_reclaim(ptr noundef @f_627, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 11)
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
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
  call void @C_save_and_reclaim(ptr noundef @f_633, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 13)
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
define internal void @f_639(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  call void @C_save_and_reclaim(ptr noundef @f_639, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_vector_ref(i64 noundef %66, i64 noundef 15)
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
define internal void @f_647(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
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
  %36 = icmp sgt i64 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 3
  %39 = add nsw i32 11, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_647, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 88, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_650 to i64), ptr %56, align 8
  %57 = load i64, ptr %7, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store ptr %69, ptr %13, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %71 = load ptr, ptr %13, align 8
  store i64 1, ptr %71, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store ptr %78, ptr %13, align 8
  %79 = load i64, ptr %5, align 8
  store i64 %79, ptr %10, align 8
  %80 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_1259 to i64), ptr %82, align 8
  %83 = load i64, ptr %7, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 ptrtoint (ptr @li35 to i64), ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  store ptr %94, ptr %13, align 8
  %95 = load i64, ptr %5, align 8
  %96 = load i64, ptr %10, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds %struct.C_block_struct, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds [0 x i64], ptr %98, i64 0, i64 0
  store i64 %95, ptr %99, align 8
  store i64 %95, ptr %11, align 8
  %100 = load i64, ptr %10, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %12, align 8
  %104 = load i64, ptr %12, align 8
  %105 = load i64, ptr %8, align 8
  call void @f_1259(i64 noundef %104, i64 noundef %105, i64 noundef 1) #4
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

declare i64 @C_mutate_slot(ptr noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_562(i64 noundef %0, ptr noundef %1) #0 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
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
  call void @C_save_and_reclaim(ptr noundef @f_562, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  call void @C_trace(ptr noundef @.str.60)
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %8, align 8
  %61 = load ptr, ptr %4, align 8
  store ptr %61, ptr %12, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = call ptr @C_fast_retrieve_proc(i64 noundef %68)
  %70 = load ptr, ptr %12, align 8
  call void %69(i64 noundef 2, ptr noundef %70) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_568(i64 noundef %0, ptr noundef %1) #0 {
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
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %57 = add nsw i32 9, %56
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
  call void @C_save_and_reclaim(ptr noundef @f_568, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 72, align 16
  store ptr %71, ptr %13, align 8
  %72 = load ptr, ptr %13, align 8
  store i64 2594073385365405704, ptr %72, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_572 to i64), ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %13, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %8, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 6
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 7
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %10, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 8
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = ptrtoint ptr %105 to i64
  store i64 %106, ptr %5, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 9
  store ptr %108, ptr %13, align 8
  %109 = load i64, ptr %5, align 8
  store i64 %109, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.61)
  %110 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 4), align 16
  %111 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %110)
  store ptr %111, ptr %16, align 8
  %112 = load ptr, ptr %4, align 8
  store ptr %112, ptr %17, align 8
  %113 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 4), align 16
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %17, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 0
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %11, align 8
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %6, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 3
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %17, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %6, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 4
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %17, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %16, align 8
  %135 = load ptr, ptr %17, align 8
  call void %134(i64 noundef 4, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_call_with_values(i64 noundef, ptr noundef) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_572(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
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
  %36 = add nsw i32 9, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_572, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 72, align 16
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
  %59 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 7
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 8
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %7, align 8
  %85 = call i64 @C_a_i_vector8(ptr noundef %9, i32 noundef 8, i64 noundef %59, i64 noundef %63, i64 noundef %67, i64 noundef %71, i64 noundef %75, i64 noundef %79, i64 noundef %83, i64 noundef %84)
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = load ptr, ptr %12, align 8
  call void %92(i64 noundef 2, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_vector8(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #3 {
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
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
  store ptr %0, ptr %11, align 8
  store i32 %1, ptr %12, align 4
  store i64 %2, ptr %13, align 8
  store i64 %3, ptr %14, align 8
  store i64 %4, ptr %15, align 8
  store i64 %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i64 %8, ptr %19, align 8
  store i64 %9, ptr %20, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %21, align 8
  %25 = load ptr, ptr %21, align 8
  store ptr %25, ptr %22, align 8
  %26 = load ptr, ptr %21, align 8
  %27 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %27, ptr %21, align 8
  store i64 8, ptr %26, align 8
  %28 = load i64, ptr %13, align 8
  %29 = load ptr, ptr %21, align 8
  %30 = getelementptr inbounds i64, ptr %29, i32 1
  store ptr %30, ptr %21, align 8
  store i64 %28, ptr %29, align 8
  %31 = load i64, ptr %14, align 8
  %32 = load ptr, ptr %21, align 8
  %33 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %33, ptr %21, align 8
  store i64 %31, ptr %32, align 8
  %34 = load i64, ptr %15, align 8
  %35 = load ptr, ptr %21, align 8
  %36 = getelementptr inbounds i64, ptr %35, i32 1
  store ptr %36, ptr %21, align 8
  store i64 %34, ptr %35, align 8
  %37 = load i64, ptr %16, align 8
  %38 = load ptr, ptr %21, align 8
  %39 = getelementptr inbounds i64, ptr %38, i32 1
  store ptr %39, ptr %21, align 8
  store i64 %37, ptr %38, align 8
  %40 = load i64, ptr %17, align 8
  %41 = load ptr, ptr %21, align 8
  %42 = getelementptr inbounds i64, ptr %41, i32 1
  store ptr %42, ptr %21, align 8
  store i64 %40, ptr %41, align 8
  %43 = load i64, ptr %18, align 8
  %44 = load ptr, ptr %21, align 8
  %45 = getelementptr inbounds i64, ptr %44, i32 1
  store ptr %45, ptr %21, align 8
  store i64 %43, ptr %44, align 8
  %46 = load i64, ptr %19, align 8
  %47 = load ptr, ptr %21, align 8
  %48 = getelementptr inbounds i64, ptr %47, i32 1
  store ptr %48, ptr %21, align 8
  store i64 %46, ptr %47, align 8
  %49 = load i64, ptr %20, align 8
  %50 = load ptr, ptr %21, align 8
  %51 = getelementptr inbounds i64, ptr %50, i32 1
  store ptr %51, ptr %21, align 8
  store i64 %49, ptr %50, align 8
  %52 = load ptr, ptr %21, align 8
  %53 = load ptr, ptr %11, align 8
  store ptr %52, ptr %53, align 8
  %54 = load ptr, ptr %22, align 8
  %55 = ptrtoint ptr %54 to i64
  ret i64 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_i_vectorp(i64 noundef %0) #3 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 3
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %2, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %struct.C_block_struct, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -72057594037927936
  %12 = icmp eq i64 %11, 0
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 22, i64 6
  ret i64 %16
}

declare i64 @C_i_vector_length(i64 noundef) #1

declare i64 @C_i_greaterp(i64 noundef, i64 noundef) #1

declare i64 @C_i_vector_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_650(i64 noundef %0, ptr noundef %1) #0 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
  store ptr %35, ptr %21, align 8
  %36 = load ptr, ptr %21, align 8
  store ptr %36, ptr %22, align 8
  %37 = load ptr, ptr %22, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 9
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 9
  %47 = add nsw i32 30, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_650, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 240, align 16
  store ptr %61, ptr %20, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 13), i64 noundef %65)
  store i64 %66, ptr %8, align 8
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 14), align 16
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %70, align 8
  %71 = load ptr, ptr %20, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 ptrtoint (ptr @f_652 to i64), ptr %72, align 8
  %73 = load ptr, ptr %20, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %74, align 8
  %75 = load ptr, ptr %20, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %20, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store ptr %78, ptr %20, align 8
  %79 = load i64, ptr %5, align 8
  %80 = call i64 @C_mutate(ptr noundef %69, i64 noundef %79)
  store i64 %80, ptr %9, align 8
  %81 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 4), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %84, align 8
  %85 = load ptr, ptr %20, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 ptrtoint (ptr @f_690 to i64), ptr %86, align 8
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %88, align 8
  %89 = load ptr, ptr %20, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %20, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store ptr %92, ptr %20, align 8
  %93 = load i64, ptr %5, align 8
  %94 = call i64 @C_mutate(ptr noundef %83, i64 noundef %93)
  store i64 %94, ptr %10, align 8
  %95 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %98, align 8
  %99 = load ptr, ptr %20, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 ptrtoint (ptr @f_733 to i64), ptr %100, align 8
  %101 = load ptr, ptr %20, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %102, align 8
  %103 = load ptr, ptr %20, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %20, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store ptr %106, ptr %20, align 8
  %107 = load i64, ptr %5, align 8
  %108 = call i64 @C_mutate(ptr noundef %97, i64 noundef %107)
  store i64 %108, ptr %11, align 8
  %109 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %112, align 8
  %113 = load ptr, ptr %20, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 ptrtoint (ptr @f_761 to i64), ptr %114, align 8
  %115 = load ptr, ptr %20, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 ptrtoint (ptr @li16 to i64), ptr %116, align 8
  %117 = load ptr, ptr %20, align 8
  %118 = ptrtoint ptr %117 to i64
  store i64 %118, ptr %5, align 8
  %119 = load ptr, ptr %20, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store ptr %120, ptr %20, align 8
  %121 = load i64, ptr %5, align 8
  %122 = call i64 @C_mutate(ptr noundef %111, i64 noundef %121)
  store i64 %122, ptr %12, align 8
  %123 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 25), align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  %126 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %126, align 8
  %127 = load ptr, ptr %20, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  store i64 ptrtoint (ptr @f_810 to i64), ptr %128, align 8
  %129 = load ptr, ptr %20, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 2
  store i64 ptrtoint (ptr @li17 to i64), ptr %130, align 8
  %131 = load ptr, ptr %20, align 8
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %5, align 8
  %133 = load ptr, ptr %20, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 3
  store ptr %134, ptr %20, align 8
  %135 = load i64, ptr %5, align 8
  %136 = call i64 @C_mutate(ptr noundef %125, i64 noundef %135)
  store i64 %136, ptr %13, align 8
  %137 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 28), align 16
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  %140 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %140, align 8
  %141 = load ptr, ptr %20, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  store i64 ptrtoint (ptr @f_927 to i64), ptr %142, align 8
  %143 = load ptr, ptr %20, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store i64 ptrtoint (ptr @li18 to i64), ptr %144, align 8
  %145 = load ptr, ptr %20, align 8
  %146 = ptrtoint ptr %145 to i64
  store i64 %146, ptr %5, align 8
  %147 = load ptr, ptr %20, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  store ptr %148, ptr %20, align 8
  %149 = load i64, ptr %5, align 8
  %150 = call i64 @C_mutate(ptr noundef %139, i64 noundef %149)
  store i64 %150, ptr %14, align 8
  %151 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %151, align 8
  %152 = load ptr, ptr %20, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  store i64 ptrtoint (ptr @f_975 to i64), ptr %153, align 8
  %154 = load ptr, ptr %20, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 2
  store i64 ptrtoint (ptr @li19 to i64), ptr %155, align 8
  %156 = load ptr, ptr %20, align 8
  %157 = ptrtoint ptr %156 to i64
  store i64 %157, ptr %5, align 8
  %158 = load ptr, ptr %20, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 3
  store ptr %159, ptr %20, align 8
  %160 = load i64, ptr %5, align 8
  %161 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 30), i64 noundef %160)
  store i64 %161, ptr %15, align 8
  %162 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 33), align 8
  %163 = inttoptr i64 %162 to ptr
  %164 = getelementptr inbounds i64, ptr %163, i64 1
  %165 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %165, align 8
  %166 = load ptr, ptr %20, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 1
  store i64 ptrtoint (ptr @f_984 to i64), ptr %167, align 8
  %168 = load ptr, ptr %20, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 2
  store i64 ptrtoint (ptr @li20 to i64), ptr %169, align 8
  %170 = load ptr, ptr %20, align 8
  %171 = ptrtoint ptr %170 to i64
  store i64 %171, ptr %5, align 8
  %172 = load ptr, ptr %20, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 3
  store ptr %173, ptr %20, align 8
  %174 = load i64, ptr %5, align 8
  %175 = call i64 @C_mutate(ptr noundef %164, i64 noundef %174)
  store i64 %175, ptr %16, align 8
  %176 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 40), align 16
  %177 = inttoptr i64 %176 to ptr
  %178 = getelementptr inbounds i64, ptr %177, i64 1
  %179 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %179, align 8
  %180 = load ptr, ptr %20, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 1
  store i64 ptrtoint (ptr @f_1015 to i64), ptr %181, align 8
  %182 = load ptr, ptr %20, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 2
  store i64 ptrtoint (ptr @li32 to i64), ptr %183, align 8
  %184 = load ptr, ptr %20, align 8
  %185 = ptrtoint ptr %184 to i64
  store i64 %185, ptr %5, align 8
  %186 = load ptr, ptr %20, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 3
  store ptr %187, ptr %20, align 8
  %188 = load i64, ptr %5, align 8
  %189 = call i64 @C_mutate(ptr noundef %178, i64 noundef %188)
  store i64 %189, ptr %17, align 8
  %190 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 52), align 16
  %191 = inttoptr i64 %190 to ptr
  %192 = getelementptr inbounds i64, ptr %191, i64 1
  %193 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %193, align 8
  %194 = load ptr, ptr %20, align 8
  %195 = getelementptr inbounds i64, ptr %194, i64 1
  store i64 ptrtoint (ptr @f_1239 to i64), ptr %195, align 8
  %196 = load ptr, ptr %20, align 8
  %197 = getelementptr inbounds i64, ptr %196, i64 2
  store i64 ptrtoint (ptr @li33 to i64), ptr %197, align 8
  %198 = load ptr, ptr %20, align 8
  %199 = ptrtoint ptr %198 to i64
  store i64 %199, ptr %5, align 8
  %200 = load ptr, ptr %20, align 8
  %201 = getelementptr inbounds i64, ptr %200, i64 3
  store ptr %201, ptr %20, align 8
  %202 = load i64, ptr %5, align 8
  %203 = call i64 @C_mutate(ptr noundef %192, i64 noundef %202)
  store i64 %203, ptr %18, align 8
  %204 = load i64, ptr %6, align 8
  %205 = inttoptr i64 %204 to ptr
  %206 = getelementptr inbounds i64, ptr %205, i64 3
  %207 = load i64, ptr %206, align 8
  store i64 %207, ptr %19, align 8
  %208 = load ptr, ptr %4, align 8
  store ptr %208, ptr %23, align 8
  %209 = load i64, ptr %19, align 8
  %210 = load ptr, ptr %23, align 8
  %211 = getelementptr inbounds i64, ptr %210, i64 0
  store i64 %209, ptr %211, align 8
  %212 = load ptr, ptr %23, align 8
  %213 = getelementptr inbounds i64, ptr %212, i64 1
  store i64 30, ptr %213, align 8
  %214 = load i64, ptr %19, align 8
  %215 = inttoptr i64 %214 to ptr
  %216 = getelementptr inbounds i64, ptr %215, i64 1
  %217 = load i64, ptr %216, align 8
  %218 = inttoptr i64 %217 to ptr
  %219 = load ptr, ptr %23, align 8
  call void %218(i64 noundef 2, ptr noundef %219) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1259(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %17 = load i64, ptr @C_timer_interrupt_counter, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, ptr @C_timer_interrupt_counter, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %21

21:                                               ; preds = %20, %3
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
  store ptr %22, ptr %14, align 8
  %23 = load ptr, ptr %14, align 8
  store ptr %23, ptr %15, align 8
  %24 = load ptr, ptr %15, align 8
  %25 = load ptr, ptr @C_stack_limit, align 8
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = load i64, ptr @C_scratch_usage, align 8
  %31 = add nsw i64 16, %30
  %32 = icmp sgt i64 %29, %31
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i64, ptr %4, align 8
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1259, i32 noundef 3, i64 noundef %38, i64 noundef %39, i64 noundef %40) #4
  unreachable

41:                                               ; preds = %21
  %42 = alloca i8, i64 96, align 16
  store ptr %42, ptr %13, align 8
  %43 = load i64, ptr %6, align 8
  %44 = call i64 @C_i_lessp(i64 noundef %43, i64 noundef 513)
  %45 = icmp ne i64 %44, 6
  br i1 %45, label %46, label %106

46:                                               ; preds = %41
  %47 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %47, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 ptrtoint (ptr @f_1280 to i64), ptr %49, align 8
  %50 = load i64, ptr %4, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  %53 = load i64, ptr %52, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = load ptr, ptr %13, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 %56, ptr %58, align 8
  %59 = load i64, ptr %4, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 3
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %13, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 4
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %5, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 5
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %7, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 6
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %7, align 8
  store i64 %72, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %73 = load ptr, ptr %13, align 8
  store i64 1, ptr %73, align 8
  %74 = load i64, ptr %9, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %7, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %7, align 8
  store i64 %81, ptr %10, align 8
  %82 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 ptrtoint (ptr @f_1282 to i64), ptr %84, align 8
  %85 = load i64, ptr %10, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 ptrtoint (ptr @li34 to i64), ptr %89, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %7, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store ptr %93, ptr %13, align 8
  %94 = load i64, ptr %7, align 8
  %95 = load i64, ptr %10, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds %struct.C_block_struct, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds [0 x i64], ptr %97, i64 0, i64 0
  store i64 %94, ptr %98, align 8
  store i64 %94, ptr %11, align 8
  %99 = load i64, ptr %10, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %12, align 8
  %103 = load i64, ptr %12, align 8
  %104 = load i64, ptr %8, align 8
  %105 = load i64, ptr %6, align 8
  call void @f_1282(i64 noundef %103, i64 noundef %104, i64 noundef %105, i64 noundef 1) #4
  unreachable

106:                                              ; preds = %41
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %8, align 8
  %108 = load i64, ptr %8, align 8
  %109 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %108, ptr %109, align 16
  %110 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 30, ptr %110, align 8
  %111 = load i64, ptr %8, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %115(i64 noundef 2, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_652(i64 noundef %0, ptr noundef %1) #0 {
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
  store ptr %43, ptr %20, align 8
  %44 = load ptr, ptr %20, align 8
  store ptr %44, ptr %21, align 8
  %45 = load ptr, ptr %21, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 2
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 2
  %55 = add nsw i32 59, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_652, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 472, align 16
  store ptr %69, ptr %19, align 8
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_s_a_i_bitwise_and(ptr noundef %19, i64 noundef 2, i64 noundef %70, i64 noundef 511)
  store i64 %71, ptr %9, align 8
  %72 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 13), align 8
  %73 = call i64 @C_retrieve2(i64 noundef %72, ptr noundef @.str.62)
  %74 = load i64, ptr %9, align 8
  %75 = call i64 @C_i_vector_ref(i64 noundef %73, i64 noundef %74)
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %8, align 8
  %77 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %19, i64 noundef 2, i64 noundef %76, i64 noundef -15)
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %11, align 8
  %79 = call i64 @C_s_a_i_bitwise_and(ptr noundef %19, i64 noundef 2, i64 noundef %78, i64 noundef 511)
  store i64 %79, ptr %12, align 8
  %80 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 13), align 8
  %81 = call i64 @C_retrieve2(i64 noundef %80, ptr noundef @.str.62)
  %82 = load i64, ptr %12, align 8
  %83 = call i64 @C_i_vector_ref(i64 noundef %81, i64 noundef %82)
  store i64 %83, ptr %13, align 8
  %84 = load i64, ptr %8, align 8
  %85 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %19, i64 noundef 2, i64 noundef %84, i64 noundef -31)
  store i64 %85, ptr %14, align 8
  %86 = load i64, ptr %14, align 8
  %87 = call i64 @C_s_a_i_bitwise_and(ptr noundef %19, i64 noundef 2, i64 noundef %86, i64 noundef 511)
  store i64 %87, ptr %15, align 8
  %88 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 13), align 8
  %89 = call i64 @C_retrieve2(i64 noundef %88, ptr noundef @.str.62)
  %90 = load i64, ptr %15, align 8
  %91 = call i64 @C_i_vector_ref(i64 noundef %89, i64 noundef %90)
  store i64 %91, ptr %16, align 8
  %92 = load ptr, ptr %19, align 8
  store i64 2594073385365405700, ptr %92, align 8
  %93 = load ptr, ptr %19, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @va1372 to i64), ptr %94, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load ptr, ptr %19, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %16, align 8
  %99 = load ptr, ptr %19, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %19, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 ptrtoint (ptr @li11 to i64), ptr %102, align 8
  %103 = load ptr, ptr %19, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %19, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  store ptr %106, ptr %19, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %17, align 8
  %108 = load i64, ptr %17, align 8
  store i64 %108, ptr %18, align 8
  %109 = load i64, ptr %18, align 8
  %110 = load i64, ptr %10, align 8
  %111 = load i64, ptr %13, align 8
  %112 = call i64 @C_s_a_i_plus(ptr noundef %19, i64 noundef 2, i64 noundef %110, i64 noundef %111)
  call void @va1372(i64 noundef %109, i64 noundef %112) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_690(i64 noundef %0, ptr noundef %1) #0 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  %53 = add nsw i32 4, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_690, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 32, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_694 to i64), ptr %70, align 8
  %71 = load i64, ptr %7, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %9, align 8
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
  call void @C_trace(ptr noundef @.str.63)
  %82 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 18), align 16
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  %85 = load i64, ptr %84, align 8
  %86 = call ptr @C_fast_retrieve_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 18), align 16
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
define internal void @f_733(i64 noundef %0, ptr noundef %1) #0 {
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
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
  %59 = add nsw i32 6, %58
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
  call void @C_save_and_reclaim(ptr noundef @f_733, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 48, align 16
  store ptr %73, ptr %13, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
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
  %93 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
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
  %114 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  %148 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  call void @C_trace(ptr noundef @.str.68)
  %169 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %170 = inttoptr i64 %169 to ptr
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  %172 = load i64, ptr %171, align 8
  %173 = call ptr @C_fast_retrieve_proc(i64 noundef %172)
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
  %181 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %190 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 23), align 8
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
define internal void @f_761(i64 noundef %0, ptr noundef %1) #0 {
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
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %6, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 1
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %7, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 2
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %8, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 3
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %9, align 8
  %47 = load i64, ptr %3, align 8
  %48 = icmp ne i64 %47, 4
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load i64, ptr %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %51, i32 noundef 4, i64 noundef %52) #4
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
  %59 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
  store ptr %59, ptr %20, align 8
  %60 = load ptr, ptr %20, align 8
  store ptr %60, ptr %21, align 8
  %61 = load ptr, ptr %21, align 8
  %62 = load ptr, ptr @C_stack_limit, align 8
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 8
  %67 = load i64, ptr %3, align 8
  %68 = icmp sgt i64 %67, 1
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 1
  %71 = add nsw i32 9, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, ptr @C_scratch_usage, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp sgt i64 %66, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i64, ptr %3, align 8
  %82 = trunc i64 %81 to i32
  %83 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_761, i32 noundef %82, ptr noundef %83) #4
  unreachable

84:                                               ; preds = %58
  %85 = alloca i8, i64 72, align 16
  store ptr %85, ptr %19, align 8
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_car(i64 noundef %86)
  store i64 %87, ptr %10, align 8
  %88 = load i64, ptr %10, align 8
  %89 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i64 22, i64 6
  store i64 %92, ptr %11, align 8
  %93 = load i64, ptr %11, align 8
  %94 = icmp ne i64 %93, 6
  br i1 %94, label %95, label %147

95:                                               ; preds = %84
  %96 = load i64, ptr %8, align 8
  %97 = call i64 @C_i_cdr(i64 noundef %96)
  store i64 %97, ptr %12, align 8
  %98 = load ptr, ptr %19, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %22, align 8
  %100 = load ptr, ptr %19, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 0
  store i64 216172782113783810, ptr %101, align 8
  %102 = load ptr, ptr %19, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store ptr %103, ptr %19, align 8
  %104 = load i64, ptr %9, align 8
  %105 = load i64, ptr %22, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds %struct.C_block_struct, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [0 x i64], ptr %107, i64 0, i64 0
  store i64 %104, ptr %108, align 8
  %109 = load i64, ptr %12, align 8
  %110 = load i64, ptr %22, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds %struct.C_block_struct, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds [0 x i64], ptr %112, i64 0, i64 1
  store i64 %109, ptr %113, align 8
  %114 = load i64, ptr %22, align 8
  store i64 %114, ptr %23, align 8
  %115 = load i64, ptr %23, align 8
  store i64 %115, ptr %13, align 8
  %116 = load i64, ptr %7, align 8
  store i64 %116, ptr %14, align 8
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %24, align 8
  %118 = load i64, ptr %14, align 8
  %119 = load ptr, ptr %24, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %19, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %25, align 8
  %123 = load ptr, ptr %19, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 216172782113783810, ptr %124, align 8
  %125 = load ptr, ptr %19, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  store ptr %126, ptr %19, align 8
  %127 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
  %128 = load i64, ptr %25, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds %struct.C_block_struct, ptr %129, i32 0, i32 1
  %131 = getelementptr inbounds [0 x i64], ptr %130, i64 0, i64 0
  store i64 %127, ptr %131, align 8
  %132 = load i64, ptr %13, align 8
  %133 = load i64, ptr %25, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds %struct.C_block_struct, ptr %134, i32 0, i32 1
  %136 = getelementptr inbounds [0 x i64], ptr %135, i64 0, i64 1
  store i64 %132, ptr %136, align 8
  %137 = load i64, ptr %25, align 8
  store i64 %137, ptr %26, align 8
  %138 = load i64, ptr %26, align 8
  %139 = load ptr, ptr %24, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  store i64 %138, ptr %140, align 8
  %141 = load i64, ptr %14, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds i64, ptr %142, i64 1
  %144 = load i64, ptr %143, align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = load ptr, ptr %24, align 8
  call void %145(i64 noundef 2, ptr noundef %146) #4
  unreachable

147:                                              ; preds = %84
  %148 = load i64, ptr %10, align 8
  %149 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i64 22, i64 6
  store i64 %152, ptr %12, align 8
  %153 = load i64, ptr %12, align 8
  %154 = icmp ne i64 %153, 6
  br i1 %154, label %155, label %229

155:                                              ; preds = %147
  %156 = load i64, ptr %8, align 8
  %157 = call i64 @C_i_cdr(i64 noundef %156)
  store i64 %157, ptr %13, align 8
  %158 = load i64, ptr %13, align 8
  %159 = call i64 @C_i_car(i64 noundef %158)
  store i64 %159, ptr %14, align 8
  %160 = load i64, ptr %13, align 8
  %161 = call i64 @C_i_cdr(i64 noundef %160)
  store i64 %161, ptr %15, align 8
  %162 = load ptr, ptr %19, align 8
  %163 = ptrtoint ptr %162 to i64
  store i64 %163, ptr %27, align 8
  %164 = load ptr, ptr %19, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 0
  store i64 216172782113783810, ptr %165, align 8
  %166 = load ptr, ptr %19, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 3
  store ptr %167, ptr %19, align 8
  %168 = load i64, ptr %9, align 8
  %169 = load i64, ptr %27, align 8
  %170 = inttoptr i64 %169 to ptr
  %171 = getelementptr inbounds %struct.C_block_struct, ptr %170, i32 0, i32 1
  %172 = getelementptr inbounds [0 x i64], ptr %171, i64 0, i64 0
  store i64 %168, ptr %172, align 8
  %173 = load i64, ptr %15, align 8
  %174 = load i64, ptr %27, align 8
  %175 = inttoptr i64 %174 to ptr
  %176 = getelementptr inbounds %struct.C_block_struct, ptr %175, i32 0, i32 1
  %177 = getelementptr inbounds [0 x i64], ptr %176, i64 0, i64 1
  store i64 %173, ptr %177, align 8
  %178 = load i64, ptr %27, align 8
  store i64 %178, ptr %28, align 8
  %179 = load i64, ptr %28, align 8
  store i64 %179, ptr %16, align 8
  %180 = load ptr, ptr %19, align 8
  %181 = ptrtoint ptr %180 to i64
  store i64 %181, ptr %29, align 8
  %182 = load ptr, ptr %19, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 0
  store i64 216172782113783810, ptr %183, align 8
  %184 = load ptr, ptr %19, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 3
  store ptr %185, ptr %19, align 8
  %186 = load i64, ptr %14, align 8
  %187 = load i64, ptr %29, align 8
  %188 = inttoptr i64 %187 to ptr
  %189 = getelementptr inbounds %struct.C_block_struct, ptr %188, i32 0, i32 1
  %190 = getelementptr inbounds [0 x i64], ptr %189, i64 0, i64 0
  store i64 %186, ptr %190, align 8
  %191 = load i64, ptr %16, align 8
  %192 = load i64, ptr %29, align 8
  %193 = inttoptr i64 %192 to ptr
  %194 = getelementptr inbounds %struct.C_block_struct, ptr %193, i32 0, i32 1
  %195 = getelementptr inbounds [0 x i64], ptr %194, i64 0, i64 1
  store i64 %191, ptr %195, align 8
  %196 = load i64, ptr %29, align 8
  store i64 %196, ptr %30, align 8
  %197 = load i64, ptr %30, align 8
  store i64 %197, ptr %17, align 8
  %198 = load i64, ptr %7, align 8
  store i64 %198, ptr %18, align 8
  %199 = load ptr, ptr %4, align 8
  store ptr %199, ptr %31, align 8
  %200 = load i64, ptr %18, align 8
  %201 = load ptr, ptr %31, align 8
  %202 = getelementptr inbounds i64, ptr %201, i64 0
  store i64 %200, ptr %202, align 8
  %203 = load ptr, ptr %19, align 8
  %204 = ptrtoint ptr %203 to i64
  store i64 %204, ptr %32, align 8
  %205 = load ptr, ptr %19, align 8
  %206 = getelementptr inbounds i64, ptr %205, i64 0
  store i64 216172782113783810, ptr %206, align 8
  %207 = load ptr, ptr %19, align 8
  %208 = getelementptr inbounds i64, ptr %207, i64 3
  store ptr %208, ptr %19, align 8
  %209 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
  %210 = load i64, ptr %32, align 8
  %211 = inttoptr i64 %210 to ptr
  %212 = getelementptr inbounds %struct.C_block_struct, ptr %211, i32 0, i32 1
  %213 = getelementptr inbounds [0 x i64], ptr %212, i64 0, i64 0
  store i64 %209, ptr %213, align 8
  %214 = load i64, ptr %17, align 8
  %215 = load i64, ptr %32, align 8
  %216 = inttoptr i64 %215 to ptr
  %217 = getelementptr inbounds %struct.C_block_struct, ptr %216, i32 0, i32 1
  %218 = getelementptr inbounds [0 x i64], ptr %217, i64 0, i64 1
  store i64 %214, ptr %218, align 8
  %219 = load i64, ptr %32, align 8
  store i64 %219, ptr %33, align 8
  %220 = load i64, ptr %33, align 8
  %221 = load ptr, ptr %31, align 8
  %222 = getelementptr inbounds i64, ptr %221, i64 1
  store i64 %220, ptr %222, align 8
  %223 = load i64, ptr %18, align 8
  %224 = inttoptr i64 %223 to ptr
  %225 = getelementptr inbounds i64, ptr %224, i64 1
  %226 = load i64, ptr %225, align 8
  %227 = inttoptr i64 %226 to ptr
  %228 = load ptr, ptr %31, align 8
  call void %227(i64 noundef 2, ptr noundef %228) #4
  unreachable

229:                                              ; preds = %147
  %230 = load i64, ptr %7, align 8
  store i64 %230, ptr %13, align 8
  %231 = load ptr, ptr %4, align 8
  store ptr %231, ptr %34, align 8
  %232 = load i64, ptr %13, align 8
  %233 = load ptr, ptr %34, align 8
  %234 = getelementptr inbounds i64, ptr %233, i64 0
  store i64 %232, ptr %234, align 8
  %235 = load ptr, ptr %34, align 8
  %236 = getelementptr inbounds i64, ptr %235, i64 1
  store i64 30, ptr %236, align 8
  %237 = load i64, ptr %13, align 8
  %238 = inttoptr i64 %237 to ptr
  %239 = getelementptr inbounds i64, ptr %238, i64 1
  %240 = load i64, ptr %239, align 8
  %241 = inttoptr i64 %240 to ptr
  %242 = load ptr, ptr %34, align 8
  call void %241(i64 noundef 2, ptr noundef %242) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_810(i64 noundef %0, ptr noundef %1) #0 {
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
  %59 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
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
  %71 = add nsw i32 6, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, ptr @C_scratch_usage, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp sgt i64 %66, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i64, ptr %3, align 8
  %82 = trunc i64 %81 to i32
  %83 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_810, i32 noundef %82, ptr noundef %83) #4
  unreachable

84:                                               ; preds = %58
  %85 = alloca i8, i64 48, align 16
  store ptr %85, ptr %21, align 8
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_car(i64 noundef %86)
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %9, align 8
  %89 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
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
  call void @C_trace(ptr noundef @.str.69)
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
  %135 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
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
  call void @C_trace(ptr noundef @.str.70)
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
  %170 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  %221 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  call void @C_trace(ptr noundef @.str.71)
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
  call void @C_trace(ptr noundef @.str.72)
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
  store i64 ptrtoint (ptr @f_899 to i64), ptr %284, align 8
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
  call void @C_trace(ptr noundef @.str.73)
  %293 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 26), align 16
  %294 = inttoptr i64 %293 to ptr
  %295 = getelementptr inbounds i64, ptr %294, i64 1
  %296 = load i64, ptr %295, align 8
  %297 = call ptr @C_fast_retrieve_proc(i64 noundef %296)
  store ptr %297, ptr %34, align 8
  %298 = load ptr, ptr %4, align 8
  store ptr %298, ptr %35, align 8
  %299 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 26), align 16
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
  call void @C_trace(ptr noundef @.str.74)
  %314 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %315 = inttoptr i64 %314 to ptr
  %316 = getelementptr inbounds i64, ptr %315, i64 1
  %317 = load i64, ptr %316, align 8
  %318 = call ptr @C_fast_retrieve_proc(i64 noundef %317)
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
  %326 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %335 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 27), align 8
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
define internal void @f_927(i64 noundef %0, ptr noundef %1) #0 {
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
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
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
  %56 = add nsw i32 0, %55
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
  call void @C_save_and_reclaim(ptr noundef @f_927, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_i_car(i64 noundef %70)
  store i64 %71, ptr %9, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
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
  %100 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  call void @C_trace(ptr noundef @.str.76)
  %140 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load i64, ptr %142, align 8
  %144 = call ptr @C_fast_retrieve_proc(i64 noundef %143)
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
  %152 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %161 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 29), align 8
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
define internal void @f_975(i64 noundef %0, ptr noundef %1) #0 {
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
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  call void @C_save_and_reclaim(ptr noundef @f_975, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 32, align 16
  store ptr %71, ptr %13, align 8
  %72 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %72, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_979 to i64), ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %10, align 8
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
  call void @C_trace(ptr noundef @.str.77)
  %86 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %87 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %86)
  store ptr %87, ptr %16, align 8
  %88 = load ptr, ptr %4, align 8
  store ptr %88, ptr %17, align 8
  %89 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %17, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 0
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %11, align 8
  %96 = load ptr, ptr %17, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %17, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 32), align 16
  %105 = load ptr, ptr %17, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = load ptr, ptr %17, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
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
  %46 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
  store ptr %46, ptr %15, align 8
  %47 = load ptr, ptr %15, align 8
  store ptr %47, ptr %16, align 8
  %48 = load ptr, ptr %16, align 8
  %49 = load ptr, ptr @C_stack_limit, align 8
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i64, ptr %3, align 8
  %55 = icmp sgt i64 %54, 2
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 2
  %58 = add nsw i32 7, %57
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
  call void @C_save_and_reclaim(ptr noundef @f_984, i32 noundef %69, ptr noundef %70) #4
  unreachable

71:                                               ; preds = %45
  %72 = alloca i8, i64 56, align 16
  store ptr %72, ptr %14, align 8
  %73 = load ptr, ptr %14, align 8
  store i64 2594073385365405698, ptr %73, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_988 to i64), ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store ptr %82, ptr %14, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %11, align 8
  %84 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %84, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 ptrtoint (ptr @f_1013 to i64), ptr %86, align 8
  %87 = load i64, ptr %11, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %9, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store ptr %96, ptr %14, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.78)
  %98 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 39), align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 8
  %102 = call ptr @C_fast_retrieve_proc(i64 noundef %101)
  store ptr %102, ptr %17, align 8
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %18, align 8
  %104 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 39), align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %18, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %12, align 8
  %111 = load ptr, ptr %18, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %8, align 8
  %114 = load ptr, ptr %18, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %17, align 8
  %117 = load ptr, ptr %18, align 8
  call void %116(i64 noundef 3, ptr noundef %117) #4
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
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
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
  %35 = load i64, ptr %3, align 8
  %36 = icmp slt i64 %35, 5
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, ptr %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, ptr %6, align 8
  call void @C_bad_min_argc_2(i32 noundef %39, i32 noundef 5, i64 noundef %40) #4
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !38
  store ptr %47, ptr %13, align 8
  %48 = load ptr, ptr %13, align 8
  store ptr %48, ptr %14, align 8
  %49 = load ptr, ptr %14, align 8
  %50 = load ptr, ptr @C_stack_limit, align 8
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i64, ptr %3, align 8
  %56 = sub nsw i64 %55, 5
  %57 = mul nsw i64 %56, 3
  %58 = add nsw i64 %57, 9
  %59 = load i64, ptr %3, align 8
  %60 = icmp sgt i64 %59, 4
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %58, %63
  %65 = load i64, ptr @C_scratch_usage, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp sgt i64 %54, %66
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %46
  %73 = load i64, ptr %3, align 8
  %74 = trunc i64 %73 to i32
  %75 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1015, i32 noundef %74, ptr noundef %75) #4
  unreachable

76:                                               ; preds = %46
  %77 = load i64, ptr %3, align 8
  %78 = sub nsw i64 %77, 5
  %79 = mul nsw i64 %78, 3
  %80 = add nsw i64 %79, 9
  %81 = mul i64 %80, 8
  %82 = alloca i8, i64 %81, align 16
  store ptr %82, ptr %12, align 8
  %83 = load i64, ptr %3, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = call i64 @C_build_rest(ptr noundef %12, i64 noundef %83, i64 noundef 5, ptr noundef %84)
  store i64 %85, ptr %11, align 8
  %86 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %86, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1019 to i64), ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %9, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load ptr, ptr %12, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %10, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 6
  store ptr %104, ptr %12, align 8
  %105 = load i64, ptr %5, align 8
  store i64 %105, ptr %15, align 8
  %106 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %106, align 8
  %107 = load ptr, ptr %12, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 ptrtoint (ptr @f_1236 to i64), ptr %108, align 8
  %109 = load ptr, ptr %12, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 ptrtoint (ptr @li31 to i64), ptr %110, align 8
  %111 = load ptr, ptr %12, align 8
  %112 = ptrtoint ptr %111 to i64
  store i64 %112, ptr %5, align 8
  %113 = load ptr, ptr %12, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store ptr %114, ptr %12, align 8
  %115 = load i64, ptr %5, align 8
  store i64 %115, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.83)
  %116 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 50), align 16
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load i64, ptr %118, align 8
  %120 = call ptr @C_fast_retrieve_proc(i64 noundef %119)
  store ptr %120, ptr %18, align 8
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %19, align 8
  %122 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 50), align 16
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %15, align 8
  %129 = load ptr, ptr %19, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 51), align 8
  %132 = load ptr, ptr %19, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %11, align 8
  %135 = load ptr, ptr %19, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 3
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %16, align 8
  %138 = load ptr, ptr %19, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 4
  store i64 %137, ptr %139, align 8
  %140 = load ptr, ptr %18, align 8
  %141 = load ptr, ptr %19, align 8
  call void %140(i64 noundef 5, ptr noundef %141) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1239(i64 noundef %0, ptr noundef %1) #0 {
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
  %61 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !39
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
  %70 = icmp sgt i64 %69, 5
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 5
  %73 = add nsw i32 5, %72
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
  call void @C_save_and_reclaim(ptr noundef @f_1239, i32 noundef %84, ptr noundef %85) #4
  unreachable

86:                                               ; preds = %60
  %87 = alloca i8, i64 40, align 16
  store ptr %87, ptr %17, align 8
  %88 = load ptr, ptr %17, align 8
  store i64 2594073385365405700, ptr %88, align 8
  %89 = load ptr, ptr %17, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_1243 to i64), ptr %90, align 8
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
  %100 = load ptr, ptr %17, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %5, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store ptr %103, ptr %17, align 8
  %104 = load i64, ptr %5, align 8
  store i64 %104, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.111)
  %105 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 2), align 16
  %106 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %105)
  store ptr %106, ptr %20, align 8
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %21, align 8
  %108 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 2), align 16
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %21, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 0
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %15, align 8
  %115 = load ptr, ptr %21, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %13, align 8
  %118 = load ptr, ptr %21, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %10, align 8
  %121 = load ptr, ptr %21, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 3
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %12, align 8
  %124 = load ptr, ptr %21, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 4
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %14, align 8
  %127 = load ptr, ptr %21, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 5
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %20, align 8
  %130 = load ptr, ptr %21, align 8
  call void %129(i64 noundef 6, ptr noundef %130) #4
  unreachable
}

declare i64 @C_s_a_i_bitwise_and(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_retrieve2(i64 noundef, ptr noundef) #1

declare i64 @C_s_a_i_arithmetic_shift(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @va1372(i64 noundef %0, i64 noundef %1) #0 {
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
  %16 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  %25 = add nsw i64 30, %24
  %26 = icmp sgt i64 %23, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i64, ptr %3, align 8
  %33 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trva1372, i32 noundef 2, i64 noundef %32, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %15
  %35 = alloca i8, i64 232, align 16
  store ptr %35, ptr %7, align 8
  %36 = load i64, ptr %3, align 8
  %37 = inttoptr i64 %36 to ptr
  %38 = getelementptr inbounds i64, ptr %37, i64 2
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %6, align 8
  %40 = load i64, ptr %6, align 8
  %41 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  store i64 %40, ptr %41, align 16
  %42 = load i64, ptr %4, align 8
  %43 = load i64, ptr %3, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds i64, ptr %44, i64 3
  %46 = load i64, ptr %45, align 8
  %47 = call i64 @C_s_a_i_plus(ptr noundef %7, i64 noundef 2, i64 noundef %42, i64 noundef %46)
  %48 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  store i64 %47, ptr %48, align 8
  %49 = load i64, ptr %6, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 1
  %52 = load i64, ptr %51, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  call void %53(i64 noundef 2, ptr noundef %54) #4
  unreachable
}

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trva1372(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @va1372(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_694(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_694, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_697 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.64)
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = call ptr @C_fast_retrieve_proc(i64 noundef %79)
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %51
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  br label %87

85:                                               ; preds = %51
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %14, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 17), align 8
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
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = load ptr, ptr %14, align 8
  call void %103(i64 noundef 3, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_697(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
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
  %36 = icmp sgt i64 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_697, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_700 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %7, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %5, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store ptr %69, ptr %13, align 8
  %70 = load i64, ptr %5, align 8
  store i64 %70, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %71 = load ptr, ptr %13, align 8
  store i64 1, ptr %71, align 8
  %72 = load i64, ptr %9, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store ptr %78, ptr %13, align 8
  %79 = load i64, ptr %5, align 8
  store i64 %79, ptr %10, align 8
  %80 = load ptr, ptr %13, align 8
  store i64 2594073385365405702, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_702 to i64), ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %7, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %10, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 6
  store i64 ptrtoint (ptr @li13 to i64), ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 7
  store ptr %106, ptr %13, align 8
  %107 = load i64, ptr %5, align 8
  %108 = load i64, ptr %10, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds %struct.C_block_struct, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [0 x i64], ptr %110, i64 0, i64 0
  store i64 %107, ptr %111, align 8
  store i64 %107, ptr %11, align 8
  %112 = load i64, ptr %10, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  store i64 %115, ptr %12, align 8
  %116 = load i64, ptr %12, align 8
  %117 = load i64, ptr %8, align 8
  call void @f_702(i64 noundef %116, i64 noundef %117, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_700(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_700, i32 noundef %47, ptr noundef %48) #4
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
define internal void @f_702(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %15 = alloca ptr, align 8
  %16 = alloca [3 x i64], align 16
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
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
  %32 = add nsw i64 45, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_702, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 344, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %6, align 8
  %45 = load i64, ptr %4, align 8
  %46 = inttoptr i64 %45 to ptr
  %47 = getelementptr inbounds i64, ptr %46, i64 2
  %48 = load i64, ptr %47, align 8
  %49 = call i64 @C_i_lessp(i64 noundef %44, i64 noundef %48)
  %50 = icmp ne i64 %49, 6
  br i1 %50, label %51, label %117

51:                                               ; preds = %42
  %52 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %12, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_712 to i64), ptr %54, align 8
  %55 = load i64, ptr %4, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 3
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %4, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %5, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 5
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %7, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 6
  store ptr %76, ptr %12, align 8
  %77 = load i64, ptr %7, align 8
  store i64 %77, ptr %8, align 8
  %78 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %78, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 ptrtoint (ptr @f_726 to i64), ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %4, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %7, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store ptr %93, ptr %12, align 8
  %94 = load i64, ptr %7, align 8
  store i64 %94, ptr %9, align 8
  %95 = load i64, ptr %6, align 8
  %96 = load i64, ptr %4, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 5
  %99 = load i64, ptr %98, align 8
  %100 = call i64 @C_s_a_i_times(ptr noundef %12, i64 noundef 2, i64 noundef %95, i64 noundef %99)
  store i64 %100, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.65)
  %101 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 16), align 16
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  %104 = load i64, ptr %103, align 8
  %105 = call ptr @C_fast_retrieve_proc(i64 noundef %104)
  store ptr %105, ptr %15, align 8
  %106 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 16), align 16
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  store i64 %109, ptr %110, align 16
  %111 = load i64, ptr %9, align 8
  %112 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 1
  store i64 %111, ptr %112, align 8
  %113 = load i64, ptr %10, align 8
  %114 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 2
  store i64 %113, ptr %114, align 16
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  call void %115(i64 noundef 3, ptr noundef %116) #4
  unreachable

117:                                              ; preds = %42
  %118 = load i64, ptr %5, align 8
  store i64 %118, ptr %8, align 8
  %119 = load i64, ptr %8, align 8
  %120 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  store i64 %119, ptr %120, align 16
  %121 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 30, ptr %121, align 8
  %122 = load i64, ptr %8, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  %125 = load i64, ptr %124, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 0
  call void %126(i64 noundef 2, ptr noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_702(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_702(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

declare i64 @C_i_lessp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_712(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  call void @C_save_and_reclaim(ptr noundef @f_712, i32 noundef %48, ptr noundef %49) #4
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
  call void @C_trace(ptr noundef @.str.66)
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
  call void @f_702(i64 noundef %74, i64 noundef %78, i64 noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_726(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  call void @C_save_and_reclaim(ptr noundef @f_726, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.67)
  %51 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), align 8
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

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_vector_set(i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_i_car(i64 noundef) #1

declare i64 @C_i_cdr(i64 noundef) #1

; Function Attrs: noreturn
declare void @C_values(i64 noundef, ptr noundef) #2

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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
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
  %44 = add nsw i32 6, %43
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
  call void @C_save_and_reclaim(ptr noundef @f_899, i32 noundef %55, ptr noundef %56) #4
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
  %86 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
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
  call void @C_trace(ptr noundef @.str.75)
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_979(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
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
  call void @C_save_and_reclaim(ptr noundef @f_979, i32 noundef %47, ptr noundef %48) #4
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
  %62 = load i64, ptr %7, align 8
  %63 = call i64 @C_i_lessp(i64 noundef %61, i64 noundef %62)
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_988(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_988, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 34), align 16
  %54 = call i64 @C_i_greaterp(i64 noundef %52, i64 noundef %53)
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.79)
  %57 = load i64, ptr %3, align 8
  %58 = icmp sge i64 %57, 5
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load ptr, ptr %4, align 8
  store ptr %60, ptr %12, align 8
  br label %63

61:                                               ; preds = %56
  %62 = alloca i8, i64 40, align 16
  store ptr %62, ptr %12, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 0, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 35), align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store i64 6, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  call void @C_values(i64 noundef 5, ptr noundef %80) #4
  unreachable

81:                                               ; preds = %51
  %82 = load i64, ptr %7, align 8
  %83 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 36), align 16
  %84 = call i64 @C_i_lessp(i64 noundef %82, i64 noundef %83)
  %85 = icmp ne i64 %84, 6
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  call void @C_trace(ptr noundef @.str.80)
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 5
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %13, align 8
  br label %93

91:                                               ; preds = %86
  %92 = alloca i8, i64 40, align 16
  store ptr %92, ptr %13, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load ptr, ptr %13, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 0, ptr %95, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 20), align 16
  %103 = load ptr, ptr %13, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 37), align 8
  %106 = load ptr, ptr %13, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 3
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 6, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  call void @C_values(i64 noundef 5, ptr noundef %110) #4
  unreachable

111:                                              ; preds = %81
  call void @C_trace(ptr noundef @.str.81)
  %112 = load i64, ptr %3, align 8
  %113 = icmp sge i64 %112, 5
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load ptr, ptr %4, align 8
  store ptr %115, ptr %14, align 8
  br label %118

116:                                              ; preds = %111
  %117 = alloca i8, i64 40, align 16
  store ptr %117, ptr %14, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 0, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 21), align 8
  %128 = load ptr, ptr %14, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 38), align 16
  %131 = load ptr, ptr %14, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 3
  store i64 %130, ptr %132, align 8
  %133 = load ptr, ptr %14, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 4
  store i64 6, ptr %134, align 8
  %135 = load ptr, ptr %14, align 8
  call void @C_values(i64 noundef 5, ptr noundef %135) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
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
  call void @C_save_and_reclaim(ptr noundef @f_1013, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.82)
  %51 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 15), align 8
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
declare void @C_bad_min_argc_2(i32 noundef, i32 noundef, i64 noundef) #2

declare i64 @C_build_rest(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1019(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !51
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
  %39 = add nsw i32 11, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1019, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 88, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1022 to i64), ptr %56, align 8
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
  %69 = load i64, ptr %7, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  %75 = load i64, ptr %74, align 8
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
  %84 = load ptr, ptr %11, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  store ptr %87, ptr %11, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %8, align 8
  %89 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_1231 to i64), ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %11, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %11, align 8
  %102 = ptrtoint ptr %101 to i64
  store i64 %102, ptr %5, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  store ptr %104, ptr %11, align 8
  %105 = load i64, ptr %5, align 8
  store i64 %105, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.84)
  %106 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 5), align 8
  %107 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %106)
  store ptr %107, ptr %14, align 8
  %108 = load i64, ptr %3, align 8
  %109 = icmp sge i64 %108, 3
  br i1 %109, label %110, label %112

110:                                              ; preds = %52
  %111 = load ptr, ptr %4, align 8
  store ptr %111, ptr %15, align 8
  br label %114

112:                                              ; preds = %52
  %113 = alloca i8, i64 24, align 16
  store ptr %113, ptr %15, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 5), align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 0
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %9, align 8
  %122 = load ptr, ptr %15, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 5
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %14, align 8
  %131 = load ptr, ptr %15, align 8
  call void %130(i64 noundef 3, ptr noundef %131) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1236(i64 noundef %0, ptr noundef %1) #0 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !52
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
  call void @C_save_and_reclaim(ptr noundef @f_1236, i32 noundef %54, ptr noundef %55) #4
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
  %62 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 30), align 16
  %63 = call i64 @C_retrieve2(i64 noundef %62, ptr noundef @.str.110)
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1022(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1022, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 56, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1025 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.85)
  %91 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 9), align 8
  %92 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %91)
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
  %100 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 9), align 8
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
define internal void @f_1231(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
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
  call void @C_save_and_reclaim(ptr noundef @f_1231, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %8, align 8
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %12, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 0
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 30, ptr %64, align 8
  %65 = load ptr, ptr %12, align 8
  call void @f_1022(i64 noundef 2, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.109)
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call ptr @C_fast_retrieve_proc(i64 noundef %70)
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %14, align 8
  br label %78

76:                                               ; preds = %66
  %77 = alloca i8, i64 32, align 16
  store ptr %77, ptr %14, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 22), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 0
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 49), align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %14, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = load ptr, ptr %14, align 8
  call void %100(i64 noundef 4, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1025(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
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
  call void @C_save_and_reclaim(ptr noundef @f_1025, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1028 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.86)
  %94 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 12), align 16
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
  %103 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 12), align 16
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
define internal void @f_1028(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
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
  call void @C_save_and_reclaim(ptr noundef @f_1028, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1031 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.87)
  %94 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %103 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %118 = load ptr, ptr %13, align 8
  %119 = load ptr, ptr %14, align 8
  call void %118(i64 noundef 3, ptr noundef %119) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1031(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  call void @C_save_and_reclaim(ptr noundef @f_1031, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 72, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405704, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1034 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.88)
  %100 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 48), align 16
  %101 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %100)
  store ptr %101, ptr %13, align 8
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %14, align 8
  %103 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %112 = load ptr, ptr %13, align 8
  %113 = load ptr, ptr %14, align 8
  call void %112(i64 noundef 2, ptr noundef %113) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1034(i64 noundef %0, ptr noundef %1) #0 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  %42 = add nsw i32 25, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_1034, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 200, align 16
  store ptr %56, ptr %16, align 8
  %57 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %57, align 8
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_1035 to i64), ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load ptr, ptr %16, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 ptrtoint (ptr @li21 to i64), ptr %67, align 8
  %68 = load ptr, ptr %16, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %16, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store ptr %71, ptr %16, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %8, align 8
  %73 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %73, align 8
  %74 = load ptr, ptr %16, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_1061 to i64), ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %16, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %16, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 ptrtoint (ptr @li22 to i64), ptr %80, align 8
  %81 = load ptr, ptr %16, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %16, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store ptr %84, ptr %16, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %9, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  %89 = load i64, ptr %88, align 8
  %90 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 45), align 8
  %91 = call i64 @C_i_check_list_2(i64 noundef %89, i64 noundef %90)
  store i64 %91, ptr %10, align 8
  %92 = load ptr, ptr %16, align 8
  store i64 2594073385365405705, ptr %92, align 8
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @f_1071 to i64), ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %16, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load ptr, ptr %16, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %6, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 6
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 5
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load ptr, ptr %16, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 6
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %6, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 7
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 7
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 8
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %16, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 8
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %6, align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  %134 = load i64, ptr %133, align 8
  %135 = load ptr, ptr %16, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 9
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %16, align 8
  %138 = ptrtoint ptr %137 to i64
  store i64 %138, ptr %5, align 8
  %139 = load ptr, ptr %16, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 10
  store ptr %140, ptr %16, align 8
  %141 = load i64, ptr %5, align 8
  store i64 %141, ptr %11, align 8
  store i64 30, ptr %12, align 8
  %142 = load ptr, ptr %16, align 8
  store i64 1, ptr %142, align 8
  %143 = load i64, ptr %12, align 8
  %144 = load ptr, ptr %16, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 1
  store i64 %143, ptr %145, align 8
  %146 = load ptr, ptr %16, align 8
  %147 = ptrtoint ptr %146 to i64
  store i64 %147, ptr %5, align 8
  %148 = load ptr, ptr %16, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 2
  store ptr %149, ptr %16, align 8
  %150 = load i64, ptr %5, align 8
  store i64 %150, ptr %13, align 8
  %151 = load ptr, ptr %16, align 8
  store i64 2594073385365405700, ptr %151, align 8
  %152 = load ptr, ptr %16, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 1
  store i64 ptrtoint (ptr @f_1207 to i64), ptr %153, align 8
  %154 = load i64, ptr %13, align 8
  %155 = load ptr, ptr %16, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 2
  store i64 %154, ptr %156, align 8
  %157 = load i64, ptr %9, align 8
  %158 = load ptr, ptr %16, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 3
  store i64 %157, ptr %159, align 8
  %160 = load ptr, ptr %16, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 4
  store i64 ptrtoint (ptr @li30 to i64), ptr %161, align 8
  %162 = load ptr, ptr %16, align 8
  %163 = ptrtoint ptr %162 to i64
  store i64 %163, ptr %5, align 8
  %164 = load ptr, ptr %16, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 5
  store ptr %165, ptr %16, align 8
  %166 = load i64, ptr %5, align 8
  %167 = load i64, ptr %13, align 8
  %168 = inttoptr i64 %167 to ptr
  %169 = getelementptr inbounds %struct.C_block_struct, ptr %168, i32 0, i32 1
  %170 = getelementptr inbounds [0 x i64], ptr %169, i64 0, i64 0
  store i64 %166, ptr %170, align 8
  store i64 %166, ptr %14, align 8
  %171 = load i64, ptr %13, align 8
  %172 = inttoptr i64 %171 to ptr
  %173 = getelementptr inbounds i64, ptr %172, i64 1
  %174 = load i64, ptr %173, align 8
  store i64 %174, ptr %15, align 8
  %175 = load i64, ptr %15, align 8
  %176 = load i64, ptr %11, align 8
  %177 = load i64, ptr %6, align 8
  %178 = inttoptr i64 %177 to ptr
  %179 = getelementptr inbounds i64, ptr %178, i64 3
  %180 = load i64, ptr %179, align 8
  call void @f_1207(i64 noundef %175, i64 noundef %176, i64 noundef %180) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1035(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
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
  %29 = add nsw i64 7, %28
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1035, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 40, align 16
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_1042 to i64), ptr %43, align 8
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
  call void @C_trace(ptr noundef @.str.89)
  %61 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 42), align 16
  %62 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %61)
  store ptr %62, ptr %13, align 8
  %63 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 42), align 16
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  store i64 %66, ptr %67, align 16
  %68 = load i64, ptr %8, align 8
  %69 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 1
  store i64 %68, ptr %69, align 8
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 2
  store i64 %73, ptr %74, align 16
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  call void %75(i64 noundef 3, ptr noundef %76) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1061(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1061, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
  unreachable

38:                                               ; preds = %18
  call void @C_trace(ptr noundef @.str.92)
  %39 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), align 8
  %40 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %39)
  store ptr %40, ptr %12, align 8
  %41 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), align 8
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
  %52 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 2
  store i64 %51, ptr %52, align 16
  %53 = load i64, ptr %6, align 8
  %54 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 3
  store i64 %53, ptr %54, align 8
  %55 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 44), align 16
  %56 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 4
  store i64 %55, ptr %56, align 16
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 0
  call void %57(i64 noundef 5, ptr noundef %58) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1071(i64 noundef %0, ptr noundef %1) #0 {
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
  %37 = icmp sgt i64 %36, 4
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 4
  %40 = add nsw i32 17, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1071, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 136, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405704, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_1074 to i64), ptr %57, align 8
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
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %12, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 8
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %12, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %5, align 8
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 9
  store ptr %103, ptr %12, align 8
  %104 = load i64, ptr %5, align 8
  store i64 %104, ptr %8, align 8
  %105 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %105, align 8
  %106 = load ptr, ptr %12, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 ptrtoint (ptr @f_1197 to i64), ptr %107, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 ptrtoint (ptr @li29 to i64), ptr %109, align 8
  %110 = load ptr, ptr %12, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %12, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  store ptr %113, ptr %12, align 8
  %114 = load i64, ptr %5, align 8
  store i64 %114, ptr %9, align 8
  %115 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %115, align 8
  %116 = load ptr, ptr %12, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 ptrtoint (ptr @f_1205 to i64), ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = load ptr, ptr %12, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %9, align 8
  %122 = load ptr, ptr %12, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 9
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %12, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 4
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %12, align 8
  %131 = ptrtoint ptr %130 to i64
  store i64 %131, ptr %5, align 8
  %132 = load ptr, ptr %12, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 5
  store ptr %133, ptr %12, align 8
  %134 = load i64, ptr %5, align 8
  store i64 %134, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.93)
  %135 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %136 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %135)
  store ptr %136, ptr %15, align 8
  %137 = load i64, ptr %3, align 8
  %138 = icmp sge i64 %137, 3
  br i1 %138, label %139, label %141

139:                                              ; preds = %53
  %140 = load ptr, ptr %4, align 8
  store ptr %140, ptr %16, align 8
  br label %143

141:                                              ; preds = %53
  %142 = alloca i8, i64 24, align 16
  store ptr %142, ptr %16, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  %147 = load i64, ptr %146, align 8
  %148 = load ptr, ptr %16, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 0
  store i64 %147, ptr %149, align 8
  %150 = load i64, ptr %10, align 8
  %151 = load ptr, ptr %16, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  store i64 %150, ptr %152, align 8
  %153 = load i64, ptr %6, align 8
  %154 = inttoptr i64 %153 to ptr
  %155 = getelementptr inbounds i64, ptr %154, i64 7
  %156 = load i64, ptr %155, align 8
  %157 = load ptr, ptr %16, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 2
  store i64 %156, ptr %158, align 8
  %159 = load ptr, ptr %15, align 8
  %160 = load ptr, ptr %16, align 8
  call void %159(i64 noundef 3, ptr noundef %160) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1207(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1207, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1217 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.108)
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
  call void @f_1061(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
define internal void @trf_1035(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1035(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1042(i64 noundef %0, ptr noundef %1) #0 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
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
  %41 = add nsw i32 3, %40
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
  call void @C_save_and_reclaim(ptr noundef @f_1042, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 24, align 16
  store ptr %55, ptr %10, align 8
  %56 = load i64, ptr %7, align 8
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  call void @C_trace(ptr noundef @.str.90)
  %59 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %60 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %59)
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
  %68 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
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
  store i64 ptrtoint (ptr @f_1054 to i64), ptr %106, align 8
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
  call void @C_trace(ptr noundef @.str.91)
  %118 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 41), align 8
  %119 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %118)
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
  %127 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 41), align 8
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

declare i64 @C_i_listp(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1054(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  call void @C_save_and_reclaim(ptr noundef @f_1054, i32 noundef %47, ptr noundef %48) #4
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
define internal void @trf_1061(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1061(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1074(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
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
  call void @C_save_and_reclaim(ptr noundef @f_1074, i32 noundef %49, ptr noundef %50) #4
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
  store i64 ptrtoint (ptr @f_1079 to i64), ptr %64, align 8
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
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 8
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %12, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 9
  store i64 ptrtoint (ptr @li28 to i64), ptr %105, align 8
  %106 = load ptr, ptr %12, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %5, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 10
  store ptr %109, ptr %12, align 8
  %110 = load i64, ptr %5, align 8
  %111 = load i64, ptr %9, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds %struct.C_block_struct, ptr %112, i32 0, i32 1
  %114 = getelementptr inbounds [0 x i64], ptr %113, i64 0, i64 0
  store i64 %110, ptr %114, align 8
  store i64 %110, ptr %10, align 8
  %115 = load i64, ptr %9, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  %118 = load i64, ptr %117, align 8
  store i64 %118, ptr %11, align 8
  %119 = load i64, ptr %11, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 8
  %123 = load i64, ptr %122, align 8
  %124 = load i64, ptr %7, align 8
  call void @f_1079(i64 noundef %119, i64 noundef %123, i64 noundef %124, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1197(i64 noundef %0, ptr noundef %1) #0 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  call void @C_save_and_reclaim(ptr noundef @f_1197, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  call void @C_trace(ptr noundef @.str.106)
  %66 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
  %67 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %66)
  store ptr %67, ptr %14, align 8
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %15, align 8
  %69 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
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
define internal void @f_1205(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1205, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.107)
  %51 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %60 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1079(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
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
  %33 = add nsw i64 13, %32
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1079, i32 noundef 4, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43) #4
  unreachable

44:                                               ; preds = %23
  %45 = alloca i8, i64 88, align 16
  store ptr %45, ptr %13, align 8
  %46 = load i64, ptr %8, align 8
  %47 = load i64, ptr %5, align 8
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  %50 = load i64, ptr %49, align 8
  %51 = call i64 @C_i_greater_or_equalp(i64 noundef %46, i64 noundef %50)
  store i64 %51, ptr %10, align 8
  %52 = load ptr, ptr %13, align 8
  store i64 2594073385365405706, ptr %52, align 8
  %53 = load ptr, ptr %13, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1089 to i64), ptr %54, align 8
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
  %64 = load i64, ptr %5, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 5
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %5, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 6
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %5, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 7
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %5, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 8
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %7, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 9
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %5, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 8
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 10
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %9, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 11
  store ptr %103, ptr %13, align 8
  %104 = load i64, ptr %9, align 8
  store i64 %104, ptr %11, align 8
  %105 = load i64, ptr %10, align 8
  %106 = icmp ne i64 %105, 6
  br i1 %106, label %107, label %114

107:                                              ; preds = %44
  %108 = load i64, ptr %11, align 8
  store i64 %108, ptr %12, align 8
  %109 = load i64, ptr %12, align 8
  %110 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %109, ptr %110, align 16
  %111 = load i64, ptr %10, align 8
  %112 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %111, ptr %112, align 8
  %113 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void @f_1089(i64 noundef 2, ptr noundef %113) #4
  unreachable

114:                                              ; preds = %44
  call void @C_trace(ptr noundef @.str.94)
  %115 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 28), align 16
  %116 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %115)
  store ptr %116, ptr %17, align 8
  %117 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 28), align 16
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %120, ptr %121, align 16
  %122 = load i64, ptr %11, align 8
  %123 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %122, ptr %123, align 8
  %124 = load i64, ptr %7, align 8
  %125 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %124, ptr %125, align 16
  %126 = load ptr, ptr %17, align 8
  %127 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %126(i64 noundef 3, ptr noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1079(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1079(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1089(i64 noundef %0, ptr noundef %1) #0 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  %37 = icmp sgt i64 %36, 2
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 2
  %40 = add nsw i32 10, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1089, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 80, align 16
  store ptr %54, ptr %11, align 8
  %55 = load i64, ptr %7, align 8
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i64, ptr %6, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %8, align 8
  %62 = load ptr, ptr %4, align 8
  store ptr %62, ptr %14, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %8, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = load ptr, ptr %14, align 8
  call void %76(i64 noundef 2, ptr noundef %77) #4
  unreachable

78:                                               ; preds = %53
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 4
  %82 = load i64, ptr %81, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  %86 = load i64, ptr %85, align 8
  %87 = call i64 @C_i_vector_ref(i64 noundef %82, i64 noundef %86)
  store i64 %87, ptr %8, align 8
  %88 = load ptr, ptr %11, align 8
  store i64 2594073385365405705, ptr %88, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_1095 to i64), ptr %90, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 5
  %94 = load i64, ptr %93, align 8
  %95 = load ptr, ptr %11, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 6
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %11, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %8, align 8
  %104 = load ptr, ptr %11, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %11, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 5
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 7
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %11, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 6
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 8
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %11, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 7
  store i64 %121, ptr %123, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 2
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %11, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 8
  store i64 %127, ptr %129, align 8
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 9
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %11, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 9
  store i64 %133, ptr %135, align 8
  %136 = load ptr, ptr %11, align 8
  %137 = ptrtoint ptr %136 to i64
  store i64 %137, ptr %5, align 8
  %138 = load ptr, ptr %11, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 10
  store ptr %139, ptr %11, align 8
  %140 = load i64, ptr %5, align 8
  store i64 %140, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.95)
  %141 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %142 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %141)
  store ptr %142, ptr %15, align 8
  %143 = load i64, ptr %3, align 8
  %144 = icmp sge i64 %143, 3
  br i1 %144, label %145, label %147

145:                                              ; preds = %78
  %146 = load ptr, ptr %4, align 8
  store ptr %146, ptr %16, align 8
  br label %149

147:                                              ; preds = %78
  %148 = alloca i8, i64 24, align 16
  store ptr %148, ptr %16, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 19), align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  %153 = load i64, ptr %152, align 8
  %154 = load ptr, ptr %16, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 0
  store i64 %153, ptr %155, align 8
  %156 = load i64, ptr %9, align 8
  %157 = load ptr, ptr %16, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 1
  store i64 %156, ptr %158, align 8
  %159 = load i64, ptr %6, align 8
  %160 = inttoptr i64 %159 to ptr
  %161 = getelementptr inbounds i64, ptr %160, i64 10
  %162 = load i64, ptr %161, align 8
  %163 = load ptr, ptr %16, align 8
  %164 = getelementptr inbounds i64, ptr %163, i64 2
  store i64 %162, ptr %164, align 8
  %165 = load ptr, ptr %15, align 8
  %166 = load ptr, ptr %16, align 8
  call void %165(i64 noundef 3, ptr noundef %166) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1095(i64 noundef %0, ptr noundef %1) #0 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  %40 = add nsw i32 15, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1095, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 120, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %7, align 8
  store i64 %55, ptr %8, align 8
  %56 = load ptr, ptr %14, align 8
  store i64 1, ptr %56, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 %57, ptr %59, align 8
  %60 = load ptr, ptr %14, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %5, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store ptr %63, ptr %14, align 8
  %64 = load i64, ptr %5, align 8
  store i64 %64, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %65 = load ptr, ptr %14, align 8
  store i64 1, ptr %65, align 8
  %66 = load i64, ptr %10, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 %66, ptr %68, align 8
  %69 = load ptr, ptr %14, align 8
  %70 = ptrtoint ptr %69 to i64
  store i64 %70, ptr %5, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store ptr %72, ptr %14, align 8
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %11, align 8
  %74 = load ptr, ptr %14, align 8
  store i64 2594073385365405706, ptr %74, align 8
  %75 = load ptr, ptr %14, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_1100 to i64), ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 6
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 6
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %14, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 7
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %11, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 8
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 7
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 9
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 10
  store i64 ptrtoint (ptr @li27 to i64), ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %5, align 8
  %123 = load ptr, ptr %14, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 11
  store ptr %124, ptr %14, align 8
  %125 = load i64, ptr %5, align 8
  %126 = load i64, ptr %11, align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds %struct.C_block_struct, ptr %127, i32 0, i32 1
  %129 = getelementptr inbounds [0 x i64], ptr %128, i64 0, i64 0
  store i64 %125, ptr %129, align 8
  store i64 %125, ptr %12, align 8
  %130 = load i64, ptr %11, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  store i64 %133, ptr %13, align 8
  %134 = load i64, ptr %13, align 8
  %135 = load i64, ptr %6, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 8
  %138 = load i64, ptr %137, align 8
  %139 = load i64, ptr %6, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 9
  %142 = load i64, ptr %141, align 8
  call void @f_1100(i64 noundef %134, i64 noundef %138, i64 noundef %142) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1100(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %14 = alloca [4 x i64], align 16
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
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
  store ptr %20, ptr %12, align 8
  %21 = load ptr, ptr %12, align 8
  store ptr %21, ptr %13, align 8
  %22 = load ptr, ptr %13, align 8
  %23 = load ptr, ptr @C_stack_limit, align 8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = load i64, ptr @C_scratch_usage, align 8
  %29 = add nsw i64 20, %28
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1100, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 120, align 16
  store ptr %40, ptr %11, align 8
  %41 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %41, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 ptrtoint (ptr @f_1106 to i64), ptr %43, align 8
  %44 = load i64, ptr %6, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %46, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 ptrtoint (ptr @li23 to i64), ptr %48, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 4
  store ptr %52, ptr %11, align 8
  %53 = load i64, ptr %7, align 8
  store i64 %53, ptr %8, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405706, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1112 to i64), ptr %56, align 8
  %57 = load i64, ptr %4, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %4, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %4, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %4, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %4, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %4, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 7
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %4, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 8
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 8
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %4, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %11, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 9
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %11, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 10
  store i64 ptrtoint (ptr @li26 to i64), ptr %106, align 8
  %107 = load ptr, ptr %11, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %7, align 8
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 11
  store ptr %110, ptr %11, align 8
  %111 = load i64, ptr %7, align 8
  store i64 %111, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.96)
  %112 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 0
  store i64 0, ptr %112, align 16
  %113 = load i64, ptr %5, align 8
  %114 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 1
  store i64 %113, ptr %114, align 8
  %115 = load i64, ptr %8, align 8
  %116 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 2
  store i64 %115, ptr %116, align 16
  %117 = load i64, ptr %9, align 8
  %118 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 3
  store i64 %117, ptr %118, align 8
  %119 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 0
  call void @C_call_with_values(i64 noundef 4, ptr noundef %119) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1100(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1100(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1106(i64 noundef %0, ptr noundef %1) #0 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
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
  call void @C_save_and_reclaim(ptr noundef @f_1106, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.97)
  %58 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 25), align 8
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
  %67 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 25), align 8
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
define internal void @f_1112(i64 noundef %0, ptr noundef %1) #0 {
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
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !73
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
  %57 = add nsw i32 29, %56
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
  call void @C_save_and_reclaim(ptr noundef @f_1112, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 232, align 16
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %8, align 8
  %73 = icmp ne i64 %72, 6
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i64 6, i64 22
  %76 = icmp ne i64 %75, 6
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  %81 = load i64, ptr %80, align 8
  %82 = call i64 @C_s_a_i_plus(ptr noundef %13, i64 noundef 2, i64 noundef %81, i64 noundef 3)
  store i64 %82, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.98)
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  %86 = load i64, ptr %85, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  store i64 %89, ptr %12, align 8
  %90 = load i64, ptr %12, align 8
  %91 = load i64, ptr %7, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  %95 = load i64, ptr %94, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i64, ptr %97, align 8
  %99 = load i64, ptr %11, align 8
  call void @f_1079(i64 noundef %90, i64 noundef %91, i64 noundef %98, i64 noundef %99) #4
  unreachable

100:                                              ; preds = %70
  %101 = load ptr, ptr %13, align 8
  store i64 2594073385365405706, ptr %101, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 ptrtoint (ptr @f_1129 to i64), ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %6, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 6
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 4
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %6, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 7
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %13, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 5
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %6, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 8
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %13, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 6
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %7, align 8
  %135 = load ptr, ptr %13, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 7
  store i64 %134, ptr %136, align 8
  %137 = load i64, ptr %10, align 8
  %138 = load ptr, ptr %13, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 8
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr %6, align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 9
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %13, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 9
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %9, align 8
  %147 = load ptr, ptr %13, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 10
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %13, align 8
  %150 = ptrtoint ptr %149 to i64
  store i64 %150, ptr %5, align 8
  %151 = load ptr, ptr %13, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 11
  store ptr %152, ptr %13, align 8
  %153 = load i64, ptr %5, align 8
  store i64 %153, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.99)
  %154 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %155 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %154)
  store ptr %155, ptr %16, align 8
  %156 = load ptr, ptr %4, align 8
  store ptr %156, ptr %17, align 8
  %157 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 31), align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 1
  %160 = load i64, ptr %159, align 8
  %161 = load ptr, ptr %17, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 0
  store i64 %160, ptr %162, align 8
  %163 = load i64, ptr %11, align 8
  %164 = load ptr, ptr %17, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 %163, ptr %165, align 8
  %166 = load i64, ptr %6, align 8
  %167 = inttoptr i64 %166 to ptr
  %168 = getelementptr inbounds i64, ptr %167, i64 6
  %169 = load i64, ptr %168, align 8
  %170 = load ptr, ptr %17, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 2
  store i64 %169, ptr %171, align 8
  %172 = load i64, ptr %9, align 8
  %173 = load ptr, ptr %17, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 3
  store i64 %172, ptr %174, align 8
  %175 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 46), align 16
  %176 = load ptr, ptr %17, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 4
  store i64 %175, ptr %177, align 8
  %178 = load ptr, ptr %16, align 8
  %179 = load ptr, ptr %17, align 8
  call void %178(i64 noundef 5, ptr noundef %179) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1129(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  %34 = icmp sgt i64 %33, 3
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 3
  %37 = add nsw i32 14, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1129, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 112, align 16
  store ptr %51, ptr %11, align 8
  %52 = load ptr, ptr %11, align 8
  store i64 2594073385365405703, ptr %52, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1130 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 6
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 7
  store i64 ptrtoint (ptr @li24 to i64), ptr %83, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 8
  store ptr %87, ptr %11, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %8, align 8
  %89 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_1160 to i64), ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 6
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 7
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 8
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %11, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %8, align 8
  %111 = load ptr, ptr %11, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 5
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %11, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %5, align 8
  %115 = load ptr, ptr %11, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 6
  store ptr %116, ptr %11, align 8
  %117 = load i64, ptr %5, align 8
  store i64 %117, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.100)
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 9
  %121 = load i64, ptr %120, align 8
  store i64 %121, ptr %10, align 8
  %122 = load i64, ptr %10, align 8
  %123 = load i64, ptr %9, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 10
  %127 = load i64, ptr %126, align 8
  call void @f_1035(i64 noundef %122, i64 noundef %123, i64 noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1130(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %17 = alloca [5 x i64], align 16
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  %32 = add nsw i64 73, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1130, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 552, align 16
  store ptr %43, ptr %14, align 8
  %44 = load i64, ptr %6, align 8
  %45 = call i64 @C_i_car(i64 noundef %44)
  store i64 %45, ptr %8, align 8
  %46 = load i64, ptr %6, align 8
  %47 = call i64 @C_i_cdr(i64 noundef %46)
  store i64 %47, ptr %9, align 8
  %48 = load i64, ptr %9, align 8
  %49 = load i64, ptr %4, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = call i64 @C_s_a_i_times(ptr noundef %14, i64 noundef 2, i64 noundef %48, i64 noundef %52)
  store i64 %53, ptr %10, align 8
  %54 = load i64, ptr %4, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 3
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %10, align 8
  %59 = call i64 @C_s_a_i_plus(ptr noundef %14, i64 noundef 2, i64 noundef %57, i64 noundef %58)
  store i64 %59, ptr %11, align 8
  %60 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %60, align 8
  %61 = load ptr, ptr %14, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_1146 to i64), ptr %62, align 8
  %63 = load i64, ptr %4, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 4
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %5, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %8, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %4, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %11, align 8
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %7, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 7
  store ptr %87, ptr %14, align 8
  %88 = load i64, ptr %7, align 8
  store i64 %88, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.101)
  %89 = load i64, ptr %4, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  %92 = load i64, ptr %91, align 8
  store i64 %92, ptr %13, align 8
  %93 = load i64, ptr %13, align 8
  %94 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 0
  store i64 %93, ptr %94, align 16
  %95 = load i64, ptr %12, align 8
  %96 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 1
  store i64 %95, ptr %96, align 8
  %97 = load i64, ptr %4, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 5
  %100 = load i64, ptr %99, align 8
  %101 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 2
  store i64 %100, ptr %101, align 16
  %102 = load i64, ptr %8, align 8
  %103 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 3
  store i64 %102, ptr %103, align 8
  %104 = load i64, ptr %11, align 8
  %105 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 4
  store i64 %104, ptr %105, align 16
  %106 = load i64, ptr %13, align 8
  %107 = call ptr @C_fast_retrieve_proc(i64 noundef %106)
  %108 = getelementptr inbounds [5 x i64], ptr %17, i64 0, i64 0
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1160(i64 noundef %0, ptr noundef %1) #0 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  call void @C_save_and_reclaim(ptr noundef @f_1160, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 45), align 8
  %57 = call i64 @C_i_check_list_2(i64 noundef %55, i64 noundef %56)
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1166 to i64), ptr %60, align 8
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
  store i64 ptrtoint (ptr @f_1171 to i64), ptr %95, align 8
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
  store i64 ptrtoint (ptr @li25 to i64), ptr %106, align 8
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
  call void @f_1171(i64 noundef %120, i64 noundef %121, i64 noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1130(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1130(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1146(i64 noundef %0, ptr noundef %1) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
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
  call void @C_save_and_reclaim(ptr noundef @f_1146, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %121

56:                                               ; preds = %52
  %57 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %57, align 8
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_1149 to i64), ptr %59, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 %63, ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store ptr %81, ptr %10, align 8
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.102)
  %83 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), align 8
  %84 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %83)
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %3, align 8
  %86 = icmp sge i64 %85, 5
  br i1 %86, label %87, label %89

87:                                               ; preds = %56
  %88 = load ptr, ptr %4, align 8
  store ptr %88, ptr %14, align 8
  br label %91

89:                                               ; preds = %56
  %90 = alloca i8, i64 40, align 16
  store ptr %90, ptr %14, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 43), align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 6
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %13, align 8
  %120 = load ptr, ptr %14, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable

121:                                              ; preds = %52
  %122 = load i64, ptr %6, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 3
  %125 = load i64, ptr %124, align 8
  store i64 %125, ptr %8, align 8
  %126 = load ptr, ptr %4, align 8
  store ptr %126, ptr %15, align 8
  %127 = load i64, ptr %8, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 0
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 30, ptr %131, align 8
  %132 = load i64, ptr %8, align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load i64, ptr %134, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = load ptr, ptr %15, align 8
  call void %136(i64 noundef 2, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1149(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !78
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
  call void @C_save_and_reclaim(ptr noundef @f_1149, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1153 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.103)
  %73 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 24), align 16
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
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %105, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = load ptr, ptr %14, align 8
  call void %106(i64 noundef 4, ptr noundef %107) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1153(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  call void @C_save_and_reclaim(ptr noundef @f_1153, i32 noundef %48, ptr noundef %49) #4
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
define internal void @f_1166(i64 noundef %0, ptr noundef %1) #0 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !80
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
  call void @C_save_and_reclaim(ptr noundef @f_1166, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.104)
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
  call void @f_1100(i64 noundef %56, i64 noundef %60, i64 noundef %64) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1171(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1171, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1181 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.105)
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
  call void @f_1130(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
define internal void @trf_1171(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1171(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
define internal void @f_1181(i64 noundef %0, ptr noundef %1) #0 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
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
  call void @C_save_and_reclaim(ptr noundef @f_1181, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_1171(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1207(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1207(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1217(i64 noundef %0, ptr noundef %1) #0 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !83
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
  call void @C_save_and_reclaim(ptr noundef @f_1217, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_1207(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1243(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1243, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1246 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.112)
  %70 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 40), align 16
  %71 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 40), align 16
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
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
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
  %100 = load i64, ptr %7, align 8
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = load ptr, ptr %14, align 8
  call void %103(i64 noundef 5, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1246(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !85
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
  call void @C_save_and_reclaim(ptr noundef @f_1246, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1253 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.113)
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 10), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 10), align 16
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
define internal void @f_1253(i64 noundef %0, ptr noundef %1) #0 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !86
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
  call void @C_save_and_reclaim(ptr noundef @f_1253, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1257 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.114)
  %76 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 11), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([59 x i64], ptr @lf, i64 0, i64 11), align 8
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
define internal void @f_1257(i64 noundef %0, ptr noundef %1) #0 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !87
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
  call void @C_save_and_reclaim(ptr noundef @f_1257, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.115)
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1259(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1259(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1280(i64 noundef %0, ptr noundef %1) #0 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !88
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
  call void @C_save_and_reclaim(ptr noundef @f_1280, i32 noundef %48, ptr noundef %49) #4
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
  call void @C_trace(ptr noundef @.str.116)
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
  call void @f_1259(i64 noundef %74, i64 noundef %78, i64 noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1282(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !89
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
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load i64, ptr %5, align 8
  %44 = load i64, ptr %6, align 8
  %45 = load i64, ptr %7, align 8
  %46 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1282, i32 noundef 4, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %26
  %48 = alloca i8, i64 504, align 16
  store ptr %48, ptr %17, align 8
  %49 = load i64, ptr %7, align 8
  %50 = call i64 @C_i_nequalp(i64 noundef %49, i64 noundef 1)
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
  call void @C_trace(ptr noundef @.str.117)
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
define internal void @trf_1282(i64 noundef %0, ptr noundef %1) #0 {
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
  call void @f_1282(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) #1

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #2

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
!6 = !{i64 2148801029}
!7 = !{i64 2148751586}
!8 = !{i64 2148752332}
!9 = !{i64 2148753255}
!10 = !{i64 2148754188}
!11 = !{i64 2148755072}
!12 = !{i64 2148750690}
!13 = !{i64 2148755993}
!14 = !{i64 2148756961}
!15 = !{i64 2148758742}
!16 = !{i64 2148761566}
!17 = !{i64 2148762961}
!18 = !{i64 2148763608}
!19 = !{i64 2148764255}
!20 = !{i64 2148764902}
!21 = !{i64 2148765549}
!22 = !{i64 2148766196}
!23 = !{i64 2148766843}
!24 = !{i64 2148767507}
!25 = !{i64 2148759554}
!26 = !{i64 2148760158}
!27 = !{i64 2148760911}
!28 = !{i64 2148768851}
!29 = !{i64 2148747181}
!30 = !{i64 2148770401}
!31 = !{i64 2148771727}
!32 = !{i64 2148777655}
!33 = !{i64 2148781531}
!34 = !{i64 2148786401}
!35 = !{i64 2148794900}
!36 = !{i64 2148797238}
!37 = !{i64 2148798557}
!38 = !{i64 2148709163}
!39 = !{i64 2148743346}
!40 = !{i64 2148806925}
!41 = !{i64 2148772458}
!42 = !{i64 2148773291}
!43 = !{i64 2148774631}
!44 = !{i64 2148775196}
!45 = !{i64 2148776211}
!46 = !{i64 2148776974}
!47 = !{i64 2148792550}
!48 = !{i64 2148797979}
!49 = !{i64 2148799357}
!50 = !{i64 2148708465}
!51 = !{i64 2148710023}
!52 = !{i64 2148742720}
!53 = !{i64 2148710918}
!54 = !{i64 2148741900}
!55 = !{i64 2148711742}
!56 = !{i64 2148712568}
!57 = !{i64 2148713393}
!58 = !{i64 2148714194}
!59 = !{i64 2148715578}
!60 = !{i64 2148718278}
!61 = !{i64 2148718899}
!62 = !{i64 2148738170}
!63 = !{i64 2148716323}
!64 = !{i64 2148717596}
!65 = !{i64 2148719902}
!66 = !{i64 2148736917}
!67 = !{i64 2148737506}
!68 = !{i64 2148721283}
!69 = !{i64 2148722146}
!70 = !{i64 2148723116}
!71 = !{i64 2148724424}
!72 = !{i64 2148725277}
!73 = !{i64 2148725954}
!74 = !{i64 2148727361}
!75 = !{i64 2148728224}
!76 = !{i64 2148731364}
!77 = !{i64 2148728978}
!78 = !{i64 2148729963}
!79 = !{i64 2148730779}
!80 = !{i64 2148732581}
!81 = !{i64 2148733177}
!82 = !{i64 2148735161}
!83 = !{i64 2148740154}
!84 = !{i64 2148744078}
!85 = !{i64 2148744887}
!86 = !{i64 2148745695}
!87 = !{i64 2148746503}
!88 = !{i64 2148748797}
!89 = !{i64 2148749591}
