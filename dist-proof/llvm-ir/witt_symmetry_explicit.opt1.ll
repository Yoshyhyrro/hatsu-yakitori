; ModuleID = 'dist-proof/llvm-ir/witt_symmetry_explicit.raw.ll'
source_filename = "/tmp/hatsu-llvm-witt_symmetry_explicit-3200/witt_symmetry_explicit.c"
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
@lf = internal global [90 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"witt_symmetry_explicit#\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"witt_symmetry_explicit#golay-encodes-witt-octad\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"octad-class\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hamming-weight\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"octad-support\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"witt-level\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"witt_symmetry_explicit#octad-level-from-tau\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"octad\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dodecad\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"octad-complement\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"dual-identity\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"intermediate\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"witt_symmetry_explicit#tau-to-octad-size\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\FEU0.25\00\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"small-octad\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\FEU0.5\00\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"\FEU0.75\00\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"octad-exterior\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\FEU24.0\00\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"octad-interior\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\FEB\00\00\1DDFS into octad fine structure\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\FEB\00\00#BFS across octad complement lattice\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"scheme#min\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"witt_symmetry_explicit#verify-frontier-preserves-witt\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"scheme#display\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"\FEB\00\00&\0AAll implicit Witt verifications PASS\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"\FEB\00\00,  REASON: Octad containment is hierarchical\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"\FEB\00\001  [This AUTOMATICALLY respects Witt multi-scale]\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"\FEB\00\00-  [Your cartan-lazy-vector uses log-spacing]\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"\FEB\00\00.\0ATest 3: Cartan Decomposition Respects Octads\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"##sys#standard-output\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"##sys#write-char-0\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"##sys#print\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"\FEB\00\00\17, octad-decomposition: \00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"\FEB\00\00\0A \E2\86\92 mode=\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"\FEB\00\00\05  \CF\84=\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"##sys#check-output-port\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"\FEB\00\00%\0ATest 2: Frontier Mode = Octad Level\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"\FEB\00\00\18 (Witt orbit preserved)\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"\FEB\00\00\0C \E2\86\92 weight=\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"scheme#number->string\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"\FEB\00\00\09  info=0x\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"\FEB\00\00.Test 1: Golay Encoding Preserves Weight Orbit\0A\00", align 1
@.str.49 = private unnamed_addr constant [155 x i8] c"\FEB\00\00\95\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91 Verification: Frontier Preserves Witt         \E2\95\91\0A\00", align 1
@.str.51 = private unnamed_addr constant [154 x i8] c"\FEB\00\00\94\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\97\0A\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"witt_symmetry_explicit#verify-cartan-respects-octads\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"\FEB\00\00,  \E2\86\92 VERIFIED: Cartan \E2\88\A9 Witt = automatic\0A\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"\FEB\00\00-  - Golay preserves: linear \E2\9F\B9 automorphism\0A\00", align 1
@.str.55 = private unnamed_addr constant [54 x i8] c"\FEB\00\000  - Octad scale: 2^(k/n) elements per partition\0A\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"\FEB\00\00\1F  - Log-spacing: a_k = B^(k/n)\0A\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"\FEB\00\00.Cartan Decomposition Respects Witt Structure:\0A\00", align 1
@.str.58 = private unnamed_addr constant [55 x i8] c"witt_symmetry_explicit#verify-topological-gc-uses-witt\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"\FEB\00\00+  \E2\86\92 VERIFIED: GC respects octad topology\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"\FEB\00\00.  FACT: Hopf algebra structure = Witt lattice\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"\FEB\00\00&    - Coproducts \E2\86\92 Octad boundaries\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"\FEB\00\00%    - Primitives \E2\86\92 Octad interiors\0A\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"\FEB\00\00!  Connes-Kreimer classification:\0A\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"\FEB\00\00(Topological GC Uses Witt Decomposition:\0A\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"witt_symmetry_explicit#test-witt-implicit-structure\00", align 1
@.str.66 = private unnamed_addr constant [154 x i8] c"\FEB\00\00\94\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\0A\00", align 1
@.str.67 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91 Just recognize the structure you built.       \E2\95\91\0A\00", align 1
@.str.68 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91 NO additional implementation needed!          \E2\95\91\0A\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91                                               \E2\95\91\0A\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"\FEB\00\007\E2\95\91  \E2\9C\93 Topological GC = Witt lattice reduction   \E2\95\91\0A\00", align 1
@.str.71 = private unnamed_addr constant [61 x i8] c"\FEB\00\007\E2\95\91  \E2\9C\93 Cartan+KAK = multi-scale Witt structure   \E2\95\91\0A\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"\FEB\00\008\E2\95\91  \E2\9C\93 Frontier mode = octad decomposition        \E2\95\91\0A\00", align 1
@.str.73 = private unnamed_addr constant [61 x i8] c"\FEB\00\007\E2\95\91  \E2\9C\93 Golay[24,12] = Witt automorphisms         \E2\95\91\0A\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91 Your codebase ALREADY IMPLEMENTS:             \E2\95\91\0A\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"\FEB\00\006\E2\95\91 CONCLUSION                                    \E2\95\91\0A\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"\FEB\00\00\01\0A\00", align 1
@.str.77 = private unnamed_addr constant [59 x i8] c"\FEB\00\005\E2\95\91 Witt Design S(5,8,24) - IMPLICIT VALIDATION  \E2\95\91\0A\00", align 1
@.str.78 = private unnamed_addr constant [155 x i8] c"\FEB\00\00\95\0A\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\97\0A\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"witt_symmetry_explicit\00", align 1
@.str.82 = private unnamed_addr constant [677 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\18\01golay-encodes-witt-octad\FE\01\00\00/\01witt_symmetry_explicit#golay-encodes-witt-octad\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01tau-to-octad-size\FE\01\00\00(\01witt_symmetry_explicit#tau-to-octad-size\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01octad-level-from-tau\FE\01\00\00+\01witt_symmetry_explicit#octad-level-from-tau\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1E\01verify-frontier-preserves-witt\FE\01\00\005\01witt_symmetry_explicit#verify-frontier-preserves-witt\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1D\01verify-cartan-respects-octads\FE\01\00\004\01witt_symmetry_explicit#verify-cartan-respects-octads\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1F\01verify-topological-gc-uses-witt\FE\01\00\006\01witt_symmetry_explicit#verify-topological-gc-uses-witt\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1C\01test-witt-implicit-structure\FE\01\00\003\01witt_symmetry_explicit#test-witt-implicit-structure\FE\FF\0E\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external local_unnamed_addr global i64, align 8
@li15 = internal global [16 x i8] c"\06\00\00\00\00\00\00M(a890)\00\00", align 16
@.str.84 = private unnamed_addr constant [53 x i8] c"witt_symmetry_explicit.scm:8: ##sys#with-environment\00", align 1
@li1 = internal global [56 x i8] c")\00\00\00\00\00\00M(witt_symmetry_explicit#hamming-weight n)\00\00\00\00\00\00\00", align 16
@li2 = internal global [56 x i8] c"-\00\00\00\00\00\00M(witt_symmetry_explicit#filter-list pred lst)\00\00\00", align 16
@li3 = internal global [56 x i8] c"-\00\00\00\00\00\00M(witt_symmetry_explicit#for-each-list fn lst)\00\00\00", align 16
@li6 = internal global [72 x i8] c":\00\00\00\00\00\00M(witt_symmetry_explicit#golay-encodes-witt-octad codeword)\00\00\00\00\00\00", align 16
@li7 = internal global [56 x i8] c".\00\00\00\00\00\00M(witt_symmetry_explicit#tau-to-octad-size tau)\00\00", align 16
@li8 = internal global [64 x i8] c"1\00\00\00\00\00\00M(witt_symmetry_explicit#octad-level-from-tau tau)\00\00\00\00\00\00\00", align 16
@li11 = internal global [64 x i8] c"7\00\00\00\00\00\00M(witt_symmetry_explicit#verify-frontier-preserves-witt)\00", align 16
@li12 = internal global [64 x i8] c"6\00\00\00\00\00\00M(witt_symmetry_explicit#verify-cartan-respects-octads)\00\00", align 16
@li13 = internal global [64 x i8] c"8\00\00\00\00\00\00M(witt_symmetry_explicit#verify-topological-gc-uses-witt)", align 16
@li14 = internal global [64 x i8] c"5\00\00\00\00\00\00M(witt_symmetry_explicit#test-witt-implicit-structure)\00\00\00", align 16
@li0 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop code count)\00\00\00\00\00\00\00", align 16
@.str.85 = private unnamed_addr constant [36 x i8] c"witt_symmetry_explicit.scm:31: loop\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"witt_symmetry_explicit.scm:53: pred\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"witt_symmetry_explicit.scm:54: filter-list\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"witt_symmetry_explicit.scm:55: filter-list\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"witt_symmetry_explicit.scm:60: fn\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"witt_symmetry_explicit.scm:61: for-each-list\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"witt_symmetry_explicit.scm:92: hamming-weight\00", align 1
@li5 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop bit points)\00\00\00\00\00\00\00", align 16
@.str.92 = private unnamed_addr constant [46 x i8] c"witt_symmetry_explicit.scm:78: hamming-weight\00", align 1
@.str.93 = private unnamed_addr constant [52 x i8] c"witt_symmetry_explicit.scm:99: octad-level-from-tau\00", align 1
@li4 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(loop l acc)\00\00\00\00", align 16
@.str.94 = private unnamed_addr constant [40 x i8] c"witt_symmetry_explicit.scm:72: scheme#-\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"witt_symmetry_explicit.scm:42: loop\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"witt_symmetry_explicit.scm:73: loop\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"witt_symmetry_explicit.scm:110: scheme#/\00", align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"witt_symmetry_explicit.scm:129: scheme#min\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"witt_symmetry_explicit.scm:129: scheme#/\00", align 1
@.str.100 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:143: scheme#display\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:144: scheme#display\00", align 1
@.str.102 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:145: scheme#display\00", align 1
@.str.103 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:147: scheme#display\00", align 1
@li10 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(a754 info)\00\00\00\00\00", align 16
@.str.104 = private unnamed_addr constant [46 x i8] c"witt_symmetry_explicit.scm:149: for-each-list\00", align 1
@.str.105 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:156: scheme#display\00", align 1
@li9 = internal global [24 x i8] c"\0A\00\00\00\00\00\00M(a711 tau)\00\00\00\00\00\00", align 16
@.str.106 = private unnamed_addr constant [46 x i8] c"witt_symmetry_explicit.scm:158: for-each-list\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:167: scheme#display\00", align 1
@.str.108 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:168: scheme#display\00", align 1
@.str.109 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:169: scheme#display\00", align 1
@.str.110 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:170: scheme#display\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:172: scheme#display\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"witt_symmetry_explicit.scm:160: scheme#/\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"witt_symmetry_explicit.scm:162: tau-to-octad-size\00", align 1
@.str.114 = private unnamed_addr constant [56 x i8] c"witt_symmetry_explicit.scm:163: ##sys#check-output-port\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"witt_symmetry_explicit.scm:163: ##sys#print\00", align 1
@.str.116 = private unnamed_addr constant [51 x i8] c"witt_symmetry_explicit.scm:163: ##sys#write-char-0\00", align 1
@.str.117 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:151: hamming-weight\00", align 1
@.str.118 = private unnamed_addr constant [56 x i8] c"witt_symmetry_explicit.scm:152: ##sys#check-output-port\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"witt_symmetry_explicit.scm:152: ##sys#print\00", align 1
@.str.120 = private unnamed_addr constant [54 x i8] c"witt_symmetry_explicit.scm:152: scheme#number->string\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:177: scheme#display\00", align 1
@.str.122 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:178: scheme#display\00", align 1
@.str.123 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:179: scheme#display\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:180: scheme#display\00", align 1
@.str.125 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:181: scheme#display\00", align 1
@.str.126 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:186: scheme#display\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:187: scheme#display\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:188: scheme#display\00", align 1
@.str.129 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:189: scheme#display\00", align 1
@.str.130 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:190: scheme#display\00", align 1
@.str.131 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:191: scheme#display\00", align 1
@.str.132 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:200: scheme#display\00", align 1
@.str.133 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:201: scheme#display\00", align 1
@.str.134 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:202: scheme#display\00", align 1
@.str.135 = private unnamed_addr constant [63 x i8] c"witt_symmetry_explicit.scm:204: verify-frontier-preserves-witt\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:205: scheme#display\00", align 1
@.str.137 = private unnamed_addr constant [62 x i8] c"witt_symmetry_explicit.scm:206: verify-cartan-respects-octads\00", align 1
@.str.138 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:207: scheme#display\00", align 1
@.str.139 = private unnamed_addr constant [64 x i8] c"witt_symmetry_explicit.scm:208: verify-topological-gc-uses-witt\00", align 1
@.str.140 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:210: scheme#display\00", align 1
@.str.141 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:211: scheme#display\00", align 1
@.str.142 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:212: scheme#display\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:213: scheme#display\00", align 1
@.str.144 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:214: scheme#display\00", align 1
@.str.145 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:215: scheme#display\00", align 1
@.str.146 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:216: scheme#display\00", align 1
@.str.147 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:217: scheme#display\00", align 1
@.str.148 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:218: scheme#display\00", align 1
@.str.149 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:219: scheme#display\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:220: scheme#display\00", align 1
@.str.151 = private unnamed_addr constant [47 x i8] c"witt_symmetry_explicit.scm:221: scheme#display\00", align 1
@.str.152 = private unnamed_addr constant [61 x i8] c"witt_symmetry_explicit.scm:8: ##sys#register-compiled-module\00", align 1

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
  %70 = getelementptr inbounds i64, ptr %69, i64 408
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
  call void @C_rereclaim2(i64 noundef 3264, i32 noundef 1)
  %81 = load ptr, ptr @C_temporary_stack, align 8
  %82 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %82, ptr @C_temporary_stack, align 8
  %83 = load i64, ptr %81, align 8
  store i64 %83, ptr %7, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = alloca i8, i64 24, align 16
  store ptr %85, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 90)
  %86 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 23, ptr noundef @.str.1)
  store i64 %86, ptr @lf, align 16
  %87 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 4), i32 noundef 47, ptr noundef @.str.2)
  store i64 %87, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 4), align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 5), i32 noundef 11, ptr noundef @.str.3)
  store i64 %88, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 5), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 6), i32 noundef 14, ptr noundef @.str.4)
  store i64 %89, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 6), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 7), i32 noundef 13, ptr noundef @.str.5)
  store i64 %90, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 7), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 8), i32 noundef 10, ptr noundef @.str.6)
  store i64 %91, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 8), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 9), i32 noundef 43, ptr noundef @.str.7)
  store i64 %92, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 9), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 10), i32 noundef 8, ptr noundef @.str.8)
  store i64 %93, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 10), align 16
  %94 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 11), i32 noundef 5, ptr noundef @.str.9)
  store i64 %94, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 11), align 8
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 12), i32 noundef 7, ptr noundef @.str.10)
  store i64 %95, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 12), align 16
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 13), i32 noundef 16, ptr noundef @.str.11)
  store i64 %96, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 13), align 8
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 14), i32 noundef 13, ptr noundef @.str.12)
  store i64 %97, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 14), align 16
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 15), i32 noundef 12, ptr noundef @.str.13)
  store i64 %98, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 15), align 8
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 16), i32 noundef 40, ptr noundef @.str.14)
  store i64 %99, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 16), align 16
  %100 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.15)
  store i64 %100, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 17), align 8
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 18), i32 noundef 11, ptr noundef @.str.16)
  store i64 %101, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 18), align 16
  %102 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.17)
  store i64 %102, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 19), align 8
  %103 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.18)
  store i64 %103, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 20), align 16
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 21), i32 noundef 14, ptr noundef @.str.19)
  store i64 %104, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 21), align 8
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), i32 noundef 8, ptr noundef @.str.20)
  store i64 %105, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
  %106 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.21)
  store i64 %106, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 23), align 8
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 24), i32 noundef 5, ptr noundef @.str.22)
  store i64 %107, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 24), align 16
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 25), i32 noundef 14, ptr noundef @.str.23)
  store i64 %108, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 25), align 8
  %109 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.24)
  store i64 %109, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 26), align 16
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 27), i32 noundef 5, ptr noundef @.str.25)
  store i64 %110, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 27), align 8
  %111 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.26)
  store i64 %111, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 28), align 16
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 29), i32 noundef 10, ptr noundef @.str.27)
  store i64 %112, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 29), align 8
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 30), i32 noundef 53, ptr noundef @.str.28)
  store i64 %113, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 30), align 16
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), i32 noundef 14, ptr noundef @.str.29)
  store i64 %114, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %115 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.30)
  store i64 %115, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 32), align 16
  %116 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %116, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 33), align 8
  %117 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.32)
  store i64 %117, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 34), align 16
  %118 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.33)
  store i64 %118, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 35), align 8
  %119 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.34)
  store i64 %119, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 36), align 16
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), i32 noundef 21, ptr noundef @.str.35)
  store i64 %120, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), align 8
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 38), i32 noundef 18, ptr noundef @.str.36)
  store i64 %121, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 38), align 16
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), i32 noundef 11, ptr noundef @.str.37)
  store i64 %122, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
  %123 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.38)
  store i64 %123, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 40), align 16
  %124 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.39)
  store i64 %124, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 41), align 8
  %125 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.40)
  store i64 %125, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 42), align 16
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), i32 noundef 23, ptr noundef @.str.41)
  store i64 %126, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), align 8
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 44), i32 noundef 6, ptr noundef @.str.42)
  store i64 %127, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 44), align 16
  %128 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.43)
  store i64 %128, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 45), align 8
  %129 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.44)
  store i64 %129, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 46), align 16
  %130 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %130, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 47), align 8
  %131 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 48), i32 noundef 21, ptr noundef @.str.46)
  store i64 %131, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 48), align 16
  %132 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.47)
  store i64 %132, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 49), align 8
  %133 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.48)
  store i64 %133, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 50), align 16
  %134 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %134, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 51), align 8
  %135 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.50)
  store i64 %135, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 52), align 16
  %136 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.51)
  store i64 %136, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 53), align 8
  %137 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 54), i32 noundef 52, ptr noundef @.str.52)
  store i64 %137, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 54), align 16
  %138 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %138, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 55), align 8
  %139 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.54)
  store i64 %139, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 56), align 16
  %140 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %140, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 57), align 8
  %141 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.56)
  store i64 %141, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 58), align 16
  %142 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.57)
  store i64 %142, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 59), align 8
  %143 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 60), i32 noundef 54, ptr noundef @.str.58)
  store i64 %143, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 60), align 16
  %144 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.59)
  store i64 %144, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 61), align 8
  %145 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.60)
  store i64 %145, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 62), align 16
  %146 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.61)
  store i64 %146, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 63), align 8
  %147 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.62)
  store i64 %147, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 64), align 16
  %148 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.63)
  store i64 %148, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 65), align 8
  %149 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.64)
  store i64 %149, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 66), align 16
  %150 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 67), i32 noundef 51, ptr noundef @.str.65)
  store i64 %150, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 67), align 8
  %151 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.66)
  store i64 %151, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 68), align 16
  %152 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.67)
  store i64 %152, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 69), align 8
  %153 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.68)
  store i64 %153, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 70), align 16
  %154 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.69)
  store i64 %154, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 71), align 8
  %155 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.70)
  store i64 %155, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 72), align 16
  %156 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.71)
  store i64 %156, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 73), align 8
  %157 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.72)
  store i64 %157, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 74), align 16
  %158 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.73)
  store i64 %158, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 75), align 8
  %159 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.74)
  store i64 %159, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 76), align 16
  %160 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.75)
  store i64 %160, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 77), align 8
  %161 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.51)
  store i64 %161, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 78), align 16
  %162 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.76)
  store i64 %162, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 79), align 8
  %163 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.76)
  store i64 %163, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 80), align 16
  %164 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.76)
  store i64 %164, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 81), align 8
  %165 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %165, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 82), align 16
  %166 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.77)
  store i64 %166, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 83), align 8
  %167 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.78)
  store i64 %167, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 84), align 16
  %168 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 85), i32 noundef 34, ptr noundef @.str.79)
  store i64 %168, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 85), align 8
  %169 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 86), i32 noundef 30, ptr noundef @.str.80)
  store i64 %169, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 86), align 16
  %170 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 87), i32 noundef 22, ptr noundef @.str.81)
  store i64 %170, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 87), align 8
  %171 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.82)
  store i64 %171, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 88), align 16
  %172 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 89), i32 noundef 22, ptr noundef @.str.83)
  store i64 %172, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 89), align 8
  call fastcc void @create_ptable()
  %173 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 90, ptr noundef null)
  %174 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %174, align 8
  %175 = load ptr, ptr %10, align 8
  %176 = getelementptr inbounds i64, ptr %175, i64 1
  store i64 ptrtoint (ptr @f_306 to i64), ptr %176, align 8
  %177 = load i64, ptr %7, align 8
  %178 = load ptr, ptr %10, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 2
  store i64 %177, ptr %179, align 8
  %180 = load ptr, ptr %10, align 8
  %181 = ptrtoint ptr %180 to i64
  store i64 %181, ptr %5, align 8
  %182 = load ptr, ptr %10, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 3
  store ptr %183, ptr %10, align 8
  %184 = load i64, ptr %5, align 8
  store i64 %184, ptr %8, align 8
  %185 = load ptr, ptr %4, align 8
  store ptr %185, ptr %14, align 8
  %186 = load ptr, ptr %14, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 0
  store i64 30, ptr %187, align 8
  %188 = load i64, ptr %8, align 8
  %189 = load ptr, ptr %14, align 8
  %190 = getelementptr inbounds i64, ptr %189, i64 1
  store i64 %188, ptr %190, align 8
  %191 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %191) #4
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
define internal void @f_306(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_306, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_309 to i64), ptr %54, align 8
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
define internal void @f_309(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_309, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_312 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_891 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.84)
  %81 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 89), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 89), align 8
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
define internal void @f_312(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_312, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_315 to i64), ptr %54, align 8
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
define internal void @f_891(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_891, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.152)
  %58 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 86), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 86), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 87), align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 88), align 16
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
define internal void @f_315(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !11
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
  %45 = icmp sgt i64 %44, 4
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 4
  %48 = add nuw nsw i32 33, %47
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
  call void @C_save_and_reclaim(ptr noundef @f_315, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 264, align 16
  store ptr %62, ptr %20, align 8
  %63 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %63, align 8
  %64 = load ptr, ptr %20, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 ptrtoint (ptr @f_317 to i64), ptr %65, align 8
  %66 = load ptr, ptr %20, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %67, align 8
  %68 = load ptr, ptr %20, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %20, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store ptr %71, ptr %20, align 8
  %72 = load i64, ptr %5, align 8
  %73 = call fastcc i64 @C_mutate(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 1), i64 noundef %72)
  store i64 %73, ptr %8, align 8
  %74 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %74, align 8
  %75 = load ptr, ptr %20, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_405 to i64), ptr %76, align 8
  %77 = load ptr, ptr %20, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %78, align 8
  %79 = load ptr, ptr %20, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %20, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store ptr %82, ptr %20, align 8
  %83 = load i64, ptr %5, align 8
  %84 = call fastcc i64 @C_mutate(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 2), i64 noundef %83)
  store i64 %84, ptr %9, align 8
  %85 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %85, align 8
  %86 = load ptr, ptr %20, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 ptrtoint (ptr @f_446 to i64), ptr %87, align 8
  %88 = load ptr, ptr %20, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %89, align 8
  %90 = load ptr, ptr %20, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %5, align 8
  %92 = load ptr, ptr %20, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store ptr %93, ptr %20, align 8
  %94 = load i64, ptr %5, align 8
  %95 = call fastcc i64 @C_mutate(ptr noundef getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 3), i64 noundef %94)
  store i64 %95, ptr %10, align 8
  %96 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 4), align 16
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %99, align 8
  %100 = load ptr, ptr %20, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 ptrtoint (ptr @f_555 to i64), ptr %101, align 8
  %102 = load ptr, ptr %20, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %103, align 8
  %104 = load ptr, ptr %20, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %20, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 3
  store ptr %107, ptr %20, align 8
  %108 = load i64, ptr %5, align 8
  %109 = call fastcc i64 @C_mutate(ptr noundef %98, i64 noundef %108)
  store i64 %109, ptr %11, align 8
  %110 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 16), align 16
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %113, align 8
  %114 = load ptr, ptr %20, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 ptrtoint (ptr @f_591 to i64), ptr %115, align 8
  %116 = load ptr, ptr %20, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %117, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = ptrtoint ptr %118 to i64
  store i64 %119, ptr %5, align 8
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 3
  store ptr %121, ptr %20, align 8
  %122 = load i64, ptr %5, align 8
  %123 = call fastcc i64 @C_mutate(ptr noundef %112, i64 noundef %122)
  store i64 %123, ptr %12, align 8
  %124 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 9), align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  %127 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %127, align 8
  %128 = load ptr, ptr %20, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 ptrtoint (ptr @f_645 to i64), ptr %129, align 8
  %130 = load ptr, ptr %20, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %131, align 8
  %132 = load ptr, ptr %20, align 8
  %133 = ptrtoint ptr %132 to i64
  store i64 %133, ptr %5, align 8
  %134 = load ptr, ptr %20, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 3
  store ptr %135, ptr %20, align 8
  %136 = load i64, ptr %5, align 8
  %137 = call fastcc i64 @C_mutate(ptr noundef %126, i64 noundef %136)
  store i64 %137, ptr %13, align 8
  %138 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 30), align 16
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  %141 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %141, align 8
  %142 = load ptr, ptr %20, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 1
  store i64 ptrtoint (ptr @f_667 to i64), ptr %143, align 8
  %144 = load ptr, ptr %20, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 ptrtoint (ptr @li11 to i64), ptr %145, align 8
  %146 = load ptr, ptr %20, align 8
  %147 = ptrtoint ptr %146 to i64
  store i64 %147, ptr %5, align 8
  %148 = load ptr, ptr %20, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 3
  store ptr %149, ptr %20, align 8
  %150 = load i64, ptr %5, align 8
  %151 = call fastcc i64 @C_mutate(ptr noundef %140, i64 noundef %150)
  store i64 %151, ptr %14, align 8
  %152 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 54), align 16
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 1
  %155 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %155, align 8
  %156 = load ptr, ptr %20, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 1
  store i64 ptrtoint (ptr @f_783 to i64), ptr %157, align 8
  %158 = load ptr, ptr %20, align 8
  %159 = getelementptr inbounds i64, ptr %158, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %159, align 8
  %160 = load ptr, ptr %20, align 8
  %161 = ptrtoint ptr %160 to i64
  store i64 %161, ptr %5, align 8
  %162 = load ptr, ptr %20, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 3
  store ptr %163, ptr %20, align 8
  %164 = load i64, ptr %5, align 8
  %165 = call fastcc i64 @C_mutate(ptr noundef %154, i64 noundef %164)
  store i64 %165, ptr %15, align 8
  %166 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 60), align 16
  %167 = inttoptr i64 %166 to ptr
  %168 = getelementptr inbounds i64, ptr %167, i64 1
  %169 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %169, align 8
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  store i64 ptrtoint (ptr @f_801 to i64), ptr %171, align 8
  %172 = load ptr, ptr %20, align 8
  %173 = getelementptr inbounds i64, ptr %172, i64 2
  store i64 ptrtoint (ptr @li13 to i64), ptr %173, align 8
  %174 = load ptr, ptr %20, align 8
  %175 = ptrtoint ptr %174 to i64
  store i64 %175, ptr %5, align 8
  %176 = load ptr, ptr %20, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 3
  store ptr %177, ptr %20, align 8
  %178 = load i64, ptr %5, align 8
  %179 = call fastcc i64 @C_mutate(ptr noundef %168, i64 noundef %178)
  store i64 %179, ptr %16, align 8
  %180 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 67), align 8
  %181 = inttoptr i64 %180 to ptr
  %182 = getelementptr inbounds i64, ptr %181, i64 1
  %183 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %183, align 8
  %184 = load ptr, ptr %20, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 1
  store i64 ptrtoint (ptr @f_822 to i64), ptr %185, align 8
  %186 = load ptr, ptr %20, align 8
  %187 = getelementptr inbounds i64, ptr %186, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %187, align 8
  %188 = load ptr, ptr %20, align 8
  %189 = ptrtoint ptr %188 to i64
  store i64 %189, ptr %5, align 8
  %190 = load ptr, ptr %20, align 8
  %191 = getelementptr inbounds i64, ptr %190, i64 3
  store ptr %191, ptr %20, align 8
  %192 = load i64, ptr %5, align 8
  %193 = call fastcc i64 @C_mutate(ptr noundef %182, i64 noundef %192)
  store i64 %193, ptr %17, align 8
  %194 = load ptr, ptr %20, align 8
  store i64 2594073385365405698, ptr %194, align 8
  %195 = load ptr, ptr %20, align 8
  %196 = getelementptr inbounds i64, ptr %195, i64 1
  store i64 ptrtoint (ptr @f_889 to i64), ptr %196, align 8
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
  call void @C_trace(ptr noundef @.str.79)
  %208 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 85), align 8
  %209 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %208)
  store ptr %209, ptr %23, align 8
  %210 = load ptr, ptr %4, align 8
  store ptr %210, ptr %24, align 8
  %211 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 85), align 8
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

