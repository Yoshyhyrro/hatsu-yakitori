; ModuleID = '/tmp/hatsu-llvm-witt_foundation-3179/witt_foundation.c'
source_filename = "/tmp/hatsu-llvm-witt_foundation-3179/witt_foundation.c"
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
@lf = internal global [84 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"witt_foundation#\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"witt_foundation#make-witt-context\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"witt-context\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"srfi-69#make-hash-table\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"witt_foundation#witt-context?\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"witt_foundation#octad-from-points\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"witt_foundation#points-from-octad\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"witt_foundation#octad-complement\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"witt_foundation#octad-intersection\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"witt_foundation#octad-weight\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"witt_foundation#octad-class\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"trivial\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"octad\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dodecad\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"octad-compl\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"dual-trivial\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"intermediate\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"witt_foundation#witt-generators-m24\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"witt_foundation#witt-automorphism\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"\FEB\00\00\17Invalid generator index\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"witt_foundation#witt-apply-automorphism\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"witt_foundation#witt-orbit\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-keys\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-set!\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"srfi-69#hash-table-ref/default\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"witt_foundation#witt-cartan-levels\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"srfi-1#filter\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"scheme#vector->list\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"\FEU24.0\00\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"scheme#round\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"scheme#exp\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"scheme#log\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"witt_foundation#octad-at-level\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"witt_foundation#level-preserving-partition\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"witt_foundation#graph-respects-witt?\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"witt_foundation#kak-preserves-witt?\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"witt_foundation#gc-respects-witt-topology?\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"witt_foundation#validate-witt-structure\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"##sys#standard-output\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"##sys#write-char-0\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"##sys#print\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"\FEB\00\00&=== WITT FOUNDATION TESTS COMPLETE ===\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"##sys#check-output-port\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"\FEB\00\00\14  Number of scales: \00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"\FEB\00\00\1DTest 4: Cartan \C3\97 Witt Levels\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"\FEB\00\00\0B (Witt \E2\9C\93)\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"\FEB\00\00\14  Preserved weight: \00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"scheme#number->string\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"\FEB\00\00\11  Transformed: 0x\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"\FEB\00\00\11  Original:    0x\00", align 1
@.str.55 = private unnamed_addr constant [100 x i8] c"\FE\03\00\00\02\FE\FF\01\00\00\00\00\FE\03\00\00\02\FE\FF\01\00\00\00\01\FE\03\00\00\02\FE\FF\01\00\00\00\02\FE\03\00\00\02\FE\FF\01\00\00\00\03\FE\03\00\00\02\FE\FF\01\00\00\00\04\FE\03\00\00\02\FE\FF\01\00\00\00\05\FE\03\00\00\02\FE\FF\01\00\00\00\06\FE\03\00\00\02\FE\FF\01\00\00\00\07\FE\FF\0E\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"\FEB\00\00\1ATest 3: M_24 Automorphisms\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"\FEB\00\00\09  Class: \00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"\FEB\00\00\0A  Weight: \00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"\FEB\00\00\0A  Points: \00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"\FEB\00\00\15  Oct from {0..7}: 0x\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"\FEB\00\00\18Test 2: Octad Primitives\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"\FEB\00\00\06 / 759\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"\FEB\00\00\0A  Octads: \00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"\FEB\00\00\09\E2\9C\93 valid\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\FEB\00\00\0B\E2\9C\97 invalid\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\FEB\00\00\0B  Created: \00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"\FEB\00\00\1DTest 1: Witt Context Creation\00", align 1
@.str.68 = private unnamed_addr constant [141 x i8] c"\FEB\00\00\87\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\E2\94\81\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"\FEB\00\000\E2\95\91 WITT FOUNDATION - Core Tests             \E2\95\91\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"scheme#make-vector\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"witt_foundation\00", align 1
@.str.77 = private unnamed_addr constant [1398 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01make-witt-context\FE\01\00\00!\01witt_foundation#make-witt-context\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0D\01witt-context?\FE\01\00\00\1D\01witt_foundation#witt-context?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01octad-from-points\FE\01\00\00!\01witt_foundation#octad-from-points\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01points-from-octad\FE\01\00\00!\01witt_foundation#points-from-octad\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01octad-complement\FE\01\00\00 \01witt_foundation#octad-complement\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\12\01octad-intersection\FE\01\00\00\22\01witt_foundation#octad-intersection\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0C\01octad-weight\FE\01\00\00\1C\01witt_foundation#octad-weight\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0B\01octad-class\FE\01\00\00\1B\01witt_foundation#octad-class\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01witt-automorphism\FE\01\00\00!\01witt_foundation#witt-automorphism\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\17\01witt-apply-automorphism\FE\01\00\00'\01witt_foundation#witt-apply-automorphism\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01witt-generators-m24\FE\01\00\00#\01witt_foundation#witt-generators-m24\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0A\01witt-orbit\FE\01\00\00\1A\01witt_foundation#witt-orbit\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\12\01witt-cartan-levels\FE\01\00\00\22\01witt_foundation#witt-cartan-levels\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\0E\01octad-at-level\FE\01\00\00\1E\01witt_foundation#octad-at-level\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1A\01level-preserving-partition\FE\01\00\00*\01witt_foundation#level-preserving-partition\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01graph-respects-witt?\FE\01\00\00$\01witt_foundation#graph-respects-witt?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01kak-preserves-witt?\FE\01\00\00#\01witt_foundation#kak-preserves-witt?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\1A\01gc-respects-witt-topology?\FE\01\00\00*\01witt_foundation#gc-respects-witt-topology?\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\17\01validate-witt-structure\FE\01\00\00'\01witt_foundation#validate-witt-structure\FE\FF\0E\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@li37 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1676)\00", align 16
@.str.79 = private unnamed_addr constant [47 x i8] c"witt_foundation.scm:11: ##sys#with-environment\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"witt_foundation.scm:44: chicken.load#load-extension\00", align 1
@li0 = internal global [48 x i8] c"#\00\00\00\00\00\00M(witt_foundation#make-witt-context)\00\00\00\00\00", align 16
@li1 = internal global [48 x i8] c"#\00\00\00\00\00\00M(witt_foundation#witt-context? obj)\00\00\00\00\00", align 16
@li3 = internal global [48 x i8] c"\22\00\00\00\00\00\00M(witt_foundation#hamming-weight n)\00\00\00\00\00\00", align 16
@li5 = internal global [48 x i8] c"'\00\00\00\00\00\00M(witt_foundation#octad-from-points pts)\00", align 16
@li7 = internal global [56 x i8] c")\00\00\00\00\00\00M(witt_foundation#points-from-octad octad)\00\00\00\00\00\00\00", align 16
@li8 = internal global [48 x i8] c"(\00\00\00\00\00\00M(witt_foundation#octad-complement octad)", align 16
@li9 = internal global [56 x i8] c".\00\00\00\00\00\00M(witt_foundation#octad-intersection oct1 oct2)\00\00", align 16
@li10 = internal global [48 x i8] c"$\00\00\00\00\00\00M(witt_foundation#octad-weight octad)\00\00\00\00", align 16
@li11 = internal global [48 x i8] c"#\00\00\00\00\00\00M(witt_foundation#octad-class octad)\00\00\00\00\00", align 16
@li16 = internal global [40 x i8] c" \00\00\00\00\00\00M(witt_foundation#m24-generators)", align 16
@li17 = internal global [48 x i8] c"%\00\00\00\00\00\00M(witt_foundation#witt-generators-m24)\00\00\00", align 16
@li18 = internal global [56 x i8] c"+\00\00\00\00\00\00M(witt_foundation#witt-automorphism gen-idx)\00\00\00\00\00", align 16
@li20 = internal global [64 x i8] c"4\00\00\00\00\00\00M(witt_foundation#witt-apply-automorphism auto octad)\00\00\00\00", align 16
@li23 = internal global [56 x i8] c")\00\00\00\00\00\00M(witt_foundation#witt-orbit octad . rest)\00\00\00\00\00\00\00", align 16
@li26 = internal global [56 x i8] c"0\00\00\00\00\00\00M(witt_foundation#witt-cartan-levels B steps ctx)", align 16
@li27 = internal global [56 x i8] c".\00\00\00\00\00\00M(witt_foundation#octad-at-level ctx level-idx)\00\00", align 16
@li28 = internal global [64 x i8] c"6\00\00\00\00\00\00M(witt_foundation#level-preserving-partition graph ctx)\00\00", align 16
@li29 = internal global [56 x i8] c"0\00\00\00\00\00\00M(witt_foundation#graph-respects-witt? graph ctx)", align 16
@li30 = internal global [56 x i8] c"0\00\00\00\00\00\00M(witt_foundation#kak-preserves-witt? decomp ctx)", align 16
@li31 = internal global [64 x i8] c"8\00\00\00\00\00\00M(witt_foundation#gc-respects-witt-topology? gc-plan ctx)", align 16
@li32 = internal global [56 x i8] c"-\00\00\00\00\00\00M(witt_foundation#validate-witt-structure ctx)\00\00\00", align 16
@li36 = internal global [48 x i8] c"%\00\00\00\00\00\00M(witt_foundation#generate-all-octads)\00\00\00", align 16
@.str.81 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:70: generate-all-octads\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"witt_foundation.scm:71: m24-generators\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"witt_foundation.scm:72: srfi-69#make-hash-table\00", align 1
@.str.84 = private unnamed_addr constant [48 x i8] c"witt_foundation.scm:78: srfi-69#make-hash-table\00", align 1
@li2 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop code count)\00\00\00\00\00\00\00", align 16
@.str.85 = private unnamed_addr constant [29 x i8] c"witt_foundation.scm:96: loop\00", align 1
@li4 = internal global [24 x i8] c"\10\00\00\00\00\00\00M(loop ps result)", align 16
@.str.86 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:107: loop\00", align 1
@li6 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop bit points)\00\00\00\00\00\00\00", align 16
@.str.87 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:117: scheme#reverse\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"witt_foundation.scm:118: scheme#-\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:119: loop\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:136: hamming-weight\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:144: hamming-weight\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"witt_foundation.scm:156: octad-weight\00", align 1
@li12 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a832 p)", align 16
@li13 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a844 p)", align 16
@li14 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a859 p)", align 16
@li15 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a880 p)", align 16
@.str.93 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:202: m24-generators\00", align 1
@.str.94 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:210: m24-generators\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:213: chicken.base#error\00", align 1
@li19 = internal global [32 x i8] c"\11\00\00\00\00\00\00M(loop bit result)\00\00\00\00\00\00\00", align 16
@.str.96 = private unnamed_addr constant [34 x i8] c"witt_foundation.scm:226: scheme#-\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:227: auto\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:232: loop\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:241: m24-generators\00", align 1
@.str.100 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:242: srfi-69#make-hash-table\00", align 1
@li22 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(loop front count)\00\00\00\00\00\00", align 16
@.str.101 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:247: srfi-69#hash-table-keys\00", align 1
@.str.102 = private unnamed_addr constant [56 x i8] c"witt_foundation.scm:253: srfi-69#hash-table-ref/default\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:254: loop\00", align 1
@.str.104 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:257: srfi-69#hash-table-set!\00", align 1
@li21 = internal global [32 x i8] c"\16\00\00\00\00\00\00M(loop-gen gi new-octs)\00\00", align 16
@.str.105 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:268: loop\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:265: witt-apply-automorphism\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"witt_foundation.scm:264: loop-gen\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"witt_foundation.scm:292: scheme#log\00", align 1
@li25 = internal global [24 x i8] c"\0F\00\00\00\00\00\00M(loop k levels)\00", align 16
@.str.109 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:294: scheme#reverse\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"witt_foundation.scm:295: scheme#/\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"witt_foundation.scm:296: scheme#round\00", align 1
@li24 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(a1136 oct)\00\00\00\00\00", align 16
@.str.112 = private unnamed_addr constant [45 x i8] c"witt_foundation.scm:300: generate-all-octads\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:302: loop\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"witt_foundation.scm:299: octad-weight\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"witt_foundation.scm:298: srfi-1#filter\00", align 1
@.str.116 = private unnamed_addr constant [45 x i8] c"witt_foundation.scm:300: scheme#vector->list\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"witt_foundation.scm:295: scheme#exp\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"witt_foundation.scm:310: witt-context?\00", align 1
@.str.119 = private unnamed_addr constant [56 x i8] c"witt_foundation.scm:312: srfi-69#hash-table-ref/default\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:322: srfi-69#make-hash-table\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"witt_foundation.scm:372: witt-context?\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"witt_foundation.scm:374: graph-respects-witt?\00", align 1
@.str.123 = private unnamed_addr constant [45 x i8] c"witt_foundation.scm:375: kak-preserves-witt?\00", align 1
@li35 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(loop info)\00\00\00\00\00", align 16
@.str.124 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:432: ##sys#check-output-port\00", align 1
@.str.125 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:432: ##sys#print\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:432: ##sys#write-char-0\00", align 1
@.str.127 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:433: ##sys#check-output-port\00", align 1
@.str.128 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:433: ##sys#print\00", align 1
@.str.129 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:433: ##sys#write-char-0\00", align 1
@.str.130 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:434: ##sys#check-output-port\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:434: ##sys#print\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:434: ##sys#write-char-0\00", align 1
@.str.133 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:437: ##sys#check-output-port\00", align 1
@.str.134 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:437: ##sys#print\00", align 1
@.str.135 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:437: ##sys#write-char-0\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:438: make-witt-context\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:439: ##sys#check-output-port\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:439: ##sys#print\00", align 1
@.str.139 = private unnamed_addr constant [39 x i8] c"witt_foundation.scm:439: witt-context?\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:439: ##sys#write-char-0\00", align 1
@.str.141 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:440: ##sys#check-output-port\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:440: ##sys#print\00", align 1
@.str.143 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:440: ##sys#write-char-0\00", align 1
@.str.144 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:444: ##sys#check-output-port\00", align 1
@.str.145 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:444: ##sys#write-char-0\00", align 1
@.str.146 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:444: ##sys#print\00", align 1
@.str.147 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:445: octad-from-points\00", align 1
@.str.148 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:446: ##sys#check-output-port\00", align 1
@.str.149 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:446: ##sys#print\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"witt_foundation.scm:446: scheme#number->string\00", align 1
@.str.151 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:446: ##sys#write-char-0\00", align 1
@.str.152 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:447: ##sys#check-output-port\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:447: ##sys#print\00", align 1
@.str.154 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:447: points-from-octad\00", align 1
@.str.155 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:447: ##sys#write-char-0\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:448: ##sys#check-output-port\00", align 1
@.str.157 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:448: ##sys#print\00", align 1
@.str.158 = private unnamed_addr constant [38 x i8] c"witt_foundation.scm:448: octad-weight\00", align 1
@.str.159 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:448: ##sys#write-char-0\00", align 1
@.str.160 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:449: ##sys#check-output-port\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:449: ##sys#print\00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:449: octad-class\00", align 1
@.str.163 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:449: ##sys#write-char-0\00", align 1
@.str.164 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:452: ##sys#check-output-port\00", align 1
@.str.165 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:452: ##sys#write-char-0\00", align 1
@.str.166 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:452: ##sys#print\00", align 1
@.str.167 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:453: witt-automorphism\00", align 1
@.str.168 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:454: octad-from-points\00", align 1
@.str.169 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:455: witt-apply-automorphism\00", align 1
@.str.170 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:456: ##sys#check-output-port\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:456: ##sys#print\00", align 1
@.str.172 = private unnamed_addr constant [47 x i8] c"witt_foundation.scm:456: scheme#number->string\00", align 1
@.str.173 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:456: ##sys#write-char-0\00", align 1
@.str.174 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:457: ##sys#check-output-port\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:457: ##sys#print\00", align 1
@.str.176 = private unnamed_addr constant [47 x i8] c"witt_foundation.scm:457: scheme#number->string\00", align 1
@.str.177 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:457: ##sys#write-char-0\00", align 1
@.str.178 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:458: ##sys#check-output-port\00", align 1
@.str.179 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:458: ##sys#print\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"witt_foundation.scm:459: octad-weight\00", align 1
@.str.181 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:458: ##sys#write-char-0\00", align 1
@.str.182 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:462: ##sys#check-output-port\00", align 1
@.str.183 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:462: ##sys#write-char-0\00", align 1
@.str.184 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:462: ##sys#print\00", align 1
@.str.185 = private unnamed_addr constant [43 x i8] c"witt_foundation.scm:463: make-witt-context\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:464: witt-cartan-levels\00", align 1
@.str.187 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:465: ##sys#check-output-port\00", align 1
@.str.188 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:465: ##sys#print\00", align 1
@.str.189 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:465: ##sys#write-char-0\00", align 1
@.str.190 = private unnamed_addr constant [49 x i8] c"witt_foundation.scm:467: ##sys#check-output-port\00", align 1
@.str.191 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:467: ##sys#write-char-0\00", align 1
@.str.192 = private unnamed_addr constant [37 x i8] c"witt_foundation.scm:467: ##sys#print\00", align 1
@.str.193 = private unnamed_addr constant [41 x i8] c"witt_foundation#golay24-generator-matrix\00", align 1
@li33 = internal global [24 x i8] c"\0F\00\00\00\00\00\00M(loop i parity)\00", align 16
@.str.194 = private unnamed_addr constant [44 x i8] c"witt_foundation.scm:418: scheme#make-vector\00", align 1
@.str.195 = private unnamed_addr constant [40 x i8] c"witt_foundation.scm:411: hamming-weight\00", align 1
@.str.196 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:415: loop\00", align 1
@.str.197 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:416: loop\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"witt_foundation.scm:392: scheme#-\00", align 1
@.str.199 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:394: loop\00", align 1
@.str.200 = private unnamed_addr constant [30 x i8] c"witt_foundation.scm:395: loop\00", align 1
@li34 = internal global [32 x i8] c"\14\00\00\00\00\00\00M(copy-loop octs idx)\00\00\00\00", align 16
@.str.201 = private unnamed_addr constant [35 x i8] c"witt_foundation.scm:424: copy-loop\00", align 1
@.str.202 = private unnamed_addr constant [55 x i8] c"witt_foundation.scm:11: ##sys#register-compiled-module\00", align 1

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
  %71 = getelementptr inbounds i64, ptr %70, i64 803
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
  call void @C_rereclaim2(i64 noundef 6424, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 84)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 16, ptr noundef @.str.1)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), i32 noundef 33, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
  %89 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 2), i32 noundef 12, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 2), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), i32 noundef 23, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), i32 noundef 29, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), i32 noundef 33, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 9), i32 noundef 33, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 9), align 8
  %94 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), i32 noundef 14, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), align 16
  %95 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 11), i32 noundef 32, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 11), align 8
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 12), i32 noundef 34, ptr noundef @.str.10)
  store i64 %96, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 12), align 16
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), i32 noundef 28, ptr noundef @.str.11)
  store i64 %97, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 14), i32 noundef 27, ptr noundef @.str.12)
  store i64 %98, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 14), align 16
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 15), i32 noundef 7, ptr noundef @.str.13)
  store i64 %99, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 15), align 8
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 16), i32 noundef 5, ptr noundef @.str.14)
  store i64 %100, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 16), align 16
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 17), i32 noundef 7, ptr noundef @.str.15)
  store i64 %101, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 17), align 8
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 18), i32 noundef 11, ptr noundef @.str.16)
  store i64 %102, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 18), align 16
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 19), i32 noundef 12, ptr noundef @.str.17)
  store i64 %103, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 19), align 8
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 20), i32 noundef 12, ptr noundef @.str.18)
  store i64 %104, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 20), align 16
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 21), i32 noundef 35, ptr noundef @.str.19)
  store i64 %105, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 21), align 8
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 22), i32 noundef 33, ptr noundef @.str.20)
  store i64 %106, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 22), align 16
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 23), i32 noundef 18, ptr noundef @.str.21)
  store i64 %107, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 23), align 8
  %108 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.22)
  store i64 %108, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 24), align 16
  %109 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), i32 noundef 39, ptr noundef @.str.23)
  store i64 %109, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 26), i32 noundef 26, ptr noundef @.str.24)
  store i64 %110, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 26), align 16
  %111 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 27), i32 noundef 23, ptr noundef @.str.25)
  store i64 %111, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 27), align 8
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 28), i32 noundef 23, ptr noundef @.str.26)
  store i64 %112, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 28), align 16
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), i32 noundef 30, ptr noundef @.str.27)
  store i64 %113, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), align 8
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 30), i32 noundef 34, ptr noundef @.str.28)
  store i64 %114, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 30), align 16
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 31), i32 noundef 13, ptr noundef @.str.29)
  store i64 %115, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 31), align 8
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 32), i32 noundef 19, ptr noundef @.str.30)
  store i64 %116, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 32), align 16
  %117 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.31)
  store i64 %117, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 33), align 8
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 34), i32 noundef 12, ptr noundef @.str.32)
  store i64 %118, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 34), align 16
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 35), i32 noundef 10, ptr noundef @.str.33)
  store i64 %119, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 35), align 8
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 36), i32 noundef 8, ptr noundef @.str.34)
  store i64 %120, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 36), align 16
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 37), i32 noundef 10, ptr noundef @.str.35)
  store i64 %121, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 37), align 8
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 38), i32 noundef 30, ptr noundef @.str.36)
  store i64 %122, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 38), align 16
  %123 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 39), i32 noundef 42, ptr noundef @.str.37)
  store i64 %123, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 39), align 8
  %124 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 40), i32 noundef 36, ptr noundef @.str.38)
  store i64 %124, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 40), align 16
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 41), i32 noundef 35, ptr noundef @.str.39)
  store i64 %125, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 41), align 8
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 42), i32 noundef 42, ptr noundef @.str.40)
  store i64 %126, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 42), align 16
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 43), i32 noundef 39, ptr noundef @.str.41)
  store i64 %127, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 43), align 8
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), i32 noundef 21, ptr noundef @.str.42)
  store i64 %128, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), i32 noundef 18, ptr noundef @.str.43)
  store i64 %129, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), i32 noundef 11, ptr noundef @.str.44)
  store i64 %130, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
  %131 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %131, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 48), align 16
  %132 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), i32 noundef 23, ptr noundef @.str.46)
  store i64 %132, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), i32 noundef 6, ptr noundef @.str.47)
  store i64 %133, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %134 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.48)
  store i64 %134, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 51), align 8
  %135 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %135, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 52), align 16
  %136 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.50)
  store i64 %136, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 53), align 8
  %137 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.51)
  store i64 %137, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 54), align 16
  %138 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), i32 noundef 21, ptr noundef @.str.52)
  store i64 %138, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
  %139 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %139, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 56), align 16
  %140 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.54)
  store i64 %140, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 57), align 8
  %141 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %141, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 58), align 16
  %142 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.56)
  store i64 %142, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 59), align 8
  %143 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.57)
  store i64 %143, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 60), align 16
  %144 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.58)
  store i64 %144, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 61), align 8
  %145 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.59)
  store i64 %145, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 62), align 16
  %146 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.60)
  store i64 %146, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 63), align 8
  %147 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %147, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 64), align 16
  %148 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.61)
  store i64 %148, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 65), align 8
  %149 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.62)
  store i64 %149, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 66), align 16
  %150 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.63)
  store i64 %150, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 67), align 8
  %151 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.64)
  store i64 %151, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 68), align 16
  %152 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.65)
  store i64 %152, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 69), align 8
  %153 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.66)
  store i64 %153, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 70), align 16
  %154 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.67)
  store i64 %154, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 71), align 8
  %155 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.68)
  store i64 %155, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 72), align 16
  %156 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.69)
  store i64 %156, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 73), align 8
  %157 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.68)
  store i64 %157, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 74), align 16
  %158 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 75), i32 noundef 18, ptr noundef @.str.70)
  store i64 %158, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 75), align 8
  %159 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 76), i32 noundef 34, ptr noundef @.str.71)
  store i64 %159, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 76), align 16
  %160 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), i32 noundef 27, ptr noundef @.str.72)
  store i64 %160, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), align 8
  %161 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 78), i32 noundef 7, ptr noundef @.str.73)
  store i64 %161, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 78), align 16
  %162 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 79), i32 noundef 6, ptr noundef @.str.74)
  store i64 %162, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 79), align 8
  %163 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 80), i32 noundef 30, ptr noundef @.str.75)
  store i64 %163, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 80), align 16
  %164 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 81), i32 noundef 15, ptr noundef @.str.76)
  store i64 %164, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 81), align 8
  %165 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.77)
  store i64 %165, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 82), align 16
  %166 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 83), i32 noundef 22, ptr noundef @.str.78)
  store i64 %166, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 83), align 8
  %167 = call ptr @create_ptable()
  %168 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 84, ptr noundef %167)
  %169 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %169, align 8
  %170 = load ptr, ptr %10, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  store i64 ptrtoint (ptr @f_595 to i64), ptr %171, align 8
  %172 = load i64, ptr %7, align 8
  %173 = load ptr, ptr %10, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 2
  store i64 %172, ptr %174, align 8
  %175 = load ptr, ptr %10, align 8
  %176 = ptrtoint ptr %175 to i64
  store i64 %176, ptr %5, align 8
  %177 = load ptr, ptr %10, align 8
  %178 = getelementptr inbounds i64, ptr %177, i64 3
  store ptr %178, ptr %10, align 8
  %179 = load i64, ptr %5, align 8
  store i64 %179, ptr %8, align 8
  %180 = load ptr, ptr %4, align 8
  store ptr %180, ptr %14, align 8
  %181 = load ptr, ptr %14, align 8
  %182 = getelementptr inbounds i64, ptr %181, i64 0
  store i64 30, ptr %182, align 8
  %183 = load i64, ptr %8, align 8
  %184 = load ptr, ptr %14, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 1
  store i64 %183, ptr %185, align 8
  %186 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %186) #4
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
define internal void @f_595(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_595, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_598 to i64), ptr %54, align 8
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
define internal void @f_598(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_598, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_601 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_1677 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li37 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.79)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 83), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 83), align 8
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
define internal void @f_601(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_601, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_604 to i64), ptr %54, align 8
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
define internal void @f_1677(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1677, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.202)
  %58 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 80), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 80), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 81), align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 82), align 16
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
define internal void @f_604(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_604, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.80)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 79), align 8
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
declare void @C_extras_toplevel(i64 noundef, ptr noundef) #3

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
  call void @C_save_and_reclaim(ptr noundef @f_607, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_610 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.80)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 77), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 78), align 16
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
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds i64, ptr %39, i64 0
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %6, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %7, align 8
  %45 = load i64, ptr @C_timer_interrupt_counter, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, ptr @C_timer_interrupt_counter, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %49