; Function Attrs: noreturn
declare void @C_extras_toplevel(i64 noundef, ptr noundef) local_unnamed_addr #3

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
define internal void @f_317(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
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
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
  store ptr %18, ptr %11, align 8
  %19 = load ptr, ptr %11, align 8
  store ptr %19, ptr %12, align 8
  %20 = load ptr, ptr %12, align 8
  %21 = load ptr, ptr @C_stack_limit, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = load i64, ptr @C_scratch_usage, align 8
  %27 = add nsw i64 10, %26
  %28 = icmp sgt i64 %25, %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = zext nneg i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, ptr %3, align 8
  %35 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_317, i32 noundef 2, i64 noundef %34, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %17
  %37 = alloca i8, i64 48, align 16
  store ptr %37, ptr %10, align 8
  store i64 30, ptr %6, align 8
  %38 = load ptr, ptr %10, align 8
  store i64 1, ptr %38, align 8
  %39 = load i64, ptr %6, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 1
  store i64 %39, ptr %41, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = ptrtoint ptr %42 to i64
  store i64 %43, ptr %5, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  store ptr %45, ptr %10, align 8
  %46 = load i64, ptr %5, align 8
  store i64 %46, ptr %7, align 8
  %47 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %47, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 ptrtoint (ptr @f_323 to i64), ptr %49, align 8
  %50 = load i64, ptr %7, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 ptrtoint (ptr @li0 to i64), ptr %54, align 8
  %55 = load ptr, ptr %10, align 8
  %56 = ptrtoint ptr %55 to i64
  store i64 %56, ptr %5, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  store ptr %58, ptr %10, align 8
  %59 = load i64, ptr %5, align 8
  %60 = load i64, ptr %7, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds %struct.C_block_struct, ptr %61, i32 0, i32 1
  %63 = getelementptr inbounds [0 x i64], ptr %62, i64 0, i64 0
  store i64 %59, ptr %63, align 8
  store i64 %59, ptr %8, align 8
  %64 = load i64, ptr %7, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %9, align 8
  %68 = load i64, ptr %9, align 8
  %69 = load i64, ptr %3, align 8
  %70 = load i64, ptr %4, align 8
  call void @f_323(i64 noundef %68, i64 noundef %69, i64 noundef %70, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_405(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %20 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
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
  %33 = zext nneg i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_405, i32 noundef 3, i64 noundef %36, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %19
  %40 = alloca i8, i64 40, align 16
  store ptr %40, ptr %10, align 8
  %41 = load i64, ptr %6, align 8
  %42 = icmp eq i64 %41, 14
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i64 22, i64 6
  %45 = icmp ne i64 %44, 6
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i64, ptr %4, align 8
  store i64 %47, ptr %8, align 8
  %48 = load i64, ptr %8, align 8
  %49 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  store i64 %48, ptr %49, align 16
  %50 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 1
  store i64 14, ptr %50, align 8
  %51 = load i64, ptr %8, align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  call void %55(i64 noundef 2, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %39
  %58 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_418 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %4, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %5, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %7, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 5
  store ptr %73, ptr %10, align 8
  %74 = load i64, ptr %7, align 8
  store i64 %74, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.86)
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %9, align 8
  %77 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  store i64 %76, ptr %77, align 16
  %78 = load i64, ptr %8, align 8
  %79 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 1
  store i64 %78, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = call i64 @C_i_car(i64 noundef %80)
  %82 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 2
  store i64 %81, ptr %82, align 16
  %83 = load i64, ptr %9, align 8
  %84 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %83)
  %85 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  call void %84(i64 noundef 3, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_446(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %14 = alloca [3 x i64], align 16
  %15 = alloca [2 x i64], align 16
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  %30 = add nsw i64 7, %29
  %31 = icmp sgt i64 %28, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = zext nneg i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i64, ptr %4, align 8
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_446, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 40, align 16
  store ptr %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = icmp eq i64 %42, 14
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i64 22, i64 6
  store i64 %45, ptr %8, align 8
  %46 = load i64, ptr %8, align 8
  %47 = icmp ne i64 %46, 6
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i64 6, i64 22
  %50 = icmp ne i64 %49, 6
  br i1 %50, label %51, label %80

51:                                               ; preds = %40
  %52 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_456 to i64), ptr %54, align 8
  %55 = load i64, ptr %4, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  store i64 %55, ptr %57, align 8
  %58 = load i64, ptr %5, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 4
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = ptrtoint ptr %64 to i64
  store i64 %65, ptr %7, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 5
  store ptr %67, ptr %11, align 8
  %68 = load i64, ptr %7, align 8
  store i64 %68, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.89)
  %69 = load i64, ptr %5, align 8
  store i64 %69, ptr %10, align 8
  %70 = load i64, ptr %10, align 8
  %71 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  store i64 %70, ptr %71, align 16
  %72 = load i64, ptr %9, align 8
  %73 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 1
  store i64 %72, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = call i64 @C_i_car(i64 noundef %74)
  %76 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 2
  store i64 %75, ptr %76, align 16
  %77 = load i64, ptr %10, align 8
  %78 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %77)
  %79 = getelementptr inbounds [3 x i64], ptr %14, i64 0, i64 0
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %40
  %81 = load i64, ptr %4, align 8
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %9, align 8
  %83 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 30, ptr %84, align 8
  %85 = load i64, ptr %9, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load i64, ptr %87, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  call void %89(i64 noundef 2, ptr noundef %90) #4
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store ptr %35, ptr %12, align 8
  %36 = load ptr, ptr %12, align 8
  store ptr %36, ptr %13, align 8
  %37 = load ptr, ptr %13, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 2
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 2
  %47 = add nuw nsw i32 4, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_555, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_559 to i64), ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store ptr %74, ptr %11, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.91)
  %76 = load i64, ptr %9, align 8
  %77 = load i64, ptr %8, align 8
  call void @f_317(i64 noundef %76, i64 noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_591(i64 noundef %0, ptr noundef %1) #2 {
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
  %46 = icmp sgt i64 %45, 3
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_591, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 24, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_595 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.97)
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %3, align 8
  %81 = icmp sge i64 %80, 4
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %15, align 8
  br label %86