49:                                               ; preds = %48, %2
  %50 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !13
  store ptr %50, ptr %35, align 8
  %51 = load ptr, ptr %35, align 8
  store ptr %51, ptr %36, align 8
  %52 = load ptr, ptr %36, align 8
  %53 = load ptr, ptr @C_stack_limit, align 8
  %54 = ptrtoint ptr %52 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  %58 = load i64, ptr %3, align 8
  %59 = icmp sgt i64 %58, 5
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 5
  %62 = add nsw i32 82, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, ptr @C_scratch_usage, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp sgt i64 %57, %65
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %49
  %72 = load i64, ptr %3, align 8
  %73 = trunc i64 %72 to i32
  %74 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_610, i32 noundef %73, ptr noundef %74) #4
  unreachable

75:                                               ; preds = %49
  %76 = alloca i8, i64 656, align 16
  store ptr %76, ptr %34, align 8
  %77 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %80, align 8
  %81 = load ptr, ptr %34, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_612 to i64), ptr %82, align 8
  %83 = load ptr, ptr %34, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %84, align 8
  %85 = load ptr, ptr %34, align 8
  %86 = ptrtoint ptr %85 to i64
  store i64 %86, ptr %5, align 8
  %87 = load ptr, ptr %34, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store ptr %88, ptr %34, align 8
  %89 = load i64, ptr %5, align 8
  %90 = call i64 @C_mutate(ptr noundef %79, i64 noundef %89)
  store i64 %90, ptr %8, align 8
  %91 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %94, align 8
  %95 = load ptr, ptr %34, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_631 to i64), ptr %96, align 8
  %97 = load ptr, ptr %34, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %98, align 8
  %99 = load ptr, ptr %34, align 8
  %100 = ptrtoint ptr %99 to i64
  store i64 %100, ptr %5, align 8
  %101 = load ptr, ptr %34, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store ptr %102, ptr %34, align 8
  %103 = load i64, ptr %5, align 8
  %104 = call i64 @C_mutate(ptr noundef %93, i64 noundef %103)
  store i64 %104, ptr %9, align 8
  %105 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %105, align 8
  %106 = load ptr, ptr %34, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 ptrtoint (ptr @f_657 to i64), ptr %107, align 8
  %108 = load ptr, ptr %34, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 ptrtoint (ptr @li3 to i64), ptr %109, align 8
  %110 = load ptr, ptr %34, align 8
  %111 = ptrtoint ptr %110 to i64
  store i64 %111, ptr %5, align 8
  %112 = load ptr, ptr %34, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  store ptr %113, ptr %34, align 8
  %114 = load i64, ptr %5, align 8
  %115 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 7), i64 noundef %114)
  store i64 %115, ptr %10, align 8
  %116 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %119, align 8
  %120 = load ptr, ptr %34, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 ptrtoint (ptr @f_687 to i64), ptr %121, align 8
  %122 = load ptr, ptr %34, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 2
  store i64 ptrtoint (ptr @li5 to i64), ptr %123, align 8
  %124 = load ptr, ptr %34, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %5, align 8
  %126 = load ptr, ptr %34, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  store ptr %127, ptr %34, align 8
  %128 = load i64, ptr %5, align 8
  %129 = call i64 @C_mutate(ptr noundef %118, i64 noundef %128)
  store i64 %129, ptr %11, align 8
  %130 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 9), align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %133, align 8
  %134 = load ptr, ptr %34, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 ptrtoint (ptr @f_720 to i64), ptr %135, align 8
  %136 = load ptr, ptr %34, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 ptrtoint (ptr @li7 to i64), ptr %137, align 8
  %138 = load ptr, ptr %34, align 8
  %139 = ptrtoint ptr %138 to i64
  store i64 %139, ptr %5, align 8
  %140 = load ptr, ptr %34, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 3
  store ptr %141, ptr %34, align 8
  %142 = load i64, ptr %5, align 8
  %143 = call i64 @C_mutate(ptr noundef %132, i64 noundef %142)
  store i64 %143, ptr %12, align 8
  %144 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 11), align 8
  %145 = inttoptr i64 %144 to ptr
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  %147 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %147, align 8
  %148 = load ptr, ptr %34, align 8
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  store i64 ptrtoint (ptr @f_766 to i64), ptr %149, align 8
  %150 = load ptr, ptr %34, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 2
  store i64 ptrtoint (ptr @li8 to i64), ptr %151, align 8
  %152 = load ptr, ptr %34, align 8
  %153 = ptrtoint ptr %152 to i64
  store i64 %153, ptr %5, align 8
  %154 = load ptr, ptr %34, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 3
  store ptr %155, ptr %34, align 8
  %156 = load i64, ptr %5, align 8
  %157 = call i64 @C_mutate(ptr noundef %146, i64 noundef %156)
  store i64 %157, ptr %13, align 8
  %158 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 12), align 16
  %159 = inttoptr i64 %158 to ptr
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  %161 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %161, align 8
  %162 = load ptr, ptr %34, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 1
  store i64 ptrtoint (ptr @f_772 to i64), ptr %163, align 8
  %164 = load ptr, ptr %34, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %165, align 8
  %166 = load ptr, ptr %34, align 8
  %167 = ptrtoint ptr %166 to i64
  store i64 %167, ptr %5, align 8
  %168 = load ptr, ptr %34, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 3
  store ptr %169, ptr %34, align 8
  %170 = load i64, ptr %5, align 8
  %171 = call i64 @C_mutate(ptr noundef %160, i64 noundef %170)
  store i64 %171, ptr %14, align 8
  %172 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 1
  %175 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %175, align 8
  %176 = load ptr, ptr %34, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 1
  store i64 ptrtoint (ptr @f_785 to i64), ptr %177, align 8
  %178 = load ptr, ptr %34, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %179, align 8
  %180 = load ptr, ptr %34, align 8
  %181 = ptrtoint ptr %180 to i64
  store i64 %181, ptr %5, align 8
  %182 = load ptr, ptr %34, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 3
  store ptr %183, ptr %34, align 8
  %184 = load i64, ptr %5, align 8
  %185 = call i64 @C_mutate(ptr noundef %174, i64 noundef %184)
  store i64 %185, ptr %15, align 8
  %186 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 14), align 16
  %187 = inttoptr i64 %186 to ptr
  %188 = getelementptr inbounds i64, ptr %187, i64 1
  %189 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %189, align 8
  %190 = load ptr, ptr %34, align 8
  %191 = getelementptr inbounds i64, ptr %190, i64 1
  store i64 ptrtoint (ptr @f_791 to i64), ptr %191, align 8
  %192 = load ptr, ptr %34, align 8
  %193 = getelementptr inbounds i64, ptr %192, i64 2
  store i64 ptrtoint (ptr @li11 to i64), ptr %193, align 8
  %194 = load ptr, ptr %34, align 8
  %195 = ptrtoint ptr %194 to i64
  store i64 %195, ptr %5, align 8
  %196 = load ptr, ptr %34, align 8
  %197 = getelementptr inbounds i64, ptr %196, i64 3
  store ptr %197, ptr %34, align 8
  %198 = load i64, ptr %5, align 8
  %199 = call i64 @C_mutate(ptr noundef %188, i64 noundef %198)
  store i64 %199, ptr %16, align 8
  %200 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %200, align 8
  %201 = load ptr, ptr %34, align 8
  %202 = getelementptr inbounds i64, ptr %201, i64 1
  store i64 ptrtoint (ptr @f_827 to i64), ptr %202, align 8
  %203 = load ptr, ptr %34, align 8
  %204 = getelementptr inbounds i64, ptr %203, i64 2
  store i64 ptrtoint (ptr @li16 to i64), ptr %204, align 8
  %205 = load ptr, ptr %34, align 8
  %206 = ptrtoint ptr %205 to i64
  store i64 %206, ptr %5, align 8
  %207 = load ptr, ptr %34, align 8
  %208 = getelementptr inbounds i64, ptr %207, i64 3
  store ptr %208, ptr %34, align 8
  %209 = load i64, ptr %5, align 8
  %210 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 4), i64 noundef %209)
  store i64 %210, ptr %17, align 8
  %211 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 21), align 8
  %212 = inttoptr i64 %211 to ptr
  %213 = getelementptr inbounds i64, ptr %212, i64 1
  %214 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %214, align 8
  %215 = load ptr, ptr %34, align 8
  %216 = getelementptr inbounds i64, ptr %215, i64 1
  store i64 ptrtoint (ptr @f_908 to i64), ptr %216, align 8
  %217 = load ptr, ptr %34, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 2
  store i64 ptrtoint (ptr @li17 to i64), ptr %218, align 8
  %219 = load ptr, ptr %34, align 8
  %220 = ptrtoint ptr %219 to i64
  store i64 %220, ptr %5, align 8
  %221 = load ptr, ptr %34, align 8
  %222 = getelementptr inbounds i64, ptr %221, i64 3
  store ptr %222, ptr %34, align 8
  %223 = load i64, ptr %5, align 8
  %224 = call i64 @C_mutate(ptr noundef %213, i64 noundef %223)
  store i64 %224, ptr %18, align 8
  %225 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 22), align 16
  %226 = inttoptr i64 %225 to ptr
  %227 = getelementptr inbounds i64, ptr %226, i64 1
  %228 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %228, align 8
  %229 = load ptr, ptr %34, align 8
  %230 = getelementptr inbounds i64, ptr %229, i64 1
  store i64 ptrtoint (ptr @f_914 to i64), ptr %230, align 8
  %231 = load ptr, ptr %34, align 8
  %232 = getelementptr inbounds i64, ptr %231, i64 2
  store i64 ptrtoint (ptr @li18 to i64), ptr %232, align 8
  %233 = load ptr, ptr %34, align 8
  %234 = ptrtoint ptr %233 to i64
  store i64 %234, ptr %5, align 8
  %235 = load ptr, ptr %34, align 8
  %236 = getelementptr inbounds i64, ptr %235, i64 3
  store ptr %236, ptr %34, align 8
  %237 = load i64, ptr %5, align 8
  %238 = call i64 @C_mutate(ptr noundef %227, i64 noundef %237)
  store i64 %238, ptr %19, align 8
  %239 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
  %240 = inttoptr i64 %239 to ptr
  %241 = getelementptr inbounds i64, ptr %240, i64 1
  %242 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %242, align 8
  %243 = load ptr, ptr %34, align 8
  %244 = getelementptr inbounds i64, ptr %243, i64 1
  store i64 ptrtoint (ptr @f_942 to i64), ptr %244, align 8
  %245 = load ptr, ptr %34, align 8
  %246 = getelementptr inbounds i64, ptr %245, i64 2
  store i64 ptrtoint (ptr @li20 to i64), ptr %246, align 8
  %247 = load ptr, ptr %34, align 8
  %248 = ptrtoint ptr %247 to i64
  store i64 %248, ptr %5, align 8
  %249 = load ptr, ptr %34, align 8
  %250 = getelementptr inbounds i64, ptr %249, i64 3
  store ptr %250, ptr %34, align 8
  %251 = load i64, ptr %5, align 8
  %252 = call i64 @C_mutate(ptr noundef %241, i64 noundef %251)
  store i64 %252, ptr %20, align 8
  %253 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 26), align 16
  %254 = inttoptr i64 %253 to ptr
  %255 = getelementptr inbounds i64, ptr %254, i64 1
  %256 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %256, align 8
  %257 = load ptr, ptr %34, align 8
  %258 = getelementptr inbounds i64, ptr %257, i64 1
  store i64 ptrtoint (ptr @f_991 to i64), ptr %258, align 8
  %259 = load ptr, ptr %34, align 8
  %260 = getelementptr inbounds i64, ptr %259, i64 2
  store i64 ptrtoint (ptr @li23 to i64), ptr %260, align 8
  %261 = load ptr, ptr %34, align 8
  %262 = ptrtoint ptr %261 to i64
  store i64 %262, ptr %5, align 8
  %263 = load ptr, ptr %34, align 8
  %264 = getelementptr inbounds i64, ptr %263, i64 3
  store ptr %264, ptr %34, align 8
  %265 = load i64, ptr %5, align 8
  %266 = call i64 @C_mutate(ptr noundef %255, i64 noundef %265)
  store i64 %266, ptr %21, align 8
  %267 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 30), align 16
  %268 = inttoptr i64 %267 to ptr
  %269 = getelementptr inbounds i64, ptr %268, i64 1
  %270 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %270, align 8
  %271 = load ptr, ptr %34, align 8
  %272 = getelementptr inbounds i64, ptr %271, i64 1
  store i64 ptrtoint (ptr @f_1092 to i64), ptr %272, align 8
  %273 = load ptr, ptr %34, align 8
  %274 = getelementptr inbounds i64, ptr %273, i64 2
  store i64 ptrtoint (ptr @li26 to i64), ptr %274, align 8
  %275 = load ptr, ptr %34, align 8
  %276 = ptrtoint ptr %275 to i64
  store i64 %276, ptr %5, align 8
  %277 = load ptr, ptr %34, align 8
  %278 = getelementptr inbounds i64, ptr %277, i64 3
  store ptr %278, ptr %34, align 8
  %279 = load i64, ptr %5, align 8
  %280 = call i64 @C_mutate(ptr noundef %269, i64 noundef %279)
  store i64 %280, ptr %22, align 8
  %281 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 38), align 16
  %282 = inttoptr i64 %281 to ptr
  %283 = getelementptr inbounds i64, ptr %282, i64 1
  %284 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %284, align 8
  %285 = load ptr, ptr %34, align 8
  %286 = getelementptr inbounds i64, ptr %285, i64 1
  store i64 ptrtoint (ptr @f_1167 to i64), ptr %286, align 8
  %287 = load ptr, ptr %34, align 8
  %288 = getelementptr inbounds i64, ptr %287, i64 2
  store i64 ptrtoint (ptr @li27 to i64), ptr %288, align 8
  %289 = load ptr, ptr %34, align 8
  %290 = ptrtoint ptr %289 to i64
  store i64 %290, ptr %5, align 8
  %291 = load ptr, ptr %34, align 8
  %292 = getelementptr inbounds i64, ptr %291, i64 3
  store ptr %292, ptr %34, align 8
  %293 = load i64, ptr %5, align 8
  %294 = call i64 @C_mutate(ptr noundef %283, i64 noundef %293)
  store i64 %294, ptr %23, align 8
  %295 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 39), align 8
  %296 = inttoptr i64 %295 to ptr
  %297 = getelementptr inbounds i64, ptr %296, i64 1
  %298 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %298, align 8
  %299 = load ptr, ptr %34, align 8
  %300 = getelementptr inbounds i64, ptr %299, i64 1
  store i64 ptrtoint (ptr @f_1188 to i64), ptr %300, align 8
  %301 = load ptr, ptr %34, align 8
  %302 = getelementptr inbounds i64, ptr %301, i64 2
  store i64 ptrtoint (ptr @li28 to i64), ptr %302, align 8
  %303 = load ptr, ptr %34, align 8
  %304 = ptrtoint ptr %303 to i64
  store i64 %304, ptr %5, align 8
  %305 = load ptr, ptr %34, align 8
  %306 = getelementptr inbounds i64, ptr %305, i64 3
  store ptr %306, ptr %34, align 8
  %307 = load i64, ptr %5, align 8
  %308 = call i64 @C_mutate(ptr noundef %297, i64 noundef %307)
  store i64 %308, ptr %24, align 8
  %309 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 40), align 16
  %310 = inttoptr i64 %309 to ptr
  %311 = getelementptr inbounds i64, ptr %310, i64 1
  %312 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %312, align 8
  %313 = load ptr, ptr %34, align 8
  %314 = getelementptr inbounds i64, ptr %313, i64 1
  store i64 ptrtoint (ptr @f_1194 to i64), ptr %314, align 8
  %315 = load ptr, ptr %34, align 8
  %316 = getelementptr inbounds i64, ptr %315, i64 2
  store i64 ptrtoint (ptr @li29 to i64), ptr %316, align 8
  %317 = load ptr, ptr %34, align 8
  %318 = ptrtoint ptr %317 to i64
  store i64 %318, ptr %5, align 8
  %319 = load ptr, ptr %34, align 8
  %320 = getelementptr inbounds i64, ptr %319, i64 3
  store ptr %320, ptr %34, align 8
  %321 = load i64, ptr %5, align 8
  %322 = call i64 @C_mutate(ptr noundef %311, i64 noundef %321)
  store i64 %322, ptr %25, align 8
  %323 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 41), align 8
  %324 = inttoptr i64 %323 to ptr
  %325 = getelementptr inbounds i64, ptr %324, i64 1
  %326 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %326, align 8
  %327 = load ptr, ptr %34, align 8
  %328 = getelementptr inbounds i64, ptr %327, i64 1
  store i64 ptrtoint (ptr @f_1197 to i64), ptr %328, align 8
  %329 = load ptr, ptr %34, align 8
  %330 = getelementptr inbounds i64, ptr %329, i64 2
  store i64 ptrtoint (ptr @li30 to i64), ptr %330, align 8
  %331 = load ptr, ptr %34, align 8
  %332 = ptrtoint ptr %331 to i64
  store i64 %332, ptr %5, align 8
  %333 = load ptr, ptr %34, align 8
  %334 = getelementptr inbounds i64, ptr %333, i64 3
  store ptr %334, ptr %34, align 8
  %335 = load i64, ptr %5, align 8
  %336 = call i64 @C_mutate(ptr noundef %325, i64 noundef %335)
  store i64 %336, ptr %26, align 8
  %337 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 42), align 16
  %338 = inttoptr i64 %337 to ptr
  %339 = getelementptr inbounds i64, ptr %338, i64 1
  %340 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %340, align 8
  %341 = load ptr, ptr %34, align 8
  %342 = getelementptr inbounds i64, ptr %341, i64 1
  store i64 ptrtoint (ptr @f_1200 to i64), ptr %342, align 8
  %343 = load ptr, ptr %34, align 8
  %344 = getelementptr inbounds i64, ptr %343, i64 2
  store i64 ptrtoint (ptr @li31 to i64), ptr %344, align 8
  %345 = load ptr, ptr %34, align 8
  %346 = ptrtoint ptr %345 to i64
  store i64 %346, ptr %5, align 8
  %347 = load ptr, ptr %34, align 8
  %348 = getelementptr inbounds i64, ptr %347, i64 3
  store ptr %348, ptr %34, align 8
  %349 = load i64, ptr %5, align 8
  %350 = call i64 @C_mutate(ptr noundef %339, i64 noundef %349)
  store i64 %350, ptr %27, align 8
  %351 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 43), align 8
  %352 = inttoptr i64 %351 to ptr
  %353 = getelementptr inbounds i64, ptr %352, i64 1
  %354 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %354, align 8
  %355 = load ptr, ptr %34, align 8
  %356 = getelementptr inbounds i64, ptr %355, i64 1
  store i64 ptrtoint (ptr @f_1203 to i64), ptr %356, align 8
  %357 = load ptr, ptr %34, align 8
  %358 = getelementptr inbounds i64, ptr %357, i64 2
  store i64 ptrtoint (ptr @li32 to i64), ptr %358, align 8
  %359 = load ptr, ptr %34, align 8
  %360 = ptrtoint ptr %359 to i64
  store i64 %360, ptr %5, align 8
  %361 = load ptr, ptr %34, align 8
  %362 = getelementptr inbounds i64, ptr %361, i64 3
  store ptr %362, ptr %34, align 8
  %363 = load i64, ptr %5, align 8
  %364 = call i64 @C_mutate(ptr noundef %353, i64 noundef %363)
  store i64 %364, ptr %28, align 8
  %365 = call i64 (ptr, i32, ...) @C_vector(ptr noundef %34, i32 noundef 12, i64 noundef 6379, i64 noundef 3191, i64 noundef 7889, i64 noundef 3945, i64 noundef 1973, i64 noundef 6963, i64 noundef 3483, i64 noundef 1743, i64 noundef 7053, i64 noundef 5423, i64 noundef 4733, i64 noundef 4567)
  store i64 %365, ptr %29, align 8
  %366 = load i64, ptr %29, align 8
  %367 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 44), i64 noundef %366)
  store i64 %367, ptr %30, align 8
  %368 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %368, align 8
  %369 = load ptr, ptr %34, align 8
  %370 = getelementptr inbounds i64, ptr %369, i64 1
  store i64 ptrtoint (ptr @f_1300 to i64), ptr %370, align 8
  %371 = load ptr, ptr %34, align 8
  %372 = getelementptr inbounds i64, ptr %371, i64 2
  store i64 ptrtoint (ptr @li36 to i64), ptr %372, align 8
  %373 = load ptr, ptr %34, align 8
  %374 = ptrtoint ptr %373 to i64
  store i64 %374, ptr %5, align 8
  %375 = load ptr, ptr %34, align 8
  %376 = getelementptr inbounds i64, ptr %375, i64 3
  store ptr %376, ptr %34, align 8
  %377 = load i64, ptr %5, align 8
  %378 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 5), i64 noundef %377)
  store i64 %378, ptr %31, align 8
  %379 = load ptr, ptr %34, align 8
  store i64 2594073385365405698, ptr %379, align 8
  %380 = load ptr, ptr %34, align 8
  %381 = getelementptr inbounds i64, ptr %380, i64 1
  store i64 ptrtoint (ptr @f_1675 to i64), ptr %381, align 8
  %382 = load i64, ptr %6, align 8
  %383 = inttoptr i64 %382 to ptr
  %384 = getelementptr inbounds i64, ptr %383, i64 2
  %385 = load i64, ptr %384, align 8
  %386 = load ptr, ptr %34, align 8
  %387 = getelementptr inbounds i64, ptr %386, i64 2
  store i64 %385, ptr %387, align 8
  %388 = load ptr, ptr %34, align 8
  %389 = ptrtoint ptr %388 to i64
  store i64 %389, ptr %5, align 8
  %390 = load ptr, ptr %34, align 8
  %391 = getelementptr inbounds i64, ptr %390, i64 3
  store ptr %391, ptr %34, align 8
  %392 = load i64, ptr %5, align 8
  store i64 %392, ptr %32, align 8
  call void @C_trace(ptr noundef @.str.71)
  %393 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 76), align 16
  %394 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %393)
  store ptr %394, ptr %37, align 8
  %395 = load ptr, ptr %4, align 8
  store ptr %395, ptr %38, align 8
  %396 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 76), align 16
  %397 = inttoptr i64 %396 to ptr
  %398 = getelementptr inbounds i64, ptr %397, i64 1
  %399 = load i64, ptr %398, align 8
  %400 = load ptr, ptr %38, align 8
  %401 = getelementptr inbounds i64, ptr %400, i64 0
  store i64 %399, ptr %401, align 8
  %402 = load i64, ptr %32, align 8
  %403 = load ptr, ptr %38, align 8
  %404 = getelementptr inbounds i64, ptr %403, i64 1
  store i64 %402, ptr %404, align 8
  %405 = load ptr, ptr %37, align 8
  %406 = load ptr, ptr %38, align 8
  call void %405(i64 noundef 2, ptr noundef %406) #4
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
define internal void @f_612(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  %40 = icmp sgt i64 %39, 2
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 2
  %43 = add nsw i32 3, %42
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
  call void @C_save_and_reclaim(ptr noundef @f_612, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 24, align 16
  store ptr %57, ptr %10, align 8
  %58 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %58, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_616 to i64), ptr %60, align 8
  %61 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.81)
  %69 = load i64, ptr %8, align 8
  call void @f_1300(i64 noundef %69) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_631(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
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
  call void @C_save_and_reclaim(ptr noundef @f_631, i32 noundef %61, ptr noundef %62) #4
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
  %71 = call i64 @C_i_nequalp(i64 noundef %70, i64 noundef 11)
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 2), align 16
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
define internal void @f_657(i64 noundef %0, i64 noundef %1) #2 {
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
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
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
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, ptr %3, align 8
  %35 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_657, i32 noundef 2, i64 noundef %34, i64 noundef %35) #4
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
  store i64 ptrtoint (ptr @f_663 to i64), ptr %49, align 8
  %50 = load i64, ptr %7, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 ptrtoint (ptr @li2 to i64), ptr %54, align 8
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
  call void @f_663(i64 noundef %68, i64 noundef %69, i64 noundef %70, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_687(i64 noundef %0, ptr noundef %1) #2 {
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
  store ptr %37, ptr %14, align 8
  %38 = load ptr, ptr %14, align 8
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  %40 = load ptr, ptr @C_stack_limit, align 8
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = load i64, ptr %3, align 8
  %46 = icmp sgt i64 %45, 4
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 4
  %49 = add nsw i32 6, %48
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
  call void @C_save_and_reclaim(ptr noundef @f_687, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 48, align 16
  store ptr %63, ptr %13, align 8
  store i64 30, ptr %9, align 8
  %64 = load ptr, ptr %13, align 8
  store i64 1, ptr %64, align 8
  %65 = load i64, ptr %9, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %10, align 8
  %73 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %73, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_693 to i64), ptr %75, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 ptrtoint (ptr @li4 to i64), ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store ptr %84, ptr %13, align 8
  %85 = load i64, ptr %5, align 8
  %86 = load i64, ptr %10, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds %struct.C_block_struct, ptr %87, i32 0, i32 1
  %89 = getelementptr inbounds [0 x i64], ptr %88, i64 0, i64 0
  store i64 %85, ptr %89, align 8
  store i64 %85, ptr %11, align 8
  %90 = load i64, ptr %10, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %12, align 8
  %94 = load i64, ptr %12, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load i64, ptr %8, align 8
  call void @f_693(i64 noundef %94, i64 noundef %95, i64 noundef %96, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_720(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !18
  store ptr %37, ptr %14, align 8
  %38 = load ptr, ptr %14, align 8
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  %40 = load ptr, ptr @C_stack_limit, align 8
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = load i64, ptr %3, align 8
  %46 = icmp sgt i64 %45, 4
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 4
  %49 = add nsw i32 7, %48
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
  call void @C_save_and_reclaim(ptr noundef @f_720, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 56, align 16
  store ptr %63, ptr %13, align 8
  store i64 30, ptr %9, align 8
  %64 = load ptr, ptr %13, align 8
  store i64 1, ptr %64, align 8
  %65 = load i64, ptr %9, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %10, align 8
  %73 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %73, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_726 to i64), ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %10, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  store i64 ptrtoint (ptr @li6 to i64), ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  store ptr %87, ptr %13, align 8
  %88 = load i64, ptr %5, align 8
  %89 = load i64, ptr %10, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds %struct.C_block_struct, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds [0 x i64], ptr %91, i64 0, i64 0
  store i64 %88, ptr %92, align 8
  store i64 %88, ptr %11, align 8
  %93 = load i64, ptr %10, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %12, align 8
  %97 = load i64, ptr %12, align 8
  %98 = load i64, ptr %7, align 8
  call void @f_726(i64 noundef %97, i64 noundef %98, i64 noundef 1, i64 noundef 14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_766(i64 noundef %0, ptr noundef %1) #2 {
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
  %47 = add nsw i32 5, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_766, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 40, align 16
  store ptr %61, ptr %10, align 8
  %62 = load i64, ptr %7, align 8
  store i64 %62, ptr %9, align 8
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %9, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = call i64 @C_s_a_i_bitwise_xor(ptr noundef %10, i64 noundef 2, i64 noundef %67, i64 noundef 33554431)
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_772(i64 noundef %0, ptr noundef %1) #2 {
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
  %49 = icmp sgt i64 %48, 2
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 2
  %52 = add nsw i32 9, %51
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
  call void @C_save_and_reclaim(ptr noundef @f_772, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = alloca i8, i64 72, align 16
  store ptr %66, ptr %13, align 8
  %67 = load i64, ptr %8, align 8
  %68 = load i64, ptr %9, align 8
  %69 = call i64 @C_s_a_i_bitwise_and(ptr noundef %13, i64 noundef 2, i64 noundef %67, i64 noundef %68)
  store i64 %69, ptr %10, align 8
  %70 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %70, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 ptrtoint (ptr @f_783 to i64), ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store ptr %82, ptr %13, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.90)
  %84 = load i64, ptr %11, align 8
  %85 = load i64, ptr %10, align 8
  call void @f_657(i64 noundef %84, i64 noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_785(i64 noundef %0, ptr noundef %1) #2 {
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
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 2
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %8, align 8
  %22 = load i64, ptr %3, align 8
  %23 = icmp ne i64 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, ptr %3, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %26, i32 noundef 3, i64 noundef %27) #4
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
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
  store ptr %34, ptr %11, align 8
  %35 = load ptr, ptr %11, align 8
  store ptr %35, ptr %12, align 8
  %36 = load ptr, ptr %12, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 2
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 2
  %46 = add nsw i32 0, %45
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
  call void @C_save_and_reclaim(ptr noundef @f_785, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  call void @C_trace(ptr noundef @.str.91)
  %60 = load i64, ptr %7, align 8
  %61 = load i64, ptr %8, align 8
  call void @f_657(i64 noundef %60, i64 noundef %61) #4
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
  %49 = add nsw i32 3, %48
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
  call void @C_save_and_reclaim(ptr noundef @f_791, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 24, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_795 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.92)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %76 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %75)
  store ptr %76, ptr %14, align 8
  %77 = load ptr, ptr %4, align 8
  store ptr %77, ptr %15, align 8
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
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
define internal void @f_827(i64 noundef %0) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [2 x i64], align 16
  store i64 %0, ptr %2, align 8
  %13 = load i64, ptr @C_timer_interrupt_counter, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr @C_timer_interrupt_counter, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  call void @C_raise_interrupt(i32 noundef 255)
  br label %17

17:                                               ; preds = %16, %1
  %18 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i64, ptr %2, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_827, i32 noundef 1, i64 noundef %34) #4
  unreachable

35:                                               ; preds = %17
  %36 = alloca i8, i64 136, align 16
  store ptr %36, ptr %9, align 8
  %37 = load ptr, ptr %9, align 8
  store i64 2594073385365405698, ptr %37, align 8
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 1
  store i64 ptrtoint (ptr @f_833 to i64), ptr %39, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 ptrtoint (ptr @li12 to i64), ptr %41, align 8
  %42 = load ptr, ptr %9, align 8
  %43 = ptrtoint ptr %42 to i64
  store i64 %43, ptr %3, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 3
  store ptr %45, ptr %9, align 8
  %46 = load i64, ptr %3, align 8
  store i64 %46, ptr %4, align 8
  %47 = load ptr, ptr %9, align 8
  store i64 2594073385365405698, ptr %47, align 8
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 ptrtoint (ptr @f_845 to i64), ptr %49, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  store i64 ptrtoint (ptr @li13 to i64), ptr %51, align 8
  %52 = load ptr, ptr %9, align 8
  %53 = ptrtoint ptr %52 to i64
  store i64 %53, ptr %3, align 8
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 3
  store ptr %55, ptr %9, align 8
  %56 = load i64, ptr %3, align 8
  store i64 %56, ptr %5, align 8
  %57 = load ptr, ptr %9, align 8
  store i64 2594073385365405698, ptr %57, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 ptrtoint (ptr @f_860 to i64), ptr %59, align 8
  %60 = load ptr, ptr %9, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %61, align 8
  %62 = load ptr, ptr %9, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %3, align 8
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %9, align 8
  %66 = load i64, ptr %3, align 8
  store i64 %66, ptr %6, align 8
  %67 = load ptr, ptr %9, align 8
  store i64 2594073385365405698, ptr %67, align 8
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_881 to i64), ptr %69, align 8
  %70 = load ptr, ptr %9, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 ptrtoint (ptr @li15 to i64), ptr %71, align 8
  %72 = load ptr, ptr %9, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %3, align 8
  %74 = load ptr, ptr %9, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store ptr %75, ptr %9, align 8
  %76 = load i64, ptr %3, align 8
  store i64 %76, ptr %7, align 8
  %77 = load i64, ptr %2, align 8
  store i64 %77, ptr %8, align 8
  %78 = load i64, ptr %8, align 8
  %79 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 0
  store i64 %78, ptr %79, align 16
  %80 = load i64, ptr %4, align 8
  %81 = load i64, ptr %5, align 8
  %82 = load i64, ptr %6, align 8
  %83 = load i64, ptr %7, align 8
  %84 = call i64 @C_a_i_vector4(ptr noundef %9, i32 noundef 4, i64 noundef %80, i64 noundef %81, i64 noundef %82, i64 noundef %83)
  %85 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 1
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 0
  call void %90(i64 noundef 2, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_908(i64 noundef %0, ptr noundef %1) #2 {
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
  %18 = load i64, ptr %3, align 8
  %19 = icmp ne i64 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, ptr %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %22, i32 noundef 2, i64 noundef %23) #4
  unreachable

24:                                               ; preds = %2
  %25 = load i64, ptr @C_timer_interrupt_counter, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, ptr @C_timer_interrupt_counter, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @C_raise_interrupt(i32 noundef 255)
  br label %29

29:                                               ; preds = %28, %24
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
  store ptr %30, ptr %10, align 8
  %31 = load ptr, ptr %10, align 8
  store ptr %31, ptr %11, align 8
  %32 = load ptr, ptr %11, align 8
  %33 = load ptr, ptr @C_stack_limit, align 8
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 8
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = add nsw i32 0, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_908, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  call void @C_trace(ptr noundef @.str.93)
  %56 = load i64, ptr %7, align 8
  call void @f_827(i64 noundef %56) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_914(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !25
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
  %47 = add nsw i32 4, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_914, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_918 to i64), ptr %64, align 8
  %65 = load i64, ptr %8, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.94)
  %76 = load i64, ptr %9, align 8
  call void @f_827(i64 noundef %76) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_942(i64 noundef %0, ptr noundef %1) #2 {
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %53 = add nsw i32 8, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_942, i32 noundef %64, ptr noundef %65) #4
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
  store i64 ptrtoint (ptr @f_948 to i64), ptr %79, align 8
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
  store i64 ptrtoint (ptr @li19 to i64), ptr %90, align 8
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
  call void @f_948(i64 noundef %104, i64 noundef %105, i64 noundef 1, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_991(i64 noundef %0, ptr noundef %1) #2 {
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
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %8, align 8
  %25 = load i64, ptr %3, align 8
  %26 = icmp slt i64 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, ptr %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, ptr %6, align 8
  call void @C_bad_min_argc_2(i32 noundef %29, i32 noundef 3, i64 noundef %30) #4
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
  store ptr %37, ptr %14, align 8
  %38 = load ptr, ptr %14, align 8
  store ptr %38, ptr %15, align 8
  %39 = load ptr, ptr %15, align 8
  %40 = load ptr, ptr @C_stack_limit, align 8
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = load i64, ptr %3, align 8
  %46 = icmp sgt i64 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 2
  %49 = add nsw i32 5, %48
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
  call void @C_save_and_reclaim(ptr noundef @f_991, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 40, align 16
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %3, align 8
  %65 = icmp sge i64 3, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i64 22, i64 6
  store i64 %67, ptr %9, align 8
  %68 = load i64, ptr %9, align 8
  %69 = icmp ne i64 %68, 6
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %86

71:                                               ; preds = %62
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 3, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, ptr %3, align 8
  %76 = shl i64 %75, 1
  %77 = or i64 %76, 1
  %78 = load i64, ptr %6, align 8
  call void @C_rest_arg_out_of_bounds_error_2(i64 noundef %77, i64 noundef 7, i64 noundef 7, i64 noundef %78) #4
  unreachable

79:                                               ; No predecessors!
  br label %84

80:                                               ; preds = %71
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  br label %84

84:                                               ; preds = %80, %79
  %85 = phi i64 [ 30, %79 ], [ %83, %80 ]
  br label %86

86:                                               ; preds = %84, %70
  %87 = phi i64 [ 201, %70 ], [ %85, %84 ]
  store i64 %87, ptr %10, align 8
  %88 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %88, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_998 to i64), ptr %90, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %10, align 8
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %7, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %5, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store ptr %103, ptr %13, align 8
  %104 = load i64, ptr %5, align 8
  store i64 %104, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.99)
  %105 = load i64, ptr %11, align 8
  call void @f_827(i64 noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1092(i64 noundef %0, ptr noundef %1) #2 {
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
  %45 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
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
  %54 = icmp sgt i64 %53, 2
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_1092, i32 noundef %68, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %44
  %71 = alloca i8, i64 32, align 16
  store ptr %71, ptr %13, align 8
  %72 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %72, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 ptrtoint (ptr @f_1096 to i64), ptr %74, align 8
  %75 = load i64, ptr %9, align 8
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
  call void @C_trace(ptr noundef @.str.108)
  %86 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 37), align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  %90 = call ptr @C_fast_retrieve_proc(i64 noundef %89)
  store ptr %90, ptr %16, align 8
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %17, align 8
  %92 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 37), align 8
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
  %101 = load i64, ptr %8, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %16, align 8
  %105 = load ptr, ptr %17, align 8
  call void %104(i64 noundef 3, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1167(i64 noundef %0, ptr noundef %1) #2 {
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
  %42 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !29
  store ptr %42, ptr %13, align 8
  %43 = load ptr, ptr %13, align 8
  store ptr %43, ptr %14, align 8
  %44 = load ptr, ptr %14, align 8
  %45 = load ptr, ptr @C_stack_limit, align 8
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = load i64, ptr %3, align 8
  %51 = icmp sgt i64 %50, 2
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 2
  %54 = add nsw i32 5, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, ptr @C_scratch_usage, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp sgt i64 %49, %57
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %41
  %64 = load i64, ptr %3, align 8
  %65 = trunc i64 %64 to i32
  %66 = load ptr, ptr %4, align 8
  call void @C_save_and_reclaim(ptr noundef @f_1167, i32 noundef %65, ptr noundef %66) #4
  unreachable

67:                                               ; preds = %41
  %68 = alloca i8, i64 40, align 16
  store ptr %68, ptr %12, align 8
  %69 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %69, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 ptrtoint (ptr @f_1174 to i64), ptr %71, align 8
  %72 = load i64, ptr %7, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 5
  store ptr %84, ptr %12, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %10, align 8
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_vectorp(i64 noundef %86)
  %88 = icmp ne i64 %87, 6
  br i1 %88, label %89, label %107

89:                                               ; preds = %67
  call void @C_trace(ptr noundef @.str.118)
  %90 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %91 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %90)
  store ptr %91, ptr %15, align 8
  %92 = load ptr, ptr %4, align 8
  store ptr %92, ptr %16, align 8
  %93 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %16, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %10, align 8
  %100 = load ptr, ptr %16, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %8, align 8
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = load ptr, ptr %16, align 8
  call void %105(i64 noundef 3, ptr noundef %106) #4
  unreachable

107:                                              ; preds = %67
  %108 = load i64, ptr %10, align 8
  store i64 %108, ptr %11, align 8
  %109 = load ptr, ptr %4, align 8
  store ptr %109, ptr %17, align 8
  %110 = load i64, ptr %11, align 8
  %111 = load ptr, ptr %17, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 0
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %17, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 6, ptr %114, align 8
  %115 = load ptr, ptr %17, align 8
  call void @f_1174(i64 noundef 2, ptr noundef %115) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1188(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !30
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
  call void @C_save_and_reclaim(ptr noundef @f_1188, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  call void @C_trace(ptr noundef @.str.120)
  %66 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
  %67 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %66)
  store ptr %67, ptr %14, align 8
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %15, align 8
  %69 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %78 = load ptr, ptr %14, align 8
  %79 = load ptr, ptr %15, align 8
  call void %78(i64 noundef 2, ptr noundef %79) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1194(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !31
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
  %51 = add nsw i32 0, %50
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
  call void @C_save_and_reclaim(ptr noundef @f_1194, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = load i64, ptr %7, align 8
  store i64 %65, ptr %10, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %14, align 8
  %67 = load i64, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 22, ptr %71, align 8
  %72 = load i64, ptr %10, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = load ptr, ptr %14, align 8
  call void %76(i64 noundef 2, ptr noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1197(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
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
  %51 = add nsw i32 0, %50
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
  call void @C_save_and_reclaim(ptr noundef @f_1197, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = load i64, ptr %7, align 8
  store i64 %65, ptr %10, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %14, align 8
  %67 = load i64, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 22, ptr %71, align 8
  %72 = load i64, ptr %10, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = load ptr, ptr %14, align 8
  call void %76(i64 noundef 2, ptr noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1200(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
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
  %51 = add nsw i32 0, %50
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
  call void @C_save_and_reclaim(ptr noundef @f_1200, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = load i64, ptr %7, align 8
  store i64 %65, ptr %10, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %14, align 8
  %67 = load i64, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 22, ptr %71, align 8
  %72 = load i64, ptr %10, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = load ptr, ptr %14, align 8
  call void %76(i64 noundef 2, ptr noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1203(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1203, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_1210 to i64), ptr %66, align 8
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
  call void @C_trace(ptr noundef @.str.121)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %79 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %78)
  store ptr %79, ptr %14, align 8
  %80 = load ptr, ptr %4, align 8
  store ptr %80, ptr %15, align 8
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
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

declare i64 @C_vector(ptr noundef, i32 noundef, ...) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1300(i64 noundef %0) #2 {
  %2 = alloca i64, align 8
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
  store i64 %0, ptr %2, align 8
  %14 = load i64, ptr @C_timer_interrupt_counter, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr @C_timer_interrupt_counter, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  call void @C_raise_interrupt(i32 noundef 255)
  br label %18

18:                                               ; preds = %17, %1
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
  store ptr %19, ptr %12, align 8
  %20 = load ptr, ptr %12, align 8
  store ptr %20, ptr %13, align 8
  %21 = load ptr, ptr %13, align 8
  %22 = load ptr, ptr @C_stack_limit, align 8
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i64, ptr @C_scratch_usage, align 8
  %28 = add nsw i64 15, %27
  %29 = icmp sgt i64 %26, %28
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i64, ptr %2, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1300, i32 noundef 1, i64 noundef %35) #4
  unreachable

36:                                               ; preds = %18
  %37 = alloca i8, i64 96, align 16
  store ptr %37, ptr %11, align 8
  store i64 14, ptr %4, align 8
  %38 = load ptr, ptr %11, align 8
  store i64 1, ptr %38, align 8
  %39 = load i64, ptr %4, align 8
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 1
  store i64 %39, ptr %41, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = ptrtoint ptr %42 to i64
  store i64 %43, ptr %3, align 8
  %44 = load ptr, ptr %11, align 8
  %45 = getelementptr inbounds i64, ptr %44, i64 2
  store ptr %45, ptr %11, align 8
  %46 = load i64, ptr %3, align 8
  store i64 %46, ptr %5, align 8
  %47 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %47, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 ptrtoint (ptr @f_1304 to i64), ptr %49, align 8
  %50 = load i64, ptr %2, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 2
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = ptrtoint ptr %53 to i64
  store i64 %54, ptr %3, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 3
  store ptr %56, ptr %11, align 8
  %57 = load i64, ptr %3, align 8
  store i64 %57, ptr %6, align 8
  store i64 30, ptr %7, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 1, ptr %58, align 8
  %59 = load i64, ptr %7, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %59, ptr %61, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %3, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  store ptr %65, ptr %11, align 8
  %66 = load i64, ptr %3, align 8
  store i64 %66, ptr %8, align 8
  %67 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %67, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_1595 to i64), ptr %69, align 8
  %70 = load i64, ptr %5, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store i64 ptrtoint (ptr @li35 to i64), ptr %77, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %3, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store ptr %81, ptr %11, align 8
  %82 = load i64, ptr %3, align 8
  %83 = load i64, ptr %8, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 0
  store i64 %82, ptr %86, align 8
  store i64 %82, ptr %9, align 8
  %87 = load i64, ptr %8, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %10, align 8
  %91 = load i64, ptr %10, align 8
  %92 = load i64, ptr %6, align 8
  call void @f_1595(i64 noundef %91, i64 noundef %92, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1675(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
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
  call void @C_save_and_reclaim(ptr noundef @f_1675, i32 noundef %47, ptr noundef %48) #4
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !37
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
  %36 = add nsw i32 4, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_616, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 32, align 16
  store ptr %50, ptr %10, align 8
  %51 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %51, align 8
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  store i64 ptrtoint (ptr @f_619 to i64), ptr %53, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %7, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  store ptr %66, ptr %10, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.82)
  %68 = load i64, ptr %8, align 8
  call void @f_827(i64 noundef %68) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_619, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_622 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.83)
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
  %77 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %76)
  store ptr %77, ptr %13, align 8
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %14, align 8
  %79 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
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
define internal void @f_622(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_622, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_629 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.84)
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %94 = load ptr, ptr %13, align 8
  %95 = load ptr, ptr %14, align 8
  call void %94(i64 noundef 2, ptr noundef %95) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_629(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = add nsw i32 6, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_629, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 48, align 16
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
  %59 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 2), align 16
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
  %72 = load i64, ptr %7, align 8
  %73 = call i64 @C_a_i_vector5(ptr noundef %9, i32 noundef 5, i64 noundef %59, i64 noundef %63, i64 noundef %67, i64 noundef %71, i64 noundef %72)
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = load ptr, ptr %12, align 8
  call void %80(i64 noundef 2, ptr noundef %81) #4
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_vector5(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store i64 %5, ptr %13, align 8
  store i64 %6, ptr %14, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %15, align 8
  %19 = load ptr, ptr %15, align 8
  store ptr %19, ptr %16, align 8
  %20 = load ptr, ptr %15, align 8
  %21 = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %21, ptr %15, align 8
  store i64 5, ptr %20, align 8
  %22 = load i64, ptr %10, align 8
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr inbounds i64, ptr %23, i32 1
  store ptr %24, ptr %15, align 8
  store i64 %22, ptr %23, align 8
  %25 = load i64, ptr %11, align 8
  %26 = load ptr, ptr %15, align 8
  %27 = getelementptr inbounds i64, ptr %26, i32 1
  store ptr %27, ptr %15, align 8
  store i64 %25, ptr %26, align 8
  %28 = load i64, ptr %12, align 8
  %29 = load ptr, ptr %15, align 8
  %30 = getelementptr inbounds i64, ptr %29, i32 1
  store ptr %30, ptr %15, align 8
  store i64 %28, ptr %29, align 8
  %31 = load i64, ptr %13, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr inbounds i64, ptr %32, i32 1
  store ptr %33, ptr %15, align 8
  store i64 %31, ptr %32, align 8
  %34 = load i64, ptr %14, align 8
  %35 = load ptr, ptr %15, align 8
  %36 = getelementptr inbounds i64, ptr %35, i32 1
  store ptr %36, ptr %15, align 8
  store i64 %34, ptr %35, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = load ptr, ptr %8, align 8
  store ptr %37, ptr %38, align 8
  %39 = load ptr, ptr %16, align 8
  %40 = ptrtoint ptr %39 to i64
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_i_vectorp(i64 noundef %0) #0 {
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

declare i64 @C_i_nequalp(i64 noundef, i64 noundef) #1

declare i64 @C_i_vector_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_657(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_657(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_663(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !41
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_663, i32 noundef 4, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
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
define internal void @trf_663(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_663(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_zerop(i64 noundef) #1

declare i64 @C_s_a_i_minus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_s_a_i_bitwise_and(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_693(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %21 = alloca [2 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %22

22:                                               ; preds = %67, %4
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %22
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
  store ptr %28, ptr %19, align 8
  %29 = load ptr, ptr %19, align 8
  store ptr %29, ptr %20, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr @C_scratch_usage, align 8
  %37 = add nsw i64 13, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr %6, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_693, i32 noundef 4, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47) #4
  unreachable

48:                                               ; preds = %27
  %49 = alloca i8, i64 80, align 16
  store ptr %49, ptr %18, align 8
  %50 = load i64, ptr %7, align 8
  %51 = icmp eq i64 %50, 14
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i64 22, i64 6
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i64, ptr %6, align 8
  store i64 %56, ptr %10, align 8
  %57 = load i64, ptr %10, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = load i64, ptr %8, align 8
  %60 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %59, ptr %60, align 8
  %61 = load i64, ptr %10, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  %64 = load i64, ptr %63, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %65(i64 noundef 2, ptr noundef %66) #4
  unreachable

67:                                               ; preds = %48
  %68 = load i64, ptr %7, align 8
  %69 = call i64 @C_i_car(i64 noundef %68)
  store i64 %69, ptr %10, align 8
  %70 = load i64, ptr %7, align 8
  %71 = call i64 @C_i_cdr(i64 noundef %70)
  store i64 %71, ptr %11, align 8
  %72 = load i64, ptr %10, align 8
  %73 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %18, i64 noundef 2, i64 noundef 3, i64 noundef %72)
  store i64 %73, ptr %12, align 8
  %74 = load i64, ptr %8, align 8
  %75 = load i64, ptr %12, align 8
  %76 = call i64 @C_s_a_i_bitwise_ior(ptr noundef %18, i64 noundef 2, i64 noundef %74, i64 noundef %75)
  store i64 %76, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.86)
  %77 = load i64, ptr %6, align 8
  store i64 %77, ptr %15, align 8
  %78 = load i64, ptr %11, align 8
  store i64 %78, ptr %16, align 8
  %79 = load i64, ptr %13, align 8
  store i64 %79, ptr %17, align 8
  %80 = load i64, ptr %15, align 8
  store i64 %80, ptr %6, align 8
  %81 = load i64, ptr %16, align 8
  store i64 %81, ptr %7, align 8
  %82 = load i64, ptr %17, align 8
  store i64 %82, ptr %8, align 8
  br label %22
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_693(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_693(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_car(i64 noundef) #1

declare i64 @C_i_cdr(i64 noundef) #1

declare i64 @C_s_a_i_arithmetic_shift(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

declare i64 @C_s_a_i_bitwise_ior(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_726(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_726, i32 noundef 4, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42) #4
  unreachable

43:                                               ; preds = %22
  %44 = alloca i8, i64 56, align 16
  store ptr %44, ptr %12, align 8
  %45 = load i64, ptr %7, align 8
  %46 = call i64 @C_i_nequalp(i64 noundef %45, i64 noundef 49)
  %47 = icmp ne i64 %46, 6
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  call void @C_trace(ptr noundef @.str.87)
  %49 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), align 16
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 1
  %52 = load i64, ptr %51, align 8
  %53 = call ptr @C_fast_retrieve_proc(i64 noundef %52)
  store ptr %53, ptr %15, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), align 16
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = load i64, ptr %6, align 8
  %60 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 1
  store i64 %59, ptr %60, align 8
  %61 = load i64, ptr %8, align 8
  %62 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 2
  store i64 %61, ptr %62, align 16
  %63 = load ptr, ptr %15, align 8
  %64 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  call void %63(i64 noundef 3, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %43
  %66 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %66, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_764 to i64), ptr %68, align 8
  %69 = load i64, ptr %5, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %7, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %5, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 5
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 6
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 7
  store ptr %93, ptr %12, align 8
  %94 = load i64, ptr %9, align 8
  store i64 %94, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.88)
  %95 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 0
  store i64 0, ptr %95, align 16
  %96 = load i64, ptr %10, align 8
  %97 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 1
  store i64 %96, ptr %97, align 8
  %98 = load i64, ptr %7, align 8
  %99 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 2
  store i64 %98, ptr %99, align 16
  %100 = getelementptr inbounds [3 x i64], ptr %17, i64 0, i64 0
  call void @C_minus(i64 noundef 3, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_726(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_726(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
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
define internal void @f_764(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !44
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
  %42 = add nsw i32 42, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_764, i32 noundef %53, ptr noundef %54) #4
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
  call void @C_trace(ptr noundef @.str.89)
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
  call void @f_726(i64 noundef %113, i64 noundef %117, i64 noundef %118, i64 noundef %119) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_minus(i64 noundef, ptr noundef) #3

; Function Attrs: noreturn
declare void @C_invalid_procedure(i64 noundef, ptr noundef) #3

declare i64 @C_s_a_i_bitwise_xor(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_783(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  call void @C_save_and_reclaim(ptr noundef @f_783, i32 noundef %49, ptr noundef %50) #4
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
  %67 = load i64, ptr %7, align 8
  %68 = load i64, ptr %13, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds %struct.C_block_struct, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds [0 x i64], ptr %70, i64 0, i64 0
  store i64 %67, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  %75 = load i64, ptr %74, align 8
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
define internal void @f_795(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
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
  %38 = icmp sgt i64 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  %41 = add nsw i32 0, %40
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
  call void @C_save_and_reclaim(ptr noundef @f_795, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = load i64, ptr %7, align 8
  %56 = call i64 @C_i_nequalp(i64 noundef %55, i64 noundef 1)
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %8, align 8
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %8, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 15), align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = load ptr, ptr %13, align 8
  call void %74(i64 noundef 2, ptr noundef %75) #4
  unreachable

76:                                               ; preds = %54
  %77 = load i64, ptr %7, align 8
  %78 = call i64 @C_i_nequalp(i64 noundef %77, i64 noundef 17)
  %79 = icmp ne i64 %78, 6
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 2
  %84 = load i64, ptr %83, align 8
  store i64 %84, ptr %8, align 8
  %85 = load ptr, ptr %4, align 8
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 16), align 16
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %94, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = load ptr, ptr %14, align 8
  call void %96(i64 noundef 2, ptr noundef %97) #4
  unreachable

98:                                               ; preds = %76
  %99 = load i64, ptr %7, align 8
  %100 = call i64 @C_i_nequalp(i64 noundef %99, i64 noundef 25)
  %101 = icmp ne i64 %100, 6
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  store i64 %106, ptr %8, align 8
  %107 = load ptr, ptr %4, align 8
  store ptr %107, ptr %15, align 8
  %108 = load i64, ptr %8, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 17), align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %8, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  %117 = load i64, ptr %116, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = load ptr, ptr %15, align 8
  call void %118(i64 noundef 2, ptr noundef %119) #4
  unreachable

120:                                              ; preds = %98
  %121 = load i64, ptr %7, align 8
  %122 = call i64 @C_i_nequalp(i64 noundef %121, i64 noundef 33)
  %123 = icmp ne i64 %122, 6
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  %128 = load i64, ptr %127, align 8
  store i64 %128, ptr %8, align 8
  %129 = load ptr, ptr %4, align 8
  store ptr %129, ptr %16, align 8
  %130 = load i64, ptr %8, align 8
  %131 = load ptr, ptr %16, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 0
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 18), align 16
  %134 = load ptr, ptr %16, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %8, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  %139 = load i64, ptr %138, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = load ptr, ptr %16, align 8
  call void %140(i64 noundef 2, ptr noundef %141) #4
  unreachable

142:                                              ; preds = %120
  %143 = load i64, ptr %7, align 8
  %144 = call i64 @C_i_nequalp(i64 noundef %143, i64 noundef 49)
  store i64 %144, ptr %8, align 8
  %145 = load i64, ptr %6, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %9, align 8
  %149 = load ptr, ptr %4, align 8
  store ptr %149, ptr %17, align 8
  %150 = load i64, ptr %9, align 8
  %151 = load ptr, ptr %17, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 0
  store i64 %150, ptr %152, align 8
  %153 = load i64, ptr %8, align 8
  %154 = icmp ne i64 %153, 6
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 19), align 8
  br label %159

157:                                              ; preds = %142
  %158 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 20), align 16
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i64 [ %156, %155 ], [ %158, %157 ]
  %161 = load ptr, ptr %17, align 8
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  store i64 %160, ptr %162, align 8
  %163 = load i64, ptr %9, align 8
  %164 = inttoptr i64 %163 to ptr
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  %166 = load i64, ptr %165, align 8
  %167 = inttoptr i64 %166 to ptr
  %168 = load ptr, ptr %17, align 8
  call void %167(i64 noundef 2, ptr noundef %168) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_827(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %5, align 8
  %9 = load i64, ptr %5, align 8
  call void @f_827(i64 noundef %9) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_833(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
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
  %48 = add nsw i32 29, %47
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
  call void @C_save_and_reclaim(ptr noundef @f_833, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 232, align 16
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %8, align 8
  %64 = call i64 @C_i_nequalp(i64 noundef %63, i64 noundef 47)
  store i64 %64, ptr %9, align 8
  %65 = load i64, ptr %7, align 8
  store i64 %65, ptr %10, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %14, align 8
  %67 = load i64, ptr %10, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 0
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = icmp ne i64 %70, 6
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %76

73:                                               ; preds = %61
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_s_a_i_plus(ptr noundef %11, i64 noundef 2, i64 noundef %74, i64 noundef 3)
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i64 [ 1, %72 ], [ %75, %73 ]
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = load ptr, ptr %14, align 8
  call void %84(i64 noundef 2, ptr noundef %85) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_845(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
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
  %46 = icmp sgt i64 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 1
  %49 = add nsw i32 0, %48
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
  call void @C_save_and_reclaim(ptr noundef @f_845, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = load i64, ptr %8, align 8
  %64 = call i64 @C_i_nequalp(i64 noundef %63, i64 noundef 1)
  %65 = icmp ne i64 %64, 6
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i64, ptr %7, align 8
  store i64 %67, ptr %9, align 8
  %68 = load ptr, ptr %4, align 8
  store ptr %68, ptr %14, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 %69, ptr %71, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 3, ptr %73, align 8
  %74 = load i64, ptr %9, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  %77 = load i64, ptr %76, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = load ptr, ptr %14, align 8
  call void %78(i64 noundef 2, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %62
  %81 = load i64, ptr %8, align 8
  %82 = call i64 @C_i_nequalp(i64 noundef %81, i64 noundef 3)
  store i64 %82, ptr %9, align 8
  %83 = load i64, ptr %7, align 8
  store i64 %83, ptr %10, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %15, align 8
  %85 = load i64, ptr %10, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %9, align 8
  %89 = icmp ne i64 %88, 6
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %93

91:                                               ; preds = %80
  %92 = load i64, ptr %8, align 8
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i64 [ 1, %90 ], [ %92, %91 ]
  %95 = load ptr, ptr %15, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr %10, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = load ptr, ptr %15, align 8
  call void %101(i64 noundef 2, ptr noundef %102) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_860(i64 noundef %0, ptr noundef %1) #2 {
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
  %38 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
  store ptr %38, ptr %12, align 8
  %39 = load ptr, ptr %12, align 8
  store ptr %39, ptr %13, align 8
  %40 = load ptr, ptr %13, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_860, i32 noundef %61, ptr noundef %62) #4
  unreachable

63:                                               ; preds = %37
  %64 = load i64, ptr %8, align 8
  %65 = call i64 @C_i_nequalp(i64 noundef %64, i64 noundef 1)
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i64, ptr %7, align 8
  store i64 %68, ptr %9, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %72, align 8
  %73 = load ptr, ptr %14, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 3, ptr %74, align 8
  %75 = load i64, ptr %9, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr %14, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable

81:                                               ; preds = %63
  %82 = load i64, ptr %8, align 8
  %83 = call i64 @C_i_nequalp(i64 noundef %82, i64 noundef 3)
  %84 = icmp ne i64 %83, 6
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i64, ptr %7, align 8
  store i64 %86, ptr %9, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %15, align 8
  %88 = load i64, ptr %9, align 8
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 5, ptr %92, align 8
  %93 = load i64, ptr %9, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = load ptr, ptr %15, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable

99:                                               ; preds = %81
  %100 = load i64, ptr %8, align 8
  %101 = call i64 @C_i_nequalp(i64 noundef %100, i64 noundef 5)
  store i64 %101, ptr %9, align 8
  %102 = load i64, ptr %7, align 8
  store i64 %102, ptr %10, align 8
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %16, align 8
  %104 = load i64, ptr %10, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 0
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %9, align 8
  %108 = icmp ne i64 %107, 6
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %112

110:                                              ; preds = %99
  %111 = load i64, ptr %8, align 8
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i64 [ 1, %109 ], [ %111, %110 ]
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %10, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load i64, ptr %118, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = load ptr, ptr %16, align 8
  call void %120(i64 noundef 2, ptr noundef %121) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_881(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !50
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
  %51 = add nsw i32 0, %50
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
  call void @C_save_and_reclaim(ptr noundef @f_881, i32 noundef %62, ptr noundef %63) #4
  unreachable

64:                                               ; preds = %38
  %65 = load i64, ptr %8, align 8
  %66 = call i64 @C_i_nequalp(i64 noundef %65, i64 noundef 1)
  %67 = icmp ne i64 %66, 6
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i64, ptr %7, align 8
  store i64 %69, ptr %9, align 8
  %70 = load ptr, ptr %4, align 8
  store ptr %70, ptr %14, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 0
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 3, ptr %75, align 8
  %76 = load i64, ptr %9, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = load ptr, ptr %14, align 8
  call void %80(i64 noundef 2, ptr noundef %81) #4
  unreachable

82:                                               ; preds = %64
  %83 = load i64, ptr %8, align 8
  %84 = call i64 @C_i_nequalp(i64 noundef %83, i64 noundef 3)
  %85 = icmp ne i64 %84, 6
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i64, ptr %7, align 8
  store i64 %87, ptr %9, align 8
  %88 = load ptr, ptr %4, align 8
  store ptr %88, ptr %15, align 8
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %15, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 1, ptr %93, align 8
  %94 = load i64, ptr %9, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = load ptr, ptr %15, align 8
  call void %98(i64 noundef 2, ptr noundef %99) #4
  unreachable

100:                                              ; preds = %82
  %101 = load i64, ptr %8, align 8
  %102 = call i64 @C_i_nequalp(i64 noundef %101, i64 noundef 5)
  %103 = icmp ne i64 %102, 6
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i64, ptr %7, align 8
  store i64 %105, ptr %9, align 8
  %106 = load ptr, ptr %4, align 8
  store ptr %106, ptr %16, align 8
  %107 = load i64, ptr %9, align 8
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %16, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 7, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = load ptr, ptr %16, align 8
  call void %116(i64 noundef 2, ptr noundef %117) #4
  unreachable

118:                                              ; preds = %100
  %119 = load i64, ptr %8, align 8
  %120 = call i64 @C_i_nequalp(i64 noundef %119, i64 noundef 7)
  store i64 %120, ptr %9, align 8
  %121 = load i64, ptr %7, align 8
  store i64 %121, ptr %10, align 8
  %122 = load ptr, ptr %4, align 8
  store ptr %122, ptr %17, align 8
  %123 = load i64, ptr %10, align 8
  %124 = load ptr, ptr %17, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 0
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %9, align 8
  %127 = icmp ne i64 %126, 6
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %131

129:                                              ; preds = %118
  %130 = load i64, ptr %8, align 8
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i64 [ 5, %128 ], [ %130, %129 ]
  %133 = load ptr, ptr %17, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %10, align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  %138 = load i64, ptr %137, align 8
  %139 = inttoptr i64 %138 to ptr
  %140 = load ptr, ptr %17, align 8
  call void %139(i64 noundef 2, ptr noundef %140) #4
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
define internal void @f_918(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !51
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
  %40 = add nsw i32 0, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_918, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @C_i_greater_or_equalp(i64 noundef %57, i64 noundef 1)
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %7, align 8
  %67 = call i64 @C_i_vector_length(i64 noundef %66)
  %68 = call i64 @C_i_lessp(i64 noundef %65, i64 noundef %67)
  br label %70

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i64 [ %68, %61 ], [ 6, %69 ]
  store i64 %71, ptr %9, align 8
  %72 = load i64, ptr %9, align 8
  %73 = icmp ne i64 %72, 6
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %10, align 8
  %79 = load ptr, ptr %4, align 8
  store ptr %79, ptr %14, align 8
  %80 = load i64, ptr %10, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 0
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %7, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %87 = load i64, ptr %86, align 8
  %88 = call i64 @C_i_vector_ref(i64 noundef %83, i64 noundef %87)
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %10, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = load ptr, ptr %14, align 8
  call void %95(i64 noundef 2, ptr noundef %96) #4
  unreachable

97:                                               ; preds = %70
  call void @C_trace(ptr noundef @.str.95)
  %98 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 23), align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 8
  %102 = call ptr @C_fast_retrieve_proc(i64 noundef %101)
  store ptr %102, ptr %15, align 8
  %103 = load i64, ptr %3, align 8
  %104 = icmp sge i64 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load ptr, ptr %4, align 8
  store ptr %106, ptr %16, align 8
  br label %109

107:                                              ; preds = %97
  %108 = alloca i8, i64 32, align 16
  store ptr %108, ptr %16, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 23), align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %16, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 0
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %16, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 24), align 16
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %16, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 3
  store i64 %128, ptr %130, align 8
  %131 = load ptr, ptr %15, align 8
  %132 = load ptr, ptr %16, align 8
  call void %131(i64 noundef 4, ptr noundef %132) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) #1

declare i64 @C_i_lessp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_948(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %16 = alloca [3 x i64], align 16
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
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !52
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_948, i32 noundef 4, i64 noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %21
  %43 = alloca i8, i64 64, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %7, align 8
  %45 = call i64 @C_i_nequalp(i64 noundef %44, i64 noundef 49)
  %46 = icmp ne i64 %45, 6
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i64, ptr %6, align 8
  store i64 %48, ptr %10, align 8
  %49 = load i64, ptr %10, align 8
  %50 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  store i64 %49, ptr %50, align 16
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 %51, ptr %52, align 8
  %53 = load i64, ptr %10, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  %56 = load i64, ptr %55, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  call void %57(i64 noundef 2, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %42
  %60 = load ptr, ptr %12, align 8
  store i64 2594073385365405703, ptr %60, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 ptrtoint (ptr @f_989 to i64), ptr %62, align 8
  %63 = load i64, ptr %5, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %7, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %5, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 4
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %5, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 7
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = ptrtoint ptr %90 to i64
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 8
  store ptr %93, ptr %12, align 8
  %94 = load i64, ptr %9, align 8
  store i64 %94, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.96)
  %95 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  store i64 0, ptr %95, align 16
  %96 = load i64, ptr %10, align 8
  %97 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 1
  store i64 %96, ptr %97, align 8
  %98 = load i64, ptr %7, align 8
  %99 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 2
  store i64 %98, ptr %99, align 16
  %100 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  call void @C_minus(i64 noundef 3, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_948(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_948(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_989(i64 noundef %0, ptr noundef %1) #2 {
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
  store ptr %27, ptr %13, align 8
  %28 = load ptr, ptr %13, align 8
  store ptr %28, ptr %14, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = load ptr, ptr @C_stack_limit, align 8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = load i64, ptr %3, align 8
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nsw i32 17, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_989, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 136, align 16
  store ptr %53, ptr %12, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %12, i64 noundef 2, i64 noundef %57, i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load i64, ptr %8, align 8
  %61 = call i64 @C_s_a_i_bitwise_and(ptr noundef %12, i64 noundef 2, i64 noundef %60, i64 noundef 3)
  store i64 %61, ptr %9, align 8
  %62 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_961 to i64), ptr %64, align 8
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
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 5
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
  %88 = getelementptr inbounds i64, ptr %87, i64 6
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 7
  store ptr %95, ptr %12, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.97)
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 7
  %100 = load i64, ptr %99, align 8
  store i64 %100, ptr %11, align 8
  %101 = load i64, ptr %3, align 8
  %102 = icmp sge i64 %101, 3
  br i1 %102, label %103, label %105

103:                                              ; preds = %52
  %104 = load ptr, ptr %4, align 8
  store ptr %104, ptr %15, align 8
  br label %107

105:                                              ; preds = %52
  %106 = alloca i8, i64 24, align 16
  store ptr %106, ptr %15, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i64, ptr %11, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %10, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %6, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  %117 = load i64, ptr %116, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  store i64 %117, ptr %119, align 8
  %120 = load i64, ptr %11, align 8
  %121 = call ptr @C_fast_retrieve_proc(i64 noundef %120)
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_961(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
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
  %37 = add nsw i32 15, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_961, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 120, align 16
  store ptr %51, ptr %11, align 8
  %52 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_964 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 4
  %70 = load i64, ptr %69, align 8
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
  store i64 %77, ptr %8, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  %81 = load i64, ptr %80, align 8
  %82 = call i64 @C_i_nequalp(i64 noundef %81, i64 noundef 3)
  %83 = icmp ne i64 %82, 6
  br i1 %83, label %84, label %95

84:                                               ; preds = %50
  %85 = load i64, ptr %7, align 8
  %86 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %11, i64 noundef 2, i64 noundef 3, i64 noundef %85)
  store i64 %86, ptr %9, align 8
  %87 = load i64, ptr %8, align 8
  store i64 %87, ptr %10, align 8
  %88 = load i64, ptr %10, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  %92 = load i64, ptr %91, align 8
  %93 = load i64, ptr %9, align 8
  %94 = call i64 @C_s_a_i_bitwise_ior(ptr noundef %11, i64 noundef 2, i64 noundef %92, i64 noundef %93)
  call void @f_964(i64 noundef %88, i64 noundef %94) #4
  unreachable

95:                                               ; preds = %50
  %96 = load i64, ptr %8, align 8
  store i64 %96, ptr %9, align 8
  %97 = load i64, ptr %9, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 6
  %101 = load i64, ptr %100, align 8
  call void @f_964(i64 noundef %97, i64 noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_964(i64 noundef %0, i64 noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
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
  %16 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  store ptr %16, ptr %9, align 8
  %17 = load ptr, ptr %9, align 8
  store ptr %17, ptr %10, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = load ptr, ptr @C_stack_limit, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = load i64, ptr @C_scratch_usage, align 8
  %25 = add nsw i64 32, %24
  %26 = icmp sgt i64 %23, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i64, ptr %3, align 8
  %33 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_964, i32 noundef 2, i64 noundef %32, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %15
  %35 = alloca i8, i64 232, align 16
  store ptr %35, ptr %8, align 8
  %36 = load i64, ptr %3, align 8
  %37 = inttoptr i64 %36 to ptr
  %38 = getelementptr inbounds i64, ptr %37, i64 2
  %39 = load i64, ptr %38, align 8
  %40 = call i64 @C_s_a_i_plus(ptr noundef %8, i64 noundef 2, i64 noundef %39, i64 noundef 3)
  store i64 %40, ptr %6, align 8
  call void @C_trace(ptr noundef @.str.98)
  %41 = load i64, ptr %3, align 8
  %42 = inttoptr i64 %41 to ptr
  %43 = getelementptr inbounds i64, ptr %42, i64 3
  %44 = load i64, ptr %43, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  %47 = load i64, ptr %46, align 8
  store i64 %47, ptr %7, align 8
  %48 = load i64, ptr %7, align 8
  %49 = load i64, ptr %3, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 4
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %6, align 8
  %54 = load i64, ptr %4, align 8
  call void @f_948(i64 noundef %48, i64 noundef %52, i64 noundef %53, i64 noundef %54) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_964(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_964(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_bad_min_argc_2(i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noreturn
declare void @C_rest_arg_out_of_bounds_error_2(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_998(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_998, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1001 to i64), ptr %55, align 8
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
  %77 = load ptr, ptr %10, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 6
  store ptr %80, ptr %10, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.100)
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
  %83 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %82)
  store ptr %83, ptr %13, align 8
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 3), align 8
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
  %94 = load ptr, ptr %13, align 8
  %95 = load ptr, ptr %14, align 8
  call void %94(i64 noundef 2, ptr noundef %95) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1001(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  call void @C_save_and_reclaim(ptr noundef @f_1001, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 96, align 16
  store ptr %53, ptr %13, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @C_a_i_list1(ptr noundef %13, i32 noundef 1, i64 noundef %57)
  store i64 %58, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %59 = load ptr, ptr %13, align 8
  store i64 1, ptr %59, align 8
  %60 = load i64, ptr %9, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  store i64 %60, ptr %62, align 8
  %63 = load ptr, ptr %13, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store ptr %66, ptr %13, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %10, align 8
  %68 = load ptr, ptr %13, align 8
  store i64 2594073385365405702, ptr %68, align 8
  %69 = load ptr, ptr %13, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1009 to i64), ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %76, align 8
  %77 = load i64, ptr %7, align 8
  %78 = load ptr, ptr %13, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 6
  store i64 ptrtoint (ptr @li22 to i64), ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 7
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
  %105 = load i64, ptr %6, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 5
  %108 = load i64, ptr %107, align 8
  %109 = load i64, ptr %8, align 8
  call void @f_1009(i64 noundef %104, i64 noundef %108, i64 noundef %109, i64 noundef 1) #4
  unreachable
}

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
define internal void @f_1009(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %20 = alloca [3 x i64], align 16
  %21 = alloca ptr, align 8
  %22 = alloca [5 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %4
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  %37 = add nsw i64 13, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr %6, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1009, i32 noundef 4, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47) #4
  unreachable

48:                                               ; preds = %27
  %49 = alloca i8, i64 72, align 16
  store ptr %49, ptr %16, align 8
  %50 = load i64, ptr %7, align 8
  %51 = icmp eq i64 %50, 14
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i64 22, i64 6
  store i64 %53, ptr %10, align 8
  %54 = load i64, ptr %10, align 8
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i64, ptr %10, align 8
  br label %65

58:                                               ; preds = %48
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %5, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = call i64 @C_i_greater_or_equalp(i64 noundef %59, i64 noundef %63)
  br label %65

65:                                               ; preds = %58, %56
  %66 = phi i64 [ %57, %56 ], [ %64, %58 ]
  store i64 %66, ptr %11, align 8
  %67 = load i64, ptr %11, align 8
  %68 = icmp ne i64 %67, 6
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  call void @C_trace(ptr noundef @.str.101)
  %70 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 27), align 8
  %71 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
  store ptr %71, ptr %19, align 8
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 27), align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 0
  store i64 %75, ptr %76, align 16
  %77 = load i64, ptr %6, align 8
  %78 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 1
  store i64 %77, ptr %78, align 8
  %79 = load i64, ptr %5, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 2
  store i64 %82, ptr %83, align 16
  %84 = load ptr, ptr %19, align 8
  %85 = getelementptr inbounds [3 x i64], ptr %20, i64 0, i64 0
  call void %84(i64 noundef 3, ptr noundef %85) #4
  unreachable

86:                                               ; preds = %65
  %87 = load i64, ptr %7, align 8
  %88 = call i64 @C_i_car(i64 noundef %87)
  store i64 %88, ptr %12, align 8
  %89 = load i64, ptr %7, align 8
  %90 = call i64 @C_i_cdr(i64 noundef %89)
  store i64 %90, ptr %13, align 8
  %91 = load ptr, ptr %16, align 8
  store i64 2594073385365405704, ptr %91, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  store i64 ptrtoint (ptr @f_1034 to i64), ptr %93, align 8
  %94 = load i64, ptr %5, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %16, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = load ptr, ptr %16, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %13, align 8
  %104 = load ptr, ptr %16, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %8, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 5
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %5, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 5
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 6
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %12, align 8
  %116 = load ptr, ptr %16, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 7
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %5, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 8
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %16, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %9, align 8
  %126 = load ptr, ptr %16, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 9
  store ptr %127, ptr %16, align 8
  %128 = load i64, ptr %9, align 8
  store i64 %128, ptr %14, align 8
  call void @C_trace(ptr noundef @.str.102)
  %129 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), align 8
  %130 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %129)
  store ptr %130, ptr %21, align 8
  %131 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), align 8
  %132 = inttoptr i64 %131 to ptr
  %133 = getelementptr inbounds i64, ptr %132, i64 1
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 0
  store i64 %134, ptr %135, align 16
  %136 = load i64, ptr %14, align 8
  %137 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 1
  store i64 %136, ptr %137, align 8
  %138 = load i64, ptr %5, align 8
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 3
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 2
  store i64 %141, ptr %142, align 16
  %143 = load i64, ptr %12, align 8
  %144 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 3
  store i64 %143, ptr %144, align 8
  %145 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 4
  store i64 6, ptr %145, align 16
  %146 = load ptr, ptr %21, align 8
  %147 = getelementptr inbounds [5 x i64], ptr %22, i64 0, i64 0
  call void %146(i64 noundef 5, ptr noundef %147) #4
  unreachable
}

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
define internal void @trf_1009(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1009(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1034(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_1034, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %7, align 8
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.103)
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %8, align 8
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  %75 = load i64, ptr %74, align 8
  call void @f_1009(i64 noundef %63, i64 noundef %67, i64 noundef %71, i64 noundef %75) #4
  unreachable

76:                                               ; preds = %51
  %77 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %77, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1040 to i64), ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 5
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 3
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 6
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %10, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 7
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %10, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 6
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %6, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %10, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 7
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %10, align 8
  %117 = ptrtoint ptr %116 to i64
  store i64 %117, ptr %5, align 8
  %118 = load ptr, ptr %10, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 8
  store ptr %119, ptr %10, align 8
  %120 = load i64, ptr %5, align 8
  store i64 %120, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.104)
  %121 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 28), align 16
  %122 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %121)
  store ptr %122, ptr %13, align 8
  %123 = load i64, ptr %3, align 8
  %124 = icmp sge i64 %123, 5
  br i1 %124, label %125, label %127

125:                                              ; preds = %76
  %126 = load ptr, ptr %4, align 8
  store ptr %126, ptr %14, align 8
  br label %129

127:                                              ; preds = %76
  %128 = alloca i8, i64 40, align 16
  store ptr %128, ptr %14, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 28), align 16
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %14, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 0
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %8, align 8
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 %136, ptr %138, align 8
  %139 = load i64, ptr %6, align 8
  %140 = inttoptr i64 %139 to ptr
  %141 = getelementptr inbounds i64, ptr %140, i64 8
  %142 = load i64, ptr %141, align 8
  %143 = load ptr, ptr %14, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  store i64 %142, ptr %144, align 8
  %145 = load i64, ptr %6, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 7
  %148 = load i64, ptr %147, align 8
  %149 = load ptr, ptr %14, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 3
  store i64 %148, ptr %150, align 8
  %151 = load ptr, ptr %14, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 4
  store i64 22, ptr %152, align 8
  %153 = load ptr, ptr %13, align 8
  %154 = load ptr, ptr %14, align 8
  call void %153(i64 noundef 5, ptr noundef %154) #4
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  call void @C_save_and_reclaim(ptr noundef @f_1040, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 104, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1043 to i64), ptr %56, align 8
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
  %75 = load ptr, ptr %13, align 8
  %76 = ptrtoint ptr %75 to i64
  store i64 %76, ptr %5, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store ptr %78, ptr %13, align 8
  %79 = load i64, ptr %5, align 8
  store i64 %79, ptr %8, align 8
  store i64 30, ptr %9, align 8
  %80 = load ptr, ptr %13, align 8
  store i64 1, ptr %80, align 8
  %81 = load i64, ptr %9, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %5, align 8
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store ptr %87, ptr %13, align 8
  %88 = load i64, ptr %5, align 8
  store i64 %88, ptr %10, align 8
  %89 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %89, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  store i64 ptrtoint (ptr @f_1052 to i64), ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %10, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 6
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 5
  store i64 ptrtoint (ptr @li21 to i64), ptr %108, align 8
  %109 = load ptr, ptr %13, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %13, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 6
  store ptr %112, ptr %13, align 8
  %113 = load i64, ptr %5, align 8
  %114 = load i64, ptr %10, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds %struct.C_block_struct, ptr %115, i32 0, i32 1
  %117 = getelementptr inbounds [0 x i64], ptr %116, i64 0, i64 0
  store i64 %113, ptr %117, align 8
  store i64 %113, ptr %11, align 8
  %118 = load i64, ptr %10, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  store i64 %121, ptr %12, align 8
  %122 = load i64, ptr %12, align 8
  %123 = load i64, ptr %8, align 8
  %124 = load i64, ptr %6, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds i64, ptr %125, i64 7
  %127 = load i64, ptr %126, align 8
  call void @f_1052(i64 noundef %122, i64 noundef %123, i64 noundef 1, i64 noundef %127) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1043, i32 noundef %47, ptr noundef %48) #4
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
  call void @C_trace(ptr noundef @.str.105)
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
  call void @f_1009(i64 noundef %63, i64 noundef %67, i64 noundef %68, i64 noundef %69) #4
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
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca [4 x i64], align 16
  %20 = alloca [2 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %4
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  store ptr %26, ptr %16, align 8
  %27 = load ptr, ptr %16, align 8
  store ptr %27, ptr %17, align 8
  %28 = load ptr, ptr %17, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr @C_scratch_usage, align 8
  %35 = add nsw i64 38, %34
  %36 = icmp sgt i64 %33, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load i64, ptr %5, align 8
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %7, align 8
  %45 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1052, i32 noundef 4, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef %45) #4
  unreachable

46:                                               ; preds = %25
  %47 = alloca i8, i64 280, align 16
  store ptr %47, ptr %15, align 8
  %48 = load i64, ptr %5, align 8
  %49 = inttoptr i64 %48 to ptr
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  %51 = load i64, ptr %50, align 8
  %52 = call i64 @C_i_vector_length(i64 noundef %51)
  store i64 %52, ptr %10, align 8
  %53 = load i64, ptr %7, align 8
  %54 = load i64, ptr %10, align 8
  %55 = call i64 @C_i_lessp(i64 noundef %53, i64 noundef %54)
  %56 = icmp ne i64 %55, 6
  br i1 %56, label %57, label %107

57:                                               ; preds = %46
  %58 = load i64, ptr %5, align 8
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  %61 = load i64, ptr %60, align 8
  %62 = load i64, ptr %7, align 8
  %63 = call i64 @C_i_vector_ref(i64 noundef %61, i64 noundef %62)
  store i64 %63, ptr %11, align 8
  %64 = load i64, ptr %7, align 8
  %65 = call i64 @C_s_a_i_plus(ptr noundef %15, i64 noundef 2, i64 noundef %64, i64 noundef 3)
  store i64 %65, ptr %12, align 8
  %66 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %66, align 8
  %67 = load ptr, ptr %15, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_1077 to i64), ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = load ptr, ptr %15, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %5, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %15, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = load ptr, ptr %15, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %12, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %15, align 8
  %85 = ptrtoint ptr %84 to i64
  store i64 %85, ptr %9, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  store ptr %87, ptr %15, align 8
  %88 = load i64, ptr %9, align 8
  store i64 %88, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.106)
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
  %90 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %89)
  store ptr %90, ptr %18, align 8
  %91 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 0
  store i64 %94, ptr %95, align 16
  %96 = load i64, ptr %13, align 8
  %97 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 1
  store i64 %96, ptr %97, align 8
  %98 = load i64, ptr %11, align 8
  %99 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 2
  store i64 %98, ptr %99, align 16
  %100 = load i64, ptr %5, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 3
  store i64 %103, ptr %104, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = getelementptr inbounds [4 x i64], ptr %19, i64 0, i64 0
  call void %105(i64 noundef 4, ptr noundef %106) #4
  unreachable

107:                                              ; preds = %46
  %108 = load i64, ptr %6, align 8
  store i64 %108, ptr %11, align 8
  %109 = load i64, ptr %11, align 8
  %110 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  store i64 %109, ptr %110, align 16
  %111 = load i64, ptr %8, align 8
  %112 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 1
  store i64 %111, ptr %112, align 8
  %113 = load i64, ptr %11, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  call void %117(i64 noundef 2, ptr noundef %118) #4
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1077(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
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
  call void @C_save_and_reclaim(ptr noundef @f_1077, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = ptrtoint ptr %53 to i64
  store i64 %54, ptr %13, align 8
  %55 = load ptr, ptr %10, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 0
  store i64 216172782113783810, ptr %56, align 8
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store ptr %58, ptr %10, align 8
  %59 = load i64, ptr %7, align 8
  %60 = load i64, ptr %13, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds %struct.C_block_struct, ptr %61, i32 0, i32 1
  %63 = getelementptr inbounds [0 x i64], ptr %62, i64 0, i64 0
  store i64 %59, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %13, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds %struct.C_block_struct, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds [0 x i64], ptr %70, i64 0, i64 1
  store i64 %67, ptr %71, align 8
  %72 = load i64, ptr %13, align 8
  store i64 %72, ptr %14, align 8
  %73 = load i64, ptr %14, align 8
  store i64 %73, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.107)
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  %80 = load i64, ptr %79, align 8
  store i64 %80, ptr %9, align 8
  %81 = load i64, ptr %9, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  %85 = load i64, ptr %84, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  %89 = load i64, ptr %88, align 8
  %90 = load i64, ptr %8, align 8
  call void @f_1052(i64 noundef %81, i64 noundef %85, i64 noundef %89, i64 noundef %90) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1096(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !64
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
  call void @C_save_and_reclaim(ptr noundef @f_1096, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
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
  store i64 2594073385365405701, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1101 to i64), ptr %64, align 8
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
  %74 = load i64, ptr %7, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  store i64 ptrtoint (ptr @li25 to i64), ptr %78, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %12, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 6
  store ptr %82, ptr %12, align 8
  %83 = load i64, ptr %5, align 8
  %84 = load i64, ptr %9, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds %struct.C_block_struct, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [0 x i64], ptr %86, i64 0, i64 0
  store i64 %83, ptr %87, align 8
  store i64 %83, ptr %10, align 8
  %88 = load i64, ptr %9, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %11, align 8
  %92 = load i64, ptr %11, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  call void @f_1101(i64 noundef %92, i64 noundef %96, i64 noundef 1, i64 noundef 14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1101(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %18 = alloca [3 x i64], align 16
  %19 = alloca ptr, align 8
  %20 = alloca [4 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %21 = load i64, ptr @C_timer_interrupt_counter, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr @C_timer_interrupt_counter, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  call void @C_raise_interrupt(i32 noundef 255)
  br label %25

25:                                               ; preds = %24, %4
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
  store ptr %26, ptr %15, align 8
  %27 = load ptr, ptr %15, align 8
  store ptr %27, ptr %16, align 8
  %28 = load ptr, ptr %16, align 8
  %29 = load ptr, ptr @C_stack_limit, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = load i64, ptr @C_scratch_usage, align 8
  %35 = add nsw i64 45, %34
  %36 = icmp sgt i64 %33, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load i64, ptr %5, align 8
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %7, align 8
  %45 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1101, i32 noundef 4, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef %45) #4
  unreachable

46:                                               ; preds = %25
  %47 = alloca i8, i64 336, align 16
  store ptr %47, ptr %14, align 8
  %48 = load i64, ptr %7, align 8
  %49 = load i64, ptr %5, align 8
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds i64, ptr %50, i64 2
  %52 = load i64, ptr %51, align 8
  %53 = call i64 @C_i_greaterp(i64 noundef %48, i64 noundef %52)
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %72

55:                                               ; preds = %46
  call void @C_trace(ptr noundef @.str.109)
  %56 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), align 16
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  %59 = load i64, ptr %58, align 8
  %60 = call ptr @C_fast_retrieve_proc(i64 noundef %59)
  store ptr %60, ptr %17, align 8
  %61 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 10), align 16
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 1
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %64, ptr %65, align 16
  %66 = load i64, ptr %6, align 8
  %67 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %66, ptr %67, align 8
  %68 = load i64, ptr %8, align 8
  %69 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %68, ptr %69, align 16
  %70 = load ptr, ptr %17, align 8
  %71 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %70(i64 noundef 3, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %73, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_1114 to i64), ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %8, align 8
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %5, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 4
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 5
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %9, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 6
  store ptr %94, ptr %14, align 8
  %95 = load i64, ptr %9, align 8
  store i64 %95, ptr %10, align 8
  %96 = load ptr, ptr %14, align 8
  store i64 2594073385365405698, ptr %96, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  store i64 ptrtoint (ptr @f_1161 to i64), ptr %98, align 8
  %99 = load i64, ptr %10, align 8
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %9, align 8
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store ptr %105, ptr %14, align 8
  %106 = load i64, ptr %9, align 8
  store i64 %106, ptr %11, align 8
  %107 = load i64, ptr %7, align 8
  %108 = load i64, ptr %5, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  %111 = load i64, ptr %110, align 8
  %112 = call i64 @C_s_a_i_times(ptr noundef %14, i64 noundef 2, i64 noundef %107, i64 noundef %111)
  store i64 %112, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.110)
  %113 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 36), align 16
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = call ptr @C_fast_retrieve_proc(i64 noundef %116)
  store ptr %117, ptr %19, align 8
  %118 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 36), align 16
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 0
  store i64 %121, ptr %122, align 16
  %123 = load i64, ptr %11, align 8
  %124 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 1
  store i64 %123, ptr %124, align 8
  %125 = load i64, ptr %12, align 8
  %126 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 2
  store i64 %125, ptr %126, align 16
  %127 = load i64, ptr %5, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 3
  store i64 %130, ptr %131, align 8
  %132 = load ptr, ptr %19, align 8
  %133 = getelementptr inbounds [4 x i64], ptr %20, i64 0, i64 0
  call void %132(i64 noundef 4, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1101(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1101(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_greaterp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1114(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  call void @C_save_and_reclaim(ptr noundef @f_1114, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 320, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405702, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1117 to i64), ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %7, align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 33), align 8
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @C_s_a_i_times(ptr noundef %11, i64 noundef 2, i64 noundef %89, i64 noundef %90)
  store i64 %91, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.111)
  %92 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 34), align 16
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
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 34), align 16
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %8, align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = load ptr, ptr %15, align 8
  call void %116(i64 noundef 3, ptr noundef %117) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1161, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.117)
  %51 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 35), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 35), align 8
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

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
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
  call void @C_save_and_reclaim(ptr noundef @f_1117, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 144, align 16
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %13, align 8
  store i64 2594073385365405702, ptr %54, align 8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1120 to i64), ptr %56, align 8
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
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 6
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 6
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %5, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 7
  store ptr %90, ptr %13, align 8
  %91 = load i64, ptr %5, align 8
  store i64 %91, ptr %8, align 8
  %92 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @f_1137 to i64), ptr %94, align 8
  %95 = load i64, ptr %7, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 ptrtoint (ptr @li24 to i64), ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = ptrtoint ptr %100 to i64
  store i64 %101, ptr %5, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 4
  store ptr %103, ptr %13, align 8
  %104 = load i64, ptr %5, align 8
  store i64 %104, ptr %9, align 8
  %105 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %105, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 ptrtoint (ptr @f_1149 to i64), ptr %107, align 8
  %108 = load i64, ptr %8, align 8
  %109 = load ptr, ptr %13, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %9, align 8
  %112 = load ptr, ptr %13, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %13, align 8
  %115 = ptrtoint ptr %114 to i64
  store i64 %115, ptr %5, align 8
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 4
  store ptr %117, ptr %13, align 8
  %118 = load i64, ptr %5, align 8
  store i64 %118, ptr %10, align 8
  %119 = load ptr, ptr %13, align 8
  store i64 2594073385365405698, ptr %119, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 ptrtoint (ptr @f_1153 to i64), ptr %121, align 8
  %122 = load i64, ptr %10, align 8
  %123 = load ptr, ptr %13, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store i64 %122, ptr %124, align 8
  %125 = load ptr, ptr %13, align 8
  %126 = ptrtoint ptr %125 to i64
  store i64 %126, ptr %5, align 8
  %127 = load ptr, ptr %13, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 3
  store ptr %128, ptr %13, align 8
  %129 = load i64, ptr %5, align 8
  store i64 %129, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.112)
  %130 = load i64, ptr %11, align 8
  call void @f_1300(i64 noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1120(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  %42 = add nsw i32 35, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_1120, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 280, align 16
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %60, i64 noundef 3)
  store i64 %61, ptr %8, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %15, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 216172782113783810, ptr %65, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store ptr %67, ptr %12, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = load i64, ptr %15, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 0
  store i64 %71, ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load i64, ptr %15, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds %struct.C_block_struct, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds [0 x i64], ptr %79, i64 0, i64 1
  store i64 %76, ptr %80, align 8
  %81 = load i64, ptr %15, align 8
  store i64 %81, ptr %16, align 8
  %82 = load i64, ptr %16, align 8
  store i64 %82, ptr %9, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %17, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 216172782113783810, ptr %86, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store ptr %88, ptr %12, align 8
  %89 = load i64, ptr %9, align 8
  %90 = load i64, ptr %17, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds %struct.C_block_struct, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds [0 x i64], ptr %92, i64 0, i64 0
  store i64 %89, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = load i64, ptr %17, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  store i64 %97, ptr %101, align 8
  %102 = load i64, ptr %17, align 8
  store i64 %102, ptr %18, align 8
  %103 = load i64, ptr %18, align 8
  store i64 %103, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.113)
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 5
  %107 = load i64, ptr %106, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  store i64 %110, ptr %11, align 8
  %111 = load i64, ptr %11, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 6
  %115 = load i64, ptr %114, align 8
  %116 = load i64, ptr %8, align 8
  %117 = load i64, ptr %10, align 8
  call void @f_1101(i64 noundef %111, i64 noundef %115, i64 noundef %116, i64 noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1137(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  call void @C_save_and_reclaim(ptr noundef @f_1137, i32 noundef %60, ptr noundef %61) #4
  unreachable

62:                                               ; preds = %36
  %63 = alloca i8, i64 32, align 16
  store ptr %63, ptr %11, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_1145 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 4
  store ptr %79, ptr %11, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.114)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %82 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %81)
  store ptr %82, ptr %14, align 8
  %83 = load ptr, ptr %4, align 8
  store ptr %83, ptr %15, align 8
  %84 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 0
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %9, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %8, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = load ptr, ptr %15, align 8
  call void %96(i64 noundef 3, ptr noundef %97) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1149(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  call void @C_save_and_reclaim(ptr noundef @f_1149, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.115)
  %51 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %60 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 31), align 8
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
  %81 = load ptr, ptr %12, align 8
  %82 = load ptr, ptr %13, align 8
  call void %81(i64 noundef 4, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1153(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1153, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.116)
  %51 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 32), align 16
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
  %63 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 32), align 16
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

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1145(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !73
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
  call void @C_save_and_reclaim(ptr noundef @f_1145, i32 noundef %47, ptr noundef %48) #4
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
  %63 = call i64 @C_i_less_or_equalp(i64 noundef %58, i64 noundef %62)
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

declare i64 @C_i_less_or_equalp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1174(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1174, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.119)
  %55 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), align 8
  %56 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %55)
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %3, align 8
  %58 = icmp sge i64 %57, 5
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load ptr, ptr %4, align 8
  store ptr %60, ptr %13, align 8
  br label %63

61:                                               ; preds = %54
  %62 = alloca i8, i64 40, align 16
  store ptr %62, ptr %13, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %80 = call i64 @C_i_vector_ref(i64 noundef %79, i64 noundef 9)
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store i64 14, ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = load ptr, ptr %13, align 8
  call void %91(i64 noundef 5, ptr noundef %92) #4
  unreachable

93:                                               ; preds = %51
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  %97 = load i64, ptr %96, align 8
  store i64 %97, ptr %8, align 8
  %98 = load ptr, ptr %4, align 8
  store ptr %98, ptr %14, align 8
  %99 = load i64, ptr %8, align 8
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 0
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %14, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 14, ptr %103, align 8
  %104 = load i64, ptr %8, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = load ptr, ptr %14, align 8
  call void %108(i64 noundef 2, ptr noundef %109) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1210(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !75
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
  call void @C_save_and_reclaim(ptr noundef @f_1210, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 32, align 16
  store ptr %56, ptr %12, align 8
  %57 = load i64, ptr %7, align 8
  %58 = icmp ne i64 %57, 6
  br i1 %58, label %59, label %136

59:                                               ; preds = %55
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = call i64 @C_i_vector_ref(i64 noundef %63, i64 noundef 3)
  store i64 %64, ptr %8, align 8
  %65 = load i64, ptr %8, align 8
  %66 = call i64 @C_i_vector_length(i64 noundef %65)
  store i64 %66, ptr %9, align 8
  %67 = load i64, ptr %9, align 8
  %68 = call i64 @C_i_nequalp(i64 noundef %67, i64 noundef 1519)
  %69 = icmp ne i64 %68, 6
  br i1 %69, label %70, label %119

70:                                               ; preds = %59
  %71 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %71, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 ptrtoint (ptr @f_1222 to i64), ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = ptrtoint ptr %86 to i64
  store i64 %87, ptr %5, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  store ptr %89, ptr %12, align 8
  %90 = load i64, ptr %5, align 8
  store i64 %90, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.122)
  %91 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 40), align 16
  %92 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %91)
  store ptr %92, ptr %15, align 8
  %93 = load i64, ptr %3, align 8
  %94 = icmp sge i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %70
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %16, align 8
  br label %99

97:                                               ; preds = %70
  %98 = alloca i8, i64 32, align 16
  store ptr %98, ptr %16, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 40), align 16
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
  %109 = load ptr, ptr %16, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 6, ptr %110, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %16, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %116, align 8
  %117 = load ptr, ptr %15, align 8
  %118 = load ptr, ptr %16, align 8
  call void %117(i64 noundef 4, ptr noundef %118) #4
  unreachable