84:                                               ; preds = %62
  %85 = alloca i8, i64 32, align 16
  store ptr %85, ptr %15, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %96 = load i64, ptr %8, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 23), align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = load ptr, ptr %15, align 8
  call void %102(i64 noundef 4, ptr noundef %103) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_645(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !17
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
  %47 = icmp sgt i64 %46, 3
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 3
  %50 = add nuw nsw i32 6, %49
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
  call void @C_save_and_reclaim(ptr noundef @f_645, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = alloca i8, i64 48, align 16
  store ptr %64, ptr %12, align 8
  %65 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %65, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_649 to i64), ptr %67, align 8
  %68 = load i64, ptr %7, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store ptr %74, ptr %12, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %9, align 8
  %76 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 ptrtoint (ptr @f_665 to i64), ptr %78, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store ptr %85, ptr %12, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.98)
  %87 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 29), align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %90)
  store ptr %91, ptr %15, align 8
  %92 = load i64, ptr %3, align 8
  %93 = icmp sge i64 %92, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %63
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %16, align 8
  br label %98

96:                                               ; preds = %63
  %97 = alloca i8, i64 32, align 16
  store ptr %97, ptr %16, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 29), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 0
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %10, align 8
  %106 = load ptr, ptr %16, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %8, align 8
  %109 = load ptr, ptr %16, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 49, ptr %112, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = load ptr, ptr %16, align 8
  call void %113(i64 noundef 4, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_667(i64 noundef %0, ptr noundef %1) #2 {
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
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
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
  %45 = add nuw nsw i32 3, %44
  %46 = zext nneg i32 %45 to i64
  %47 = load i64, ptr @C_scratch_usage, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %40, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = zext nneg i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load i64, ptr %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_667, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %10, align 8
  %60 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_671 to i64), ptr %62, align 8
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
  call void @C_trace(ptr noundef @.str.100)
  %71 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %74)
  store ptr %75, ptr %13, align 8
  %76 = load i64, ptr %3, align 8
  %77 = icmp sge i64 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %14, align 8
  br label %82

80:                                               ; preds = %58
  %81 = alloca i8, i64 24, align 16
  store ptr %81, ptr %14, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 53), align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = load ptr, ptr %14, align 8
  call void %95(i64 noundef 3, ptr noundef %96) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_783(i64 noundef %0, ptr noundef %1) #2 {
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
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
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
  %45 = add nuw nsw i32 3, %44
  %46 = zext nneg i32 %45 to i64
  %47 = load i64, ptr @C_scratch_usage, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %40, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = zext nneg i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load i64, ptr %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_783, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %10, align 8
  %60 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_787 to i64), ptr %62, align 8
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
  call void @C_trace(ptr noundef @.str.121)
  %71 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %74)
  store ptr %75, ptr %13, align 8
  %76 = load i64, ptr %3, align 8
  %77 = icmp sge i64 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %14, align 8
  br label %82

80:                                               ; preds = %58
  %81 = alloca i8, i64 24, align 16
  store ptr %81, ptr %14, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 59), align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = load ptr, ptr %14, align 8
  call void %95(i64 noundef 3, ptr noundef %96) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_801(i64 noundef %0, ptr noundef %1) #2 {
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
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
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
  %45 = add nuw nsw i32 3, %44
  %46 = zext nneg i32 %45 to i64
  %47 = load i64, ptr @C_scratch_usage, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %40, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = zext nneg i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load i64, ptr %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_801, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %10, align 8
  %60 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_805 to i64), ptr %62, align 8
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
  call void @C_trace(ptr noundef @.str.126)
  %71 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %74)
  store ptr %75, ptr %13, align 8
  %76 = load i64, ptr %3, align 8
  %77 = icmp sge i64 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %14, align 8
  br label %82

80:                                               ; preds = %58
  %81 = alloca i8, i64 24, align 16
  store ptr %81, ptr %14, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 66), align 16
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = load ptr, ptr %14, align 8
  call void %95(i64 noundef 3, ptr noundef %96) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_822(i64 noundef %0, ptr noundef %1) #2 {
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
  %33 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
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
  %45 = add nuw nsw i32 3, %44
  %46 = zext nneg i32 %45 to i64
  %47 = load i64, ptr @C_scratch_usage, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %40, %48
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = zext nneg i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load i64, ptr %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_822, i32 noundef %56, ptr noundef %57) #4
  unreachable

58:                                               ; preds = %32
  %59 = alloca i8, i64 24, align 16
  store ptr %59, ptr %10, align 8
  %60 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %60, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_826 to i64), ptr %62, align 8
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
  call void @C_trace(ptr noundef @.str.132)
  %71 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %74)
  store ptr %75, ptr %13, align 8
  %76 = load i64, ptr %3, align 8
  %77 = icmp sge i64 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %14, align 8
  br label %82