119:                                              ; preds = %59
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 3
  %123 = load i64, ptr %122, align 8
  store i64 %123, ptr %10, align 8
  %124 = load ptr, ptr %4, align 8
  store ptr %124, ptr %17, align 8
  %125 = load i64, ptr %10, align 8
  %126 = load ptr, ptr %17, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 0
  store i64 %125, ptr %127, align 8
  %128 = load ptr, ptr %17, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  store i64 6, ptr %129, align 8
  %130 = load i64, ptr %10, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = load ptr, ptr %17, align 8
  call void %134(i64 noundef 2, ptr noundef %135) #4
  unreachable

136:                                              ; preds = %55
  %137 = load i64, ptr %6, align 8
  %138 = inttoptr i64 %137 to ptr
  %139 = getelementptr inbounds i64, ptr %138, i64 3
  %140 = load i64, ptr %139, align 8
  store i64 %140, ptr %8, align 8
  %141 = load ptr, ptr %4, align 8
  store ptr %141, ptr %18, align 8
  %142 = load i64, ptr %8, align 8
  %143 = load ptr, ptr %18, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 0
  store i64 %142, ptr %144, align 8
  %145 = load ptr, ptr %18, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  store i64 6, ptr %146, align 8
  %147 = load i64, ptr %8, align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = load ptr, ptr %18, align 8
  call void %151(i64 noundef 2, ptr noundef %152) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1222(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  call void @C_save_and_reclaim(ptr noundef @f_1222, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = icmp ne i64 %52, 6
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.123)
  %55 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 41), align 8
  %56 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %55)
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
  %64 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 41), align 8
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
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 6, ptr %77, align 8
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