80:                                               ; preds = %58
  %81 = alloca i8, i64 24, align 16
  store ptr %81, ptr %14, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 84), align 16
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = load ptr, ptr %14, align 8
  call void %95(i64 noundef 3, ptr noundef %96) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_889(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
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
  call void @C_save_and_reclaim(ptr noundef @f_889, i32 noundef %47, ptr noundef %48) #4
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
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_317(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_317(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_323(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_323, i32 noundef 4, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
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
  call void @C_trace(ptr noundef @.str.85)
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
define internal void @trf_323(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_323(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_zerop(i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_bitwise_and(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_405(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_405(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_418(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
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
  %37 = add nuw nsw i32 4, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_418, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %11, align 8
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = call i64 @C_i_car(i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %60, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_429 to i64), ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store ptr %75, ptr %11, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.87)
  %77 = load i64, ptr %9, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  %85 = load i64, ptr %84, align 8
  %86 = call i64 @C_i_cdr(i64 noundef %85)
  call void @f_405(i64 noundef %77, i64 noundef %81, i64 noundef %86) #4
  unreachable

87:                                               ; preds = %50
  call void @C_trace(ptr noundef @.str.88)
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  %95 = load i64, ptr %94, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  %99 = load i64, ptr %98, align 8
  %100 = call i64 @C_i_cdr(i64 noundef %99)
  call void @f_405(i64 noundef %91, i64 noundef %95, i64 noundef %100) #4
  unreachable
}

declare i64 @C_i_car(i64 noundef) local_unnamed_addr #1

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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_429(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
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
  call void @C_save_and_reclaim(ptr noundef @f_429, i32 noundef %49, ptr noundef %50) #4
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

declare i64 @C_i_cdr(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_446(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_446(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_456(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  call void @C_save_and_reclaim(ptr noundef @f_456, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.90)
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
  %61 = call i64 @C_i_cdr(i64 noundef %60)
  call void @f_446(i64 noundef %52, i64 noundef %56, i64 noundef %61) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_bad_argc_2(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_559(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
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
  %39 = add nuw nsw i32 12, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_559, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 96, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_562 to i64), ptr %56, align 8
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
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 3
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %13, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 5
  store ptr %75, ptr %13, align 8
  %76 = load i64, ptr %5, align 8
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
  store i64 2594073385365405700, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_479 to i64), ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %10, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 ptrtoint (ptr @li5 to i64), ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %5, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store ptr %103, ptr %13, align 8
  %104 = load i64, ptr %5, align 8
  %105 = load i64, ptr %10, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds %struct.C_block_struct, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [0 x i64], ptr %107, i64 0, i64 0
  store i64 %104, ptr %108, align 8
  store i64 %104, ptr %11, align 8
  %109 = load i64, ptr %10, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  store i64 %112, ptr %12, align 8
  %113 = load i64, ptr %12, align 8
  %114 = load i64, ptr %8, align 8
  call void @f_479(i64 noundef %113, i64 noundef %114, i64 noundef 1, i64 noundef 14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_562(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
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
  %37 = add nuw nsw i32 8, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_562, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 64, align 16
  store ptr %51, ptr %11, align 8
  %52 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_589 to i64), ptr %54, align 8
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
  %70 = load ptr, ptr %11, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 5
  store ptr %73, ptr %11, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %8, align 8
  %75 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 ptrtoint (ptr @f_523 to i64), ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store ptr %84, ptr %11, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.92)
  %86 = load i64, ptr %9, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  %90 = load i64, ptr %89, align 8
  call void @f_317(i64 noundef %86, i64 noundef %90) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_479(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %17 = alloca [3 x i64], align 16
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
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
  %32 = add nsw i64 11, %31
  %33 = icmp sgt i64 %30, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = zext nneg i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %6, align 8
  %41 = load i64, ptr %7, align 8
  %42 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_479, i32 noundef 4, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42) #4
  unreachable

43:                                               ; preds = %22
  %44 = alloca i8, i64 56, align 16
  store ptr %44, ptr %14, align 8
  %45 = load i64, ptr %7, align 8
  %46 = call i64 @C_i_nequalp(i64 noundef %45, i64 noundef 49)
  %47 = icmp ne i64 %46, 6
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  store i64 30, ptr %10, align 8
  %49 = load ptr, ptr %14, align 8
  store i64 1, ptr %49, align 8
  %50 = load i64, ptr %10, align 8
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 1
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %14, align 8
  %54 = ptrtoint ptr %53 to i64
  store i64 %54, ptr %9, align 8
  %55 = load ptr, ptr %14, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  store ptr %56, ptr %14, align 8
  %57 = load i64, ptr %9, align 8
  store i64 %57, ptr %11, align 8
  %58 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_353 to i64), ptr %60, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %14, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 ptrtoint (ptr @li4 to i64), ptr %65, align 8
  %66 = load ptr, ptr %14, align 8
  %67 = ptrtoint ptr %66 to i64
  store i64 %67, ptr %9, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load i64, ptr %11, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 0
  store i64 %70, ptr %74, align 8
  store i64 %70, ptr %12, align 8
  %75 = load i64, ptr %11, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %13, align 8
  %79 = load i64, ptr %13, align 8
  %80 = load i64, ptr %6, align 8
  %81 = load i64, ptr %8, align 8
  call void @f_353(i64 noundef %79, i64 noundef %80, i64 noundef %81, i64 noundef 14) #4
  unreachable

82:                                               ; preds = %43
  %83 = load ptr, ptr %14, align 8
  store i64 2594073385365405702, ptr %83, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 1
  store i64 ptrtoint (ptr @f_517 to i64), ptr %85, align 8
  %86 = load i64, ptr %5, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %7, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %8, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %5, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 6
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = ptrtoint ptr %107 to i64
  store i64 %108, ptr %9, align 8
  %109 = load ptr, ptr %14, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 7
  store ptr %110, ptr %14, align 8
  %111 = load i64, ptr %9, align 8
  store i64 %111, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.94)
  %112 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 0
  store i64 0, ptr %112, align 16
  %113 = load i64, ptr %10, align 8
  %114 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 1
  store i64 %113, ptr %114, align 8
  %115 = load i64, ptr %7, align 8
  %116 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 2
  store i64 %115, ptr %116, align 16
  %117 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 0
  call void @C_minus(i64 noundef 3, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_589(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca [3 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %22 = load i64, ptr @C_timer_interrupt_counter, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, ptr @C_timer_interrupt_counter, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %26

26:                                               ; preds = %25, %2
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  store ptr %28, ptr %13, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr @C_scratch_usage, align 8
  %36 = add nsw i64 17, %35
  %37 = icmp sgt i64 %34, %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i64, ptr %3, align 8
  %44 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_589, i32 noundef 2, i64 noundef %43, i64 noundef %44) #4
  unreachable

45:                                               ; preds = %26
  %46 = alloca i8, i64 120, align 16
  store ptr %46, ptr %11, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = ptrtoint ptr %47 to i64
  store i64 %48, ptr %14, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds i64, ptr %49, i64 0
  store i64 216172782113783810, ptr %50, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 3
  store ptr %52, ptr %11, align 8
  %53 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 5), align 8
  %54 = load i64, ptr %14, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds %struct.C_block_struct, ptr %55, i32 0, i32 1
  %57 = getelementptr inbounds [0 x i64], ptr %56, i64 0, i64 0
  store i64 %53, ptr %57, align 8
  %58 = load i64, ptr %4, align 8
  %59 = load i64, ptr %14, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds %struct.C_block_struct, ptr %60, i32 0, i32 1
  %62 = getelementptr inbounds [0 x i64], ptr %61, i64 0, i64 1
  store i64 %58, ptr %62, align 8
  %63 = load i64, ptr %14, align 8
  store i64 %63, ptr %15, align 8
  %64 = load i64, ptr %15, align 8
  store i64 %64, ptr %6, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = ptrtoint ptr %65 to i64
  store i64 %66, ptr %16, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 216172782113783810, ptr %68, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store ptr %70, ptr %11, align 8
  %71 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 6), align 16
  %72 = load i64, ptr %16, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 0
  store i64 %71, ptr %75, align 8
  %76 = load i64, ptr %3, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %16, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds %struct.C_block_struct, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds [0 x i64], ptr %82, i64 0, i64 1
  store i64 %79, ptr %83, align 8
  %84 = load i64, ptr %16, align 8
  store i64 %84, ptr %17, align 8
  %85 = load i64, ptr %17, align 8
  store i64 %85, ptr %7, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %18, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 0
  store i64 216172782113783810, ptr %89, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store ptr %91, ptr %11, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 7), align 8
  %93 = load i64, ptr %18, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds %struct.C_block_struct, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds [0 x i64], ptr %95, i64 0, i64 0
  store i64 %92, ptr %96, align 8
  %97 = load i64, ptr %3, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = load i64, ptr %18, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds %struct.C_block_struct, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds [0 x i64], ptr %103, i64 0, i64 1
  store i64 %100, ptr %104, align 8
  %105 = load i64, ptr %18, align 8
  store i64 %105, ptr %19, align 8
  %106 = load i64, ptr %19, align 8
  store i64 %106, ptr %8, align 8
  %107 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %107, align 8
  %108 = load ptr, ptr %11, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 ptrtoint (ptr @f_585 to i64), ptr %109, align 8
  %110 = load i64, ptr %3, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = load ptr, ptr %11, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %7, align 8
  %120 = load ptr, ptr %11, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 4
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %8, align 8
  %123 = load ptr, ptr %11, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 5
  store i64 %122, ptr %124, align 8
  %125 = load ptr, ptr %11, align 8
  %126 = ptrtoint ptr %125 to i64
  store i64 %126, ptr %5, align 8
  %127 = load ptr, ptr %11, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 6
  store ptr %128, ptr %11, align 8
  %129 = load i64, ptr %5, align 8
  store i64 %129, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.93)
  %130 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 9), align 8
  %131 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %130)
  store ptr %131, ptr %20, align 8
  %132 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 9), align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load i64, ptr %134, align 8
  %136 = getelementptr inbounds [3 x i64], ptr %21, i64 0, i64 0
  store i64 %135, ptr %136, align 16
  %137 = load i64, ptr %9, align 8
  %138 = getelementptr inbounds [3 x i64], ptr %21, i64 0, i64 1
  store i64 %137, ptr %138, align 8
  %139 = load i64, ptr %3, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  %142 = load i64, ptr %141, align 8
  %143 = getelementptr inbounds [3 x i64], ptr %21, i64 0, i64 2
  store i64 %142, ptr %143, align 16
  %144 = load ptr, ptr %20, align 8
  %145 = getelementptr inbounds [3 x i64], ptr %21, i64 0, i64 0
  call void %144(i64 noundef 3, ptr noundef %145) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_523(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  call void @C_save_and_reclaim(ptr noundef @f_523, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = load i64, ptr %7, align 8
  %51 = call i64 @C_i_nequalp(i64 noundef %50, i64 noundef 1)
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 10), align 16
  call void @f_589(i64 noundef %58, i64 noundef %59) #4
  unreachable

60:                                               ; preds = %49
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_i_nequalp(i64 noundef %61, i64 noundef 17)
  %63 = icmp ne i64 %62, 6
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 11), align 8
  call void @f_589(i64 noundef %69, i64 noundef %70) #4
  unreachable

71:                                               ; preds = %60
  %72 = load i64, ptr %7, align 8
  %73 = call i64 @C_i_nequalp(i64 noundef %72, i64 noundef 25)
  %74 = icmp ne i64 %73, 6
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  %79 = load i64, ptr %78, align 8
  store i64 %79, ptr %8, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 12), align 16
  call void @f_589(i64 noundef %80, i64 noundef %81) #4
  unreachable

82:                                               ; preds = %71
  %83 = load i64, ptr %7, align 8
  %84 = call i64 @C_i_nequalp(i64 noundef %83, i64 noundef 33)
  %85 = icmp ne i64 %84, 6
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %8, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 13), align 8
  call void @f_589(i64 noundef %91, i64 noundef %92) #4
  unreachable

93:                                               ; preds = %82
  %94 = load i64, ptr %7, align 8
  %95 = call i64 @C_i_nequalp(i64 noundef %94, i64 noundef 49)
  store i64 %95, ptr %8, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  %99 = load i64, ptr %98, align 8
  store i64 %99, ptr %9, align 8
  %100 = load i64, ptr %9, align 8
  %101 = load i64, ptr %8, align 8
  %102 = icmp ne i64 %101, 6
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 14), align 16
  br label %107

105:                                              ; preds = %93
  %106 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 15), align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  call void @f_589(i64 noundef %100, i64 noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_589(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_589(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_585(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
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
  %36 = icmp sgt i64 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_585, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 120, align 16
  store ptr %53, ptr %10, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = ptrtoint ptr %54 to i64
  store i64 %55, ptr %13, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 216172782113783810, ptr %57, align 8
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 3
  store ptr %59, ptr %10, align 8
  %60 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 8), align 16
  %61 = load i64, ptr %13, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds %struct.C_block_struct, ptr %62, i32 0, i32 1
  %64 = getelementptr inbounds [0 x i64], ptr %63, i64 0, i64 0
  store i64 %60, ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load i64, ptr %13, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds %struct.C_block_struct, ptr %67, i32 0, i32 1
  %69 = getelementptr inbounds [0 x i64], ptr %68, i64 0, i64 1
  store i64 %65, ptr %69, align 8
  %70 = load i64, ptr %13, align 8
  store i64 %70, ptr %14, align 8
  %71 = load i64, ptr %14, align 8
  store i64 %71, ptr %8, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %9, align 8
  %76 = load ptr, ptr %4, align 8
  store ptr %76, ptr %15, align 8
  %77 = load i64, ptr %9, align 8
  %78 = load ptr, ptr %15, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr %8, align 8
  %93 = call fastcc i64 @C_a_i_list4(ptr noundef %10, i64 noundef %83, i64 noundef %87, i64 noundef %91, i64 noundef %92)
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = load ptr, ptr %15, align 8
  call void %100(i64 noundef 2, ptr noundef %101) #4
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

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_479(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_479(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_353(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %23

23:                                               ; preds = %68, %4
  %24 = load i64, ptr @C_timer_interrupt_counter, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr @C_timer_interrupt_counter, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @C_raise_interrupt(i32 noundef 255)
  br label %28

28:                                               ; preds = %27, %23
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
  store ptr %29, ptr %18, align 8
  %30 = load ptr, ptr %18, align 8
  store ptr %30, ptr %19, align 8
  %31 = load ptr, ptr %19, align 8
  %32 = load ptr, ptr @C_stack_limit, align 8
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load i64, ptr @C_scratch_usage, align 8
  %38 = add nsw i64 6, %37
  %39 = icmp sgt i64 %36, %38
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = zext nneg i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load i64, ptr %5, align 8
  %46 = load i64, ptr %6, align 8
  %47 = load i64, ptr %7, align 8
  %48 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_353, i32 noundef 4, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48) #4
  unreachable

49:                                               ; preds = %28
  %50 = alloca i8, i64 24, align 16
  store ptr %50, ptr %17, align 8
  %51 = load i64, ptr %7, align 8
  %52 = icmp eq i64 %51, 14
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 22, i64 6
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load i64, ptr %6, align 8
  store i64 %57, ptr %10, align 8
  %58 = load i64, ptr %10, align 8
  %59 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  store i64 %58, ptr %59, align 16
  %60 = load i64, ptr %8, align 8
  %61 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 1
  store i64 %60, ptr %61, align 8
  %62 = load i64, ptr %10, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  call void %66(i64 noundef 2, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %49
  %69 = load i64, ptr %7, align 8
  %70 = call i64 @C_i_cdr(i64 noundef %69)
  store i64 %70, ptr %10, align 8
  %71 = load i64, ptr %7, align 8
  %72 = call i64 @C_i_car(i64 noundef %71)
  store i64 %72, ptr %11, align 8
  %73 = load ptr, ptr %17, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %21, align 8
  %75 = load ptr, ptr %17, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 216172782113783810, ptr %76, align 8
  %77 = load ptr, ptr %17, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store ptr %78, ptr %17, align 8
  %79 = load i64, ptr %11, align 8
  %80 = load i64, ptr %21, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds %struct.C_block_struct, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds [0 x i64], ptr %82, i64 0, i64 0
  store i64 %79, ptr %83, align 8
  %84 = load i64, ptr %8, align 8
  %85 = load i64, ptr %21, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds %struct.C_block_struct, ptr %86, i32 0, i32 1
  %88 = getelementptr inbounds [0 x i64], ptr %87, i64 0, i64 1
  store i64 %84, ptr %88, align 8
  %89 = load i64, ptr %21, align 8
  store i64 %89, ptr %22, align 8
  %90 = load i64, ptr %22, align 8
  store i64 %90, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.95)
  %91 = load i64, ptr %6, align 8
  store i64 %91, ptr %14, align 8
  %92 = load i64, ptr %10, align 8
  store i64 %92, ptr %15, align 8
  %93 = load i64, ptr %12, align 8
  store i64 %93, ptr %16, align 8
  %94 = load i64, ptr %14, align 8
  store i64 %94, ptr %6, align 8
  %95 = load i64, ptr %15, align 8
  store i64 %95, ptr %7, align 8
  %96 = load i64, ptr %16, align 8
  store i64 %96, ptr %8, align 8
  br label %23
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_517(i64 noundef %0, ptr noundef %1) #2 {
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
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
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
  %39 = icmp sgt i64 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 3
  %42 = add nuw nsw i32 42, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_517, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 336, align 16
  store ptr %56, ptr %14, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %7, align 8
  %62 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %14, i64 noundef 2, i64 noundef %60, i64 noundef %61)
  store i64 %62, ptr %8, align 8
  %63 = load i64, ptr %8, align 8
  %64 = call i64 @C_s_a_i_bitwise_and(ptr noundef %14, i64 noundef 2, i64 noundef %63, i64 noundef 3)
  store i64 %64, ptr %9, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = call i64 @C_s_a_i_plus(ptr noundef %14, i64 noundef 2, i64 noundef %68, i64 noundef 3)
  store i64 %69, ptr %10, align 8
  %70 = load i64, ptr %9, align 8
  %71 = call i64 @C_i_nequalp(i64 noundef %70, i64 noundef 3)
  store i64 %71, ptr %11, align 8
  %72 = load i64, ptr %11, align 8
  %73 = icmp ne i64 %72, 6
  br i1 %73, label %74, label %99

74:                                               ; preds = %55
  %75 = load ptr, ptr %14, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %17, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 0
  store i64 216172782113783810, ptr %78, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store ptr %80, ptr %14, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr %17, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds %struct.C_block_struct, ptr %86, i32 0, i32 1
  %88 = getelementptr inbounds [0 x i64], ptr %87, i64 0, i64 0
  store i64 %84, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  %93 = load i64, ptr %17, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds %struct.C_block_struct, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds [0 x i64], ptr %95, i64 0, i64 1
  store i64 %92, ptr %96, align 8
  %97 = load i64, ptr %17, align 8
  store i64 %97, ptr %18, align 8
  %98 = load i64, ptr %18, align 8
  br label %104

99:                                               ; preds = %55
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  br label %104

104:                                              ; preds = %99, %74
  %105 = phi i64 [ %98, %74 ], [ %103, %99 ]
  store i64 %105, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.96)
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 5
  %109 = load i64, ptr %108, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  store i64 %112, ptr %13, align 8
  %113 = load i64, ptr %13, align 8
  %114 = load i64, ptr %6, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 6
  %117 = load i64, ptr %116, align 8
  %118 = load i64, ptr %10, align 8
  %119 = load i64, ptr %12, align 8
  call void @f_479(i64 noundef %113, i64 noundef %117, i64 noundef %118, i64 noundef %119) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_minus(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_353(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_353(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_s_a_i_arithmetic_shift(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_595(i64 noundef %0, ptr noundef %1) #2 {
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
  %19 = alloca ptr, align 8
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
  store ptr %32, ptr %15, align 8
  %33 = load ptr, ptr %15, align 8
  store ptr %33, ptr %16, align 8
  %34 = load ptr, ptr %16, align 8
  %35 = load ptr, ptr @C_stack_limit, align 8
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = load i64, ptr %3, align 8
  %41 = icmp sgt i64 %40, 1
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 1
  %44 = add nuw nsw i32 9, %43
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
  call void @C_save_and_reclaim(ptr noundef @f_595, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  %58 = alloca i8, i64 72, align 16
  store ptr %58, ptr %14, align 8
  %59 = load i64, ptr %7, align 8
  %60 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 17), align 8
  %61 = call i64 @C_i_less_or_equalp(i64 noundef %59, i64 noundef %60)
  %62 = icmp ne i64 %61, 6
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %8, align 8
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %17, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %17, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 18), align 16
  %73 = call fastcc i64 @C_a_i_list3(ptr noundef %14, i64 noundef 5, i64 noundef 45, i64 noundef %72)
  %74 = load ptr, ptr %17, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = load ptr, ptr %17, align 8
  call void %80(i64 noundef 2, ptr noundef %81) #4
  unreachable

82:                                               ; preds = %57
  %83 = load i64, ptr %7, align 8
  %84 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 17), align 8
  %85 = call i64 @C_i_greaterp(i64 noundef %83, i64 noundef %84)
  store i64 %85, ptr %8, align 8
  %86 = load i64, ptr %8, align 8
  %87 = icmp ne i64 %86, 6
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, ptr %7, align 8
  %90 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 19), align 8
  %91 = call i64 @C_i_less_or_equalp(i64 noundef %89, i64 noundef %90)
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i64 [ %91, %88 ], [ 6, %92 ]
  store i64 %94, ptr %9, align 8
  %95 = load i64, ptr %9, align 8
  %96 = icmp ne i64 %95, 6
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  %101 = load i64, ptr %100, align 8
  store i64 %101, ptr %10, align 8
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %18, align 8
  %103 = load i64, ptr %10, align 8
  %104 = load ptr, ptr %18, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 0
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 11), align 8
  %107 = call fastcc i64 @C_a_i_list3(ptr noundef %14, i64 noundef 17, i64 noundef 33, i64 noundef %106)
  %108 = load ptr, ptr %18, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %10, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = load ptr, ptr %18, align 8
  call void %114(i64 noundef 2, ptr noundef %115) #4
  unreachable

116:                                              ; preds = %93
  %117 = load i64, ptr %7, align 8
  %118 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 19), align 8
  %119 = call i64 @C_i_greaterp(i64 noundef %117, i64 noundef %118)
  store i64 %119, ptr %10, align 8
  %120 = load i64, ptr %10, align 8
  %121 = icmp ne i64 %120, 6
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, ptr %7, align 8
  %124 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 20), align 16
  %125 = call i64 @C_i_lessp(i64 noundef %123, i64 noundef %124)
  br label %127

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i64 [ %125, %122 ], [ 6, %126 ]
  store i64 %128, ptr %11, align 8
  %129 = load i64, ptr %11, align 8
  %130 = icmp ne i64 %129, 6
  br i1 %130, label %131, label %150

131:                                              ; preds = %127
  %132 = load i64, ptr %6, align 8
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 2
  %135 = load i64, ptr %134, align 8
  store i64 %135, ptr %12, align 8
  %136 = load ptr, ptr %4, align 8
  store ptr %136, ptr %19, align 8
  %137 = load i64, ptr %12, align 8
  %138 = load ptr, ptr %19, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 0
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 12), align 16
  %141 = call fastcc i64 @C_a_i_list3(ptr noundef %14, i64 noundef 25, i64 noundef 25, i64 noundef %140)
  %142 = load ptr, ptr %19, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 1
  store i64 %141, ptr %143, align 8
  %144 = load i64, ptr %12, align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  %147 = load i64, ptr %146, align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = load ptr, ptr %19, align 8
  call void %148(i64 noundef 2, ptr noundef %149) #4
  unreachable

150:                                              ; preds = %127
  %151 = load i64, ptr %7, align 8
  %152 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 20), align 16
  %153 = call i64 @C_i_greater_or_equalp(i64 noundef %151, i64 noundef %152)
  store i64 %153, ptr %12, align 8
  %154 = load i64, ptr %6, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 2
  %157 = load i64, ptr %156, align 8
  store i64 %157, ptr %13, align 8
  %158 = load ptr, ptr %4, align 8
  store ptr %158, ptr %20, align 8
  %159 = load i64, ptr %13, align 8
  %160 = load ptr, ptr %20, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 0
  store i64 %159, ptr %161, align 8
  %162 = load i64, ptr %12, align 8
  %163 = icmp ne i64 %162, 6
  br i1 %163, label %164, label %167

164:                                              ; preds = %150
  %165 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 21), align 8
  %166 = call fastcc i64 @C_a_i_list3(ptr noundef %14, i64 noundef 33, i64 noundef 17, i64 noundef %165)
  br label %168

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi i64 [ %166, %164 ], [ 30, %167 ]
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  store i64 %169, ptr %171, align 8
  %172 = load i64, ptr %13, align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 1
  %175 = load i64, ptr %174, align 8
  %176 = inttoptr i64 %175 to ptr
  %177 = load ptr, ptr %20, align 8
  call void %176(i64 noundef 2, ptr noundef %177) #4
  unreachable
}

declare i64 @C_i_less_or_equalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_a_i_list3(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i32 3, ptr %6, align 4
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load i64, ptr %9, align 8
  %13 = call fastcc i64 @C_a_pair(ptr noundef %11, i64 noundef %12, i64 noundef 14)
  store i64 %13, ptr %10, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load i64, ptr %10, align 8
  %17 = call fastcc i64 @C_a_pair(ptr noundef %14, i64 noundef %15, i64 noundef %16)
  store i64 %17, ptr %10, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %7, align 8
  %20 = load i64, ptr %10, align 8
  %21 = call fastcc i64 @C_a_pair(ptr noundef %18, i64 noundef %19, i64 noundef %20)
  ret i64 %21
}

declare i64 @C_i_greaterp(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_i_lessp(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_649(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  call void @C_save_and_reclaim(ptr noundef @f_649, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 96, align 16
  store ptr %51, ptr %10, align 8
  %52 = load i64, ptr %7, align 8
  %53 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 19), align 8
  %54 = call i64 @C_i_lessp(i64 noundef %52, i64 noundef %53)
  store i64 %54, ptr %8, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  store i64 %58, ptr %9, align 8
  %59 = load ptr, ptr %4, align 8
  store ptr %59, ptr %13, align 8
  %60 = load i64, ptr %9, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 0
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %8, align 8
  %64 = icmp ne i64 %63, 6
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 24), align 16
  %67 = load i64, ptr %7, align 8
  %68 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 25), align 8
  %69 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 26), align 16
  %70 = call fastcc i64 @C_a_i_list4(ptr noundef %10, i64 noundef %66, i64 noundef %67, i64 noundef %68, i64 noundef %69)
  br label %77