86:                                               ; preds = %51
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %8, align 8
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %14, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 0
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 6, ptr %96, align 8
  %97 = load i64, ptr %8, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = load ptr, ptr %14, align 8
  call void %101(i64 noundef 2, ptr noundef %102) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1300(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %5, align 8
  %9 = load i64, ptr %5, align 8
  call void @f_1300(i64 noundef %9) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1304(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
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
  call void @C_save_and_reclaim(ptr noundef @f_1304, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1307 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.124)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1595(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %17 = alloca ptr, align 8
  %18 = alloca [3 x i64], align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %19 = load i64, ptr @C_timer_interrupt_counter, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, ptr @C_timer_interrupt_counter, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  call void @C_raise_interrupt(i32 noundef 255)
  br label %23

23:                                               ; preds = %22, %3
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !78
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
  %33 = add nsw i64 17, %32
  %34 = icmp sgt i64 %31, %33
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i64, ptr %4, align 8
  %41 = load i64, ptr %5, align 8
  %42 = load i64, ptr %6, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1595, i32 noundef 3, i64 noundef %40, i64 noundef %41, i64 noundef %42) #4
  unreachable

43:                                               ; preds = %23
  %44 = alloca i8, i64 104, align 16
  store ptr %44, ptr %14, align 8
  %45 = load i64, ptr %6, align 8
  %46 = call i64 @C_i_lessp(i64 noundef %45, i64 noundef 8193)
  %47 = icmp ne i64 %46, 6
  br i1 %47, label %48, label %112

48:                                               ; preds = %43
  %49 = load ptr, ptr %14, align 8
  store i64 2594073385365405701, ptr %49, align 8
  %50 = load ptr, ptr %14, align 8
  %51 = getelementptr inbounds i64, ptr %50, i64 1
  store i64 ptrtoint (ptr @f_1605 to i64), ptr %51, align 8
  %52 = load i64, ptr %4, align 8
  %53 = inttoptr i64 %52 to ptr
  %54 = getelementptr inbounds i64, ptr %53, i64 2
  %55 = load i64, ptr %54, align 8
  %56 = load ptr, ptr %14, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  store i64 %55, ptr %57, align 8
  %58 = load i64, ptr %6, align 8
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 3
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %4, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %5, align 8
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 5
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %7, align 8
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 6
  store ptr %73, ptr %14, align 8
  %74 = load i64, ptr %7, align 8
  store i64 %74, ptr %8, align 8
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 44), align 16
  %76 = call i64 @C_retrieve2(i64 noundef %75, ptr noundef @.str.193)
  store i64 %76, ptr %9, align 8
  store i64 30, ptr %10, align 8
  %77 = load ptr, ptr %14, align 8
  store i64 1, ptr %77, align 8
  %78 = load i64, ptr %10, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %7, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 2
  store ptr %84, ptr %14, align 8
  %85 = load i64, ptr %7, align 8
  store i64 %85, ptr %11, align 8
  %86 = load ptr, ptr %14, align 8
  store i64 2594073385365405700, ptr %86, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1245 to i64), ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %11, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  store i64 ptrtoint (ptr @li33 to i64), ptr %96, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = ptrtoint ptr %97 to i64
  store i64 %98, ptr %7, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store ptr %100, ptr %14, align 8
  %101 = load i64, ptr %7, align 8
  %102 = load i64, ptr %11, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds %struct.C_block_struct, ptr %103, i32 0, i32 1
  %105 = getelementptr inbounds [0 x i64], ptr %104, i64 0, i64 0
  store i64 %101, ptr %105, align 8
  store i64 %101, ptr %12, align 8
  %106 = load i64, ptr %11, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  store i64 %109, ptr %13, align 8
  %110 = load i64, ptr %13, align 8
  %111 = load i64, ptr %8, align 8
  call void @f_1245(i64 noundef %110, i64 noundef %111, i64 noundef 1, i64 noundef 1) #4
  unreachable