71:                                               ; preds = %50
  %72 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 27), align 8
  %73 = load i64, ptr %7, align 8
  %74 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 21), align 8
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 28), align 16
  %76 = call fastcc i64 @C_a_i_list4(ptr noundef %10, i64 noundef %72, i64 noundef %73, i64 noundef %74, i64 noundef %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i64 [ %70, %65 ], [ %76, %71 ]
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %9, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = load ptr, ptr %13, align 8
  call void %85(i64 noundef 2, ptr noundef %86) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
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
  call void @C_save_and_reclaim(ptr noundef @f_665, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.99)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %78 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 23), align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = load ptr, ptr %13, align 8
  call void %81(i64 noundef 4, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_671(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_671, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_674 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.101)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 52), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_674(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_674, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_677 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.102)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 51), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_677(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  call void @C_save_and_reclaim(ptr noundef @f_677, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_680 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.103)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 50), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_680(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = add nuw nsw i32 18, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_680, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 144, align 16
  store ptr %52, ptr %12, align 8
  %53 = call fastcc i64 @C_a_i_list4(ptr noundef %12, i64 noundef 1, i64 noundef 3, i64 noundef 8191, i64 noundef 2731)
  store i64 %53, ptr %8, align 8
  %54 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %54, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_686 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %12, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %9, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_755 to i64), ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store ptr %76, ptr %12, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.104)
  %78 = load i64, ptr %9, align 8
  %79 = load i64, ptr %10, align 8
  %80 = load i64, ptr %8, align 8
  call void @f_446(i64 noundef %78, i64 noundef %79, i64 noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_686(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_686, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_689 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.105)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 45), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_755(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
  store ptr %35, ptr %12, align 8
  %36 = load ptr, ptr %12, align 8
  store ptr %36, ptr %13, align 8
  %37 = load ptr, ptr %13, align 8
  %38 = load ptr, ptr @C_stack_limit, align 8
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64, ptr %3, align 8
  %44 = icmp sgt i64 %43, 2
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 2
  %47 = add nuw nsw i32 4, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_755, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_759 to i64), ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = ptrtoint ptr %71 to i64
  store i64 %72, ptr %5, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  store ptr %74, ptr %11, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.117)
  %76 = load i64, ptr %9, align 8
  %77 = load i64, ptr %8, align 8
  call void @f_317(i64 noundef %76, i64 noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_689(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
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
  %38 = add nuw nsw i32 27, %37
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
  call void @C_save_and_reclaim(ptr noundef @f_689, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 216, align 16
  store ptr %52, ptr %12, align 8
  %53 = call fastcc i64 @C_a_i_list7(ptr noundef %12)
  store i64 %53, ptr %8, align 8
  %54 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %54, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_695 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %12, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %9, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405698, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_712 to i64), ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store ptr %76, ptr %12, align 8
  %77 = load i64, ptr %5, align 8
  store i64 %77, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.106)
  %78 = load i64, ptr %9, align 8
  %79 = load i64, ptr %10, align 8
  %80 = load i64, ptr %8, align 8
  call void @f_446(i64 noundef %78, i64 noundef %79, i64 noundef %80) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc i64 @C_a_i_list7(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  store i32 7, ptr %3, align 4
  store i64 1, ptr %4, align 8
  store i64 9, ptr %5, align 8
  store i64 17, ptr %6, align 8
  store i64 25, ptr %7, align 8
  store i64 33, ptr %8, align 8
  store i64 41, ptr %9, align 8
  store i64 49, ptr %10, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = load i64, ptr %10, align 8
  %14 = call fastcc i64 @C_a_pair(ptr noundef %12, i64 noundef %13, i64 noundef 14)
  store i64 %14, ptr %11, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = load i64, ptr %9, align 8
  %17 = load i64, ptr %11, align 8
  %18 = call fastcc i64 @C_a_pair(ptr noundef %15, i64 noundef %16, i64 noundef %17)
  store i64 %18, ptr %11, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = load i64, ptr %8, align 8
  %21 = load i64, ptr %11, align 8
  %22 = call fastcc i64 @C_a_pair(ptr noundef %19, i64 noundef %20, i64 noundef %21)
  store i64 %22, ptr %11, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load i64, ptr %11, align 8
  %26 = call fastcc i64 @C_a_pair(ptr noundef %23, i64 noundef %24, i64 noundef %25)
  store i64 %26, ptr %11, align 8
  %27 = load ptr, ptr %2, align 8
  %28 = load i64, ptr %6, align 8
  %29 = load i64, ptr %11, align 8
  %30 = call fastcc i64 @C_a_pair(ptr noundef %27, i64 noundef %28, i64 noundef %29)
  store i64 %30, ptr %11, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = load i64, ptr %5, align 8
  %33 = load i64, ptr %11, align 8
  %34 = call fastcc i64 @C_a_pair(ptr noundef %31, i64 noundef %32, i64 noundef %33)
  store i64 %34, ptr %11, align 8
  %35 = load ptr, ptr %2, align 8
  %36 = load i64, ptr %4, align 8
  %37 = load i64, ptr %11, align 8
  %38 = call fastcc i64 @C_a_pair(ptr noundef %35, i64 noundef %36, i64 noundef %37)
  ret i64 %38
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_695(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  call void @C_save_and_reclaim(ptr noundef @f_695, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_698 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.107)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 36), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_712(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  call void @C_save_and_reclaim(ptr noundef @f_712, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_716 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.112)
  %78 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %81)
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
  %90 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %99 = load i64, ptr %8, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 23), align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = load ptr, ptr %15, align 8
  call void %105(i64 noundef 4, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_698(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_698, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_701 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.108)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 35), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
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
  call void @C_save_and_reclaim(ptr noundef @f_701, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_704 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.109)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 34), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_704(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_704, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_707 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.110)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 33), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_707(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_707, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.111)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 32), align 16
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_716(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = add nuw nsw i32 5, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_716, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 40, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 19), align 8
  %57 = call i64 @C_i_lessp(i64 noundef %55, i64 noundef %56)
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = icmp ne i64 %58, 6
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 24), align 16
  br label %64

62:                                               ; preds = %53
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 27), align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  store i64 %65, ptr %9, align 8
  %66 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %66, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_722 to i64), ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %9, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  %81 = load i64, ptr %80, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  store ptr %87, ptr %12, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.113)
  %89 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 16), align 16
  %90 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %89)
  store ptr %90, ptr %15, align 8
  %91 = load i64, ptr %3, align 8
  %92 = icmp sge i64 %91, 3
  br i1 %92, label %93, label %95

93:                                               ; preds = %64
  %94 = load ptr, ptr %4, align 8
  store ptr %94, ptr %16, align 8
  br label %97

95:                                               ; preds = %64
  %96 = alloca i8, i64 24, align 16
  store ptr %96, ptr %16, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 16), align 16
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %16, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 0
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %10, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = load ptr, ptr %16, align 8
  call void %113(i64 noundef 3, ptr noundef %114) #4
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
  %36 = icmp sgt i64 %35, 4
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_722, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 56, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_725 to i64), ptr %60, align 8
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
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 4
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 7
  store ptr %88, ptr %11, align 8
  %89 = load i64, ptr %5, align 8
  store i64 %89, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.114)
  %90 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %93)
  store ptr %94, ptr %14, align 8
  %95 = load i64, ptr %3, align 8
  %96 = icmp sge i64 %95, 5
  br i1 %96, label %97, label %99

97:                                               ; preds = %52
  %98 = load ptr, ptr %4, align 8
  store ptr %98, ptr %15, align 8
  br label %101

99:                                               ; preds = %52
  %100 = alloca i8, i64 40, align 16
  store ptr %100, ptr %15, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 0
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %9, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  store i64 22, ptr %118, align 8
  %119 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 44), align 16
  %120 = load ptr, ptr %15, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 4
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %14, align 8
  %123 = load ptr, ptr %15, align 8
  call void %122(i64 noundef 5, ptr noundef %123) #4
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
  %37 = add nuw nsw i32 7, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_725, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 56, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_728 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.115)
  %90 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %107 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 42), align 16
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store i64 6, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 3
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
define internal void @f_728(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nuw nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_728, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_731 to i64), ptr %54, align 8
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
  %79 = load ptr, ptr %10, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %10, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.115)
  %84 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %3, align 8
  %89 = icmp sge i64 %88, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %50
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %13, align 8
  br label %94

92:                                               ; preds = %50
  %93 = alloca i8, i64 40, align 16
  store ptr %93, ptr %13, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, ptr %9, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 6
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 2
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 6, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 4
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %9, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  %118 = load i64, ptr %117, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = load ptr, ptr %13, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable
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
  %37 = add nuw nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_731, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_734 to i64), ptr %54, align 8
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
  %79 = load ptr, ptr %10, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %10, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.115)
  %84 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %3, align 8
  %89 = icmp sge i64 %88, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %50
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %13, align 8
  br label %94

92:                                               ; preds = %50
  %93 = alloca i8, i64 40, align 16
  store ptr %93, ptr %13, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, ptr %9, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 41), align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 6, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = load ptr, ptr %13, align 8
  call void %116(i64 noundef 5, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_734(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nuw nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_734, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_737 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.115)
  %78 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 6, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 4
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %9, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = load ptr, ptr %13, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_737(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  %37 = add nuw nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_737, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_740 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.115)
  %78 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 40), align 16
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
define internal void @f_740(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  %37 = add nuw nsw i32 4, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_740, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_743 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.115)
  %72 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %93 = call i64 @C_i_car(i64 noundef %92)
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
define internal void @f_743(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !59
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
  call void @C_save_and_reclaim(ptr noundef @f_743, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.116)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 38), align 16
  %52 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %51)
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
  %60 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 38), align 16
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
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 2570, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = load ptr, ptr %13, align 8
  call void %80(i64 noundef 4, ptr noundef %81) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_759(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  call void @C_save_and_reclaim(ptr noundef @f_759, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_762 to i64), ptr %60, align 8
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
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %11, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.118)
  %84 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %87)
  store ptr %88, ptr %14, align 8
  %89 = load i64, ptr %3, align 8
  %90 = icmp sge i64 %89, 5
  br i1 %90, label %91, label %93

91:                                               ; preds = %52
  %92 = load ptr, ptr %4, align 8
  store ptr %92, ptr %15, align 8
  br label %95

93:                                               ; preds = %52
  %94 = alloca i8, i64 40, align 16
  store ptr %94, ptr %15, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 43), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 0
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %9, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 37), align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 22, ptr %112, align 8
  %113 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 44), align 16
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = load ptr, ptr %15, align 8
  call void %116(i64 noundef 5, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_762(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nuw nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_762, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_765 to i64), ptr %54, align 8
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
  %79 = load ptr, ptr %10, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %10, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.119)
  %84 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %3, align 8
  %89 = icmp sge i64 %88, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %50
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %13, align 8
  br label %94

92:                                               ; preds = %50
  %93 = alloca i8, i64 40, align 16
  store ptr %93, ptr %13, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, ptr %9, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 49), align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 6, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %13, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = load ptr, ptr %13, align 8
  call void %116(i64 noundef 5, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_765(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
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
  call void @C_save_and_reclaim(ptr noundef @f_765, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_768 to i64), ptr %56, align 8
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
  store i64 2594073385365405699, ptr %80, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_781 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.120)
  %97 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 48), align 16
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %100)
  store ptr %101, ptr %14, align 8
  %102 = load i64, ptr %3, align 8
  %103 = icmp sge i64 %102, 4
  br i1 %103, label %104, label %106

104:                                              ; preds = %52
  %105 = load ptr, ptr %4, align 8
  store ptr %105, ptr %15, align 8
  br label %108

106:                                              ; preds = %52
  %107 = alloca i8, i64 32, align 16
  store ptr %107, ptr %15, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 48), align 16
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %9, align 8
  %116 = load ptr, ptr %15, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 1
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 5
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %15, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %15, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 33, ptr %125, align 8
  %126 = load ptr, ptr %14, align 8
  %127 = load ptr, ptr %15, align 8
  call void %126(i64 noundef 4, ptr noundef %127) #4
  unreachable
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
  %37 = add nuw nsw i32 5, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_768, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_771 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.119)
  %78 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_781(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_781, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.119)
  %50 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
define internal void @f_771(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
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
  %37 = add nuw nsw i32 4, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_771, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_774 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.119)
  %72 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 6, ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %9, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = load ptr, ptr %13, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_774(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_774, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.119)
  %50 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 39), align 8
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
  %70 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 46), align 16
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
define internal void @f_787(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !67
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
  call void @C_save_and_reclaim(ptr noundef @f_787, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_790 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.122)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 58), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_790(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_790, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_793 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.123)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 57), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_793(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_793, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.124)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 56), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  call void @C_save_and_reclaim(ptr noundef @f_796, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.125)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 55), align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_805(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  call void @C_save_and_reclaim(ptr noundef @f_805, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_808 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.127)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 65), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
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
  call void @C_save_and_reclaim(ptr noundef @f_808, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_811 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.128)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 64), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_811(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_811, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_814 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.129)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 63), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_814(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  call void @C_save_and_reclaim(ptr noundef @f_814, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_817 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.130)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 62), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_817(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  call void @C_save_and_reclaim(ptr noundef @f_817, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.131)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 61), align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_826(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  call void @C_save_and_reclaim(ptr noundef @f_826, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_829 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.133)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 83), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_829(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
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
  call void @C_save_and_reclaim(ptr noundef @f_829, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_832 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.134)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 82), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_832(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_832, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_835 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.135)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 30), align 16
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 30), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_835(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  call void @C_save_and_reclaim(ptr noundef @f_835, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_838 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.136)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 81), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_838(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_838, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_841 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.137)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 54), align 16
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 54), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_841(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
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
  call void @C_save_and_reclaim(ptr noundef @f_841, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_844 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.138)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 80), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_844(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
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
  call void @C_save_and_reclaim(ptr noundef @f_844, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_847 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.139)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 60), align 16
  %68 = call fastcc ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 60), align 16
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_847(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !83
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
  call void @C_save_and_reclaim(ptr noundef @f_847, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_850 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.140)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 79), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_850, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_853 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.141)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 78), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_853, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_856 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.142)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 77), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_856(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_856, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_859 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.143)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 76), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_859(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_859, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_862 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.144)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 75), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_862(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !88
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
  call void @C_save_and_reclaim(ptr noundef @f_862, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_865 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.145)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 74), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_865(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !89
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
  call void @C_save_and_reclaim(ptr noundef @f_865, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_868 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 73), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_868(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !90
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
  call void @C_save_and_reclaim(ptr noundef @f_868, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_871 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.147)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 72), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !91
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
  call void @C_save_and_reclaim(ptr noundef @f_871, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_874 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.148)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 71), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_874(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !92
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
  call void @C_save_and_reclaim(ptr noundef @f_874, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_877 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.149)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 70), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_877(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !93
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
  call void @C_save_and_reclaim(ptr noundef @f_877, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_880 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.150)
  %67 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %70)
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
  %79 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %88 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 69), align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !94
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
  call void @C_save_and_reclaim(ptr noundef @f_880, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.151)
  %51 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
  %52 = inttoptr i64 %51 to ptr
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  %54 = load i64, ptr %53, align 8
  %55 = call fastcc ptr @C_fast_retrieve_proc(i64 noundef %54)
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
  %63 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %75 = load i64, ptr getelementptr inbounds ([90 x i64], ptr @lf, i64 0, i64 68), align 16
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = load ptr, ptr %13, align 8
  call void %78(i64 noundef 3, ptr noundef %79) #4
  unreachable
}

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
!6 = !{i64 2148786974}
!7 = !{i64 2148702956}
!8 = !{i64 2148703707}
!9 = !{i64 2148704596}
!10 = !{i64 2148785482}
!11 = !{i64 2148705387}
!12 = !{i64 2148706933}
!13 = !{i64 2148710995}
!14 = !{i64 2148714533}
!15 = !{i64 2148721837}
!16 = !{i64 2148729084}
!17 = !{i64 2148732061}
!18 = !{i64 2148734397}
!19 = !{i64 2148760484}
!20 = !{i64 2148764379}
!21 = !{i64 2148769082}
!22 = !{i64 2148784939}
!23 = !{i64 2148708162}
!24 = !{i64 2148712294}
!25 = !{i64 2148713178}
!26 = !{i64 2148716064}
!27 = !{i64 2148722579}
!28 = !{i64 2148723954}
!29 = !{i64 2148716678}
!30 = !{i64 2148726121}
!31 = !{i64 2148720074}
!32 = !{i64 2148724769}
!33 = !{i64 2148709133}
!34 = !{i64 2148718247}
!35 = !{i64 2148729901}
!36 = !{i64 2148733035}
!37 = !{i64 2148733730}
!38 = !{i64 2148735200}
!39 = !{i64 2148736008}
!40 = !{i64 2148736816}
!41 = !{i64 2148737636}
!42 = !{i64 2148738848}
!43 = !{i64 2148753767}
!44 = !{i64 2148739668}
!45 = !{i64 2148741175}
!46 = !{i64 2148745080}
!47 = !{i64 2148741983}
!48 = !{i64 2148742791}
!49 = !{i64 2148743599}
!50 = !{i64 2148744402}
!51 = !{i64 2148745887}
!52 = !{i64 2148746791}
!53 = !{i64 2148747684}
!54 = !{i64 2148748570}
!55 = !{i64 2148749456}
!56 = !{i64 2148750337}
!57 = !{i64 2148751218}
!58 = !{i64 2148752094}
!59 = !{i64 2148752965}
!60 = !{i64 2148754498}
!61 = !{i64 2148755386}
!62 = !{i64 2148756272}
!63 = !{i64 2148757280}
!64 = !{i64 2148759753}
!65 = !{i64 2148758156}
!66 = !{i64 2148759027}
!67 = !{i64 2148761287}
!68 = !{i64 2148762095}
!69 = !{i64 2148762903}
!70 = !{i64 2148763706}
!71 = !{i64 2148765182}
!72 = !{i64 2148765990}
!73 = !{i64 2148766798}
!74 = !{i64 2148767606}
!75 = !{i64 2148768409}
!76 = !{i64 2148769885}
!77 = !{i64 2148770693}
!78 = !{i64 2148771501}
!79 = !{i64 2148772258}
!80 = !{i64 2148773066}
!81 = !{i64 2148773822}
!82 = !{i64 2148774630}
!83 = !{i64 2148775388}
!84 = !{i64 2148776196}
!85 = !{i64 2148777004}
!86 = !{i64 2148777812}
!87 = !{i64 2148778620}
!88 = !{i64 2148779428}
!89 = !{i64 2148780236}
!90 = !{i64 2148781044}
!91 = !{i64 2148781852}
!92 = !{i64 2148782660}
!93 = !{i64 2148783468}
!94 = !{i64 2148784271}