112:                                              ; preds = %43
  %113 = load ptr, ptr %14, align 8
  store i64 2594073385365405699, ptr %113, align 8
  %114 = load ptr, ptr %14, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 ptrtoint (ptr @f_1635 to i64), ptr %115, align 8
  %116 = load i64, ptr %5, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %4, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %14, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 3
  store i64 %122, ptr %124, align 8
  %125 = load ptr, ptr %14, align 8
  %126 = ptrtoint ptr %125 to i64
  store i64 %126, ptr %7, align 8
  %127 = load ptr, ptr %14, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 4
  store ptr %128, ptr %14, align 8
  %129 = load i64, ptr %7, align 8
  store i64 %129, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.194)
  %130 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 75), align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 1
  %133 = load i64, ptr %132, align 8
  %134 = call ptr @C_fast_retrieve_proc(i64 noundef %133)
  store ptr %134, ptr %17, align 8
  %135 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 75), align 8
  %136 = inttoptr i64 %135 to ptr
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  store i64 %138, ptr %139, align 16
  %140 = load i64, ptr %8, align 8
  %141 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 1
  store i64 %140, ptr %141, align 8
  %142 = load i64, ptr %4, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 2
  %145 = load i64, ptr %144, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  %149 = call i64 @C_i_length(i64 noundef %148)
  %150 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 2
  store i64 %149, ptr %150, align 16
  %151 = load ptr, ptr %17, align 8
  %152 = getelementptr inbounds [3 x i64], ptr %18, i64 0, i64 0
  call void %151(i64 noundef 3, ptr noundef %152) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1307(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1307, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1310 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.125)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 74), align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1310, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1313 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.126)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1313(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
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
  call void @C_save_and_reclaim(ptr noundef @f_1313, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1316 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.127)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1316(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
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
  call void @C_save_and_reclaim(ptr noundef @f_1316, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1319 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.128)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 73), align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1319(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1319, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1322 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1322(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !84
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
  call void @C_save_and_reclaim(ptr noundef @f_1322, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1325 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.130)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1325(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !85
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
  call void @C_save_and_reclaim(ptr noundef @f_1325, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1328 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.131)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 72), align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1328, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1331 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.132)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1331(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1331, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1334 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.132)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1334(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !88
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
  call void @C_save_and_reclaim(ptr noundef @f_1334, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1337 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.133)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1337(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !89
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
  call void @C_save_and_reclaim(ptr noundef @f_1337, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1340 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.134)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 71), align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1340(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1340, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1343 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1343(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1343, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1346 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
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
define internal void @f_1346(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !92
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
  call void @C_save_and_reclaim(ptr noundef @f_1346, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1349 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
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
  call void @C_trace(ptr noundef @.str.137)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %99 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 22, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1349(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !93
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
  call void @C_save_and_reclaim(ptr noundef @f_1349, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1352 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.138)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 70), align 16
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
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
define internal void @f_1352(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !94
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
  call void @C_save_and_reclaim(ptr noundef @f_1352, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1355 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_1593 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
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
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.139)
  %97 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %98 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %14, align 8
  %99 = load i64, ptr %3, align 8
  %100 = icmp sge i64 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %15, align 8
  br label %105

103:                                              ; preds = %52
  %104 = alloca i8, i64 24, align 16
  store ptr %104, ptr %15, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 6), align 16
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 0
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1355(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !95
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
  call void @C_save_and_reclaim(ptr noundef @f_1355, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1358 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.140)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1593(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !96
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
  call void @C_save_and_reclaim(ptr noundef @f_1593, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = load i64, ptr %7, align 8
  %52 = icmp ne i64 %51, 6
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 68), align 16
  br label %57

55:                                               ; preds = %50
  %56 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 69), align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.138)
  %59 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %9, align 8
  %63 = load i64, ptr %3, align 8
  %64 = icmp sge i64 %63, 5
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr %13, align 8
  br label %69

67:                                               ; preds = %57
  %68 = alloca i8, i64 40, align 16
  store ptr %68, ptr %13, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %8, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  store i64 6, ptr %83, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 4
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %9, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = load ptr, ptr %13, align 8
  call void %94(i64 noundef 5, ptr noundef %95) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1358(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !97
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
  call void @C_save_and_reclaim(ptr noundef @f_1358, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1361 to i64), ptr %60, align 8
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
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %11, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.141)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = call ptr @C_fast_retrieve_proc(i64 noundef %84)
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 5
  br i1 %87, label %88, label %90

88:                                               ; preds = %52
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %15, align 8
  br label %92

90:                                               ; preds = %52
  %91 = alloca i8, i64 40, align 16
  store ptr %91, ptr %15, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !98
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
  call void @C_save_and_reclaim(ptr noundef @f_1361, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1364 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.142)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 67), align 8
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
define internal void @f_1364(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !99
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
  call void @C_save_and_reclaim(ptr noundef @f_1364, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1367 to i64), ptr %55, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %61, align 8
  %62 = load i64, ptr %6, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store ptr %71, ptr %11, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %8, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  %76 = load i64, ptr %75, align 8
  %77 = call i64 @C_i_vector_ref(i64 noundef %76, i64 noundef 3)
  store i64 %77, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.142)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %10, align 8
  %82 = load i64, ptr %3, align 8
  %83 = icmp sge i64 %82, 5
  br i1 %83, label %84, label %86

84:                                               ; preds = %51
  %85 = load ptr, ptr %4, align 8
  store ptr %85, ptr %14, align 8
  br label %88

86:                                               ; preds = %51
  %87 = alloca i8, i64 40, align 16
  store ptr %87, ptr %14, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, ptr %10, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 0
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %8, align 8
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %9, align 8
  %96 = call i64 @C_i_vector_length(i64 noundef %95)
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 3
  store i64 6, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %10, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = load ptr, ptr %14, align 8
  call void %111(i64 noundef 5, ptr noundef %112) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1367(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !100
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
  call void @C_save_and_reclaim(ptr noundef @f_1367, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1370 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.142)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 66), align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1370(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1370, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1373 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1373(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !102
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
  call void @C_save_and_reclaim(ptr noundef @f_1373, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1376 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.144)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1376(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !103
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
  call void @C_save_and_reclaim(ptr noundef @f_1376, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1379 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.145)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1379(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !104
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
  call void @C_save_and_reclaim(ptr noundef @f_1379, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1382 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.146)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 65), align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1382(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !105
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
  call void @C_save_and_reclaim(ptr noundef @f_1382, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1385 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !106
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
  call void @C_save_and_reclaim(ptr noundef @f_1385, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1388 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 24, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 64), align 16
  %86 = load ptr, ptr %14, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = load ptr, ptr %14, align 8
  call void %88(i64 noundef 3, ptr noundef %89) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1388(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !107
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
  call void @C_save_and_reclaim(ptr noundef @f_1388, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1391 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
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
  call void @C_trace(ptr noundef @.str.148)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %99 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 22, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1391(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !108
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
  call void @C_save_and_reclaim(ptr noundef @f_1391, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1394 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.149)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 63), align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
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
define internal void @f_1394(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !109
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
  call void @C_save_and_reclaim(ptr noundef @f_1394, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1397 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_1578 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
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
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.150)
  %97 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  %100 = load i64, ptr %99, align 8
  %101 = call ptr @C_fast_retrieve_proc(i64 noundef %100)
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
  %109 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
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
  %120 = getelementptr inbounds i64, ptr %119, i64 3
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
define internal void @f_1397(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !110
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
  call void @C_save_and_reclaim(ptr noundef @f_1397, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1400 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.151)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1578(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !111
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
  call void @C_save_and_reclaim(ptr noundef @f_1578, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.149)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1400(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !112
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
  call void @C_save_and_reclaim(ptr noundef @f_1400, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1403 to i64), ptr %60, align 8
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
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %11, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.152)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = call ptr @C_fast_retrieve_proc(i64 noundef %84)
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 5
  br i1 %87, label %88, label %90

88:                                               ; preds = %52
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %15, align 8
  br label %92

90:                                               ; preds = %52
  %91 = alloca i8, i64 40, align 16
  store ptr %91, ptr %15, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1403(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !113
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
  call void @C_save_and_reclaim(ptr noundef @f_1403, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1406 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.153)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 62), align 16
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
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
define internal void @f_1406(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !114
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
  call void @C_save_and_reclaim(ptr noundef @f_1406, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1409 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_1574 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
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
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.154)
  %97 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 9), align 8
  %98 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %14, align 8
  %99 = load i64, ptr %3, align 8
  %100 = icmp sge i64 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %15, align 8
  br label %105

103:                                              ; preds = %52
  %104 = alloca i8, i64 24, align 16
  store ptr %104, ptr %15, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 9), align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 0
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1409(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !115
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
  call void @C_save_and_reclaim(ptr noundef @f_1409, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1412 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.155)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1574(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !116
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
  call void @C_save_and_reclaim(ptr noundef @f_1574, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.153)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1412(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !117
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
  call void @C_save_and_reclaim(ptr noundef @f_1412, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1415 to i64), ptr %60, align 8
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
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %11, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.156)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = call ptr @C_fast_retrieve_proc(i64 noundef %84)
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 5
  br i1 %87, label %88, label %90

88:                                               ; preds = %52
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %15, align 8
  br label %92

90:                                               ; preds = %52
  %91 = alloca i8, i64 40, align 16
  store ptr %91, ptr %15, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1415(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !118
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
  call void @C_save_and_reclaim(ptr noundef @f_1415, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1418 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.157)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 61), align 8
  %96 = load ptr, ptr %13, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 2
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  store i64 6, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
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
define internal void @f_1418(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !119
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
  call void @C_save_and_reclaim(ptr noundef @f_1418, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1421 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_1570 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
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
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.158)
  %97 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %98 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %14, align 8
  %99 = load i64, ptr %3, align 8
  %100 = icmp sge i64 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %15, align 8
  br label %105

103:                                              ; preds = %52
  %104 = alloca i8, i64 24, align 16
  store ptr %104, ptr %15, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 0
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 3
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1421(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1421, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
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
  %68 = load ptr, ptr %10, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  store ptr %71, ptr %10, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.159)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1570(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !121
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
  call void @C_save_and_reclaim(ptr noundef @f_1570, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.157)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1424(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !122
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
  call void @C_save_and_reclaim(ptr noundef @f_1424, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1427 to i64), ptr %60, align 8
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
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 5
  store ptr %79, ptr %11, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.160)
  %81 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = call ptr @C_fast_retrieve_proc(i64 noundef %84)
  store ptr %85, ptr %14, align 8
  %86 = load i64, ptr %3, align 8
  %87 = icmp sge i64 %86, 5
  br i1 %87, label %88, label %90

88:                                               ; preds = %52
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %15, align 8
  br label %92

90:                                               ; preds = %52
  %91 = alloca i8, i64 40, align 16
  store ptr %91, ptr %15, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %15, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 0
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1427(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1427, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1430 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.161)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 60), align 16
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
define internal void @f_1430(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !124
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
  call void @C_save_and_reclaim(ptr noundef @f_1430, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 64, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1433 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_1566 to i64), ptr %76, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
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
  call void @C_trace(ptr noundef @.str.162)
  %91 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 14), align 16
  %92 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %91)
  store ptr %92, ptr %14, align 8
  %93 = load i64, ptr %3, align 8
  %94 = icmp sge i64 %93, 3
  br i1 %94, label %95, label %97

95:                                               ; preds = %52
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %15, align 8
  br label %99

97:                                               ; preds = %52
  %98 = alloca i8, i64 24, align 16
  store ptr %98, ptr %15, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 14), align 16
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
  %115 = load ptr, ptr %14, align 8
  %116 = load ptr, ptr %15, align 8
  call void %115(i64 noundef 3, ptr noundef %116) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1433(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1433, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1436 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.163)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1566(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !126
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
  call void @C_save_and_reclaim(ptr noundef @f_1566, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.161)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1436(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !127
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
  call void @C_save_and_reclaim(ptr noundef @f_1436, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1439 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.164)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1439(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !128
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
  call void @C_save_and_reclaim(ptr noundef @f_1439, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1442 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.165)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1442(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1442, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1445 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.166)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 59), align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1445(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = icmp sgt i64 %34, 3
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1445, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1448 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.165)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1448(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1448, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1451 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.167)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 22), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 24, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 22), align 16
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
  store i64 1, ptr %86, align 8
  %87 = load ptr, ptr %13, align 8
  %88 = load ptr, ptr %14, align 8
  call void %87(i64 noundef 3, ptr noundef %88) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1451(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1451, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1454 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.168)
  %70 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %79 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 8), align 16
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
  %88 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 58), align 16
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = load ptr, ptr %14, align 8
  call void %91(i64 noundef 3, ptr noundef %92) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1454(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1454, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1457 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.169)
  %70 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
  %71 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %70)
  store ptr %71, ptr %13, align 8
  %72 = load i64, ptr %3, align 8
  %73 = icmp sge i64 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load ptr, ptr %4, align 8
  store ptr %75, ptr %14, align 8
  br label %78

76:                                               ; preds = %51
  %77 = alloca i8, i64 32, align 16
  store ptr %77, ptr %14, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 25), align 8
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
  %94 = load i64, ptr %7, align 8
  %95 = load ptr, ptr %14, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %14, align 8
  call void %97(i64 noundef 4, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1457(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !134
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
  %39 = add nsw i32 6, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1457, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1460 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %8, align 8
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
  call void @C_trace(ptr noundef @.str.170)
  %84 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  %88 = call ptr @C_fast_retrieve_proc(i64 noundef %87)
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %105 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 22, ptr %112, align 8
  %113 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %14, align 8
  %117 = load ptr, ptr %15, align 8
  call void %116(i64 noundef 5, ptr noundef %117) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1460(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !135
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
  %37 = add nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1460, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1463 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.171)
  %84 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %101 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 57), align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 6, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 5
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
define internal void @f_1463(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !136
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
  %39 = add nsw i32 10, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1463, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 80, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1466 to i64), ptr %56, align 8
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
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store ptr %84, ptr %11, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %8, align 8
  %86 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %86, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1562 to i64), ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %5, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 4
  store ptr %101, ptr %11, align 8
  %102 = load i64, ptr %5, align 8
  store i64 %102, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.172)
  %103 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = call ptr @C_fast_retrieve_proc(i64 noundef %106)
  store ptr %107, ptr %14, align 8
  %108 = load i64, ptr %3, align 8
  %109 = icmp sge i64 %108, 4
  br i1 %109, label %110, label %112

110:                                              ; preds = %52
  %111 = load ptr, ptr %4, align 8
  store ptr %111, ptr %15, align 8
  br label %114

112:                                              ; preds = %52
  %113 = alloca i8, i64 32, align 16
  store ptr %113, ptr %15, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
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
  %126 = getelementptr inbounds i64, ptr %125, i64 4
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 3
  store i64 33, ptr %131, align 8
  %132 = load ptr, ptr %14, align 8
  %133 = load ptr, ptr %15, align 8
  call void %132(i64 noundef 4, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1466(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !137
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
  call void @C_save_and_reclaim(ptr noundef @f_1466, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1469 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.173)
  %79 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %80 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %79)
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 4
  br i1 %82, label %83, label %85

83:                                               ; preds = %51
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  br label %87

85:                                               ; preds = %51
  %86 = alloca i8, i64 32, align 16
  store ptr %86, ptr %14, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 2570, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = load ptr, ptr %14, align 8
  call void %105(i64 noundef 4, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1562(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !138
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
  call void @C_save_and_reclaim(ptr noundef @f_1562, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.171)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1469(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !139
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
  %39 = add nsw i32 6, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1469, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1472 to i64), ptr %60, align 8
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
  %79 = load i64, ptr %8, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store ptr %85, ptr %11, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.174)
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = call ptr @C_fast_retrieve_proc(i64 noundef %90)
  store ptr %91, ptr %14, align 8
  %92 = load i64, ptr %3, align 8
  %93 = icmp sge i64 %92, 5
  br i1 %93, label %94, label %96

94:                                               ; preds = %52
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %15, align 8
  br label %98

96:                                               ; preds = %52
  %97 = alloca i8, i64 40, align 16
  store ptr %97, ptr %15, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 0
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %9, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 22, ptr %115, align 8
  %116 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = load ptr, ptr %15, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1472(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !140
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
  %37 = add nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1472, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1475 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.175)
  %84 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %101 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 56), align 16
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 6, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 5
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
define internal void @f_1475(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !141
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
  %39 = add nsw i32 10, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1475, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 80, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1478 to i64), ptr %56, align 8
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
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  store ptr %84, ptr %11, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %8, align 8
  %86 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %86, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1558 to i64), ptr %88, align 8
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %5, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 4
  store ptr %101, ptr %11, align 8
  %102 = load i64, ptr %5, align 8
  store i64 %102, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.176)
  %103 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = call ptr @C_fast_retrieve_proc(i64 noundef %106)
  store ptr %107, ptr %14, align 8
  %108 = load i64, ptr %3, align 8
  %109 = icmp sge i64 %108, 4
  br i1 %109, label %110, label %112

110:                                              ; preds = %52
  %111 = load ptr, ptr %4, align 8
  store ptr %111, ptr %15, align 8
  br label %114

112:                                              ; preds = %52
  %113 = alloca i8, i64 32, align 16
  store ptr %113, ptr %15, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 55), align 8
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
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  %127 = load i64, ptr %126, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 2
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 3
  store i64 33, ptr %131, align 8
  %132 = load ptr, ptr %14, align 8
  %133 = load ptr, ptr %15, align 8
  call void %132(i64 noundef 4, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1478(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !142
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
  call void @C_save_and_reclaim(ptr noundef @f_1478, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1481 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.177)
  %79 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %80 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %79)
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 4
  br i1 %82, label %83, label %85

83:                                               ; preds = %51
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %14, align 8
  br label %87

85:                                               ; preds = %51
  %86 = alloca i8, i64 32, align 16
  store ptr %86, ptr %14, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 2570, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %13, align 8
  %106 = load ptr, ptr %14, align 8
  call void %105(i64 noundef 4, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1558(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !143
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
  call void @C_save_and_reclaim(ptr noundef @f_1558, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.175)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
define internal void @f_1481(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !144
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
  %39 = add nsw i32 6, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_1481, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1484 to i64), ptr %60, align 8
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
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store ptr %85, ptr %11, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.178)
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  %91 = call ptr @C_fast_retrieve_proc(i64 noundef %90)
  store ptr %91, ptr %14, align 8
  %92 = load i64, ptr %3, align 8
  %93 = icmp sge i64 %92, 5
  br i1 %93, label %94, label %96

94:                                               ; preds = %52
  %95 = load ptr, ptr %4, align 8
  store ptr %95, ptr %15, align 8
  br label %98

96:                                               ; preds = %52
  %97 = alloca i8, i64 40, align 16
  store ptr %97, ptr %15, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 0
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %9, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 22, ptr %115, align 8
  %116 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = load ptr, ptr %15, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1484(i64 noundef %0, ptr noundef %1) #2 {
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
  %37 = add nsw i32 6, %36
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
  call void @C_save_and_reclaim(ptr noundef @f_1484, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1487 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.179)
  %84 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %101 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 54), align 16
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
define internal void @f_1487(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = icmp sgt i64 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
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
  call void @C_save_and_reclaim(ptr noundef @f_1487, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_1490 to i64), ptr %56, align 8
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
  store i64 2594073385365405700, ptr %74, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_1550 to i64), ptr %76, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 4
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  store ptr %95, ptr %11, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.180)
  %97 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %98 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %97)
  store ptr %98, ptr %14, align 8
  %99 = load i64, ptr %3, align 8
  %100 = icmp sge i64 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %15, align 8
  br label %105

103:                                              ; preds = %52
  %104 = alloca i8, i64 24, align 16
  store ptr %104, ptr %15, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 0
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %9, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 5
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %14, align 8
  %122 = load ptr, ptr %15, align 8
  call void %121(i64 noundef 3, ptr noundef %122) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1490(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1490, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1493 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.179)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 53), align 8
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1550(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1550, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1554 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.180)
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 13), align 8
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
define internal void @f_1493(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !149
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
  call void @C_save_and_reclaim(ptr noundef @f_1493, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1496 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.181)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1496(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !150
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
  call void @C_save_and_reclaim(ptr noundef @f_1496, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1499 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.182)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1499(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !151
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
  call void @C_save_and_reclaim(ptr noundef @f_1499, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1502 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.183)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1502(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1502, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1505 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.184)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 52), align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1505(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !153
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
  call void @C_save_and_reclaim(ptr noundef @f_1505, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.183)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !154
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
  call void @C_save_and_reclaim(ptr noundef @f_1508, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1511 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.185)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load ptr, ptr %4, align 8
  store ptr %69, ptr %14, align 8
  %70 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 1), align 8
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
define internal void @f_1511(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !155
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
  call void @C_save_and_reclaim(ptr noundef @f_1511, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1514 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.186)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 30), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 30), align 16
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
  store i64 17, ptr %86, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 7, ptr %88, align 8
  %89 = load i64, ptr %7, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = load ptr, ptr %14, align 8
  call void %92(i64 noundef 5, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1514(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !156
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
  call void @C_save_and_reclaim(ptr noundef @f_1514, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1517 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.187)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %99 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 22, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1517(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !157
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
  call void @C_save_and_reclaim(ptr noundef @f_1517, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1520 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.188)
  %78 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 51), align 8
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
define internal void @f_1520(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !158
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
  call void @C_save_and_reclaim(ptr noundef @f_1520, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1523 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.188)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %93 = call i64 @C_i_length(i64 noundef %92)
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
define internal void @f_1523(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !159
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
  call void @C_save_and_reclaim(ptr noundef @f_1523, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1526 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.189)
  %67 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
  %68 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %67)
  store ptr %68, ptr %13, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %14, align 8
  br label %75

73:                                               ; preds = %51
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  store i64 2570, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = load ptr, ptr %14, align 8
  call void %93(i64 noundef 4, ptr noundef %94) #4
  unreachable
}

declare i64 @C_i_length(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1526(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !160
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
  call void @C_save_and_reclaim(ptr noundef @f_1526, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1529 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.190)
  %75 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %87 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 45), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 50), align 16
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1529(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !161
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
  call void @C_save_and_reclaim(ptr noundef @f_1529, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1532 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.191)
  %73 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 2570, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = load ptr, ptr %14, align 8
  call void %99(i64 noundef 4, ptr noundef %100) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1532(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !162
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
  call void @C_save_and_reclaim(ptr noundef @f_1532, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1535 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.192)
  %72 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 48), align 16
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 6, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %9, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 1
  %103 = load i64, ptr %102, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %13, align 8
  call void %104(i64 noundef 5, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1535(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !163
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
  call void @C_save_and_reclaim(ptr noundef @f_1535, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.191)
  %51 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 46), align 16
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
define internal void @f_1554(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !164
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
  call void @C_save_and_reclaim(ptr noundef @f_1554, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  call void @C_trace(ptr noundef @.str.179)
  %50 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 47), align 8
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
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %7, align 8
  %75 = call i64 @C_i_nequalp(i64 noundef %73, i64 noundef %74)
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store i64 6, ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 4
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  %89 = load i64, ptr %88, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = load ptr, ptr %12, align 8
  call void %90(i64 noundef 5, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1595(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1595(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1605(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !165
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
  %36 = add nsw i32 7, %35
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
  call void @C_save_and_reclaim(ptr noundef @f_1605, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 56, align 16
  store ptr %50, ptr %10, align 8
  %51 = load ptr, ptr %10, align 8
  store i64 2594073385365405702, ptr %51, align 8
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  store i64 ptrtoint (ptr @f_1608 to i64), ptr %53, align 8
  %54 = load i64, ptr %7, align 8
  %55 = load ptr, ptr %10, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  store i64 %54, ptr %56, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  store i64 %60, ptr %62, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 4
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 5
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %6, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 6
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 7
  store ptr %84, ptr %10, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.195)
  %86 = load i64, ptr %8, align 8
  %87 = load i64, ptr %7, align 8
  call void @f_657(i64 noundef %86, i64 noundef %87) #4
  unreachable
}

declare i64 @C_retrieve2(i64 noundef, ptr noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1245(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %16 = alloca [3 x i64], align 16
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
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !166
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
  %31 = add nsw i64 12, %30
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1245, i32 noundef 4, i64 noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %21
  %43 = alloca i8, i64 80, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %7, align 8
  %45 = call i64 @C_i_nequalp(i64 noundef %44, i64 noundef 25)
  %46 = icmp ne i64 %45, 6
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i64, ptr %5, align 8
  %49 = inttoptr i64 %48 to ptr
  %50 = getelementptr inbounds i64, ptr %49, i64 2
  %51 = load i64, ptr %50, align 8
  %52 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %12, i64 noundef 2, i64 noundef %51, i64 noundef 25)
  store i64 %52, ptr %10, align 8
  %53 = load i64, ptr %6, align 8
  store i64 %53, ptr %11, align 8
  %54 = load i64, ptr %11, align 8
  %55 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  store i64 %54, ptr %55, align 16
  %56 = load i64, ptr %10, align 8
  %57 = load i64, ptr %8, align 8
  %58 = call i64 @C_s_a_i_bitwise_ior(ptr noundef %12, i64 noundef 2, i64 noundef %56, i64 noundef %57)
  %59 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 %58, ptr %59, align 8
  %60 = load i64, ptr %11, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 1
  %63 = load i64, ptr %62, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  call void %64(i64 noundef 2, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %42
  %67 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %67, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_1298 to i64), ptr %69, align 8
  %70 = load i64, ptr %5, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store i64 %76, ptr %78, align 8
  %79 = load i64, ptr %5, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store i64 %82, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 5
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %8, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 6
  store i64 %88, ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %9, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 7
  store ptr %94, ptr %12, align 8
  %95 = load i64, ptr %9, align 8
  store i64 %95, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.198)
  %96 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  store i64 0, ptr %96, align 16
  %97 = load i64, ptr %10, align 8
  %98 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 1
  store i64 %97, ptr %98, align 8
  %99 = load i64, ptr %7, align 8
  %100 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 2
  store i64 %99, ptr %100, align 16
  %101 = getelementptr inbounds [3 x i64], ptr %16, i64 0, i64 0
  call void @C_minus(i64 noundef 3, ptr noundef %101) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1635(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !167
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
  call void @C_save_and_reclaim(ptr noundef @f_1635, i32 noundef %49, ptr noundef %50) #4
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
  store i64 ptrtoint (ptr @f_1640 to i64), ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %12, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %9, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 4
  store i64 ptrtoint (ptr @li34 to i64), ptr %72, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = ptrtoint ptr %73 to i64
  store i64 %74, ptr %5, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 5
  store ptr %76, ptr %12, align 8
  %77 = load i64, ptr %5, align 8
  %78 = load i64, ptr %9, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 0
  store i64 %77, ptr %81, align 8
  store i64 %77, ptr %10, align 8
  %82 = load i64, ptr %9, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  %85 = load i64, ptr %84, align 8
  store i64 %85, ptr %11, align 8
  %86 = load i64, ptr %11, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  %90 = load i64, ptr %89, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %96, align 8
  call void @f_1640(i64 noundef %86, i64 noundef %90, i64 noundef %97, i64 noundef 1) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1608(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !168
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
  call void @C_save_and_reclaim(ptr noundef @f_1608, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 256, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %7, align 8
  %56 = call i64 @C_i_nequalp(i64 noundef %55, i64 noundef 17)
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %112

58:                                               ; preds = %53
  %59 = load ptr, ptr %12, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %15, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 0
  store i64 216172782113783810, ptr %62, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 3
  store ptr %64, ptr %12, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %15, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds %struct.C_block_struct, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds [0 x i64], ptr %71, i64 0, i64 0
  store i64 %68, ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 3
  %76 = load i64, ptr %75, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %15, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds %struct.C_block_struct, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds [0 x i64], ptr %82, i64 0, i64 1
  store i64 %79, ptr %83, align 8
  %84 = load i64, ptr %15, align 8
  store i64 %84, ptr %16, align 8
  %85 = load i64, ptr %16, align 8
  store i64 %85, ptr %8, align 8
  %86 = load i64, ptr %6, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  %89 = load i64, ptr %88, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = load i64, ptr %8, align 8
  %93 = call i64 @C_mutate(ptr noundef %91, i64 noundef %92)
  store i64 %93, ptr %9, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %97, i64 noundef 3)
  store i64 %98, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.196)
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  %102 = load i64, ptr %101, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %11, align 8
  %106 = load i64, ptr %11, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 6
  %110 = load i64, ptr %109, align 8
  %111 = load i64, ptr %10, align 8
  call void @f_1595(i64 noundef %106, i64 noundef %110, i64 noundef %111) #4
  unreachable

112:                                              ; preds = %53
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  %116 = load i64, ptr %115, align 8
  %117 = call i64 @C_s_a_i_plus(ptr noundef %12, i64 noundef 2, i64 noundef %116, i64 noundef 3)
  store i64 %117, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.197)
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 5
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  %124 = load i64, ptr %123, align 8
  store i64 %124, ptr %9, align 8
  %125 = load i64, ptr %9, align 8
  %126 = load i64, ptr %6, align 8
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 6
  %129 = load i64, ptr %128, align 8
  %130 = load i64, ptr %8, align 8
  call void @f_1595(i64 noundef %125, i64 noundef %129, i64 noundef %130) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1245(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1245(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1298(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !169
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
  %40 = add nsw i32 44, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_1298, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 352, align 16
  store ptr %54, ptr %14, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %7, align 8
  %60 = call i64 @C_s_a_i_arithmetic_shift(ptr noundef %14, i64 noundef 2, i64 noundef %58, i64 noundef %59)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %8, align 8
  %62 = call i64 @C_s_a_i_bitwise_and(ptr noundef %14, i64 noundef 2, i64 noundef 3, i64 noundef %61)
  store i64 %62, ptr %9, align 8
  %63 = load i64, ptr %9, align 8
  %64 = call i64 @C_i_zerop(i64 noundef %63)
  %65 = icmp ne i64 %64, 6
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = call i64 @C_s_a_i_plus(ptr noundef %14, i64 noundef 2, i64 noundef %70, i64 noundef 3)
  store i64 %71, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.199)
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 4
  %75 = load i64, ptr %74, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %11, align 8
  %79 = load i64, ptr %11, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 5
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %10, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 6
  %88 = load i64, ptr %87, align 8
  call void @f_1245(i64 noundef %79, i64 noundef %83, i64 noundef %84, i64 noundef %88) #4
  unreachable

89:                                               ; preds = %53
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  %93 = load i64, ptr %92, align 8
  %94 = call i64 @C_s_a_i_plus(ptr noundef %14, i64 noundef 2, i64 noundef %93, i64 noundef 3)
  store i64 %94, ptr %10, align 8
  %95 = load i64, ptr getelementptr inbounds ([84 x i64], ptr @lf, i64 0, i64 44), align 16
  %96 = call i64 @C_retrieve2(i64 noundef %95, ptr noundef @.str.193)
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 3
  %100 = load i64, ptr %99, align 8
  %101 = call i64 @C_i_vector_ref(i64 noundef %96, i64 noundef %100)
  store i64 %101, ptr %11, align 8
  %102 = load i64, ptr %6, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 6
  %105 = load i64, ptr %104, align 8
  %106 = load i64, ptr %11, align 8
  %107 = call i64 @C_s_a_i_bitwise_xor(ptr noundef %14, i64 noundef 2, i64 noundef %105, i64 noundef %106)
  store i64 %107, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.200)
  %108 = load i64, ptr %6, align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 4
  %111 = load i64, ptr %110, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  store i64 %114, ptr %13, align 8
  %115 = load i64, ptr %13, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 5
  %119 = load i64, ptr %118, align 8
  %120 = load i64, ptr %10, align 8
  %121 = load i64, ptr %12, align 8
  call void @f_1245(i64 noundef %115, i64 noundef %119, i64 noundef %120, i64 noundef %121) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1640(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #2 {
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
  %21 = alloca [2 x i64], align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %22

22:                                               ; preds = %70, %4
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %22
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !170
  store ptr %28, ptr %19, align 8
  %29 = load ptr, ptr %19, align 8
  store ptr %29, ptr %20, align 8
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr @C_scratch_usage, align 8
  %37 = add nsw i64 32, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr %6, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i64, ptr %8, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1640, i32 noundef 4, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47) #4
  unreachable

48:                                               ; preds = %27
  %49 = alloca i8, i64 232, align 16
  store ptr %49, ptr %18, align 8
  %50 = load i64, ptr %7, align 8
  %51 = icmp eq i64 %50, 14
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i64 22, i64 6
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i64, ptr %6, align 8
  store i64 %56, ptr %10, align 8
  %57 = load i64, ptr %10, align 8
  %58 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %57, ptr %58, align 16
  %59 = load i64, ptr %5, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %62, ptr %63, align 8
  %64 = load i64, ptr %10, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %68(i64 noundef 2, ptr noundef %69) #4
  unreachable

70:                                               ; preds = %48
  %71 = load i64, ptr %7, align 8
  %72 = call i64 @C_i_car(i64 noundef %71)
  store i64 %72, ptr %10, align 8
  %73 = load i64, ptr %5, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %76 = load i64, ptr %75, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %10, align 8
  %79 = call i64 @C_i_vector_set(i64 noundef %76, i64 noundef %77, i64 noundef %78)
  store i64 %79, ptr %11, align 8
  %80 = load i64, ptr %7, align 8
  %81 = call i64 @C_i_cdr(i64 noundef %80)
  store i64 %81, ptr %12, align 8
  %82 = load i64, ptr %8, align 8
  %83 = call i64 @C_s_a_i_plus(ptr noundef %18, i64 noundef 2, i64 noundef %82, i64 noundef 3)
  store i64 %83, ptr %13, align 8
  call void @C_trace(ptr noundef @.str.201)
  %84 = load i64, ptr %6, align 8
  store i64 %84, ptr %15, align 8
  %85 = load i64, ptr %12, align 8
  store i64 %85, ptr %16, align 8
  %86 = load i64, ptr %13, align 8
  store i64 %86, ptr %17, align 8
  %87 = load i64, ptr %15, align 8
  store i64 %87, ptr %6, align 8
  %88 = load i64, ptr %16, align 8
  store i64 %88, ptr %7, align 8
  %89 = load i64, ptr %17, align 8
  store i64 %89, ptr %8, align 8
  br label %22
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1640(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1640(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) #4
  unreachable
}

declare i64 @C_i_vector_set(i64 noundef, i64 noundef, i64 noundef) #1

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
!6 = !{i64 2148954002}
!7 = !{i64 2148909197}
!8 = !{i64 2148909948}
!9 = !{i64 2148910831}
!10 = !{i64 2148908302}
!11 = !{i64 2148911570}
!12 = !{i64 2148912490}
!13 = !{i64 2148913532}
!14 = !{i64 2148917305}
!15 = !{i64 2148920885}
!16 = !{i64 2148922280}
!17 = !{i64 2148924463}
!18 = !{i64 2148926967}
!19 = !{i64 2148931119}
!20 = !{i64 2148931850}
!21 = !{i64 2148933919}
!22 = !{i64 2148934508}
!23 = !{i64 2148937045}
!24 = !{i64 2148943632}
!25 = !{i64 2148944221}
!26 = !{i64 2148945991}
!27 = !{i64 2148951071}
!28 = !{i64 2148802966}
!29 = !{i64 2148813363}
!30 = !{i64 2148815244}
!31 = !{i64 2148815852}
!32 = !{i64 2148816461}
!33 = !{i64 2148817070}
!34 = !{i64 2148817679}
!35 = !{i64 2148823053}
!36 = !{i64 2148907759}
!37 = !{i64 2148918028}
!38 = !{i64 2148918751}
!39 = !{i64 2148919498}
!40 = !{i64 2148920245}
!41 = !{i64 2148923509}
!42 = !{i64 2148925697}
!43 = !{i64 2148928233}
!44 = !{i64 2148929298}
!45 = !{i64 2148932564}
!46 = !{i64 2148935235}
!47 = !{i64 2148937976}
!48 = !{i64 2148938974}
!49 = !{i64 2148940169}
!50 = !{i64 2148941725}
!51 = !{i64 2148944945}
!52 = !{i64 2148947309}
!53 = !{i64 2148950144}
!54 = !{i64 2148948313}
!55 = !{i64 2148949375}
!56 = !{i64 2148952658}
!57 = !{i64 2148794743}
!58 = !{i64 2148796041}
!59 = !{i64 2148797399}
!60 = !{i64 2148798456}
!61 = !{i64 2148799811}
!62 = !{i64 2148800585}
!63 = !{i64 2148801551}
!64 = !{i64 2148803706}
!65 = !{i64 2148805018}
!66 = !{i64 2148806023}
!67 = !{i64 2148812691}
!68 = !{i64 2148806856}
!69 = !{i64 2148807843}
!70 = !{i64 2148810085}
!71 = !{i64 2148811365}
!72 = !{i64 2148812025}
!73 = !{i64 2148810812}
!74 = !{i64 2148814243}
!75 = !{i64 2148818417}
!76 = !{i64 2148819865}
!77 = !{i64 2148824417}
!78 = !{i64 2148900642}
!79 = !{i64 2148825293}
!80 = !{i64 2148826157}
!81 = !{i64 2148827087}
!82 = !{i64 2148827963}
!83 = !{i64 2148828827}
!84 = !{i64 2148829757}
!85 = !{i64 2148830633}
!86 = !{i64 2148831497}
!87 = !{i64 2148832427}
!88 = !{i64 2148833357}
!89 = !{i64 2148834233}
!90 = !{i64 2148835097}
!91 = !{i64 2148836022}
!92 = !{i64 2148836764}
!93 = !{i64 2148837640}
!94 = !{i64 2148838514}
!95 = !{i64 2148839402}
!96 = !{i64 2148899818}
!97 = !{i64 2148840337}
!98 = !{i64 2148841218}
!99 = !{i64 2148842092}
!100 = !{i64 2148843060}
!101 = !{i64 2148843924}
!102 = !{i64 2148844854}
!103 = !{i64 2148845730}
!104 = !{i64 2148846660}
!105 = !{i64 2148847524}
!106 = !{i64 2148848449}
!107 = !{i64 2148849253}
!108 = !{i64 2148850129}
!109 = !{i64 2148851003}
!110 = !{i64 2148852004}
!111 = !{i64 2148899094}
!112 = !{i64 2148852939}
!113 = !{i64 2148853820}
!114 = !{i64 2148854694}
!115 = !{i64 2148855586}
!116 = !{i64 2148898375}
!117 = !{i64 2148856521}
!118 = !{i64 2148857402}
!119 = !{i64 2148858276}
!120 = !{i64 2148859163}
!121 = !{i64 2148897656}
!122 = !{i64 2148860098}
!123 = !{i64 2148860979}
!124 = !{i64 2148861853}
!125 = !{i64 2148862734}
!126 = !{i64 2148896937}
!127 = !{i64 2148863664}
!128 = !{i64 2148864540}
!129 = !{i64 2148865470}
!130 = !{i64 2148866334}
!131 = !{i64 2148867259}
!132 = !{i64 2148868157}
!133 = !{i64 2148868956}
!134 = !{i64 2148869771}
!135 = !{i64 2148870652}
!136 = !{i64 2148871533}
!137 = !{i64 2148872541}
!138 = !{i64 2148896218}
!139 = !{i64 2148873481}
!140 = !{i64 2148874367}
!141 = !{i64 2148875248}
!142 = !{i64 2148876256}
!143 = !{i64 2148895499}
!144 = !{i64 2148877196}
!145 = !{i64 2148878082}
!146 = !{i64 2148878961}
!147 = !{i64 2148879848}
!148 = !{i64 2148893976}
!149 = !{i64 2148880712}
!150 = !{i64 2148881642}
!151 = !{i64 2148882518}
!152 = !{i64 2148883448}
!153 = !{i64 2148884312}
!154 = !{i64 2148885237}
!155 = !{i64 2148885974}
!156 = !{i64 2148886977}
!157 = !{i64 2148887853}
!158 = !{i64 2148888722}
!159 = !{i64 2148889591}
!160 = !{i64 2148890521}
!161 = !{i64 2148891397}
!162 = !{i64 2148892327}
!163 = !{i64 2148893186}
!164 = !{i64 2148894775}
!165 = !{i64 2148902494}
!166 = !{i64 2148820748}
!167 = !{i64 2148905235}
!168 = !{i64 2148903245}
!169 = !{i64 2148821869}
!170 = !{i64 2148906494}
