; ModuleID = '/tmp/hatsu-llvm-topological-gc-4688/topological-gc.c'
source_filename = "/tmp/hatsu-llvm-topological-gc-4688/topological-gc.c"
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
@lf = internal global [76 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"topological-gc#\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gomory-hu\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\FEU0.5\00\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"topological-gc#set-gc-strategy!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"topological-gc#set-bottleneck-threshold!\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"for-each\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-walk\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"\FEU0.8000000000000000444089209850062616169452667236328125\00\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\FEU0.0\00\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"scheme#/\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"scheme#max\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"scheme#+\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"srfi-69#hash-table-ref/default\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"topological-gc#make-topological-frontier\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"topological-frontier\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"srfi-69#make-hash-table\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"topological-gc#topological-gc-collect\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"freed-count\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"freed-bytes\00", align 1
@.str.23 = private unnamed_addr constant [105 x i8] c"\FEU999999999999999967336168804116691273849533185806555472917961779471295845921727862608739868455469056.0\00\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"scheme#append\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\FEU1.0\00\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"srfi-1#filter-map\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"srfi-69#hash-table-set!\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"srfi-1#filter\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"chicken.sort#sort\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"primitive\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"coproduct\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ultrametric\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"connes-kreimer\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"chicken.base#error\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"\FEB\00\00\13Unknown GC strategy\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"topological-gc#topological-gc-stats\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"topological-gc#estimate-heap-topology\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"srfi-1#member\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"topological-gc#report-gc-regions\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"##sys#standard-output\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"##sys#write-char-0\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"##sys#print\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"\FEB\00\00\08 objects\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"\FEB\00\00\14Coproducts (free):  \00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"##sys#check-output-port\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"\FEB\00\00\14Primitives (keep):  \00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"\FEB\00\00$=== Connes-Kreimer Decomposition ===\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"\FEB\00\00\16Bottleneck threshold: \00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"\FEB\00\00\22=== Gomory-Hu Min-Cut Analysis ===\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"\FEB\00\00\14Distance tolerance: \00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"\FEB\00\00\1B=== Ultrametric Pruning ===\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"\FEB\00\00\12Unknown strategy: \00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"topological-gc#report-connectivity\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"\FEB\00\00\0FMin capacity:  \00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"\FEB\00\00\0FTotal edges:   \00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"\FEB\00\00\1D=== Connectivity Analysis ===\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"scheme#reverse\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"scheme#<\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"chicken.base#implicit-exit-handler\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"chicken.load#load-extension\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"srfi-69\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"srfi-1\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"##sys#register-compiled-module\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"topological-gc\00", align 1
@.str.68 = private unnamed_addr constant [632 x i8] c"\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\19\01make-topological-frontier\FE\01\00\00(\01topological-gc#make-topological-frontier\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\16\01topological-gc-collect\FE\01\00\00%\01topological-gc#topological-gc-collect\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\14\01topological-gc-stats\FE\01\00\00#\01topological-gc#topological-gc-stats\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\10\01set-gc-strategy!\FE\01\00\00\1F\01topological-gc#set-gc-strategy!\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\19\01set-bottleneck-threshold!\FE\01\00\00(\01topological-gc#set-bottleneck-threshold!\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\16\01estimate-heap-topology\FE\01\00\00%\01topological-gc#estimate-heap-topology\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\11\01report-gc-regions\FE\01\00\00 \01topological-gc#report-gc-regions\FE\03\00\00\02\FE\03\00\00\02\FE\01\00\00\13\01report-connectivity\FE\01\00\00\22\01topological-gc#report-connectivity\FE\FF\0E\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"##sys#with-environment\00", align 1
@C_timer_interrupt_counter = external global i64, align 8
@.str.70 = private unnamed_addr constant [51 x i8] c"topological-gc.scm:12: chicken.load#load-extension\00", align 1
@li32 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1900)\00", align 16
@.str.71 = private unnamed_addr constant [46 x i8] c"topological-gc.scm:14: ##sys#with-environment\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"topological-gc.scm:30: chicken.load#load-extension\00", align 1
@li0 = internal global [56 x i8] c"*\00\00\00\00\00\00M(topological-gc#set-gc-strategy! strategy)\00\00\00\00\00\00", align 16
@li1 = internal global [64 x i8] c"4\00\00\00\00\00\00M(topological-gc#set-bottleneck-threshold! threshold)\00\00\00\00", align 16
@li2 = internal global [40 x i8] c" \00\00\00\00\00\00M(topological-gc#object->key obj)", align 16
@li6 = internal global [48 x i8] c"(\00\00\00\00\00\00M(topological-gc#collect-all-edges graph)", align 16
@li9 = internal global [64 x i8] c"3\00\00\00\00\00\00M(topological-gc#connes-kreimer-decomposition graph)\00\00\00\00\00", align 16
@li10 = internal global [64 x i8] c"5\00\00\00\00\00\00M(topological-gc#make-topological-frontier graph root)\00\00\00", align 16
@li21 = internal global [56 x i8] c"0\00\00\00\00\00\00M(topological-gc#topological-gc-collect frontier)", align 16
@li22 = internal global [56 x i8] c".\00\00\00\00\00\00M(topological-gc#topological-gc-stats frontier)\00\00", align 16
@li24 = internal global [56 x i8] c"-\00\00\00\00\00\00M(topological-gc#estimate-heap-topology graph)\00\00\00", align 16
@li28 = internal global [56 x i8] c"*\00\00\00\00\00\00M(topological-gc#collect-all-objects graph)\00\00\00\00\00\00", align 16
@li29 = internal global [56 x i8] c"+\00\00\00\00\00\00M(topological-gc#report-gc-regions frontier)\00\00\00\00\00", align 16
@li31 = internal global [56 x i8] c"*\00\00\00\00\00\00M(topological-gc#report-connectivity graph)\00\00\00\00\00\00", align 16
@li5 = internal global [32 x i8] c"\15\00\00\00\00\00\00M(a913 from neighbors)\00\00\00", align 16
@.str.73 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:107: srfi-69#hash-table-walk\00", align 1
@li3 = internal global [24 x i8] c"\0A\00\00\00\00\00\00M(g64 edge)\00\00\00\00\00\00", align 16
@li4 = internal global [32 x i8] c"\15\00\00\00\00\00\00M(for-each-loop63 g70)\00\00\00", align 16
@.str.74 = private unnamed_addr constant [28 x i8] c"topological-gc.scm:109: g64\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"topological-gc.scm:251: collect-all-objects\00", align 1
@li8 = internal global [48 x i8] c"!\00\00\00\00\00\00M(loop objs primitives coproducts)\00\00\00\00\00\00\00", align 16
@.str.76 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:272: object->key\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:266: loop\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:267: loop\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:273: srfi-69#hash-table-ref/default\00", align 1
@li7 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop204 g216)\00\00\00\00\00\00", align 16
@.str.80 = private unnamed_addr constant [33 x i8] c"topological-gc.scm:284: scheme#/\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"topological-gc.scm:279: scheme#/\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:308: srfi-69#make-hash-table\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"topological-gc#*gc-strategy*\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"topological-gc#*bottleneck-threshold*\00", align 1
@li15 = internal global [16 x i8] c"\07\00\00\00\00\00\00M(a1045)\00", align 16
@li16 = internal global [48 x i8] c"$\00\00\00\00\00\00M(a1051 cut-cap105 set-a107 set-b109)\00\00\00\00", align 16
@.str.85 = private unnamed_addr constant [47 x i8] c"topological-gc.scm:161: ##sys#call-with-values\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:216: srfi-69#make-hash-table\00", align 1
@.str.87 = private unnamed_addr constant [53 x i8] c"topological-gc.scm:291: connes-kreimer-decomposition\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:328: chicken.base#error\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:345: scheme#values\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"topological-gc.scm:88: collect-all-edges\00", align 1
@li14 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(a893 e1 e2)\00\00\00\00", align 16
@.str.91 = private unnamed_addr constant [41 x i8] c"topological-gc.scm:89: chicken.sort#sort\00", align 1
@li13 = internal global [16 x i8] c"\08\00\00\00\00\00\00M(a883 e)", align 16
@.str.92 = private unnamed_addr constant [37 x i8] c"topological-gc.scm:92: srfi-1#filter\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:119: srfi-69#make-hash-table\00", align 1
@li12 = internal global [24 x i8] c"\0F\00\00\00\00\00\00M(loop frontier)\00", align 16
@.str.94 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:102: scheme#values\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:130: object->key\00", align 1
@.str.96 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:132: srfi-69#hash-table-ref/default\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:133: loop\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:136: srfi-69#hash-table-set!\00", align 1
@.str.99 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:140: srfi-69#hash-table-ref/default\00", align 1
@li11 = internal global [24 x i8] c"\0C\00\00\00\00\00\00M(a1017 edge)\00\00\00\00", align 16
@.str.100 = private unnamed_addr constant [42 x i8] c"topological-gc.scm:143: srfi-1#filter-map\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:150: loop\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:142: scheme#append\00", align 1
@li20 = internal global [24 x i8] c"\0F\00\00\00\00\00\00M(loop frontier)\00", align 16
@li17 = internal global [40 x i8] c"\19\00\00\00\00\00\00M(a1118 obj-key neighbors)\00\00\00\00\00\00\00", align 16
@.str.103 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:206: srfi-69#hash-table-walk\00", align 1
@.str.104 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:208: srfi-69#hash-table-ref/default\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:224: object->key\00", align 1
@.str.106 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:227: srfi-69#hash-table-ref/default\00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:228: srfi-69#hash-table-set!\00", align 1
@.str.108 = private unnamed_addr constant [55 x i8] c"topological-gc.scm:231: srfi-69#hash-table-ref/default\00", align 1
@li18 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g163 edge)\00\00\00\00\00", align 16
@li19 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop157 g169)\00\00\00\00\00\00", align 16
@.str.109 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:237: loop\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"topological-gc.scm:235: scheme#/\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:233: scheme#append\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:234: g163\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"topological-gc.scm:363: collect-all-edges\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"topological-gc.scm:364: collect-all-objects\00", align 1
@li23 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop263 g275)\00\00\00\00\00\00", align 16
@.str.115 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:367: scheme#values\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"topological-gc.scm:372: scheme#/\00", align 1
@li27 = internal global [32 x i8] c"\15\00\00\00\00\00\00M(a1588 key neighbors)\00\00\00", align 16
@.str.117 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:377: srfi-69#hash-table-walk\00", align 1
@li25 = internal global [24 x i8] c"\0B\00\00\00\00\00\00M(g295 edge)\00\00\00\00\00", align 16
@li26 = internal global [32 x i8] c"\17\00\00\00\00\00\00M(for-each-loop294 g301)\00", align 16
@.str.118 = private unnamed_addr constant [38 x i8] c"topological-gc.scm:383: srfi-1#member\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"topological-gc.scm:380: g295\00", align 1
@.str.120 = private unnamed_addr constant [53 x i8] c"topological-gc.scm:398: connes-kreimer-decomposition\00", align 1
@.str.121 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:404: ##sys#check-output-port\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:408: ##sys#check-output-port\00", align 1
@.str.123 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:412: ##sys#check-output-port\00", align 1
@.str.124 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:399: ##sys#check-output-port\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:399: ##sys#print\00", align 1
@.str.126 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:399: ##sys#write-char-0\00", align 1
@.str.127 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:400: ##sys#check-output-port\00", align 1
@.str.128 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:400: ##sys#print\00", align 1
@.str.129 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:400: ##sys#write-char-0\00", align 1
@.str.130 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:401: ##sys#check-output-port\00", align 1
@.str.131 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:401: ##sys#print\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:401: ##sys#write-char-0\00", align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:404: ##sys#print\00", align 1
@.str.134 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:404: ##sys#write-char-0\00", align 1
@.str.135 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:405: ##sys#check-output-port\00", align 1
@.str.136 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:405: ##sys#print\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:405: ##sys#write-char-0\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:408: ##sys#print\00", align 1
@.str.139 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:408: ##sys#write-char-0\00", align 1
@.str.140 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:409: ##sys#check-output-port\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:409: ##sys#print\00", align 1
@.str.142 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:409: ##sys#write-char-0\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:412: ##sys#print\00", align 1
@.str.144 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:412: ##sys#write-char-0\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"topological-gc.scm:419: collect-all-edges\00", align 1
@li30 = internal global [32 x i8] c"\12\00\00\00\00\00\00M(map-loop389 g401)\00\00\00\00\00\00", align 16
@.str.146 = private unnamed_addr constant [42 x i8] c"topological-gc.scm:423: chicken.sort#sort\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"topological-gc.scm:425: scheme#reverse\00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:428: ##sys#check-output-port\00", align 1
@.str.149 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:428: ##sys#print\00", align 1
@.str.150 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:428: ##sys#write-char-0\00", align 1
@.str.151 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:429: ##sys#check-output-port\00", align 1
@.str.152 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:429: ##sys#print\00", align 1
@.str.153 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:429: ##sys#write-char-0\00", align 1
@.str.154 = private unnamed_addr constant [48 x i8] c"topological-gc.scm:430: ##sys#check-output-port\00", align 1
@.str.155 = private unnamed_addr constant [36 x i8] c"topological-gc.scm:430: ##sys#print\00", align 1
@.str.156 = private unnamed_addr constant [43 x i8] c"topological-gc.scm:430: ##sys#write-char-0\00", align 1
@.str.157 = private unnamed_addr constant [33 x i8] c"topological-gc.scm:426: scheme#/\00", align 1
@.str.158 = private unnamed_addr constant [54 x i8] c"topological-gc.scm:14: ##sys#register-compiled-module\00", align 1

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
  %71 = getelementptr inbounds i64, ptr %70, i64 530
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
  call void @C_rereclaim2(i64 noundef 4240, i32 noundef 1)
  %82 = load ptr, ptr @C_temporary_stack, align 8
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store ptr %83, ptr @C_temporary_stack, align 8
  %84 = load i64, ptr %82, align 8
  store i64 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = alloca i8, i64 24, align 16
  store ptr %86, ptr %10, align 8
  call void @C_initialize_lf(ptr noundef @lf, i32 noundef 76)
  %87 = call i64 @C_h_intern(ptr noundef @lf, i32 noundef 15, ptr noundef @.str.1)
  store i64 %87, ptr @lf, align 16
  %88 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 2), i32 noundef 9, ptr noundef @.str.2)
  store i64 %88, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 2), align 16
  %89 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.3)
  store i64 %89, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 4), align 16
  %90 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 5), i32 noundef 31, ptr noundef @.str.4)
  store i64 %90, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 5), align 8
  %91 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 6), i32 noundef 40, ptr noundef @.str.5)
  store i64 %91, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 6), align 16
  %92 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 9), i32 noundef 8, ptr noundef @.str.6)
  store i64 %92, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 9), align 8
  %93 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), i32 noundef 23, ptr noundef @.str.7)
  store i64 %93, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %94 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.8)
  store i64 %94, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 12), align 16
  %95 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.9)
  store i64 %95, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 13), align 8
  %96 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), i32 noundef 3, ptr noundef @.str.10)
  store i64 %96, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), align 16
  %97 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), i32 noundef 8, ptr noundef @.str.11)
  store i64 %97, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
  %98 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 16), i32 noundef 10, ptr noundef @.str.12)
  store i64 %98, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 16), align 16
  %99 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 17), i32 noundef 8, ptr noundef @.str.13)
  store i64 %99, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 17), align 8
  %100 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), i32 noundef 30, ptr noundef @.str.14)
  store i64 %100, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %101 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 20), i32 noundef 40, ptr noundef @.str.15)
  store i64 %101, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 20), align 16
  %102 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 21), i32 noundef 20, ptr noundef @.str.16)
  store i64 %102, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 21), align 8
  %103 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), i32 noundef 23, ptr noundef @.str.17)
  store i64 %103, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %104 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 23), i32 noundef 37, ptr noundef @.str.18)
  store i64 %104, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 23), align 8
  %105 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 24), i32 noundef 8, ptr noundef @.str.19)
  store i64 %105, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 24), align 16
  %106 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 25), i32 noundef 6, ptr noundef @.str.20)
  store i64 %106, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 25), align 8
  %107 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 26), i32 noundef 11, ptr noundef @.str.21)
  store i64 %107, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 26), align 16
  %108 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 27), i32 noundef 11, ptr noundef @.str.22)
  store i64 %108, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 27), align 8
  %109 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.23)
  store i64 %109, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 28), align 16
  %110 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), i32 noundef 13, ptr noundef @.str.24)
  store i64 %110, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), align 8
  %111 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.25)
  store i64 %111, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 30), align 16
  %112 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 31), i32 noundef 17, ptr noundef @.str.26)
  store i64 %112, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 31), align 8
  %113 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), i32 noundef 23, ptr noundef @.str.27)
  store i64 %113, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), align 16
  %114 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 33), i32 noundef 13, ptr noundef @.str.28)
  store i64 %114, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 33), align 8
  %115 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), i32 noundef 17, ptr noundef @.str.29)
  store i64 %115, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), align 16
  %116 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 35), i32 noundef 9, ptr noundef @.str.30)
  store i64 %116, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 35), align 8
  %117 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 36), i32 noundef 4, ptr noundef @.str.31)
  store i64 %117, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 36), align 16
  %118 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 37), i32 noundef 9, ptr noundef @.str.32)
  store i64 %118, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 37), align 8
  %119 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 38), i32 noundef 7, ptr noundef @.str.33)
  store i64 %119, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 38), align 16
  %120 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 39), i32 noundef 11, ptr noundef @.str.34)
  store i64 %120, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 39), align 8
  %121 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 40), i32 noundef 14, ptr noundef @.str.35)
  store i64 %121, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 40), align 16
  %122 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 41), i32 noundef 18, ptr noundef @.str.36)
  store i64 %122, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 41), align 8
  %123 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.37)
  store i64 %123, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 42), align 16
  %124 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 43), i32 noundef 35, ptr noundef @.str.38)
  store i64 %124, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 43), align 8
  %125 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 44), i32 noundef 37, ptr noundef @.str.39)
  store i64 %125, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 44), align 16
  %126 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 45), i32 noundef 13, ptr noundef @.str.40)
  store i64 %126, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 45), align 8
  %127 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 46), i32 noundef 32, ptr noundef @.str.41)
  store i64 %127, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 46), align 16
  %128 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), i32 noundef 21, ptr noundef @.str.42)
  store i64 %128, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %129 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), i32 noundef 18, ptr noundef @.str.43)
  store i64 %129, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
  %130 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), i32 noundef 11, ptr noundef @.str.44)
  store i64 %130, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
  %131 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %131, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 50), align 16
  %132 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.46)
  store i64 %132, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 51), align 8
  %133 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), i32 noundef 23, ptr noundef @.str.47)
  store i64 %133, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %134 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), i32 noundef 6, ptr noundef @.str.48)
  store i64 %134, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %135 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.45)
  store i64 %135, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 54), align 16
  %136 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.49)
  store i64 %136, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 55), align 8
  %137 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.50)
  store i64 %137, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 56), align 16
  %138 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.51)
  store i64 %138, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 57), align 8
  %139 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.52)
  store i64 %139, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 58), align 16
  %140 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.53)
  store i64 %140, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 59), align 8
  %141 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.54)
  store i64 %141, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 60), align 16
  %142 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.55)
  store i64 %142, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 61), align 8
  %143 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 62), i32 noundef 34, ptr noundef @.str.56)
  store i64 %143, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 62), align 16
  %144 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.57)
  store i64 %144, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 63), align 8
  %145 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.58)
  store i64 %145, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 64), align 16
  %146 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.59)
  store i64 %146, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 65), align 8
  %147 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 66), i32 noundef 14, ptr noundef @.str.60)
  store i64 %147, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 66), align 16
  %148 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 67), i32 noundef 8, ptr noundef @.str.61)
  store i64 %148, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 67), align 8
  %149 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 68), i32 noundef 34, ptr noundef @.str.62)
  store i64 %149, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 68), align 16
  %150 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), i32 noundef 27, ptr noundef @.str.63)
  store i64 %150, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
  %151 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 70), i32 noundef 7, ptr noundef @.str.64)
  store i64 %151, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 70), align 16
  %152 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 71), i32 noundef 6, ptr noundef @.str.65)
  store i64 %152, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 71), align 8
  %153 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 72), i32 noundef 30, ptr noundef @.str.66)
  store i64 %153, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 72), align 16
  %154 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 73), i32 noundef 14, ptr noundef @.str.67)
  store i64 %154, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 73), align 8
  %155 = call i64 @C_decode_literal(ptr noundef @C_fromspace_top, ptr noundef @.str.68)
  store i64 %155, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 74), align 16
  %156 = call i64 @C_h_intern(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 75), i32 noundef 22, ptr noundef @.str.69)
  store i64 %156, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 75), align 8
  %157 = call ptr @create_ptable()
  %158 = call ptr @C_register_lf2(ptr noundef @lf, i32 noundef 76, ptr noundef %157)
  %159 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %159, align 8
  %160 = load ptr, ptr %10, align 8
  %161 = getelementptr inbounds i64, ptr %160, i64 1
  store i64 ptrtoint (ptr @f_777 to i64), ptr %161, align 8
  %162 = load i64, ptr %7, align 8
  %163 = load ptr, ptr %10, align 8
  %164 = getelementptr inbounds i64, ptr %163, i64 2
  store i64 %162, ptr %164, align 8
  %165 = load ptr, ptr %10, align 8
  %166 = ptrtoint ptr %165 to i64
  store i64 %166, ptr %5, align 8
  %167 = load ptr, ptr %10, align 8
  %168 = getelementptr inbounds i64, ptr %167, i64 3
  store ptr %168, ptr %10, align 8
  %169 = load i64, ptr %5, align 8
  store i64 %169, ptr %8, align 8
  %170 = load ptr, ptr %4, align 8
  store ptr %170, ptr %14, align 8
  %171 = load ptr, ptr %14, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 0
  store i64 30, ptr %172, align 8
  %173 = load i64, ptr %8, align 8
  %174 = load ptr, ptr %14, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 1
  store i64 %173, ptr %175, align 8
  %176 = load ptr, ptr %14, align 8
  call void @C_library_toplevel(i64 noundef 2, ptr noundef %176) #4
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
define internal void @f_777(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_777, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_780 to i64), ptr %54, align 8
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
define internal void @f_780(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
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
  call void @C_save_and_reclaim(ptr noundef @f_780, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
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
  %62 = load ptr, ptr %10, align 8
  %63 = ptrtoint ptr %62 to i64
  store i64 %63, ptr %5, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.70)
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 71), align 8
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
declare void @C_eval_toplevel(i64 noundef, ptr noundef) #3

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
  call void @C_save_and_reclaim(ptr noundef @f_783, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_786 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.70)
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 70), align 16
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
define internal ptr @C_fast_retrieve_symbol_proc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @C_fast_retrieve(i64 noundef %3)
  %5 = call ptr @C_fast_retrieve_proc(i64 noundef %4)
  ret ptr %5
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_786(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !10
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
  call void @C_save_and_reclaim(ptr noundef @f_786, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_789 to i64), ptr %54, align 8
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
define internal void @f_789(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_789, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 24, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_792 to i64), ptr %54, align 8
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

; Function Attrs: noreturn
declare void @C_data_2dstructures_toplevel(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_792(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !12
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
  call void @C_save_and_reclaim(ptr noundef @f_792, i32 noundef %51, ptr noundef %52) #4
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
  store i64 ptrtoint (ptr @f_795 to i64), ptr %59, align 8
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
  store i64 ptrtoint (ptr @f_1901 to i64), ptr %73, align 8
  %74 = load ptr, ptr %12, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 ptrtoint (ptr @li32 to i64), ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %5, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %12, align 8
  %80 = load i64, ptr %5, align 8
  store i64 %80, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.71)
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 75), align 8
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
  %90 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 75), align 8
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
declare void @C_extras_toplevel(i64 noundef, ptr noundef) #3

declare i64 @C_a_i_provide(ptr noundef, i32 noundef, i64 noundef) #1

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
  call void @C_save_and_reclaim(ptr noundef @f_795, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_798 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.72)
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 71), align 8
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
define internal void @f_1901(i64 noundef %0, ptr noundef %1) #2 {
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
  %32 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !14
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
  call void @C_save_and_reclaim(ptr noundef @f_1901, i32 noundef %55, ptr noundef %56) #4
  unreachable

57:                                               ; preds = %31
  call void @C_trace(ptr noundef @.str.158)
  %58 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 72), align 16
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
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 72), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 73), align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 6, ptr %80, align 8
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store i64 14, ptr %82, align 8
  %83 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 74), align 16
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
define internal void @f_798(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_798, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_801 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.72)
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 69), align 8
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
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 70), align 16
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
define internal void @f_801(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
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
  %35 = load i64, ptr @C_timer_interrupt_counter, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr @C_timer_interrupt_counter, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %39

39:                                               ; preds = %38, %2
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !16
  store ptr %40, ptr %25, align 8
  %41 = load ptr, ptr %25, align 8
  store ptr %41, ptr %26, align 8
  %42 = load ptr, ptr %26, align 8
  %43 = load ptr, ptr @C_stack_limit, align 8
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = load i64, ptr %3, align 8
  %49 = icmp sgt i64 %48, 4
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 4
  %52 = add nsw i32 39, %51
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
  call void @C_save_and_reclaim(ptr noundef @f_801, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = alloca i8, i64 312, align 16
  store ptr %66, ptr %24, align 8
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 2), align 16
  %68 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 1), i64 noundef %67)
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 4), align 16
  %70 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), i64 noundef %69)
  store i64 %70, ptr %9, align 8
  %71 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 5), align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %74, align 8
  %75 = load ptr, ptr %24, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_808 to i64), ptr %76, align 8
  %77 = load ptr, ptr %24, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 ptrtoint (ptr @li0 to i64), ptr %78, align 8
  %79 = load ptr, ptr %24, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %24, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 3
  store ptr %82, ptr %24, align 8
  %83 = load i64, ptr %5, align 8
  %84 = call i64 @C_mutate(ptr noundef %73, i64 noundef %83)
  store i64 %84, ptr %10, align 8
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 6), align 16
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 1
  %88 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %88, align 8
  %89 = load ptr, ptr %24, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 ptrtoint (ptr @f_812 to i64), ptr %90, align 8
  %91 = load ptr, ptr %24, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 ptrtoint (ptr @li1 to i64), ptr %92, align 8
  %93 = load ptr, ptr %24, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %24, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  store ptr %96, ptr %24, align 8
  %97 = load i64, ptr %5, align 8
  %98 = call i64 @C_mutate(ptr noundef %87, i64 noundef %97)
  store i64 %98, ptr %11, align 8
  %99 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %99, align 8
  %100 = load ptr, ptr %24, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 ptrtoint (ptr @f_842 to i64), ptr %101, align 8
  %102 = load ptr, ptr %24, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 ptrtoint (ptr @li2 to i64), ptr %103, align 8
  %104 = load ptr, ptr %24, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %24, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 3
  store ptr %107, ptr %24, align 8
  %108 = load i64, ptr %5, align 8
  %109 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 7), i64 noundef %108)
  store i64 %109, ptr %12, align 8
  %110 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %110, align 8
  %111 = load ptr, ptr %24, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 ptrtoint (ptr @f_908 to i64), ptr %112, align 8
  %113 = load ptr, ptr %24, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 ptrtoint (ptr @li6 to i64), ptr %114, align 8
  %115 = load ptr, ptr %24, align 8
  %116 = ptrtoint ptr %115 to i64
  store i64 %116, ptr %5, align 8
  %117 = load ptr, ptr %24, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 3
  store ptr %118, ptr %24, align 8
  %119 = load i64, ptr %5, align 8
  %120 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 8), i64 noundef %119)
  store i64 %120, ptr %13, align 8
  %121 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %121, align 8
  %122 = load ptr, ptr %24, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 ptrtoint (ptr @f_1259 to i64), ptr %123, align 8
  %124 = load ptr, ptr %24, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 2
  store i64 ptrtoint (ptr @li9 to i64), ptr %125, align 8
  %126 = load ptr, ptr %24, align 8
  %127 = ptrtoint ptr %126 to i64
  store i64 %127, ptr %5, align 8
  %128 = load ptr, ptr %24, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 3
  store ptr %129, ptr %24, align 8
  %130 = load i64, ptr %5, align 8
  %131 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 11), i64 noundef %130)
  store i64 %131, ptr %14, align 8
  %132 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 20), align 16
  %133 = inttoptr i64 %132 to ptr
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  %135 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %135, align 8
  %136 = load ptr, ptr %24, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 1
  store i64 ptrtoint (ptr @f_1403 to i64), ptr %137, align 8
  %138 = load ptr, ptr %24, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  store i64 ptrtoint (ptr @li10 to i64), ptr %139, align 8
  %140 = load ptr, ptr %24, align 8
  %141 = ptrtoint ptr %140 to i64
  store i64 %141, ptr %5, align 8
  %142 = load ptr, ptr %24, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 3
  store ptr %143, ptr %24, align 8
  %144 = load i64, ptr %5, align 8
  %145 = call i64 @C_mutate(ptr noundef %134, i64 noundef %144)
  store i64 %145, ptr %15, align 8
  %146 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 23), align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds i64, ptr %147, i64 1
  %149 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %149, align 8
  %150 = load ptr, ptr %24, align 8
  %151 = getelementptr inbounds i64, ptr %150, i64 1
  store i64 ptrtoint (ptr @f_1413 to i64), ptr %151, align 8
  %152 = load ptr, ptr %24, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 2
  store i64 ptrtoint (ptr @li21 to i64), ptr %153, align 8
  %154 = load ptr, ptr %24, align 8
  %155 = ptrtoint ptr %154 to i64
  store i64 %155, ptr %5, align 8
  %156 = load ptr, ptr %24, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 3
  store ptr %157, ptr %24, align 8
  %158 = load i64, ptr %5, align 8
  %159 = call i64 @C_mutate(ptr noundef %148, i64 noundef %158)
  store i64 %159, ptr %16, align 8
  %160 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 43), align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  %163 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %163, align 8
  %164 = load ptr, ptr %24, align 8
  %165 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 ptrtoint (ptr @f_1496 to i64), ptr %165, align 8
  %166 = load ptr, ptr %24, align 8
  %167 = getelementptr inbounds i64, ptr %166, i64 2
  store i64 ptrtoint (ptr @li22 to i64), ptr %167, align 8
  %168 = load ptr, ptr %24, align 8
  %169 = ptrtoint ptr %168 to i64
  store i64 %169, ptr %5, align 8
  %170 = load ptr, ptr %24, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 3
  store ptr %171, ptr %24, align 8
  %172 = load i64, ptr %5, align 8
  %173 = call i64 @C_mutate(ptr noundef %162, i64 noundef %172)
  store i64 %173, ptr %17, align 8
  %174 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 44), align 16
  %175 = inttoptr i64 %174 to ptr
  %176 = getelementptr inbounds i64, ptr %175, i64 1
  %177 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %177, align 8
  %178 = load ptr, ptr %24, align 8
  %179 = getelementptr inbounds i64, ptr %178, i64 1
  store i64 ptrtoint (ptr @f_1502 to i64), ptr %179, align 8
  %180 = load ptr, ptr %24, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 2
  store i64 ptrtoint (ptr @li24 to i64), ptr %181, align 8
  %182 = load ptr, ptr %24, align 8
  %183 = ptrtoint ptr %182 to i64
  store i64 %183, ptr %5, align 8
  %184 = load ptr, ptr %24, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 3
  store ptr %185, ptr %24, align 8
  %186 = load i64, ptr %5, align 8
  %187 = call i64 @C_mutate(ptr noundef %176, i64 noundef %186)
  store i64 %187, ptr %18, align 8
  %188 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %188, align 8
  %189 = load ptr, ptr %24, align 8
  %190 = getelementptr inbounds i64, ptr %189, i64 1
  store i64 ptrtoint (ptr @f_1583 to i64), ptr %190, align 8
  %191 = load ptr, ptr %24, align 8
  %192 = getelementptr inbounds i64, ptr %191, i64 2
  store i64 ptrtoint (ptr @li28 to i64), ptr %192, align 8
  %193 = load ptr, ptr %24, align 8
  %194 = ptrtoint ptr %193 to i64
  store i64 %194, ptr %5, align 8
  %195 = load ptr, ptr %24, align 8
  %196 = getelementptr inbounds i64, ptr %195, i64 3
  store ptr %196, ptr %24, align 8
  %197 = load i64, ptr %5, align 8
  %198 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 19), i64 noundef %197)
  store i64 %198, ptr %19, align 8
  %199 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 46), align 16
  %200 = inttoptr i64 %199 to ptr
  %201 = getelementptr inbounds i64, ptr %200, i64 1
  %202 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %202, align 8
  %203 = load ptr, ptr %24, align 8
  %204 = getelementptr inbounds i64, ptr %203, i64 1
  store i64 ptrtoint (ptr @f_1640 to i64), ptr %204, align 8
  %205 = load ptr, ptr %24, align 8
  %206 = getelementptr inbounds i64, ptr %205, i64 2
  store i64 ptrtoint (ptr @li29 to i64), ptr %206, align 8
  %207 = load ptr, ptr %24, align 8
  %208 = ptrtoint ptr %207 to i64
  store i64 %208, ptr %5, align 8
  %209 = load ptr, ptr %24, align 8
  %210 = getelementptr inbounds i64, ptr %209, i64 3
  store ptr %210, ptr %24, align 8
  %211 = load i64, ptr %5, align 8
  %212 = call i64 @C_mutate(ptr noundef %201, i64 noundef %211)
  store i64 %212, ptr %20, align 8
  %213 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 62), align 16
  %214 = inttoptr i64 %213 to ptr
  %215 = getelementptr inbounds i64, ptr %214, i64 1
  %216 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %216, align 8
  %217 = load ptr, ptr %24, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 1
  store i64 ptrtoint (ptr @f_1779 to i64), ptr %218, align 8
  %219 = load ptr, ptr %24, align 8
  %220 = getelementptr inbounds i64, ptr %219, i64 2
  store i64 ptrtoint (ptr @li31 to i64), ptr %220, align 8
  %221 = load ptr, ptr %24, align 8
  %222 = ptrtoint ptr %221 to i64
  store i64 %222, ptr %5, align 8
  %223 = load ptr, ptr %24, align 8
  %224 = getelementptr inbounds i64, ptr %223, i64 3
  store ptr %224, ptr %24, align 8
  %225 = load i64, ptr %5, align 8
  %226 = call i64 @C_mutate(ptr noundef %215, i64 noundef %225)
  store i64 %226, ptr %21, align 8
  %227 = load ptr, ptr %24, align 8
  store i64 2594073385365405698, ptr %227, align 8
  %228 = load ptr, ptr %24, align 8
  %229 = getelementptr inbounds i64, ptr %228, i64 1
  store i64 ptrtoint (ptr @f_1899 to i64), ptr %229, align 8
  %230 = load i64, ptr %6, align 8
  %231 = inttoptr i64 %230 to ptr
  %232 = getelementptr inbounds i64, ptr %231, i64 2
  %233 = load i64, ptr %232, align 8
  %234 = load ptr, ptr %24, align 8
  %235 = getelementptr inbounds i64, ptr %234, i64 2
  store i64 %233, ptr %235, align 8
  %236 = load ptr, ptr %24, align 8
  %237 = ptrtoint ptr %236 to i64
  store i64 %237, ptr %5, align 8
  %238 = load ptr, ptr %24, align 8
  %239 = getelementptr inbounds i64, ptr %238, i64 3
  store ptr %239, ptr %24, align 8
  %240 = load i64, ptr %5, align 8
  store i64 %240, ptr %22, align 8
  call void @C_trace(ptr noundef @.str.62)
  %241 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 68), align 16
  %242 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %241)
  store ptr %242, ptr %27, align 8
  %243 = load ptr, ptr %4, align 8
  store ptr %243, ptr %28, align 8
  %244 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 68), align 16
  %245 = inttoptr i64 %244 to ptr
  %246 = getelementptr inbounds i64, ptr %245, i64 1
  %247 = load i64, ptr %246, align 8
  %248 = load ptr, ptr %28, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 0
  store i64 %247, ptr %249, align 8
  %250 = load i64, ptr %22, align 8
  %251 = load ptr, ptr %28, align 8
  %252 = getelementptr inbounds i64, ptr %251, i64 1
  store i64 %250, ptr %252, align 8
  %253 = load ptr, ptr %27, align 8
  %254 = load ptr, ptr %28, align 8
  call void %253(i64 noundef 2, ptr noundef %254) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_808, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 1), i64 noundef %62)
  store i64 %63, ptr %9, align 8
  %64 = load i64, ptr %7, align 8
  store i64 %64, ptr %10, align 8
  %65 = load ptr, ptr %4, align 8
  store ptr %65, ptr %14, align 8
  %66 = load i64, ptr %10, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
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
define internal void @f_812(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_812, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = load i64, ptr %8, align 8
  %63 = call i64 @C_mutate(ptr noundef getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), i64 noundef %62)
  store i64 %63, ptr %9, align 8
  %64 = load i64, ptr %7, align 8
  store i64 %64, ptr %10, align 8
  %65 = load ptr, ptr %4, align 8
  store ptr %65, ptr %14, align 8
  %66 = load i64, ptr %10, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %9, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 %69, ptr %71, align 8
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
define internal void @f_842(i64 noundef %0, i64 noundef %1) #2 {
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
  %16 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !19
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_842, i32 noundef 2, i64 noundef %32, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %15
  %35 = load i64, ptr %3, align 8
  store i64 %35, ptr %6, align 8
  %36 = load i64, ptr %6, align 8
  %37 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  store i64 %36, ptr %37, align 16
  %38 = load i64, ptr %4, align 8
  %39 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  store i64 %38, ptr %39, align 8
  %40 = load i64, ptr %6, align 8
  %41 = inttoptr i64 %40 to ptr
  %42 = getelementptr inbounds i64, ptr %41, i64 1
  %43 = load i64, ptr %42, align 8
  %44 = inttoptr i64 %43 to ptr
  %45 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  call void %44(i64 noundef 2, ptr noundef %45) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_908(i64 noundef %0, i64 noundef %1) #2 {
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
  %14 = alloca ptr, align 8
  %15 = alloca [4 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %16 = load i64, ptr @C_timer_interrupt_counter, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, ptr @C_timer_interrupt_counter, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %20

20:                                               ; preds = %19, %2
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !20
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
  %30 = add nsw i64 14, %29
  %31 = icmp sgt i64 %28, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i64, ptr %3, align 8
  %38 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_908, i32 noundef 2, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %20
  %40 = alloca i8, i64 80, align 16
  store ptr %40, ptr %11, align 8
  store i64 14, ptr %6, align 8
  %41 = load ptr, ptr %11, align 8
  store i64 1, ptr %41, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = ptrtoint ptr %45 to i64
  store i64 %46, ptr %5, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 2
  store ptr %48, ptr %11, align 8
  %49 = load i64, ptr %5, align 8
  store i64 %49, ptr %7, align 8
  %50 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %50, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 1
  store i64 ptrtoint (ptr @f_912 to i64), ptr %52, align 8
  %53 = load i64, ptr %3, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %5, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 4
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %5, align 8
  store i64 %63, ptr %8, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_914 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 ptrtoint (ptr @li5 to i64), ptr %71, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store ptr %75, ptr %11, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.73)
  %77 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %78 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %77)
  store ptr %78, ptr %14, align 8
  %79 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = load i64, ptr %8, align 8
  %85 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %4, align 8
  %87 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %86, ptr %87, align 16
  %88 = load i64, ptr %9, align 8
  %89 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %88, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %90(i64 noundef 4, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1259(i64 noundef %0, i64 noundef %1) #2 {
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
  %16 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !21
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
  %25 = add nsw i64 6, %24
  %26 = icmp sgt i64 %23, %25
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i64, ptr %3, align 8
  %33 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1259, i32 noundef 2, i64 noundef %32, i64 noundef %33) #4
  unreachable

34:                                               ; preds = %15
  %35 = alloca i8, i64 32, align 16
  store ptr %35, ptr %8, align 8
  %36 = load ptr, ptr %8, align 8
  store i64 2594073385365405699, ptr %36, align 8
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 1
  store i64 ptrtoint (ptr @f_1263 to i64), ptr %38, align 8
  %39 = load i64, ptr %4, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 %39, ptr %41, align 8
  %42 = load i64, ptr %3, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 3
  store i64 %42, ptr %44, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = ptrtoint ptr %45 to i64
  store i64 %46, ptr %5, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 4
  store ptr %48, ptr %8, align 8
  %49 = load i64, ptr %5, align 8
  store i64 %49, ptr %6, align 8
  call void @C_trace(ptr noundef @.str.75)
  %50 = load i64, ptr %6, align 8
  %51 = load i64, ptr %4, align 8
  call void @f_1583(i64 noundef %50, i64 noundef %51) #4
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !22
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
  call void @C_save_and_reclaim(ptr noundef @f_1403, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 40, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1411 to i64), ptr %70, align 8
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
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %16, align 8
  %88 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
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
  %97 = load ptr, ptr %15, align 8
  %98 = load ptr, ptr %16, align 8
  call void %97(i64 noundef 2, ptr noundef %98) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1413(i64 noundef %0, ptr noundef %1) #2 {
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !23
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
  %56 = icmp sgt i64 %55, 5
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 5
  %59 = add nsw i32 14, %58
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
  call void @C_save_and_reclaim(ptr noundef @f_1413, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 112, align 16
  store ptr %73, ptr %18, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_vector_ref(i64 noundef %74, i64 noundef 3)
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %8, align 8
  %77 = call i64 @C_i_vector_ref(i64 noundef %76, i64 noundef 5)
  store i64 %77, ptr %10, align 8
  %78 = load i64, ptr %8, align 8
  %79 = call i64 @C_i_vector_ref(i64 noundef %78, i64 noundef 7)
  store i64 %79, ptr %11, align 8
  %80 = load ptr, ptr %18, align 8
  store i64 2594073385365405699, ptr %80, align 8
  %81 = load ptr, ptr %18, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 ptrtoint (ptr @f_1426 to i64), ptr %82, align 8
  %83 = load i64, ptr %8, align 8
  %84 = load ptr, ptr %18, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %18, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %18, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %18, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store ptr %92, ptr %18, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %12, align 8
  %94 = load i64, ptr %11, align 8
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 2), align 16
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i64 22, i64 6
  store i64 %98, ptr %13, align 8
  %99 = load i64, ptr %13, align 8
  %100 = icmp ne i64 %99, 6
  br i1 %100, label %101, label %155

101:                                              ; preds = %72
  %102 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), align 8
  %103 = call i64 @C_retrieve2(i64 noundef %102, ptr noundef @.str.84)
  store i64 %103, ptr %14, align 8
  %104 = load ptr, ptr %18, align 8
  store i64 2594073385365405701, ptr %104, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  store i64 ptrtoint (ptr @f_1046 to i64), ptr %106, align 8
  %107 = load i64, ptr %10, align 8
  %108 = load ptr, ptr %18, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 2
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %9, align 8
  %111 = load ptr, ptr %18, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %14, align 8
  %114 = load ptr, ptr %18, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 4
  store i64 %113, ptr %115, align 8
  %116 = load ptr, ptr %18, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 5
  store i64 ptrtoint (ptr @li15 to i64), ptr %117, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = ptrtoint ptr %118 to i64
  store i64 %119, ptr %5, align 8
  %120 = load ptr, ptr %18, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 6
  store ptr %121, ptr %18, align 8
  %122 = load i64, ptr %5, align 8
  store i64 %122, ptr %15, align 8
  %123 = load ptr, ptr %18, align 8
  store i64 2594073385365405699, ptr %123, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  store i64 ptrtoint (ptr @f_1052 to i64), ptr %125, align 8
  %126 = load i64, ptr %14, align 8
  %127 = load ptr, ptr %18, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %18, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 3
  store i64 ptrtoint (ptr @li16 to i64), ptr %130, align 8
  %131 = load ptr, ptr %18, align 8
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %5, align 8
  %133 = load ptr, ptr %18, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 4
  store ptr %134, ptr %18, align 8
  %135 = load i64, ptr %5, align 8
  store i64 %135, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.85)
  %136 = load i64, ptr %3, align 8
  %137 = icmp sge i64 %136, 4
  br i1 %137, label %138, label %140

138:                                              ; preds = %101
  %139 = load ptr, ptr %4, align 8
  store ptr %139, ptr %21, align 8
  br label %142

140:                                              ; preds = %101
  %141 = alloca i8, i64 32, align 16
  store ptr %141, ptr %21, align 8
  br label %142

142:                                              ; preds = %140, %138
  %143 = load ptr, ptr %21, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 0
  store i64 0, ptr %144, align 8
  %145 = load i64, ptr %12, align 8
  %146 = load ptr, ptr %21, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %15, align 8
  %149 = load ptr, ptr %21, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 2
  store i64 %148, ptr %150, align 8
  %151 = load i64, ptr %16, align 8
  %152 = load ptr, ptr %21, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 3
  store i64 %151, ptr %153, align 8
  %154 = load ptr, ptr %21, align 8
  call void @C_call_with_values(i64 noundef 4, ptr noundef %154) #4
  unreachable

155:                                              ; preds = %72
  %156 = load i64, ptr %11, align 8
  %157 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 39), align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i64 22, i64 6
  store i64 %160, ptr %14, align 8
  %161 = load i64, ptr %14, align 8
  %162 = icmp ne i64 %161, 6
  br i1 %162, label %163, label %200

163:                                              ; preds = %155
  %164 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), align 8
  %165 = call i64 @C_retrieve2(i64 noundef %164, ptr noundef @.str.84)
  store i64 %165, ptr %15, align 8
  %166 = load ptr, ptr %18, align 8
  store i64 2594073385365405701, ptr %166, align 8
  %167 = load ptr, ptr %18, align 8
  %168 = getelementptr inbounds i64, ptr %167, i64 1
  store i64 ptrtoint (ptr @f_1139 to i64), ptr %168, align 8
  %169 = load i64, ptr %12, align 8
  %170 = load ptr, ptr %18, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 2
  store i64 %169, ptr %171, align 8
  %172 = load i64, ptr %15, align 8
  %173 = load ptr, ptr %18, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 3
  store i64 %172, ptr %174, align 8
  %175 = load i64, ptr %9, align 8
  %176 = load ptr, ptr %18, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 4
  store i64 %175, ptr %177, align 8
  %178 = load i64, ptr %10, align 8
  %179 = load ptr, ptr %18, align 8
  %180 = getelementptr inbounds i64, ptr %179, i64 5
  store i64 %178, ptr %180, align 8
  %181 = load ptr, ptr %18, align 8
  %182 = ptrtoint ptr %181 to i64
  store i64 %182, ptr %5, align 8
  %183 = load ptr, ptr %18, align 8
  %184 = getelementptr inbounds i64, ptr %183, i64 6
  store ptr %184, ptr %18, align 8
  %185 = load i64, ptr %5, align 8
  store i64 %185, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.86)
  %186 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %187 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %186)
  store ptr %187, ptr %22, align 8
  %188 = load ptr, ptr %4, align 8
  store ptr %188, ptr %23, align 8
  %189 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %190 = inttoptr i64 %189 to ptr
  %191 = getelementptr inbounds i64, ptr %190, i64 1
  %192 = load i64, ptr %191, align 8
  %193 = load ptr, ptr %23, align 8
  %194 = getelementptr inbounds i64, ptr %193, i64 0
  store i64 %192, ptr %194, align 8
  %195 = load i64, ptr %16, align 8
  %196 = load ptr, ptr %23, align 8
  %197 = getelementptr inbounds i64, ptr %196, i64 1
  store i64 %195, ptr %197, align 8
  %198 = load ptr, ptr %22, align 8
  %199 = load ptr, ptr %23, align 8
  call void %198(i64 noundef 2, ptr noundef %199) #4
  unreachable

200:                                              ; preds = %155
  %201 = load i64, ptr %11, align 8
  %202 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 40), align 16
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i64 22, i64 6
  store i64 %205, ptr %15, align 8
  %206 = load i64, ptr %15, align 8
  %207 = icmp ne i64 %206, 6
  br i1 %207, label %208, label %222

208:                                              ; preds = %200
  %209 = load ptr, ptr %18, align 8
  store i64 2594073385365405698, ptr %209, align 8
  %210 = load ptr, ptr %18, align 8
  %211 = getelementptr inbounds i64, ptr %210, i64 1
  store i64 ptrtoint (ptr @f_1394 to i64), ptr %211, align 8
  %212 = load i64, ptr %12, align 8
  %213 = load ptr, ptr %18, align 8
  %214 = getelementptr inbounds i64, ptr %213, i64 2
  store i64 %212, ptr %214, align 8
  %215 = load ptr, ptr %18, align 8
  %216 = ptrtoint ptr %215 to i64
  store i64 %216, ptr %5, align 8
  %217 = load ptr, ptr %18, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 3
  store ptr %218, ptr %18, align 8
  %219 = load i64, ptr %5, align 8
  store i64 %219, ptr %16, align 8
  call void @C_trace(ptr noundef @.str.87)
  %220 = load i64, ptr %16, align 8
  %221 = load i64, ptr %9, align 8
  call void @f_1259(i64 noundef %220, i64 noundef %221) #4
  unreachable

222:                                              ; preds = %200
  call void @C_trace(ptr noundef @.str.88)
  %223 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 41), align 8
  %224 = inttoptr i64 %223 to ptr
  %225 = getelementptr inbounds i64, ptr %224, i64 1
  %226 = load i64, ptr %225, align 8
  %227 = call ptr @C_fast_retrieve_proc(i64 noundef %226)
  store ptr %227, ptr %24, align 8
  %228 = load i64, ptr %3, align 8
  %229 = icmp sge i64 %228, 4
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load ptr, ptr %4, align 8
  store ptr %231, ptr %25, align 8
  br label %234

232:                                              ; preds = %222
  %233 = alloca i8, i64 32, align 16
  store ptr %233, ptr %25, align 8
  br label %234

234:                                              ; preds = %232, %230
  %235 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 41), align 8
  %236 = inttoptr i64 %235 to ptr
  %237 = getelementptr inbounds i64, ptr %236, i64 1
  %238 = load i64, ptr %237, align 8
  %239 = load ptr, ptr %25, align 8
  %240 = getelementptr inbounds i64, ptr %239, i64 0
  store i64 %238, ptr %240, align 8
  %241 = load i64, ptr %12, align 8
  %242 = load ptr, ptr %25, align 8
  %243 = getelementptr inbounds i64, ptr %242, i64 1
  store i64 %241, ptr %243, align 8
  %244 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 42), align 16
  %245 = load ptr, ptr %25, align 8
  %246 = getelementptr inbounds i64, ptr %245, i64 2
  store i64 %244, ptr %246, align 8
  %247 = load i64, ptr %11, align 8
  %248 = load ptr, ptr %25, align 8
  %249 = getelementptr inbounds i64, ptr %248, i64 3
  store i64 %247, ptr %249, align 8
  %250 = load ptr, ptr %24, align 8
  %251 = load ptr, ptr %25, align 8
  call void %250(i64 noundef 4, ptr noundef %251) #4
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
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
  call void @C_save_and_reclaim(ptr noundef @f_1496, i32 noundef %58, ptr noundef %59) #4
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
define internal void @f_1502(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1502, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 32, align 16
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1506 to i64), ptr %64, align 8
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
  call void @C_trace(ptr noundef @.str.113)
  %76 = load i64, ptr %9, align 8
  %77 = load i64, ptr %8, align 8
  call void @f_908(i64 noundef %76, i64 noundef %77) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1583(i64 noundef %0, i64 noundef %1) #2 {
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
  %14 = alloca ptr, align 8
  %15 = alloca [4 x i64], align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %16 = load i64, ptr @C_timer_interrupt_counter, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, ptr @C_timer_interrupt_counter, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %20

20:                                               ; preds = %19, %2
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !26
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
  %30 = add nsw i64 14, %29
  %31 = icmp sgt i64 %28, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i64, ptr %3, align 8
  %38 = load i64, ptr %4, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1583, i32 noundef 2, i64 noundef %37, i64 noundef %38) #4
  unreachable

39:                                               ; preds = %20
  %40 = alloca i8, i64 80, align 16
  store ptr %40, ptr %11, align 8
  store i64 14, ptr %6, align 8
  %41 = load ptr, ptr %11, align 8
  store i64 1, ptr %41, align 8
  %42 = load i64, ptr %6, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = ptrtoint ptr %45 to i64
  store i64 %46, ptr %5, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 2
  store ptr %48, ptr %11, align 8
  %49 = load i64, ptr %5, align 8
  store i64 %49, ptr %7, align 8
  %50 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %50, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 1
  store i64 ptrtoint (ptr @f_1587 to i64), ptr %52, align 8
  %53 = load i64, ptr %3, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  store i64 %53, ptr %55, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %5, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 4
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %5, align 8
  store i64 %63, ptr %8, align 8
  %64 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 ptrtoint (ptr @f_1589 to i64), ptr %66, align 8
  %67 = load i64, ptr %7, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  store i64 %67, ptr %69, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 ptrtoint (ptr @li27 to i64), ptr %71, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = ptrtoint ptr %72 to i64
  store i64 %73, ptr %5, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store ptr %75, ptr %11, align 8
  %76 = load i64, ptr %5, align 8
  store i64 %76, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.117)
  %77 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %78 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %77)
  store ptr %78, ptr %14, align 8
  %79 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %82, ptr %83, align 16
  %84 = load i64, ptr %8, align 8
  %85 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %4, align 8
  %87 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %86, ptr %87, align 16
  %88 = load i64, ptr %9, align 8
  %89 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %88, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %90(i64 noundef 4, ptr noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1640(i64 noundef %0, ptr noundef %1) #2 {
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !27
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
  %56 = icmp sgt i64 %55, 4
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 4
  %59 = add nsw i32 5, %58
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
  call void @C_save_and_reclaim(ptr noundef @f_1640, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 40, align 16
  store ptr %73, ptr %17, align 8
  %74 = load i64, ptr %8, align 8
  %75 = call i64 @C_i_vector_ref(i64 noundef %74, i64 noundef 3)
  store i64 %75, ptr %9, align 8
  %76 = load i64, ptr %8, align 8
  %77 = call i64 @C_i_vector_ref(i64 noundef %76, i64 noundef 7)
  store i64 %77, ptr %10, align 8
  %78 = load i64, ptr %10, align 8
  %79 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 40), align 16
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i64 22, i64 6
  store i64 %82, ptr %11, align 8
  %83 = load i64, ptr %11, align 8
  %84 = icmp ne i64 %83, 6
  br i1 %84, label %85, label %99

85:                                               ; preds = %72
  %86 = load ptr, ptr %17, align 8
  store i64 2594073385365405698, ptr %86, align 8
  %87 = load ptr, ptr %17, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_1656 to i64), ptr %88, align 8
  %89 = load i64, ptr %7, align 8
  %90 = load ptr, ptr %17, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load ptr, ptr %17, align 8
  %93 = ptrtoint ptr %92 to i64
  store i64 %93, ptr %5, align 8
  %94 = load ptr, ptr %17, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  store ptr %95, ptr %17, align 8
  %96 = load i64, ptr %5, align 8
  store i64 %96, ptr %12, align 8
  call void @C_trace(ptr noundef @.str.120)
  %97 = load i64, ptr %12, align 8
  %98 = load i64, ptr %9, align 8
  call void @f_1259(i64 noundef %97, i64 noundef %98) #4
  unreachable

99:                                               ; preds = %72
  %100 = load i64, ptr %10, align 8
  %101 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 2), align 16
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i64 22, i64 6
  store i64 %104, ptr %12, align 8
  %105 = load i64, ptr %12, align 8
  %106 = icmp ne i64 %105, 6
  br i1 %106, label %107, label %160

107:                                              ; preds = %99
  %108 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  store i64 %111, ptr %13, align 8
  %112 = load ptr, ptr %17, align 8
  store i64 2594073385365405699, ptr %112, align 8
  %113 = load ptr, ptr %17, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  store i64 ptrtoint (ptr @f_1720 to i64), ptr %114, align 8
  %115 = load i64, ptr %7, align 8
  %116 = load ptr, ptr %17, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %13, align 8
  %119 = load ptr, ptr %17, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %120, align 8
  %121 = load ptr, ptr %17, align 8
  %122 = ptrtoint ptr %121 to i64
  store i64 %122, ptr %5, align 8
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 4
  store ptr %124, ptr %17, align 8
  %125 = load i64, ptr %5, align 8
  store i64 %125, ptr %14, align 8
  call void @C_trace(ptr noundef @.str.121)
  %126 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %127 = inttoptr i64 %126 to ptr
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  %129 = load i64, ptr %128, align 8
  %130 = call ptr @C_fast_retrieve_proc(i64 noundef %129)
  store ptr %130, ptr %20, align 8
  %131 = load i64, ptr %3, align 8
  %132 = icmp sge i64 %131, 5
  br i1 %132, label %133, label %135

133:                                              ; preds = %107
  %134 = load ptr, ptr %4, align 8
  store ptr %134, ptr %21, align 8
  br label %137

135:                                              ; preds = %107
  %136 = alloca i8, i64 40, align 16
  store ptr %136, ptr %21, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %21, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 0
  store i64 %141, ptr %143, align 8
  %144 = load i64, ptr %14, align 8
  %145 = load ptr, ptr %21, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  store i64 %144, ptr %146, align 8
  %147 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 1
  %150 = load i64, ptr %149, align 8
  %151 = load ptr, ptr %21, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 2
  store i64 %150, ptr %152, align 8
  %153 = load ptr, ptr %21, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 3
  store i64 22, ptr %154, align 8
  %155 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %156 = load ptr, ptr %21, align 8
  %157 = getelementptr inbounds i64, ptr %156, i64 4
  store i64 %155, ptr %157, align 8
  %158 = load ptr, ptr %20, align 8
  %159 = load ptr, ptr %21, align 8
  call void %158(i64 noundef 5, ptr noundef %159) #4
  unreachable

160:                                              ; preds = %99
  %161 = load i64, ptr %10, align 8
  %162 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 39), align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i64 22, i64 6
  store i64 %165, ptr %13, align 8
  %166 = load i64, ptr %13, align 8
  %167 = icmp ne i64 %166, 6
  br i1 %167, label %168, label %221

168:                                              ; preds = %160
  %169 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %170 = inttoptr i64 %169 to ptr
  %171 = getelementptr inbounds i64, ptr %170, i64 1
  %172 = load i64, ptr %171, align 8
  store i64 %172, ptr %14, align 8
  %173 = load ptr, ptr %17, align 8
  store i64 2594073385365405699, ptr %173, align 8
  %174 = load ptr, ptr %17, align 8
  %175 = getelementptr inbounds i64, ptr %174, i64 1
  store i64 ptrtoint (ptr @f_1747 to i64), ptr %175, align 8
  %176 = load i64, ptr %7, align 8
  %177 = load ptr, ptr %17, align 8
  %178 = getelementptr inbounds i64, ptr %177, i64 2
  store i64 %176, ptr %178, align 8
  %179 = load i64, ptr %14, align 8
  %180 = load ptr, ptr %17, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 3
  store i64 %179, ptr %181, align 8
  %182 = load ptr, ptr %17, align 8
  %183 = ptrtoint ptr %182 to i64
  store i64 %183, ptr %5, align 8
  %184 = load ptr, ptr %17, align 8
  %185 = getelementptr inbounds i64, ptr %184, i64 4
  store ptr %185, ptr %17, align 8
  %186 = load i64, ptr %5, align 8
  store i64 %186, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.122)
  %187 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %188 = inttoptr i64 %187 to ptr
  %189 = getelementptr inbounds i64, ptr %188, i64 1
  %190 = load i64, ptr %189, align 8
  %191 = call ptr @C_fast_retrieve_proc(i64 noundef %190)
  store ptr %191, ptr %22, align 8
  %192 = load i64, ptr %3, align 8
  %193 = icmp sge i64 %192, 5
  br i1 %193, label %194, label %196

194:                                              ; preds = %168
  %195 = load ptr, ptr %4, align 8
  store ptr %195, ptr %23, align 8
  br label %198

196:                                              ; preds = %168
  %197 = alloca i8, i64 40, align 16
  store ptr %197, ptr %23, align 8
  br label %198

198:                                              ; preds = %196, %194
  %199 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %200 = inttoptr i64 %199 to ptr
  %201 = getelementptr inbounds i64, ptr %200, i64 1
  %202 = load i64, ptr %201, align 8
  %203 = load ptr, ptr %23, align 8
  %204 = getelementptr inbounds i64, ptr %203, i64 0
  store i64 %202, ptr %204, align 8
  %205 = load i64, ptr %15, align 8
  %206 = load ptr, ptr %23, align 8
  %207 = getelementptr inbounds i64, ptr %206, i64 1
  store i64 %205, ptr %207, align 8
  %208 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %209 = inttoptr i64 %208 to ptr
  %210 = getelementptr inbounds i64, ptr %209, i64 1
  %211 = load i64, ptr %210, align 8
  %212 = load ptr, ptr %23, align 8
  %213 = getelementptr inbounds i64, ptr %212, i64 2
  store i64 %211, ptr %213, align 8
  %214 = load ptr, ptr %23, align 8
  %215 = getelementptr inbounds i64, ptr %214, i64 3
  store i64 22, ptr %215, align 8
  %216 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %217 = load ptr, ptr %23, align 8
  %218 = getelementptr inbounds i64, ptr %217, i64 4
  store i64 %216, ptr %218, align 8
  %219 = load ptr, ptr %22, align 8
  %220 = load ptr, ptr %23, align 8
  call void %219(i64 noundef 5, ptr noundef %220) #4
  unreachable

221:                                              ; preds = %160
  %222 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %223 = inttoptr i64 %222 to ptr
  %224 = getelementptr inbounds i64, ptr %223, i64 1
  %225 = load i64, ptr %224, align 8
  store i64 %225, ptr %14, align 8
  %226 = load ptr, ptr %17, align 8
  store i64 2594073385365405700, ptr %226, align 8
  %227 = load ptr, ptr %17, align 8
  %228 = getelementptr inbounds i64, ptr %227, i64 1
  store i64 ptrtoint (ptr @f_1768 to i64), ptr %228, align 8
  %229 = load i64, ptr %7, align 8
  %230 = load ptr, ptr %17, align 8
  %231 = getelementptr inbounds i64, ptr %230, i64 2
  store i64 %229, ptr %231, align 8
  %232 = load i64, ptr %14, align 8
  %233 = load ptr, ptr %17, align 8
  %234 = getelementptr inbounds i64, ptr %233, i64 3
  store i64 %232, ptr %234, align 8
  %235 = load i64, ptr %10, align 8
  %236 = load ptr, ptr %17, align 8
  %237 = getelementptr inbounds i64, ptr %236, i64 4
  store i64 %235, ptr %237, align 8
  %238 = load ptr, ptr %17, align 8
  %239 = ptrtoint ptr %238 to i64
  store i64 %239, ptr %5, align 8
  %240 = load ptr, ptr %17, align 8
  %241 = getelementptr inbounds i64, ptr %240, i64 5
  store ptr %241, ptr %17, align 8
  %242 = load i64, ptr %5, align 8
  store i64 %242, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.123)
  %243 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %244 = inttoptr i64 %243 to ptr
  %245 = getelementptr inbounds i64, ptr %244, i64 1
  %246 = load i64, ptr %245, align 8
  %247 = call ptr @C_fast_retrieve_proc(i64 noundef %246)
  store ptr %247, ptr %24, align 8
  %248 = load i64, ptr %3, align 8
  %249 = icmp sge i64 %248, 5
  br i1 %249, label %250, label %252

250:                                              ; preds = %221
  %251 = load ptr, ptr %4, align 8
  store ptr %251, ptr %25, align 8
  br label %254

252:                                              ; preds = %221
  %253 = alloca i8, i64 40, align 16
  store ptr %253, ptr %25, align 8
  br label %254

254:                                              ; preds = %252, %250
  %255 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
  %256 = inttoptr i64 %255 to ptr
  %257 = getelementptr inbounds i64, ptr %256, i64 1
  %258 = load i64, ptr %257, align 8
  %259 = load ptr, ptr %25, align 8
  %260 = getelementptr inbounds i64, ptr %259, i64 0
  store i64 %258, ptr %260, align 8
  %261 = load i64, ptr %15, align 8
  %262 = load ptr, ptr %25, align 8
  %263 = getelementptr inbounds i64, ptr %262, i64 1
  store i64 %261, ptr %263, align 8
  %264 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %265 = inttoptr i64 %264 to ptr
  %266 = getelementptr inbounds i64, ptr %265, i64 1
  %267 = load i64, ptr %266, align 8
  %268 = load ptr, ptr %25, align 8
  %269 = getelementptr inbounds i64, ptr %268, i64 2
  store i64 %267, ptr %269, align 8
  %270 = load ptr, ptr %25, align 8
  %271 = getelementptr inbounds i64, ptr %270, i64 3
  store i64 22, ptr %271, align 8
  %272 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %273 = load ptr, ptr %25, align 8
  %274 = getelementptr inbounds i64, ptr %273, i64 4
  store i64 %272, ptr %274, align 8
  %275 = load ptr, ptr %24, align 8
  %276 = load ptr, ptr %25, align 8
  call void %275(i64 noundef 5, ptr noundef %276) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1779(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !28
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
  %47 = add nsw i32 3, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_1779, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 24, align 16
  store ptr %61, ptr %11, align 8
  %62 = load ptr, ptr %11, align 8
  store i64 2594073385365405698, ptr %62, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 ptrtoint (ptr @f_1783 to i64), ptr %64, align 8
  %65 = load i64, ptr %7, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %5, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  store ptr %71, ptr %11, align 8
  %72 = load i64, ptr %5, align 8
  store i64 %72, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.145)
  %73 = load i64, ptr %9, align 8
  %74 = load i64, ptr %8, align 8
  call void @f_908(i64 noundef %73, i64 noundef %74) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1899(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1899, i32 noundef %47, ptr noundef %48) #4
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

; Function Attrs: noreturn
declare void @C_save_and_reclaim_args(ptr noundef, i32 noundef, ...) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_842(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_842(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_908(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_908(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_912(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_912, i32 noundef %47, ptr noundef %48) #4
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
define internal void @f_914(i64 noundef %0, ptr noundef %1) #2 {
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
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nsw i32 11, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_914, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 88, align 16
  store ptr %69, ptr %16, align 8
  %70 = load ptr, ptr %16, align 8
  store i64 2594073385365405699, ptr %70, align 8
  %71 = load ptr, ptr %16, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 ptrtoint (ptr @f_916 to i64), ptr %72, align 8
  %73 = load i64, ptr %6, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %16, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 2
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %16, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 ptrtoint (ptr @li3 to i64), ptr %80, align 8
  %81 = load ptr, ptr %16, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %5, align 8
  %83 = load ptr, ptr %16, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 4
  store ptr %84, ptr %16, align 8
  %85 = load i64, ptr %5, align 8
  store i64 %85, ptr %10, align 8
  %86 = load i64, ptr %9, align 8
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 9), align 8
  %88 = call i64 @C_i_check_list_2(i64 noundef %86, i64 noundef %87)
  store i64 %88, ptr %11, align 8
  store i64 30, ptr %12, align 8
  %89 = load ptr, ptr %16, align 8
  store i64 1, ptr %89, align 8
  %90 = load i64, ptr %12, align 8
  %91 = load ptr, ptr %16, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %16, align 8
  %94 = ptrtoint ptr %93 to i64
  store i64 %94, ptr %5, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store ptr %96, ptr %16, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %13, align 8
  %98 = load ptr, ptr %16, align 8
  store i64 2594073385365405700, ptr %98, align 8
  %99 = load ptr, ptr %16, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 ptrtoint (ptr @f_929 to i64), ptr %100, align 8
  %101 = load i64, ptr %13, align 8
  %102 = load ptr, ptr %16, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %10, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 4
  store i64 ptrtoint (ptr @li4 to i64), ptr %108, align 8
  %109 = load ptr, ptr %16, align 8
  %110 = ptrtoint ptr %109 to i64
  store i64 %110, ptr %5, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 5
  store ptr %112, ptr %16, align 8
  %113 = load i64, ptr %5, align 8
  %114 = load i64, ptr %13, align 8
  %115 = inttoptr i64 %114 to ptr
  %116 = getelementptr inbounds %struct.C_block_struct, ptr %115, i32 0, i32 1
  %117 = getelementptr inbounds [0 x i64], ptr %116, i64 0, i64 0
  store i64 %113, ptr %117, align 8
  store i64 %113, ptr %14, align 8
  %118 = load i64, ptr %13, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  store i64 %121, ptr %15, align 8
  %122 = load i64, ptr %15, align 8
  %123 = load i64, ptr %7, align 8
  %124 = load i64, ptr %9, align 8
  call void @f_929(i64 noundef %122, i64 noundef %123, i64 noundef %124) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_916(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !32
  store ptr %22, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
  store ptr %23, ptr %13, align 8
  %24 = load ptr, ptr %13, align 8
  %25 = load ptr, ptr @C_stack_limit, align 8
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = load i64, ptr @C_scratch_usage, align 8
  %31 = add nsw i64 4, %30
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_916, i32 noundef 3, i64 noundef %38, i64 noundef %39, i64 noundef %40) #4
  unreachable

41:                                               ; preds = %21
  %42 = alloca i8, i64 24, align 16
  store ptr %42, ptr %11, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = ptrtoint ptr %43 to i64
  store i64 %44, ptr %14, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 0
  store i64 216172782113783810, ptr %46, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds i64, ptr %47, i64 3
  store ptr %48, ptr %11, align 8
  %49 = load i64, ptr %6, align 8
  %50 = load i64, ptr %14, align 8
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds %struct.C_block_struct, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds [0 x i64], ptr %52, i64 0, i64 0
  store i64 %49, ptr %53, align 8
  %54 = load i64, ptr %4, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %14, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds %struct.C_block_struct, ptr %62, i32 0, i32 1
  %64 = getelementptr inbounds [0 x i64], ptr %63, i64 0, i64 1
  store i64 %60, ptr %64, align 8
  %65 = load i64, ptr %14, align 8
  store i64 %65, ptr %15, align 8
  %66 = load i64, ptr %15, align 8
  store i64 %66, ptr %8, align 8
  %67 = load i64, ptr %4, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 2
  %70 = load i64, ptr %69, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %8, align 8
  %74 = call i64 @C_mutate(ptr noundef %72, i64 noundef %73)
  store i64 %74, ptr %9, align 8
  %75 = load i64, ptr %5, align 8
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %10, align 8
  %77 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %76, ptr %77, align 16
  %78 = load i64, ptr %9, align 8
  %79 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %78, ptr %79, align 8
  %80 = load i64, ptr %10, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %84(i64 noundef 2, ptr noundef %85) #4
  unreachable
}

declare i64 @C_i_check_list_2(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_929(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_929, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_939 to i64), ptr %46, align 8
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
  call void @f_916(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
define internal void @trf_916(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_916(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_929(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_929(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
define internal void @f_939(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !34
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
  call void @C_save_and_reclaim(ptr noundef @f_939, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_929(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1259(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1259(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1263(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !35
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
  %35 = icmp sgt i64 %34, 5
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 5
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
  call void @C_save_and_reclaim(ptr noundef @f_1263, i32 noundef %49, ptr noundef %50) #4
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
  store i64 ptrtoint (ptr @f_1268 to i64), ptr %64, align 8
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
  store i64 ptrtoint (ptr @li8 to i64), ptr %75, align 8
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
  call void @f_1268(i64 noundef %89, i64 noundef %93, i64 noundef %94, i64 noundef 14, i64 noundef 14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1268(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #2 {
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
  store i64 %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %23 = load i64, ptr @C_timer_interrupt_counter, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr @C_timer_interrupt_counter, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  call void @C_raise_interrupt(i32 noundef 255)
  br label %27

27:                                               ; preds = %26, %5
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !36
  store ptr %28, ptr %18, align 8
  %29 = load ptr, ptr %18, align 8
  store ptr %29, ptr %19, align 8
  %30 = load ptr, ptr %19, align 8
  %31 = load ptr, ptr @C_stack_limit, align 8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i64, ptr @C_scratch_usage, align 8
  %37 = add nsw i64 14, %36
  %38 = icmp sgt i64 %35, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load i64, ptr %6, align 8
  %45 = load i64, ptr %7, align 8
  %46 = load i64, ptr %8, align 8
  %47 = load i64, ptr %9, align 8
  %48 = load i64, ptr %10, align 8
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1268, i32 noundef 5, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48) #4
  unreachable

49:                                               ; preds = %27
  %50 = alloca i8, i64 96, align 16
  store ptr %50, ptr %17, align 8
  %51 = load i64, ptr %8, align 8
  %52 = icmp eq i64 %51, 14
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 22, i64 6
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load i64, ptr %7, align 8
  store i64 %57, ptr %12, align 8
  %58 = load i64, ptr %12, align 8
  %59 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  store i64 %58, ptr %59, align 16
  %60 = load ptr, ptr %17, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %21, align 8
  %62 = load ptr, ptr %17, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 216172782113783810, ptr %63, align 8
  %64 = load ptr, ptr %17, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %17, align 8
  %66 = load i64, ptr %9, align 8
  %67 = load i64, ptr %21, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %10, align 8
  %72 = load i64, ptr %21, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.C_block_struct, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [0 x i64], ptr %74, i64 0, i64 1
  store i64 %71, ptr %75, align 8
  %76 = load i64, ptr %21, align 8
  store i64 %76, ptr %22, align 8
  %77 = load i64, ptr %22, align 8
  %78 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 1
  store i64 %77, ptr %78, align 8
  %79 = load i64, ptr %12, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds [2 x i64], ptr %20, i64 0, i64 0
  call void %83(i64 noundef 2, ptr noundef %84) #4
  unreachable

85:                                               ; preds = %49
  %86 = load i64, ptr %8, align 8
  %87 = call i64 @C_i_car(i64 noundef %86)
  store i64 %87, ptr %12, align 8
  %88 = load i64, ptr %8, align 8
  %89 = call i64 @C_i_cdr(i64 noundef %88)
  store i64 %89, ptr %13, align 8
  %90 = load ptr, ptr %17, align 8
  store i64 2594073385365405703, ptr %90, align 8
  %91 = load ptr, ptr %17, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 ptrtoint (ptr @f_1287 to i64), ptr %92, align 8
  %93 = load i64, ptr %12, align 8
  %94 = load ptr, ptr %17, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %9, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 3
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %17, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 4
  store i64 %102, ptr %104, align 8
  %105 = load i64, ptr %7, align 8
  %106 = load ptr, ptr %17, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 5
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %13, align 8
  %109 = load ptr, ptr %17, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 6
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %10, align 8
  %112 = load ptr, ptr %17, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 7
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %17, align 8
  %115 = ptrtoint ptr %114 to i64
  store i64 %115, ptr %11, align 8
  %116 = load ptr, ptr %17, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 8
  store ptr %117, ptr %17, align 8
  %118 = load i64, ptr %11, align 8
  store i64 %118, ptr %14, align 8
  %119 = load ptr, ptr %17, align 8
  store i64 2594073385365405699, ptr %119, align 8
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 ptrtoint (ptr @f_1313 to i64), ptr %121, align 8
  %122 = load i64, ptr %14, align 8
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 3
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %17, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 3
  store i64 %128, ptr %130, align 8
  %131 = load ptr, ptr %17, align 8
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %11, align 8
  %133 = load ptr, ptr %17, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 4
  store ptr %134, ptr %17, align 8
  %135 = load i64, ptr %11, align 8
  store i64 %135, ptr %15, align 8
  call void @C_trace(ptr noundef @.str.76)
  %136 = load i64, ptr %15, align 8
  %137 = load i64, ptr %12, align 8
  call void @f_842(i64 noundef %136, i64 noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1268(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1268(i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29) #4
  unreachable
}

declare i64 @C_i_car(i64 noundef) #1

declare i64 @C_i_cdr(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1287(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1287, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 24, align 16
  store ptr %54, ptr %10, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 12), align 16
  %57 = call i64 @C_i_greaterp(i64 noundef %55, i64 noundef %56)
  %58 = icmp ne i64 %57, 6
  br i1 %58, label %59, label %105

59:                                               ; preds = %53
  %60 = load ptr, ptr %10, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %13, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 216172782113783810, ptr %63, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %10, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %13, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.C_block_struct, ptr %71, i32 0, i32 1
  %73 = getelementptr inbounds [0 x i64], ptr %72, i64 0, i64 0
  store i64 %69, ptr %73, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %13, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 1
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr %13, align 8
  store i64 %82, ptr %14, align 8
  %83 = load i64, ptr %14, align 8
  store i64 %83, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.77)
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %9, align 8
  %91 = load i64, ptr %9, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 5
  %95 = load i64, ptr %94, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 6
  %99 = load i64, ptr %98, align 8
  %100 = load i64, ptr %8, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 7
  %104 = load i64, ptr %103, align 8
  call void @f_1268(i64 noundef %91, i64 noundef %95, i64 noundef %99, i64 noundef %100, i64 noundef %104) #4
  unreachable

105:                                              ; preds = %53
  %106 = load ptr, ptr %10, align 8
  %107 = ptrtoint ptr %106 to i64
  store i64 %107, ptr %15, align 8
  %108 = load ptr, ptr %10, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 216172782113783810, ptr %109, align 8
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  store ptr %111, ptr %10, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  %115 = load i64, ptr %114, align 8
  %116 = load i64, ptr %15, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds %struct.C_block_struct, ptr %117, i32 0, i32 1
  %119 = getelementptr inbounds [0 x i64], ptr %118, i64 0, i64 0
  store i64 %115, ptr %119, align 8
  %120 = load i64, ptr %6, align 8
  %121 = inttoptr i64 %120 to ptr
  %122 = getelementptr inbounds i64, ptr %121, i64 7
  %123 = load i64, ptr %122, align 8
  %124 = load i64, ptr %15, align 8
  %125 = inttoptr i64 %124 to ptr
  %126 = getelementptr inbounds %struct.C_block_struct, ptr %125, i32 0, i32 1
  %127 = getelementptr inbounds [0 x i64], ptr %126, i64 0, i64 1
  store i64 %123, ptr %127, align 8
  %128 = load i64, ptr %15, align 8
  store i64 %128, ptr %16, align 8
  %129 = load i64, ptr %16, align 8
  store i64 %129, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.78)
  %130 = load i64, ptr %6, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = getelementptr inbounds i64, ptr %131, i64 4
  %133 = load i64, ptr %132, align 8
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  store i64 %136, ptr %9, align 8
  %137 = load i64, ptr %9, align 8
  %138 = load i64, ptr %6, align 8
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 5
  %141 = load i64, ptr %140, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 6
  %145 = load i64, ptr %144, align 8
  %146 = load i64, ptr %6, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds i64, ptr %147, i64 3
  %149 = load i64, ptr %148, align 8
  %150 = load i64, ptr %8, align 8
  call void @f_1268(i64 noundef %137, i64 noundef %141, i64 noundef %145, i64 noundef %149, i64 noundef %150) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1313, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1316 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.79)
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %91 = load i64, ptr %7, align 8
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  store i64 14, ptr %95, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = load ptr, ptr %14, align 8
  call void %96(i64 noundef 5, ptr noundef %97) #4
  unreachable
}

declare i64 @C_i_greaterp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1316(i64 noundef %0, ptr noundef %1) #2 {
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !39
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
  %47 = add nsw i32 16, %46
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
  call void @C_save_and_reclaim(ptr noundef @f_1316, i32 noundef %58, ptr noundef %59) #4
  unreachable

60:                                               ; preds = %34
  %61 = alloca i8, i64 128, align 16
  store ptr %61, ptr %18, align 8
  %62 = load i64, ptr %7, align 8
  %63 = icmp eq i64 %62, 14
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i64 22, i64 6
  %66 = icmp ne i64 %65, 6
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %8, align 8
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %21, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %21, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 13), align 8
  %77 = load ptr, ptr %21, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 1
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %21, align 8
  call void @f_1287(i64 noundef 2, ptr noundef %79) #4
  unreachable

80:                                               ; preds = %60
  %81 = load ptr, ptr %18, align 8
  %82 = ptrtoint ptr %81 to i64
  store i64 %82, ptr %22, align 8
  %83 = load ptr, ptr %18, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 0
  store i64 216172782113783810, ptr %84, align 8
  %85 = load ptr, ptr %18, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store ptr %86, ptr %18, align 8
  %87 = load i64, ptr %22, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds %struct.C_block_struct, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds [0 x i64], ptr %89, i64 0, i64 0
  store i64 30, ptr %90, align 8
  %91 = load i64, ptr %22, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds %struct.C_block_struct, ptr %92, i32 0, i32 1
  %94 = getelementptr inbounds [0 x i64], ptr %93, i64 0, i64 1
  store i64 14, ptr %94, align 8
  %95 = load i64, ptr %22, align 8
  store i64 %95, ptr %23, align 8
  %96 = load i64, ptr %23, align 8
  store i64 %96, ptr %8, align 8
  %97 = load i64, ptr %8, align 8
  store i64 %97, ptr %9, align 8
  %98 = load ptr, ptr %18, align 8
  store i64 1, ptr %98, align 8
  %99 = load i64, ptr %9, align 8
  %100 = load ptr, ptr %18, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %18, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %5, align 8
  %104 = load ptr, ptr %18, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store ptr %105, ptr %18, align 8
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %10, align 8
  %107 = load i64, ptr %10, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = load i64, ptr %109, align 8
  store i64 %110, ptr %11, align 8
  %111 = load i64, ptr %7, align 8
  %112 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), align 16
  %113 = call i64 @C_i_check_list_2(i64 noundef %111, i64 noundef %112)
  store i64 %113, ptr %12, align 8
  %114 = load ptr, ptr %18, align 8
  store i64 2594073385365405698, ptr %114, align 8
  %115 = load ptr, ptr %18, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 1
  store i64 ptrtoint (ptr @f_1331 to i64), ptr %116, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 2
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %18, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %18, align 8
  %124 = ptrtoint ptr %123 to i64
  store i64 %124, ptr %5, align 8
  %125 = load ptr, ptr %18, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 3
  store ptr %126, ptr %18, align 8
  %127 = load i64, ptr %5, align 8
  store i64 %127, ptr %13, align 8
  store i64 30, ptr %14, align 8
  %128 = load ptr, ptr %18, align 8
  store i64 1, ptr %128, align 8
  %129 = load i64, ptr %14, align 8
  %130 = load ptr, ptr %18, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %18, align 8
  %133 = ptrtoint ptr %132 to i64
  store i64 %133, ptr %5, align 8
  %134 = load ptr, ptr %18, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 2
  store ptr %135, ptr %18, align 8
  %136 = load i64, ptr %5, align 8
  store i64 %136, ptr %15, align 8
  %137 = load ptr, ptr %18, align 8
  store i64 2594073385365405701, ptr %137, align 8
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 1
  store i64 ptrtoint (ptr @f_1356 to i64), ptr %139, align 8
  %140 = load i64, ptr %10, align 8
  %141 = load ptr, ptr %18, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 2
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %15, align 8
  %144 = load ptr, ptr %18, align 8
  %145 = getelementptr inbounds i64, ptr %144, i64 3
  store i64 %143, ptr %145, align 8
  %146 = load i64, ptr %11, align 8
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 4
  store i64 %146, ptr %148, align 8
  %149 = load ptr, ptr %18, align 8
  %150 = getelementptr inbounds i64, ptr %149, i64 5
  store i64 ptrtoint (ptr @li7 to i64), ptr %150, align 8
  %151 = load ptr, ptr %18, align 8
  %152 = ptrtoint ptr %151 to i64
  store i64 %152, ptr %5, align 8
  %153 = load ptr, ptr %18, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 6
  store ptr %154, ptr %18, align 8
  %155 = load i64, ptr %5, align 8
  %156 = load i64, ptr %15, align 8
  %157 = inttoptr i64 %156 to ptr
  %158 = getelementptr inbounds %struct.C_block_struct, ptr %157, i32 0, i32 1
  %159 = getelementptr inbounds [0 x i64], ptr %158, i64 0, i64 0
  store i64 %155, ptr %159, align 8
  store i64 %155, ptr %16, align 8
  %160 = load i64, ptr %15, align 8
  %161 = inttoptr i64 %160 to ptr
  %162 = getelementptr inbounds i64, ptr %161, i64 1
  %163 = load i64, ptr %162, align 8
  store i64 %163, ptr %17, align 8
  %164 = load i64, ptr %17, align 8
  %165 = load i64, ptr %13, align 8
  %166 = load i64, ptr %7, align 8
  call void @f_1356(i64 noundef %164, i64 noundef %165, i64 noundef %166) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !40
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
  call void @C_save_and_reclaim(ptr noundef @f_1331, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 64, align 16
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1334 to i64), ptr %55, align 8
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
  store i64 ptrtoint (ptr @f_1350 to i64), ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds i64, ptr %77, i64 3
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = ptrtoint ptr %79 to i64
  store i64 %80, ptr %5, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 4
  store ptr %82, ptr %11, align 8
  %83 = load i64, ptr %5, align 8
  store i64 %83, ptr %9, align 8
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
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 0, ptr %92, align 8
  %93 = load i64, ptr %9, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 17), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %7, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 3
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %14, align 8
  call void @C_apply(i64 noundef 4, ptr noundef %105) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1356(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !41
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
  %37 = add nsw i64 5, %36
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1356, i32 noundef 3, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %27
  %48 = alloca i8, i64 24, align 16
  store ptr %48, ptr %16, align 8
  %49 = load i64, ptr %6, align 8
  %50 = call i64 @C_i_pairp(i64 noundef %49)
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %105

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.C_block_struct, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [0 x i64], ptr %55, i64 0, i64 0
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = call i64 @C_i_cdr(i64 noundef %58)
  store i64 %59, ptr %9, align 8
  %60 = load ptr, ptr %16, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %19, align 8
  %62 = load ptr, ptr %16, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 216172782113783810, ptr %63, align 8
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %16, align 8
  %66 = load i64, ptr %9, align 8
  %67 = load i64, ptr %19, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %19, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %19, align 8
  store i64 %75, ptr %20, align 8
  %76 = load i64, ptr %20, align 8
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %4, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  %87 = load i64, ptr %10, align 8
  %88 = call i64 @C_mutate(ptr noundef %86, i64 noundef %87)
  store i64 30, ptr %11, align 8
  %89 = load i64, ptr %4, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  %92 = load i64, ptr %91, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @C_mutate(ptr noundef %94, i64 noundef %95)
  store i64 %96, ptr %12, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %15, align 8
  %103 = load i64, ptr %14, align 8
  store i64 %103, ptr %5, align 8
  %104 = load i64, ptr %15, align 8
  store i64 %104, ptr %6, align 8
  br label %22

105:                                              ; preds = %47
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %8, align 8
  %107 = load i64, ptr %8, align 8
  %108 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %107, ptr %108, align 16
  %109 = load i64, ptr %4, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  %112 = load i64, ptr %111, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds %struct.C_block_struct, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds [0 x i64], ptr %114, i64 0, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %116, ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %122(i64 noundef 2, ptr noundef %123) #4
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !42
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
  %34 = icmp sgt i64 %33, 3
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1334, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1337 to i64), ptr %54, align 8
  %55 = load i64, ptr %6, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %60, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %10, align 8
  %65 = ptrtoint ptr %64 to i64
  store i64 %65, ptr %5, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 4
  store ptr %67, ptr %10, align 8
  %68 = load i64, ptr %5, align 8
  store i64 %68, ptr %8, align 8
  %69 = load i64, ptr %3, align 8
  %70 = icmp sge i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %50
  %72 = load ptr, ptr %4, align 8
  store ptr %72, ptr %13, align 8
  br label %75

73:                                               ; preds = %50
  %74 = alloca i8, i64 32, align 16
  store ptr %74, ptr %13, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  store i64 0, ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 16), align 16
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 3
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  call void @C_apply(i64 noundef 4, ptr noundef %93) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1350(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !43
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
  call void @C_save_and_reclaim(ptr noundef @f_1350, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.81)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %82 = call i64 @C_i_length(i64 noundef %81)
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = load ptr, ptr %13, align 8
  call void %85(i64 noundef 4, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_apply(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1337(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1337, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @C_i_zerop(i64 noundef %52)
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  store i64 %59, ptr %8, align 8
  %60 = load ptr, ptr %4, align 8
  store ptr %60, ptr %12, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 13), align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 %64, ptr %66, align 8
  %67 = load ptr, ptr %12, align 8
  call void @f_1287(i64 noundef 2, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.80)
  %69 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = call ptr @C_fast_retrieve_proc(i64 noundef %72)
  store ptr %73, ptr %13, align 8
  %74 = load i64, ptr %3, align 8
  %75 = icmp sge i64 %74, 4
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load ptr, ptr %4, align 8
  store ptr %77, ptr %14, align 8
  br label %80

78:                                               ; preds = %68
  %79 = alloca i8, i64 32, align 16
  store ptr %79, ptr %14, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %6, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 2
  %90 = load i64, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 1
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 3
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds i64, ptr %97, i64 2
  store i64 %96, ptr %98, align 8
  %99 = load i64, ptr %7, align 8
  %100 = load ptr, ptr %14, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 3
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = load ptr, ptr %14, align 8
  call void %102(i64 noundef 4, ptr noundef %103) #4
  unreachable
}

declare i64 @C_i_zerop(i64 noundef) #1

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

declare i64 @C_i_length(i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1356(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1356(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !45
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
  call void @C_save_and_reclaim(ptr noundef @f_1411, i32 noundef %47, ptr noundef %48) #4
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
  %59 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 21), align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 1), align 8
  %69 = call i64 @C_retrieve2(i64 noundef %68, ptr noundef @.str.83)
  %70 = load i64, ptr %7, align 8
  %71 = call i64 @C_a_i_vector5(ptr noundef %9, i32 noundef 5, i64 noundef %59, i64 noundef %63, i64 noundef %67, i64 noundef %69, i64 noundef %70)
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %8, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  %77 = load i64, ptr %76, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = load ptr, ptr %12, align 8
  call void %78(i64 noundef 2, ptr noundef %79) #4
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

declare i64 @C_retrieve2(i64 noundef, ptr noundef) #1

declare i64 @C_i_vector_ref(i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1426(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
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
  %43 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !46
  store ptr %43, ptr %21, align 8
  %44 = load ptr, ptr %21, align 8
  store ptr %44, ptr %22, align 8
  %45 = load ptr, ptr %22, align 8
  %46 = load ptr, ptr @C_stack_limit, align 8
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = load i64, ptr %3, align 8
  %52 = icmp sgt i64 %51, 3
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 3
  %55 = add nsw i32 57, %54
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
  call void @C_save_and_reclaim(ptr noundef @f_1426, i32 noundef %66, ptr noundef %67) #4
  unreachable

68:                                               ; preds = %42
  %69 = alloca i8, i64 456, align 16
  store ptr %69, ptr %20, align 8
  %70 = load i64, ptr %7, align 8
  %71 = call i64 @C_i_car(i64 noundef %70)
  store i64 %71, ptr %8, align 8
  %72 = load i64, ptr %7, align 8
  %73 = call i64 @C_i_cadr(i64 noundef %72)
  store i64 %73, ptr %9, align 8
  %74 = load i64, ptr %7, align 8
  %75 = call i64 @C_i_caddr(i64 noundef %74)
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %9, align 8
  %77 = call i64 @C_i_length(i64 noundef %76)
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %11, align 8
  %79 = call i64 @C_s_a_i_times(ptr noundef %20, i64 noundef 2, i64 noundef %78, i64 noundef 129)
  store i64 %79, ptr %12, align 8
  %80 = load ptr, ptr %20, align 8
  %81 = ptrtoint ptr %80 to i64
  store i64 %81, ptr %23, align 8
  %82 = load ptr, ptr %20, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  store i64 216172782113783810, ptr %83, align 8
  %84 = load ptr, ptr %20, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 3
  store ptr %85, ptr %20, align 8
  %86 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 24), align 16
  %87 = load i64, ptr %23, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds %struct.C_block_struct, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds [0 x i64], ptr %89, i64 0, i64 0
  store i64 %86, ptr %90, align 8
  %91 = load i64, ptr %8, align 8
  %92 = load i64, ptr %23, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds %struct.C_block_struct, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds [0 x i64], ptr %94, i64 0, i64 1
  store i64 %91, ptr %95, align 8
  %96 = load i64, ptr %23, align 8
  store i64 %96, ptr %24, align 8
  %97 = load i64, ptr %24, align 8
  store i64 %97, ptr %13, align 8
  %98 = load ptr, ptr %20, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %25, align 8
  %100 = load ptr, ptr %20, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 0
  store i64 216172782113783810, ptr %101, align 8
  %102 = load ptr, ptr %20, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store ptr %103, ptr %20, align 8
  %104 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 25), align 8
  %105 = load i64, ptr %25, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds %struct.C_block_struct, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [0 x i64], ptr %107, i64 0, i64 0
  store i64 %104, ptr %108, align 8
  %109 = load i64, ptr %10, align 8
  %110 = load i64, ptr %25, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds %struct.C_block_struct, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds [0 x i64], ptr %112, i64 0, i64 1
  store i64 %109, ptr %113, align 8
  %114 = load i64, ptr %25, align 8
  store i64 %114, ptr %26, align 8
  %115 = load i64, ptr %26, align 8
  store i64 %115, ptr %14, align 8
  %116 = load ptr, ptr %20, align 8
  %117 = ptrtoint ptr %116 to i64
  store i64 %117, ptr %27, align 8
  %118 = load ptr, ptr %20, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 0
  store i64 216172782113783810, ptr %119, align 8
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 3
  store ptr %121, ptr %20, align 8
  %122 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 26), align 16
  %123 = load i64, ptr %27, align 8
  %124 = inttoptr i64 %123 to ptr
  %125 = getelementptr inbounds %struct.C_block_struct, ptr %124, i32 0, i32 1
  %126 = getelementptr inbounds [0 x i64], ptr %125, i64 0, i64 0
  store i64 %122, ptr %126, align 8
  %127 = load i64, ptr %11, align 8
  %128 = load i64, ptr %27, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds %struct.C_block_struct, ptr %129, i32 0, i32 1
  %131 = getelementptr inbounds [0 x i64], ptr %130, i64 0, i64 1
  store i64 %127, ptr %131, align 8
  %132 = load i64, ptr %27, align 8
  store i64 %132, ptr %28, align 8
  %133 = load i64, ptr %28, align 8
  store i64 %133, ptr %15, align 8
  %134 = load ptr, ptr %20, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %29, align 8
  %136 = load ptr, ptr %20, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 0
  store i64 216172782113783810, ptr %137, align 8
  %138 = load ptr, ptr %20, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 3
  store ptr %139, ptr %20, align 8
  %140 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 27), align 8
  %141 = load i64, ptr %29, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds %struct.C_block_struct, ptr %142, i32 0, i32 1
  %144 = getelementptr inbounds [0 x i64], ptr %143, i64 0, i64 0
  store i64 %140, ptr %144, align 8
  %145 = load i64, ptr %12, align 8
  %146 = load i64, ptr %29, align 8
  %147 = inttoptr i64 %146 to ptr
  %148 = getelementptr inbounds %struct.C_block_struct, ptr %147, i32 0, i32 1
  %149 = getelementptr inbounds [0 x i64], ptr %148, i64 0, i64 1
  store i64 %145, ptr %149, align 8
  %150 = load i64, ptr %29, align 8
  store i64 %150, ptr %30, align 8
  %151 = load i64, ptr %30, align 8
  store i64 %151, ptr %16, align 8
  %152 = load i64, ptr %13, align 8
  %153 = load i64, ptr %14, align 8
  %154 = load i64, ptr %15, align 8
  %155 = load i64, ptr %16, align 8
  %156 = call i64 @C_a_i_list4(ptr noundef %20, i32 noundef 4, i64 noundef %152, i64 noundef %153, i64 noundef %154, i64 noundef %155)
  store i64 %156, ptr %17, align 8
  %157 = load i64, ptr %6, align 8
  %158 = inttoptr i64 %157 to ptr
  %159 = getelementptr inbounds i64, ptr %158, i64 2
  %160 = load i64, ptr %159, align 8
  %161 = load i64, ptr %17, align 8
  %162 = call i64 @C_i_vector_set(i64 noundef %160, i64 noundef 9, i64 noundef %161)
  store i64 %162, ptr %18, align 8
  call void @C_trace(ptr noundef @.str.89)
  %163 = load i64, ptr %3, align 8
  %164 = icmp sge i64 %163, 4
  br i1 %164, label %165, label %167

165:                                              ; preds = %68
  %166 = load ptr, ptr %4, align 8
  store ptr %166, ptr %31, align 8
  br label %169

167:                                              ; preds = %68
  %168 = alloca i8, i64 32, align 16
  store ptr %168, ptr %31, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = load ptr, ptr %31, align 8
  %171 = getelementptr inbounds i64, ptr %170, i64 0
  store i64 0, ptr %171, align 8
  %172 = load i64, ptr %6, align 8
  %173 = inttoptr i64 %172 to ptr
  %174 = getelementptr inbounds i64, ptr %173, i64 3
  %175 = load i64, ptr %174, align 8
  %176 = load ptr, ptr %31, align 8
  %177 = getelementptr inbounds i64, ptr %176, i64 1
  store i64 %175, ptr %177, align 8
  %178 = load i64, ptr %9, align 8
  %179 = load ptr, ptr %31, align 8
  %180 = getelementptr inbounds i64, ptr %179, i64 2
  store i64 %178, ptr %180, align 8
  %181 = load i64, ptr %12, align 8
  %182 = load ptr, ptr %31, align 8
  %183 = getelementptr inbounds i64, ptr %182, i64 3
  store i64 %181, ptr %183, align 8
  %184 = load ptr, ptr %31, align 8
  call void @C_values(i64 noundef 4, ptr noundef %184) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1046(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !47
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
  %43 = add nsw i32 6, %42
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
  call void @C_save_and_reclaim(ptr noundef @f_1046, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 48, align 16
  store ptr %57, ptr %10, align 8
  %58 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_849 to i64), ptr %60, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store i64 %61, ptr %63, align 8
  %64 = load i64, ptr %6, align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store i64 %67, ptr %69, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store ptr %85, ptr %10, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.90)
  %87 = load i64, ptr %8, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  %91 = load i64, ptr %90, align 8
  call void @f_908(i64 noundef %87, i64 noundef %91) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1052(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 4
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %10, align 8
  %32 = load i64, ptr %3, align 8
  %33 = icmp ne i64 %32, 5
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i64, ptr %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %6, align 8
  call void @C_bad_argc_2(i32 noundef %36, i32 noundef 5, i64 noundef %37) #4
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
  %44 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !48
  store ptr %44, ptr %14, align 8
  %45 = load ptr, ptr %14, align 8
  store ptr %45, ptr %15, align 8
  %46 = load ptr, ptr %15, align 8
  %47 = load ptr, ptr @C_stack_limit, align 8
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = load i64, ptr %3, align 8
  %53 = icmp sgt i64 %52, 1
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 1
  %56 = add nsw i32 9, %55
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
  call void @C_save_and_reclaim(ptr noundef @f_1052, i32 noundef %67, ptr noundef %68) #4
  unreachable

69:                                               ; preds = %43
  %70 = alloca i8, i64 72, align 16
  store ptr %70, ptr %13, align 8
  %71 = load i64, ptr %8, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  %75 = load i64, ptr %74, align 8
  %76 = call i64 @C_i_greaterp(i64 noundef %71, i64 noundef %75)
  store i64 %76, ptr %11, align 8
  %77 = load i64, ptr %7, align 8
  store i64 %77, ptr %12, align 8
  %78 = load ptr, ptr %4, align 8
  store ptr %78, ptr %16, align 8
  %79 = load i64, ptr %12, align 8
  %80 = load ptr, ptr %16, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 0
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %11, align 8
  %83 = icmp ne i64 %82, 6
  br i1 %83, label %84, label %89

84:                                               ; preds = %69
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 35), align 8
  %86 = load i64, ptr %9, align 8
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 36), align 16
  %88 = call i64 @C_a_i_list3(ptr noundef %13, i32 noundef 3, i64 noundef %85, i64 noundef %86, i64 noundef %87)
  br label %94

89:                                               ; preds = %69
  %90 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 37), align 8
  %91 = load i64, ptr %10, align 8
  %92 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 38), align 16
  %93 = call i64 @C_a_i_list3(ptr noundef %13, i32 noundef 3, i64 noundef %90, i64 noundef %91, i64 noundef %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i64 [ %88, %84 ], [ %93, %89 ]
  %96 = load ptr, ptr %16, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %12, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = load i64, ptr %100, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = load ptr, ptr %16, align 8
  call void %102(i64 noundef 2, ptr noundef %103) #4
  unreachable
}

; Function Attrs: noreturn
declare void @C_call_with_values(i64 noundef, ptr noundef) #3

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1139(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = load i64, ptr @C_timer_interrupt_counter, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr @C_timer_interrupt_counter, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %30

30:                                               ; preds = %29, %2
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !49
  store ptr %31, ptr %16, align 8
  %32 = load ptr, ptr %16, align 8
  store ptr %32, ptr %17, align 8
  %33 = load ptr, ptr %17, align 8
  %34 = load ptr, ptr @C_stack_limit, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = load i64, ptr %3, align 8
  %40 = icmp sgt i64 %39, 3
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 3
  %43 = add nsw i32 20, %42
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
  call void @C_save_and_reclaim(ptr noundef @f_1139, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 160, align 16
  store ptr %57, ptr %15, align 8
  %58 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %15, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1142 to i64), ptr %60, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %15, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %66, align 8
  %67 = load i64, ptr %6, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %15, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %15, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 4
  store i64 %73, ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 4
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %15, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 5
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %15, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %15, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  store ptr %85, ptr %15, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %8, align 8
  %87 = load ptr, ptr %15, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %18, align 8
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 216172782113783810, ptr %90, align 8
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 3
  store ptr %92, ptr %15, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 5
  %96 = load i64, ptr %95, align 8
  %97 = load i64, ptr %18, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds %struct.C_block_struct, ptr %98, i32 0, i32 1
  %100 = getelementptr inbounds [0 x i64], ptr %99, i64 0, i64 0
  store i64 %96, ptr %100, align 8
  %101 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 13), align 8
  %102 = load i64, ptr %18, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds %struct.C_block_struct, ptr %103, i32 0, i32 1
  %105 = getelementptr inbounds [0 x i64], ptr %104, i64 0, i64 1
  store i64 %101, ptr %105, align 8
  %106 = load i64, ptr %18, align 8
  store i64 %106, ptr %19, align 8
  %107 = load i64, ptr %19, align 8
  store i64 %107, ptr %9, align 8
  %108 = load i64, ptr %9, align 8
  %109 = call i64 @C_a_i_list1(ptr noundef %15, i32 noundef 1, i64 noundef %108)
  store i64 %109, ptr %10, align 8
  store i64 30, ptr %11, align 8
  %110 = load ptr, ptr %15, align 8
  store i64 1, ptr %110, align 8
  %111 = load i64, ptr %11, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = ptrtoint ptr %114 to i64
  store i64 %115, ptr %5, align 8
  %116 = load ptr, ptr %15, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store ptr %117, ptr %15, align 8
  %118 = load i64, ptr %5, align 8
  store i64 %118, ptr %12, align 8
  %119 = load ptr, ptr %15, align 8
  store i64 2594073385365405701, ptr %119, align 8
  %120 = load ptr, ptr %15, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 ptrtoint (ptr @f_1148 to i64), ptr %121, align 8
  %122 = load i64, ptr %12, align 8
  %123 = load ptr, ptr %15, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %15, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 3
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %7, align 8
  %132 = load ptr, ptr %15, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 4
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %15, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 5
  store i64 ptrtoint (ptr @li20 to i64), ptr %135, align 8
  %136 = load ptr, ptr %15, align 8
  %137 = ptrtoint ptr %136 to i64
  store i64 %137, ptr %5, align 8
  %138 = load ptr, ptr %15, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 6
  store ptr %139, ptr %15, align 8
  %140 = load i64, ptr %5, align 8
  %141 = load i64, ptr %12, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds %struct.C_block_struct, ptr %142, i32 0, i32 1
  %144 = getelementptr inbounds [0 x i64], ptr %143, i64 0, i64 0
  store i64 %140, ptr %144, align 8
  store i64 %140, ptr %13, align 8
  %145 = load i64, ptr %12, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %14, align 8
  %149 = load i64, ptr %14, align 8
  %150 = load i64, ptr %8, align 8
  %151 = load i64, ptr %10, align 8
  call void @f_1148(i64 noundef %149, i64 noundef %150, i64 noundef %151) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1394, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 72, align 16
  store ptr %51, ptr %10, align 8
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @C_i_cdr(i64 noundef %52)
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
  %62 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 40), align 16
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 38), align 16
  %65 = call i64 @C_a_i_list3(ptr noundef %10, i32 noundef 3, i64 noundef %62, i64 noundef %63, i64 noundef %64)
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  call void @f_1426(i64 noundef 2, ptr noundef %68) #4
  unreachable
}

declare i64 @C_i_cadr(i64 noundef) #1

declare i64 @C_i_caddr(i64 noundef) #1

declare i64 @C_s_a_i_times(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_list4(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  store i64 %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i64, ptr %12, align 8
  %16 = call i64 @C_a_pair(ptr noundef %14, i64 noundef %15, i64 noundef 14)
  store i64 %16, ptr %13, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = load i64, ptr %11, align 8
  %19 = load i64, ptr %13, align 8
  %20 = call i64 @C_a_pair(ptr noundef %17, i64 noundef %18, i64 noundef %19)
  store i64 %20, ptr %13, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i64, ptr %10, align 8
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @C_a_pair(ptr noundef %21, i64 noundef %22, i64 noundef %23)
  store i64 %24, ptr %13, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %13, align 8
  %28 = call i64 @C_a_pair(ptr noundef %25, i64 noundef %26, i64 noundef %27)
  ret i64 %28
}

declare i64 @C_i_vector_set(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @C_values(i64 noundef, ptr noundef) #3

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
define internal void @f_849(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_849, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_852 to i64), ptr %56, align 8
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
  store i64 2594073385365405698, ptr %86, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 1
  store i64 ptrtoint (ptr @f_894 to i64), ptr %88, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 ptrtoint (ptr @li14 to i64), ptr %90, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %11, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store ptr %94, ptr %11, align 8
  %95 = load i64, ptr %5, align 8
  store i64 %95, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.91)
  %96 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), align 16
  %97 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %96)
  store ptr %97, ptr %14, align 8
  %98 = load i64, ptr %3, align 8
  %99 = icmp sge i64 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %52
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %15, align 8
  br label %104

102:                                              ; preds = %52
  %103 = alloca i8, i64 32, align 16
  store ptr %103, ptr %15, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), align 16
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %8, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %7, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %9, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 %117, ptr %119, align 8
  %120 = load ptr, ptr %14, align 8
  %121 = load ptr, ptr %15, align 8
  call void %120(i64 noundef 4, ptr noundef %121) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_852(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_852, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %54, align 8
  %55 = load ptr, ptr %11, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  store i64 ptrtoint (ptr @f_855 to i64), ptr %56, align 8
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
  store i64 ptrtoint (ptr @f_884 to i64), ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 5
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 3
  store i64 ptrtoint (ptr @li13 to i64), ptr %90, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = ptrtoint ptr %91 to i64
  store i64 %92, ptr %5, align 8
  %93 = load ptr, ptr %11, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store ptr %94, ptr %11, align 8
  %95 = load i64, ptr %5, align 8
  store i64 %95, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.92)
  %96 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 33), align 8
  %97 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %96)
  store ptr %97, ptr %14, align 8
  %98 = load i64, ptr %3, align 8
  %99 = icmp sge i64 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %52
  %101 = load ptr, ptr %4, align 8
  store ptr %101, ptr %15, align 8
  br label %104

102:                                              ; preds = %52
  %103 = alloca i8, i64 32, align 16
  store ptr %103, ptr %15, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 33), align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = getelementptr inbounds i64, ptr %106, i64 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr %8, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  store i64 %111, ptr %113, align 8
  %114 = load i64, ptr %9, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %7, align 8
  %118 = load ptr, ptr %15, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 3
  store i64 %117, ptr %119, align 8
  %120 = load ptr, ptr %14, align 8
  %121 = load ptr, ptr %15, align 8
  call void %120(i64 noundef 4, ptr noundef %121) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_894(i64 noundef %0, ptr noundef %1) #2 {
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
  %39 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
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
  call void @C_save_and_reclaim(ptr noundef @f_894, i32 noundef %62, ptr noundef %63) #4
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
  %70 = load i64, ptr %8, align 8
  %71 = call i64 @C_i_cdr(i64 noundef %70)
  %72 = load i64, ptr %9, align 8
  %73 = call i64 @C_i_cdr(i64 noundef %72)
  %74 = call i64 @C_i_lessp(i64 noundef %71, i64 noundef %73)
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
define internal void @f_855(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !54
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
  %40 = add nsw i32 7, %39
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
  call void @C_save_and_reclaim(ptr noundef @f_855, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 56, align 16
  store ptr %54, ptr %12, align 8
  %55 = load i64, ptr %7, align 8
  %56 = icmp eq i64 %55, 14
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i64 22, i64 6
  store i64 %58, ptr %8, align 8
  %59 = load i64, ptr %8, align 8
  %60 = icmp ne i64 %59, 6
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 28), align 16
  br label %67

63:                                               ; preds = %53
  %64 = load i64, ptr %7, align 8
  %65 = call i64 @C_i_car(i64 noundef %64)
  %66 = call i64 @C_i_cdr(i64 noundef %65)
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %62, %61 ], [ %66, %63 ]
  store i64 %68, ptr %9, align 8
  %69 = load ptr, ptr %12, align 8
  store i64 2594073385365405702, ptr %69, align 8
  %70 = load ptr, ptr %12, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 ptrtoint (ptr @f_956 to i64), ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 2
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  store i64 %75, ptr %77, align 8
  %78 = load i64, ptr %9, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 3
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 3
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 4
  store i64 %84, ptr %86, align 8
  %87 = load i64, ptr %7, align 8
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 5
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 6
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %12, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %5, align 8
  %98 = load ptr, ptr %12, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 7
  store ptr %99, ptr %12, align 8
  %100 = load i64, ptr %5, align 8
  store i64 %100, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.93)
  %101 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %102 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %101)
  store ptr %102, ptr %15, align 8
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %16, align 8
  %104 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 22), align 16
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 1
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 0
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %10, align 8
  %111 = load ptr, ptr %16, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = load ptr, ptr %16, align 8
  call void %113(i64 noundef 2, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_884(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %35 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
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
  call void @C_save_and_reclaim(ptr noundef @f_884, i32 noundef %58, ptr noundef %59) #4
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
  %67 = call i64 @C_i_cdr(i64 noundef %66)
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  %72 = call i64 @C_i_lessp(i64 noundef %67, i64 noundef %71)
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %9, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = load ptr, ptr %13, align 8
  call void %79(i64 noundef 2, ptr noundef %80) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_956(i64 noundef %0, ptr noundef %1) #2 {
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
  %31 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !56
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
  call void @C_save_and_reclaim(ptr noundef @f_956, i32 noundef %54, ptr noundef %55) #4
  unreachable

56:                                               ; preds = %30
  %57 = alloca i8, i64 176, align 16
  store ptr %57, ptr %17, align 8
  store i64 14, ptr %8, align 8
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
  store i64 14, ptr %10, align 8
  %67 = load ptr, ptr %17, align 8
  store i64 2594073385365405701, ptr %67, align 8
  %68 = load ptr, ptr %17, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 ptrtoint (ptr @f_959 to i64), ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %17, align 8
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %10, align 8
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
  %89 = ptrtoint ptr %88 to i64
  store i64 %89, ptr %5, align 8
  %90 = load ptr, ptr %17, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 6
  store ptr %91, ptr %17, align 8
  %92 = load i64, ptr %5, align 8
  store i64 %92, ptr %11, align 8
  %93 = load i64, ptr %6, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 4
  %96 = load i64, ptr %95, align 8
  %97 = call i64 @C_a_i_list1(ptr noundef %17, i32 noundef 1, i64 noundef %96)
  store i64 %97, ptr %12, align 8
  store i64 30, ptr %13, align 8
  %98 = load ptr, ptr %17, align 8
  store i64 1, ptr %98, align 8
  %99 = load i64, ptr %13, align 8
  %100 = load ptr, ptr %17, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %17, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %5, align 8
  %104 = load ptr, ptr %17, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  store ptr %105, ptr %17, align 8
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %14, align 8
  %107 = load ptr, ptr %17, align 8
  store i64 2594073385365405704, ptr %107, align 8
  %108 = load ptr, ptr %17, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 ptrtoint (ptr @f_968 to i64), ptr %109, align 8
  %110 = load i64, ptr %9, align 8
  %111 = load ptr, ptr %17, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %10, align 8
  %114 = load ptr, ptr %17, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %14, align 8
  %117 = load ptr, ptr %17, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %6, align 8
  %120 = inttoptr i64 %119 to ptr
  %121 = getelementptr inbounds i64, ptr %120, i64 5
  %122 = load i64, ptr %121, align 8
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 5
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 6
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %17, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 6
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %7, align 8
  %132 = load ptr, ptr %17, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 7
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %17, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 8
  store i64 ptrtoint (ptr @li12 to i64), ptr %135, align 8
  %136 = load ptr, ptr %17, align 8
  %137 = ptrtoint ptr %136 to i64
  store i64 %137, ptr %5, align 8
  %138 = load ptr, ptr %17, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 9
  store ptr %139, ptr %17, align 8
  %140 = load i64, ptr %5, align 8
  %141 = load i64, ptr %14, align 8
  %142 = inttoptr i64 %141 to ptr
  %143 = getelementptr inbounds %struct.C_block_struct, ptr %142, i32 0, i32 1
  %144 = getelementptr inbounds [0 x i64], ptr %143, i64 0, i64 0
  store i64 %140, ptr %144, align 8
  store i64 %140, ptr %15, align 8
  %145 = load i64, ptr %14, align 8
  %146 = inttoptr i64 %145 to ptr
  %147 = getelementptr inbounds i64, ptr %146, i64 1
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %16, align 8
  %149 = load i64, ptr %16, align 8
  %150 = load i64, ptr %11, align 8
  %151 = load i64, ptr %12, align 8
  call void @f_968(i64 noundef %149, i64 noundef %150, i64 noundef %151) #4
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !57
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
  %39 = add nsw i32 3, %38
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
  call void @C_save_and_reclaim(ptr noundef @f_959, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 24, align 16
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
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %13, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = load i64, ptr %13, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds %struct.C_block_struct, ptr %76, i32 0, i32 1
  %78 = getelementptr inbounds [0 x i64], ptr %77, i64 0, i64 1
  store i64 %74, ptr %78, align 8
  %79 = load i64, ptr %13, align 8
  store i64 %79, ptr %14, align 8
  %80 = load i64, ptr %14, align 8
  store i64 %80, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.94)
  %81 = load i64, ptr %3, align 8
  %82 = icmp sge i64 %81, 5
  br i1 %82, label %83, label %85

83:                                               ; preds = %52
  %84 = load ptr, ptr %4, align 8
  store ptr %84, ptr %15, align 8
  br label %87

85:                                               ; preds = %52
  %86 = alloca i8, i64 40, align 16
  store ptr %86, ptr %15, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 0
  store i64 0, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %15, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 %93, ptr %95, align 8
  %96 = load i64, ptr %6, align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 5
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %8, align 8
  %103 = call i64 @C_i_car(i64 noundef %102)
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %8, align 8
  %107 = call i64 @C_i_cdr(i64 noundef %106)
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %15, align 8
  call void @C_values(i64 noundef 5, ptr noundef %110) #4
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
define internal void @f_968(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !58
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
  %32 = add nsw i64 12, %31
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_968, i32 noundef 3, i64 noundef %39, i64 noundef %40, i64 noundef %41) #4
  unreachable

42:                                               ; preds = %22
  %43 = alloca i8, i64 80, align 16
  store ptr %43, ptr %12, align 8
  %44 = load i64, ptr %6, align 8
  %45 = icmp eq i64 %44, 14
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i64 22, i64 6
  %48 = icmp ne i64 %47, 6
  br i1 %48, label %49, label %87

49:                                               ; preds = %42
  %50 = load i64, ptr %5, align 8
  store i64 %50, ptr %8, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  store i64 %51, ptr %52, align 16
  %53 = load ptr, ptr %12, align 8
  %54 = ptrtoint ptr %53 to i64
  store i64 %54, ptr %16, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i64, ptr %55, i64 0
  store i64 216172782113783810, ptr %56, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 3
  store ptr %58, ptr %12, align 8
  %59 = load i64, ptr %4, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds i64, ptr %63, i64 1
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %16, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds %struct.C_block_struct, ptr %67, i32 0, i32 1
  %69 = getelementptr inbounds [0 x i64], ptr %68, i64 0, i64 0
  store i64 %65, ptr %69, align 8
  %70 = load i64, ptr %4, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %16, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds %struct.C_block_struct, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds [0 x i64], ptr %76, i64 0, i64 1
  store i64 %73, ptr %77, align 8
  %78 = load i64, ptr %16, align 8
  store i64 %78, ptr %17, align 8
  %79 = load i64, ptr %17, align 8
  %80 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 %79, ptr %80, align 8
  %81 = load i64, ptr %8, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 0
  call void %85(i64 noundef 2, ptr noundef %86) #4
  unreachable

87:                                               ; preds = %42
  %88 = load i64, ptr %6, align 8
  %89 = call i64 @C_i_car(i64 noundef %88)
  store i64 %89, ptr %8, align 8
  %90 = load i64, ptr %6, align 8
  %91 = call i64 @C_i_cdr(i64 noundef %90)
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %12, align 8
  store i64 2594073385365405705, ptr %92, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @f_987 to i64), ptr %94, align 8
  %95 = load i64, ptr %4, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %5, align 8
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 %101, ptr %103, align 8
  %104 = load i64, ptr %9, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %8, align 8
  %108 = load ptr, ptr %12, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 5
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %4, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 2
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %12, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 6
  store i64 %113, ptr %115, align 8
  %116 = load i64, ptr %4, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 5
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %12, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 7
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %4, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 6
  %125 = load i64, ptr %124, align 8
  %126 = load ptr, ptr %12, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 8
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr %4, align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 7
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %12, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 9
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %12, align 8
  %135 = ptrtoint ptr %134 to i64
  store i64 %135, ptr %7, align 8
  %136 = load ptr, ptr %12, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 10
  store ptr %137, ptr %12, align 8
  %138 = load i64, ptr %7, align 8
  store i64 %138, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.95)
  %139 = load i64, ptr %10, align 8
  %140 = load i64, ptr %8, align 8
  call void @f_842(i64 noundef %139, i64 noundef %140) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_968(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_968(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_987(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_987, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 88, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405706, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_993 to i64), ptr %55, align 8
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
  %98 = load i64, ptr %7, align 8
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
  call void @C_trace(ptr noundef @.str.96)
  %112 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %113 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %112)
  store ptr %113, ptr %13, align 8
  %114 = load i64, ptr %3, align 8
  %115 = icmp sge i64 %114, 5
  br i1 %115, label %116, label %118

116:                                              ; preds = %51
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %14, align 8
  br label %120

118:                                              ; preds = %51
  %119 = alloca i8, i64 40, align 16
  store ptr %119, ptr %14, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %136 = load i64, ptr %7, align 8
  %137 = load ptr, ptr %14, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 3
  store i64 %136, ptr %138, align 8
  %139 = load ptr, ptr %14, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 4
  store i64 6, ptr %140, align 8
  %141 = load ptr, ptr %13, align 8
  %142 = load ptr, ptr %14, align 8
  call void %141(i64 noundef 5, ptr noundef %142) #4
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !60
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
  call void @C_save_and_reclaim(ptr noundef @f_993, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 80, align 16
  store ptr %52, ptr %10, align 8
  %53 = load i64, ptr %7, align 8
  %54 = icmp ne i64 %53, 6
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  call void @C_trace(ptr noundef @.str.97)
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
  call void @f_968(i64 noundef %63, i64 noundef %67, i64 noundef %71) #4
  unreachable

72:                                               ; preds = %51
  %73 = load ptr, ptr %10, align 8
  store i64 2594073385365405705, ptr %73, align 8
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 ptrtoint (ptr @f_999 to i64), ptr %75, align 8
  %76 = load i64, ptr %6, align 8
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds i64, ptr %77, i64 5
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 2
  store i64 %79, ptr %81, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 6
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 3
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 5
  store i64 %97, ptr %99, align 8
  %100 = load i64, ptr %6, align 8
  %101 = inttoptr i64 %100 to ptr
  %102 = getelementptr inbounds i64, ptr %101, i64 4
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %10, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  store i64 %103, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 7
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 7
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 8
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %10, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 8
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %6, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 9
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %10, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 9
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %10, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %5, align 8
  %126 = load ptr, ptr %10, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 10
  store ptr %127, ptr %10, align 8
  %128 = load i64, ptr %5, align 8
  store i64 %128, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.98)
  %129 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), align 16
  %130 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %129)
  store ptr %130, ptr %13, align 8
  %131 = load i64, ptr %3, align 8
  %132 = icmp sge i64 %131, 5
  br i1 %132, label %133, label %135

133:                                              ; preds = %72
  %134 = load ptr, ptr %4, align 8
  store ptr %134, ptr %14, align 8
  br label %137

135:                                              ; preds = %72
  %136 = alloca i8, i64 40, align 16
  store ptr %136, ptr %14, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), align 16
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 1
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %14, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 0
  store i64 %141, ptr %143, align 8
  %144 = load i64, ptr %8, align 8
  %145 = load ptr, ptr %14, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 1
  store i64 %144, ptr %146, align 8
  %147 = load i64, ptr %6, align 8
  %148 = inttoptr i64 %147 to ptr
  %149 = getelementptr inbounds i64, ptr %148, i64 10
  %150 = load i64, ptr %149, align 8
  %151 = load ptr, ptr %14, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 2
  store i64 %150, ptr %152, align 8
  %153 = load i64, ptr %6, align 8
  %154 = inttoptr i64 %153 to ptr
  %155 = getelementptr inbounds i64, ptr %154, i64 9
  %156 = load i64, ptr %155, align 8
  %157 = load ptr, ptr %14, align 8
  %158 = getelementptr inbounds i64, ptr %157, i64 3
  store i64 %156, ptr %158, align 8
  %159 = load ptr, ptr %14, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 4
  store i64 22, ptr %160, align 8
  %161 = load ptr, ptr %13, align 8
  %162 = load ptr, ptr %14, align 8
  call void %161(i64 noundef 5, ptr noundef %162) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_999(i64 noundef %0, ptr noundef %1) #2 {
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
  %30 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !61
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
  %39 = icmp sgt i64 %38, 4
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 4
  %42 = add nsw i32 9, %41
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
  call void @C_save_and_reclaim(ptr noundef @f_999, i32 noundef %53, ptr noundef %54) #4
  unreachable

55:                                               ; preds = %29
  %56 = alloca i8, i64 72, align 16
  store ptr %56, ptr %12, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = ptrtoint ptr %57 to i64
  store i64 %58, ptr %15, align 8
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 0
  store i64 216172782113783810, ptr %60, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  store ptr %62, ptr %12, align 8
  %63 = load i64, ptr %6, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 2
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %15, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  %74 = load i64, ptr %73, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %15, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 1
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr %15, align 8
  store i64 %82, ptr %16, align 8
  %83 = load i64, ptr %16, align 8
  store i64 %83, ptr %8, align 8
  %84 = load i64, ptr %6, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %8, align 8
  %91 = call i64 @C_mutate(ptr noundef %89, i64 noundef %90)
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %92, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @f_1006 to i64), ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 5
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 6
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %6, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 7
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %12, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 5
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %12, align 8
  %120 = ptrtoint ptr %119 to i64
  store i64 %120, ptr %5, align 8
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 6
  store ptr %122, ptr %12, align 8
  %123 = load i64, ptr %5, align 8
  store i64 %123, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.99)
  %124 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %125 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %124)
  store ptr %125, ptr %17, align 8
  %126 = load i64, ptr %3, align 8
  %127 = icmp sge i64 %126, 5
  br i1 %127, label %128, label %130

128:                                              ; preds = %55
  %129 = load ptr, ptr %4, align 8
  store ptr %129, ptr %18, align 8
  br label %132

130:                                              ; preds = %55
  %131 = alloca i8, i64 40, align 16
  store ptr %131, ptr %18, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %134 = inttoptr i64 %133 to ptr
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  %136 = load i64, ptr %135, align 8
  %137 = load ptr, ptr %18, align 8
  %138 = getelementptr inbounds i64, ptr %137, i64 0
  store i64 %136, ptr %138, align 8
  %139 = load i64, ptr %10, align 8
  %140 = load ptr, ptr %18, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 1
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 8
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %18, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %6, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 9
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %18, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 3
  store i64 %151, ptr %153, align 8
  %154 = load ptr, ptr %18, align 8
  %155 = getelementptr inbounds i64, ptr %154, i64 4
  store i64 14, ptr %155, align 8
  %156 = load ptr, ptr %17, align 8
  %157 = load ptr, ptr %18, align 8
  call void %156(i64 noundef 5, ptr noundef %157) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1006(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
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
  call void @C_save_and_reclaim(ptr noundef @f_1006, i32 noundef %51, ptr noundef %52) #4
  unreachable

53:                                               ; preds = %27
  %54 = alloca i8, i64 96, align 16
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds i64, ptr %56, i64 1
  store i64 ptrtoint (ptr @f_1009 to i64), ptr %57, align 8
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
  %70 = load ptr, ptr %12, align 8
  %71 = ptrtoint ptr %70 to i64
  store i64 %71, ptr %5, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store ptr %73, ptr %12, align 8
  %74 = load i64, ptr %5, align 8
  store i64 %74, ptr %8, align 8
  %75 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %75, align 8
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 1
  store i64 ptrtoint (ptr @f_1016 to i64), ptr %77, align 8
  %78 = load i64, ptr %8, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 2
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %6, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 4
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  store i64 %84, ptr %86, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = ptrtoint ptr %87 to i64
  store i64 %88, ptr %5, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  store ptr %90, ptr %12, align 8
  %91 = load i64, ptr %5, align 8
  store i64 %91, ptr %9, align 8
  %92 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %92, align 8
  %93 = load ptr, ptr %12, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  store i64 ptrtoint (ptr @f_1018 to i64), ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %98, ptr %100, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 3
  store i64 ptrtoint (ptr @li11 to i64), ptr %102, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %12, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store ptr %106, ptr %12, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.100)
  %108 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 31), align 8
  %109 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %108)
  store ptr %109, ptr %15, align 8
  %110 = load i64, ptr %3, align 8
  %111 = icmp sge i64 %110, 4
  br i1 %111, label %112, label %114

112:                                              ; preds = %53
  %113 = load ptr, ptr %4, align 8
  store ptr %113, ptr %16, align 8
  br label %116

114:                                              ; preds = %53
  %115 = alloca i8, i64 32, align 16
  store ptr %115, ptr %16, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 31), align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %16, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 0
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %9, align 8
  %124 = load ptr, ptr %16, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 1
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %10, align 8
  %127 = load ptr, ptr %16, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 2
  store i64 %126, ptr %128, align 8
  %129 = load i64, ptr %7, align 8
  %130 = load ptr, ptr %16, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 3
  store i64 %129, ptr %131, align 8
  %132 = load ptr, ptr %15, align 8
  %133 = load ptr, ptr %16, align 8
  call void %132(i64 noundef 4, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1009(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !63
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
  call void @C_save_and_reclaim(ptr noundef @f_1009, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.101)
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
  call void @f_968(i64 noundef %56, i64 noundef %60, i64 noundef %61) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1016(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1016, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.102)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), align 8
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
define internal void @f_1018(i64 noundef %0, ptr noundef %1) #2 {
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
  %40 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !65
  store ptr %40, ptr %16, align 8
  %41 = load ptr, ptr %16, align 8
  store ptr %41, ptr %17, align 8
  %42 = load ptr, ptr %17, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1018, i32 noundef %63, ptr noundef %64) #4
  unreachable

65:                                               ; preds = %39
  %66 = load i64, ptr %8, align 8
  %67 = call i64 @C_i_car(i64 noundef %66)
  store i64 %67, ptr %9, align 8
  %68 = load i64, ptr %8, align 8
  %69 = call i64 @C_i_cdr(i64 noundef %68)
  store i64 %69, ptr %10, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 2
  %73 = load i64, ptr %72, align 8
  %74 = icmp eq i64 %73, 14
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i64 22, i64 6
  store i64 %76, ptr %11, align 8
  %77 = load i64, ptr %11, align 8
  %78 = icmp ne i64 %77, 6
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 28), align 16
  br label %83

81:                                               ; preds = %65
  %82 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 30), align 16
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  store i64 %84, ptr %12, align 8
  %85 = load i64, ptr %10, align 8
  %86 = load i64, ptr %12, align 8
  %87 = call i64 @C_i_greater_or_equalp(i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %13, align 8
  %88 = load i64, ptr %7, align 8
  store i64 %88, ptr %14, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %89, ptr %18, align 8
  %90 = load i64, ptr %14, align 8
  %91 = load ptr, ptr %18, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %92, align 8
  %93 = load i64, ptr %13, align 8
  %94 = icmp ne i64 %93, 6
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i64, ptr %9, align 8
  br label %98

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i64 [ %96, %95 ], [ 6, %97 ]
  %100 = load ptr, ptr %18, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %101, align 8
  %102 = load i64, ptr %14, align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = inttoptr i64 %105 to ptr
  %107 = load ptr, ptr %18, align 8
  call void %106(i64 noundef 2, ptr noundef %107) #4
  unreachable
}

declare i64 @C_i_greater_or_equalp(i64 noundef, i64 noundef) #1

declare i64 @C_i_lessp(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @C_a_i_list3(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load i64, ptr %10, align 8
  %14 = call i64 @C_a_pair(ptr noundef %12, i64 noundef %13, i64 noundef 14)
  store i64 %14, ptr %11, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load i64, ptr %9, align 8
  %17 = load i64, ptr %11, align 8
  %18 = call i64 @C_a_pair(ptr noundef %15, i64 noundef %16, i64 noundef %17)
  store i64 %18, ptr %11, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i64, ptr %8, align 8
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @C_a_pair(ptr noundef %19, i64 noundef %20, i64 noundef %21)
  ret i64 %22
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1142(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !66
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
  %41 = add nsw i32 12, %40
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
  call void @C_save_and_reclaim(ptr noundef @f_1142, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 96, align 16
  store ptr %55, ptr %13, align 8
  store i64 14, ptr %8, align 8
  %56 = load ptr, ptr %13, align 8
  store i64 1, ptr %56, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 %57, ptr %59, align 8
  %60 = load ptr, ptr %13, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %5, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store ptr %63, ptr %13, align 8
  %64 = load i64, ptr %5, align 8
  store i64 %64, ptr %9, align 8
  %65 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %65, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 ptrtoint (ptr @f_1114 to i64), ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 2
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  store i64 %71, ptr %73, align 8
  %74 = load i64, ptr %9, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 3
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store ptr %80, ptr %13, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %10, align 8
  %82 = load ptr, ptr %13, align 8
  store i64 2594073385365405701, ptr %82, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 ptrtoint (ptr @f_1119 to i64), ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 3
  %88 = load i64, ptr %87, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %9, align 8
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 %91, ptr %93, align 8
  %94 = load i64, ptr %6, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 4
  %97 = load i64, ptr %96, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 4
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  store i64 ptrtoint (ptr @li17 to i64), ptr %101, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = ptrtoint ptr %102 to i64
  store i64 %103, ptr %5, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 6
  store ptr %105, ptr %13, align 8
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.103)
  %107 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %108 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %107)
  store ptr %108, ptr %16, align 8
  %109 = load i64, ptr %3, align 8
  %110 = icmp sge i64 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %54
  %112 = load ptr, ptr %4, align 8
  store ptr %112, ptr %17, align 8
  br label %115

113:                                              ; preds = %54
  %114 = alloca i8, i64 32, align 16
  store ptr %114, ptr %17, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 10), align 16
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 1
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 0
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %10, align 8
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 %122, ptr %124, align 8
  %125 = load i64, ptr %6, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds i64, ptr %126, i64 5
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %17, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 2
  store i64 %128, ptr %130, align 8
  %131 = load i64, ptr %11, align 8
  %132 = load ptr, ptr %17, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 3
  store i64 %131, ptr %133, align 8
  %134 = load ptr, ptr %16, align 8
  %135 = load ptr, ptr %17, align 8
  call void %134(i64 noundef 4, ptr noundef %135) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1148(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %22 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !67
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
  %31 = add nsw i64 10, %30
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1148, i32 noundef 3, i64 noundef %38, i64 noundef %39, i64 noundef %40) #4
  unreachable

41:                                               ; preds = %21
  %42 = alloca i8, i64 64, align 16
  store ptr %42, ptr %13, align 8
  %43 = load i64, ptr %6, align 8
  %44 = icmp eq i64 %43, 14
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 22, i64 6
  %47 = icmp ne i64 %46, 6
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i64, ptr %5, align 8
  store i64 %49, ptr %8, align 8
  %50 = load i64, ptr %8, align 8
  %51 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  store i64 %50, ptr %51, align 16
  %52 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 30, ptr %52, align 8
  %53 = load i64, ptr %8, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  %56 = load i64, ptr %55, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 0
  call void %57(i64 noundef 2, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %41
  %60 = load i64, ptr %6, align 8
  %61 = call i64 @C_i_car(i64 noundef %60)
  store i64 %61, ptr %8, align 8
  %62 = load i64, ptr %8, align 8
  %63 = call i64 @C_i_car(i64 noundef %62)
  store i64 %63, ptr %9, align 8
  %64 = load i64, ptr %8, align 8
  %65 = call i64 @C_i_cdr(i64 noundef %64)
  store i64 %65, ptr %10, align 8
  %66 = load ptr, ptr %13, align 8
  store i64 2594073385365405703, ptr %66, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_1167 to i64), ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %5, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  store i64 %72, ptr %74, align 8
  %75 = load i64, ptr %4, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %13, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %80, align 8
  %81 = load i64, ptr %10, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 5
  store i64 %81, ptr %83, align 8
  %84 = load i64, ptr %4, align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 3
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = getelementptr inbounds i64, ptr %88, i64 6
  store i64 %87, ptr %89, align 8
  %90 = load i64, ptr %4, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %13, align 8
  %95 = getelementptr inbounds i64, ptr %94, i64 7
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %13, align 8
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %7, align 8
  %98 = load ptr, ptr %13, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 8
  store ptr %99, ptr %13, align 8
  %100 = load i64, ptr %7, align 8
  store i64 %100, ptr %11, align 8
  call void @C_trace(ptr noundef @.str.105)
  %101 = load i64, ptr %11, align 8
  %102 = load i64, ptr %9, align 8
  call void @f_842(i64 noundef %101, i64 noundef %102) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1114(i64 noundef %0, ptr noundef %1) #2 {
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !68
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
  call void @C_save_and_reclaim(ptr noundef @f_1114, i32 noundef %47, ptr noundef %48) #4
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
  %59 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 39), align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 38), align 16
  %68 = call i64 @C_a_i_list3(ptr noundef %9, i32 noundef 3, i64 noundef %59, i64 noundef %66, i64 noundef %67)
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %68, ptr %70, align 8
  %71 = load ptr, ptr %12, align 8
  call void @f_1426(i64 noundef 2, ptr noundef %71) #4
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
  %41 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !69
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
  %50 = icmp sgt i64 %49, 4
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 4
  %53 = add nsw i32 6, %52
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
  call void @C_save_and_reclaim(ptr noundef @f_1119, i32 noundef %64, ptr noundef %65) #4
  unreachable

66:                                               ; preds = %40
  %67 = alloca i8, i64 48, align 16
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  store i64 2594073385365405701, ptr %68, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 ptrtoint (ptr @f_1123 to i64), ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 2
  %74 = load i64, ptr %73, align 8
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
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 5
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 6
  store ptr %92, ptr %12, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %10, align 8
  call void @C_trace(ptr noundef @.str.104)
  %94 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %95 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
  store ptr %95, ptr %15, align 8
  %96 = load i64, ptr %3, align 8
  %97 = icmp sge i64 %96, 5
  br i1 %97, label %98, label %100

98:                                               ; preds = %66
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %16, align 8
  br label %102

100:                                              ; preds = %66
  %101 = alloca i8, i64 40, align 16
  store ptr %101, ptr %16, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %16, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %10, align 8
  %110 = load ptr, ptr %16, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %6, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 4
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %16, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 2
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = load ptr, ptr %16, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 28), align 16
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 4
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %15, align 8
  %125 = load ptr, ptr %16, align 8
  call void %124(i64 noundef 5, ptr noundef %125) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1123(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !70
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
  %38 = icmp sgt i64 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1123, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 24, align 16
  store ptr %55, ptr %11, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load i64, ptr %6, align 8
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @C_i_greaterp(i64 noundef %56, i64 noundef %60)
  %62 = icmp ne i64 %61, 6
  br i1 %62, label %63, label %116

63:                                               ; preds = %54
  %64 = load ptr, ptr %11, align 8
  %65 = ptrtoint ptr %64 to i64
  store i64 %65, ptr %14, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 0
  store i64 216172782113783810, ptr %67, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 3
  store ptr %69, ptr %11, align 8
  %70 = load i64, ptr %6, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 3
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %14, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds %struct.C_block_struct, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds [0 x i64], ptr %76, i64 0, i64 0
  store i64 %73, ptr %77, align 8
  %78 = load i64, ptr %6, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 4
  %81 = load i64, ptr %80, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds i64, ptr %82, i64 1
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr %14, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds %struct.C_block_struct, ptr %86, i32 0, i32 1
  %88 = getelementptr inbounds [0 x i64], ptr %87, i64 0, i64 1
  store i64 %84, ptr %88, align 8
  %89 = load i64, ptr %14, align 8
  store i64 %89, ptr %15, align 8
  %90 = load i64, ptr %15, align 8
  store i64 %90, ptr %8, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 4
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = load i64, ptr %8, align 8
  %98 = call i64 @C_mutate(ptr noundef %96, i64 noundef %97)
  store i64 %98, ptr %9, align 8
  %99 = load i64, ptr %6, align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 5
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %10, align 8
  %103 = load ptr, ptr %4, align 8
  store ptr %103, ptr %16, align 8
  %104 = load i64, ptr %10, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 0
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %9, align 8
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store i64 %107, ptr %109, align 8
  %110 = load i64, ptr %10, align 8
  %111 = inttoptr i64 %110 to ptr
  %112 = getelementptr inbounds i64, ptr %111, i64 1
  %113 = load i64, ptr %112, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = load ptr, ptr %16, align 8
  call void %114(i64 noundef 2, ptr noundef %115) #4
  unreachable

116:                                              ; preds = %54
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 5
  %120 = load i64, ptr %119, align 8
  store i64 %120, ptr %8, align 8
  %121 = load ptr, ptr %4, align 8
  store ptr %121, ptr %17, align 8
  %122 = load i64, ptr %8, align 8
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 %122, ptr %124, align 8
  %125 = load ptr, ptr %17, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 30, ptr %126, align 8
  %127 = load i64, ptr %8, align 8
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  %130 = load i64, ptr %129, align 8
  %131 = inttoptr i64 %130 to ptr
  %132 = load ptr, ptr %17, align 8
  call void %131(i64 noundef 2, ptr noundef %132) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1148(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1148(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !71
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
  call void @C_save_and_reclaim(ptr noundef @f_1167, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @C_i_cdr(i64 noundef %57)
  store i64 %58, ptr %8, align 8
  %59 = load ptr, ptr %11, align 8
  store i64 2594073385365405704, ptr %59, align 8
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 ptrtoint (ptr @f_1176 to i64), ptr %61, align 8
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
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 6
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 6
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %7, align 8
  %90 = load ptr, ptr %11, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 7
  store i64 %89, ptr %91, align 8
  %92 = load i64, ptr %6, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 7
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 8
  store i64 %95, ptr %97, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = ptrtoint ptr %98 to i64
  store i64 %99, ptr %5, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 9
  store ptr %101, ptr %11, align 8
  %102 = load i64, ptr %5, align 8
  store i64 %102, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.106)
  %103 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %104 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %103)
  store ptr %104, ptr %14, align 8
  %105 = load i64, ptr %3, align 8
  %106 = icmp sge i64 %105, 5
  br i1 %106, label %107, label %109

107:                                              ; preds = %52
  %108 = load ptr, ptr %4, align 8
  store ptr %108, ptr %15, align 8
  br label %111

109:                                              ; preds = %52
  %110 = alloca i8, i64 40, align 16
  store ptr %110, ptr %15, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i64, ptr %114, align 8
  %116 = load ptr, ptr %15, align 8
  %117 = getelementptr inbounds i64, ptr %116, i64 0
  store i64 %115, ptr %117, align 8
  %118 = load i64, ptr %9, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  store i64 %118, ptr %120, align 8
  %121 = load i64, ptr %6, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds i64, ptr %122, i64 7
  %124 = load i64, ptr %123, align 8
  %125 = load ptr, ptr %15, align 8
  %126 = getelementptr inbounds i64, ptr %125, i64 2
  store i64 %124, ptr %126, align 8
  %127 = load i64, ptr %7, align 8
  %128 = load ptr, ptr %15, align 8
  %129 = getelementptr inbounds i64, ptr %128, i64 3
  store i64 %127, ptr %129, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 4
  store i64 6, ptr %131, align 8
  %132 = load ptr, ptr %14, align 8
  %133 = load ptr, ptr %15, align 8
  call void %132(i64 noundef 5, ptr noundef %133) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1176(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !72
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
  call void @C_save_and_reclaim(ptr noundef @f_1176, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 64, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %54, 6
  br i1 %55, label %56, label %73

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
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  store i64 30, ptr %66, align 8
  %67 = load i64, ptr %8, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  %70 = load i64, ptr %69, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = load ptr, ptr %13, align 8
  call void %71(i64 noundef 2, ptr noundef %72) #4
  unreachable

73:                                               ; preds = %52
  %74 = load ptr, ptr %10, align 8
  store i64 2594073385365405703, ptr %74, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store i64 ptrtoint (ptr @f_1179 to i64), ptr %76, align 8
  %77 = load i64, ptr %6, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  %80 = load i64, ptr %79, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 %80, ptr %82, align 8
  %83 = load i64, ptr %6, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load i64, ptr %6, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 4
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 4
  store i64 %92, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 5
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 5
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %6, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 6
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %10, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 6
  store i64 %104, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 7
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %10, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 7
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %10, align 8
  %114 = ptrtoint ptr %113 to i64
  store i64 %114, ptr %5, align 8
  %115 = load ptr, ptr %10, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 8
  store ptr %116, ptr %10, align 8
  %117 = load i64, ptr %5, align 8
  store i64 %117, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.107)
  %118 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), align 16
  %119 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %118)
  store ptr %119, ptr %14, align 8
  %120 = load i64, ptr %3, align 8
  %121 = icmp sge i64 %120, 5
  br i1 %121, label %122, label %124

122:                                              ; preds = %73
  %123 = load ptr, ptr %4, align 8
  store ptr %123, ptr %15, align 8
  br label %126

124:                                              ; preds = %73
  %125 = alloca i8, i64 40, align 16
  store ptr %125, ptr %15, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 32), align 16
  %128 = inttoptr i64 %127 to ptr
  %129 = getelementptr inbounds i64, ptr %128, i64 1
  %130 = load i64, ptr %129, align 8
  %131 = load ptr, ptr %15, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 0
  store i64 %130, ptr %132, align 8
  %133 = load i64, ptr %8, align 8
  %134 = load ptr, ptr %15, align 8
  %135 = getelementptr inbounds i64, ptr %134, i64 1
  store i64 %133, ptr %135, align 8
  %136 = load i64, ptr %6, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds i64, ptr %137, i64 8
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %15, align 8
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store i64 %139, ptr %141, align 8
  %142 = load i64, ptr %6, align 8
  %143 = inttoptr i64 %142 to ptr
  %144 = getelementptr inbounds i64, ptr %143, i64 7
  %145 = load i64, ptr %144, align 8
  %146 = load ptr, ptr %15, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 %145, ptr %147, align 8
  %148 = load i64, ptr %6, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds i64, ptr %149, i64 4
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %15, align 8
  %153 = getelementptr inbounds i64, ptr %152, i64 4
  store i64 %151, ptr %153, align 8
  %154 = load ptr, ptr %14, align 8
  %155 = load ptr, ptr %15, align 8
  call void %154(i64 noundef 5, ptr noundef %155) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1179(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %35 = icmp sgt i64 %34, 4
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 4
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
  call void @C_save_and_reclaim(ptr noundef @f_1179, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 48, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1182 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.108)
  %85 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
  %86 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %85)
  store ptr %86, ptr %13, align 8
  %87 = load i64, ptr %3, align 8
  %88 = icmp sge i64 %87, 5
  br i1 %88, label %89, label %91

89:                                               ; preds = %51
  %90 = load ptr, ptr %4, align 8
  store ptr %90, ptr %14, align 8
  br label %93

91:                                               ; preds = %51
  %92 = alloca i8, i64 40, align 16
  store ptr %92, ptr %14, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 18), align 16
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
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 7
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %14, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 4
  store i64 14, ptr %116, align 8
  %117 = load ptr, ptr %13, align 8
  %118 = load ptr, ptr %14, align 8
  call void %117(i64 noundef 5, ptr noundef %118) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1182(i64 noundef %0, ptr noundef %1) #2 {
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
  %36 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !74
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
  %48 = add nsw i32 26, %47
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
  call void @C_save_and_reclaim(ptr noundef @f_1182, i32 noundef %59, ptr noundef %60) #4
  unreachable

61:                                               ; preds = %35
  %62 = alloca i8, i64 208, align 16
  store ptr %62, ptr %20, align 8
  %63 = load ptr, ptr %20, align 8
  store i64 2594073385365405699, ptr %63, align 8
  %64 = load ptr, ptr %20, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 ptrtoint (ptr @f_1185 to i64), ptr %65, align 8
  %66 = load i64, ptr %6, align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 2
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %20, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 %69, ptr %71, align 8
  %72 = load i64, ptr %6, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds i64, ptr %73, i64 3
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr %20, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 3
  store i64 %75, ptr %77, align 8
  %78 = load ptr, ptr %20, align 8
  %79 = ptrtoint ptr %78 to i64
  store i64 %79, ptr %5, align 8
  %80 = load ptr, ptr %20, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 4
  store ptr %81, ptr %20, align 8
  %82 = load i64, ptr %5, align 8
  store i64 %82, ptr %8, align 8
  %83 = load ptr, ptr %20, align 8
  %84 = ptrtoint ptr %83 to i64
  store i64 %84, ptr %23, align 8
  %85 = load ptr, ptr %20, align 8
  %86 = getelementptr inbounds i64, ptr %85, i64 0
  store i64 216172782113783810, ptr %86, align 8
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store ptr %88, ptr %20, align 8
  %89 = load i64, ptr %23, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds %struct.C_block_struct, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds [0 x i64], ptr %91, i64 0, i64 0
  store i64 30, ptr %92, align 8
  %93 = load i64, ptr %23, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds %struct.C_block_struct, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds [0 x i64], ptr %95, i64 0, i64 1
  store i64 14, ptr %96, align 8
  %97 = load i64, ptr %23, align 8
  store i64 %97, ptr %24, align 8
  %98 = load i64, ptr %24, align 8
  store i64 %98, ptr %9, align 8
  %99 = load i64, ptr %9, align 8
  store i64 %99, ptr %10, align 8
  %100 = load ptr, ptr %20, align 8
  store i64 1, ptr %100, align 8
  %101 = load i64, ptr %10, align 8
  %102 = load ptr, ptr %20, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %20, align 8
  %105 = ptrtoint ptr %104 to i64
  store i64 %105, ptr %5, align 8
  %106 = load ptr, ptr %20, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store ptr %107, ptr %20, align 8
  %108 = load i64, ptr %5, align 8
  store i64 %108, ptr %11, align 8
  %109 = load i64, ptr %11, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  %112 = load i64, ptr %111, align 8
  store i64 %112, ptr %12, align 8
  %113 = load ptr, ptr %20, align 8
  store i64 2594073385365405699, ptr %113, align 8
  %114 = load ptr, ptr %20, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  store i64 ptrtoint (ptr @f_1193 to i64), ptr %115, align 8
  %116 = load i64, ptr %6, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 2
  store i64 %119, ptr %121, align 8
  %122 = load ptr, ptr %20, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 3
  store i64 ptrtoint (ptr @li18 to i64), ptr %123, align 8
  %124 = load ptr, ptr %20, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %5, align 8
  %126 = load ptr, ptr %20, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 4
  store ptr %127, ptr %20, align 8
  %128 = load i64, ptr %5, align 8
  store i64 %128, ptr %13, align 8
  %129 = load i64, ptr %7, align 8
  %130 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), align 16
  %131 = call i64 @C_i_check_list_2(i64 noundef %129, i64 noundef %130)
  store i64 %131, ptr %14, align 8
  %132 = load ptr, ptr %20, align 8
  store i64 2594073385365405699, ptr %132, align 8
  %133 = load ptr, ptr %20, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 1
  store i64 ptrtoint (ptr @f_1219 to i64), ptr %134, align 8
  %135 = load i64, ptr %8, align 8
  %136 = load ptr, ptr %20, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 2
  store i64 %135, ptr %137, align 8
  %138 = load i64, ptr %6, align 8
  %139 = inttoptr i64 %138 to ptr
  %140 = getelementptr inbounds i64, ptr %139, i64 5
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %20, align 8
  %143 = getelementptr inbounds i64, ptr %142, i64 3
  store i64 %141, ptr %143, align 8
  %144 = load ptr, ptr %20, align 8
  %145 = ptrtoint ptr %144 to i64
  store i64 %145, ptr %5, align 8
  %146 = load ptr, ptr %20, align 8
  %147 = getelementptr inbounds i64, ptr %146, i64 4
  store ptr %147, ptr %20, align 8
  %148 = load i64, ptr %5, align 8
  store i64 %148, ptr %15, align 8
  store i64 30, ptr %16, align 8
  %149 = load ptr, ptr %20, align 8
  store i64 1, ptr %149, align 8
  %150 = load i64, ptr %16, align 8
  %151 = load ptr, ptr %20, align 8
  %152 = getelementptr inbounds i64, ptr %151, i64 1
  store i64 %150, ptr %152, align 8
  %153 = load ptr, ptr %20, align 8
  %154 = ptrtoint ptr %153 to i64
  store i64 %154, ptr %5, align 8
  %155 = load ptr, ptr %20, align 8
  %156 = getelementptr inbounds i64, ptr %155, i64 2
  store ptr %156, ptr %20, align 8
  %157 = load i64, ptr %5, align 8
  store i64 %157, ptr %17, align 8
  %158 = load ptr, ptr %20, align 8
  store i64 2594073385365405702, ptr %158, align 8
  %159 = load ptr, ptr %20, align 8
  %160 = getelementptr inbounds i64, ptr %159, i64 1
  store i64 ptrtoint (ptr @f_1221 to i64), ptr %160, align 8
  %161 = load i64, ptr %11, align 8
  %162 = load ptr, ptr %20, align 8
  %163 = getelementptr inbounds i64, ptr %162, i64 2
  store i64 %161, ptr %163, align 8
  %164 = load i64, ptr %17, align 8
  %165 = load ptr, ptr %20, align 8
  %166 = getelementptr inbounds i64, ptr %165, i64 3
  store i64 %164, ptr %166, align 8
  %167 = load i64, ptr %13, align 8
  %168 = load ptr, ptr %20, align 8
  %169 = getelementptr inbounds i64, ptr %168, i64 4
  store i64 %167, ptr %169, align 8
  %170 = load i64, ptr %12, align 8
  %171 = load ptr, ptr %20, align 8
  %172 = getelementptr inbounds i64, ptr %171, i64 5
  store i64 %170, ptr %172, align 8
  %173 = load ptr, ptr %20, align 8
  %174 = getelementptr inbounds i64, ptr %173, i64 6
  store i64 ptrtoint (ptr @li19 to i64), ptr %174, align 8
  %175 = load ptr, ptr %20, align 8
  %176 = ptrtoint ptr %175 to i64
  store i64 %176, ptr %5, align 8
  %177 = load ptr, ptr %20, align 8
  %178 = getelementptr inbounds i64, ptr %177, i64 7
  store ptr %178, ptr %20, align 8
  %179 = load i64, ptr %5, align 8
  %180 = load i64, ptr %17, align 8
  %181 = inttoptr i64 %180 to ptr
  %182 = getelementptr inbounds %struct.C_block_struct, ptr %181, i32 0, i32 1
  %183 = getelementptr inbounds [0 x i64], ptr %182, i64 0, i64 0
  store i64 %179, ptr %183, align 8
  store i64 %179, ptr %18, align 8
  %184 = load i64, ptr %17, align 8
  %185 = inttoptr i64 %184 to ptr
  %186 = getelementptr inbounds i64, ptr %185, i64 1
  %187 = load i64, ptr %186, align 8
  store i64 %187, ptr %19, align 8
  %188 = load i64, ptr %19, align 8
  %189 = load i64, ptr %15, align 8
  %190 = load i64, ptr %7, align 8
  call void @f_1221(i64 noundef %188, i64 noundef %189, i64 noundef %190) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1185(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1185, i32 noundef %46, ptr noundef %47) #4
  unreachable

48:                                               ; preds = %22
  call void @C_trace(ptr noundef @.str.109)
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
  call void @f_1148(i64 noundef %56, i64 noundef %60, i64 noundef %61) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1193(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !76
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
  %30 = add nsw i64 8, %29
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1193, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 40, align 16
  store ptr %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = call i64 @C_i_car(i64 noundef %42)
  store i64 %43, ptr %8, align 8
  %44 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_1209 to i64), ptr %46, align 8
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
  %56 = load i64, ptr %8, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %7, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 5
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %7, align 8
  store i64 %63, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.110)
  %64 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = load i64, ptr %66, align 8
  %68 = call ptr @C_fast_retrieve_proc(i64 noundef %67)
  store ptr %68, ptr %14, align 8
  %69 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %72, ptr %73, align 16
  %74 = load i64, ptr %9, align 8
  %75 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %74, ptr %75, align 8
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 30), align 16
  %77 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %76, ptr %77, align 16
  %78 = load i64, ptr %6, align 8
  %79 = call i64 @C_i_cdr(i64 noundef %78)
  %80 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %79, ptr %80, align 8
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %81(i64 noundef 4, ptr noundef %82) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1219(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !77
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
  call void @C_save_and_reclaim(ptr noundef @f_1219, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.111)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 29), align 8
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
define internal void @f_1221(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !78
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1221, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1246 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.112)
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
  call void @f_1193(i64 noundef %74, i64 noundef %75, i64 noundef %80) #4
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
define internal void @trf_1193(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1193(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1209(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !79
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
  call void @C_save_and_reclaim(ptr noundef @f_1209, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 256, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %6, align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 2
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %7, align 8
  %59 = call i64 @C_s_a_i_plus(ptr noundef %10, i64 noundef 2, i64 noundef %57, i64 noundef %58)
  store i64 %59, ptr %8, align 8
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 3
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %9, align 8
  %64 = load ptr, ptr %4, align 8
  store ptr %64, ptr %13, align 8
  %65 = load i64, ptr %9, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 0
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = ptrtoint ptr %68 to i64
  store i64 %69, ptr %14, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 216172782113783810, ptr %71, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 3
  store ptr %73, ptr %10, align 8
  %74 = load i64, ptr %6, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %14, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.C_block_struct, ptr %79, i32 0, i32 1
  %81 = getelementptr inbounds [0 x i64], ptr %80, i64 0, i64 0
  store i64 %77, ptr %81, align 8
  %82 = load i64, ptr %8, align 8
  %83 = load i64, ptr %14, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  store i64 %82, ptr %86, align 8
  %87 = load i64, ptr %14, align 8
  store i64 %87, ptr %15, align 8
  %88 = load i64, ptr %15, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 %88, ptr %90, align 8
  %91 = load i64, ptr %9, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 1
  %94 = load i64, ptr %93, align 8
  %95 = inttoptr i64 %94 to ptr
  %96 = load ptr, ptr %13, align 8
  call void %95(i64 noundef 2, ptr noundef %96) #4
  unreachable
}

declare i64 @C_s_a_i_plus(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1221(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1221(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1246(i64 noundef %0, ptr noundef %1) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !80
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
  call void @C_save_and_reclaim(ptr noundef @f_1246, i32 noundef %51, ptr noundef %52) #4
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
  call void @f_1221(i64 noundef %99, i64 noundef %103, i64 noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1506(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !81
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
  call void @C_save_and_reclaim(ptr noundef @f_1506, i32 noundef %47, ptr noundef %48) #4
  unreachable

49:                                               ; preds = %23
  %50 = alloca i8, i64 32, align 16
  store ptr %50, ptr %10, align 8
  %51 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %51, align 8
  %52 = load ptr, ptr %10, align 8
  %53 = getelementptr inbounds i64, ptr %52, i64 1
  store i64 ptrtoint (ptr @f_1509 to i64), ptr %53, align 8
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
  %63 = load ptr, ptr %10, align 8
  %64 = ptrtoint ptr %63 to i64
  store i64 %64, ptr %5, align 8
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 4
  store ptr %66, ptr %10, align 8
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.114)
  %68 = load i64, ptr %8, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 3
  %72 = load i64, ptr %71, align 8
  call void @f_1583(i64 noundef %68, i64 noundef %72) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1509(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = load i64, ptr @C_timer_interrupt_counter, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr @C_timer_interrupt_counter, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %33

33:                                               ; preds = %32, %2
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !82
  store ptr %34, ptr %19, align 8
  %35 = load ptr, ptr %19, align 8
  store ptr %35, ptr %20, align 8
  %36 = load ptr, ptr %20, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 3
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 3
  %46 = add nsw i32 18, %45
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
  call void @C_save_and_reclaim(ptr noundef @f_1509, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  %60 = alloca i8, i64 144, align 16
  store ptr %60, ptr %18, align 8
  %61 = load ptr, ptr %18, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %21, align 8
  %63 = load ptr, ptr %18, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %18, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %18, align 8
  %67 = load i64, ptr %21, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 30, ptr %70, align 8
  %71 = load i64, ptr %21, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %21, align 8
  store i64 %75, ptr %22, align 8
  %76 = load i64, ptr %22, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %8, align 8
  store i64 %77, ptr %9, align 8
  %78 = load ptr, ptr %18, align 8
  store i64 1, ptr %78, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load ptr, ptr %18, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %18, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %18, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store ptr %85, ptr %18, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %10, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %11, align 8
  %91 = load i64, ptr %6, align 8
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds i64, ptr %92, i64 2
  %94 = load i64, ptr %93, align 8
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), align 16
  %96 = call i64 @C_i_check_list_2(i64 noundef %94, i64 noundef %95)
  store i64 %96, ptr %12, align 8
  %97 = load ptr, ptr %18, align 8
  store i64 2594073385365405700, ptr %97, align 8
  %98 = load ptr, ptr %18, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 ptrtoint (ptr @f_1518 to i64), ptr %99, align 8
  %100 = load i64, ptr %7, align 8
  %101 = load ptr, ptr %18, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 2
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %18, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 3
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 3
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %18, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 4
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %18, align 8
  %116 = ptrtoint ptr %115 to i64
  store i64 %116, ptr %5, align 8
  %117 = load ptr, ptr %18, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 5
  store ptr %118, ptr %18, align 8
  %119 = load i64, ptr %5, align 8
  store i64 %119, ptr %13, align 8
  store i64 30, ptr %14, align 8
  %120 = load ptr, ptr %18, align 8
  store i64 1, ptr %120, align 8
  %121 = load i64, ptr %14, align 8
  %122 = load ptr, ptr %18, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 1
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = ptrtoint ptr %124 to i64
  store i64 %125, ptr %5, align 8
  %126 = load ptr, ptr %18, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 2
  store ptr %127, ptr %18, align 8
  %128 = load i64, ptr %5, align 8
  store i64 %128, ptr %15, align 8
  %129 = load ptr, ptr %18, align 8
  store i64 2594073385365405701, ptr %129, align 8
  %130 = load ptr, ptr %18, align 8
  %131 = getelementptr inbounds i64, ptr %130, i64 1
  store i64 ptrtoint (ptr @f_1549 to i64), ptr %131, align 8
  %132 = load i64, ptr %10, align 8
  %133 = load ptr, ptr %18, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 2
  store i64 %132, ptr %134, align 8
  %135 = load i64, ptr %15, align 8
  %136 = load ptr, ptr %18, align 8
  %137 = getelementptr inbounds i64, ptr %136, i64 3
  store i64 %135, ptr %137, align 8
  %138 = load i64, ptr %11, align 8
  %139 = load ptr, ptr %18, align 8
  %140 = getelementptr inbounds i64, ptr %139, i64 4
  store i64 %138, ptr %140, align 8
  %141 = load ptr, ptr %18, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 5
  store i64 ptrtoint (ptr @li23 to i64), ptr %142, align 8
  %143 = load ptr, ptr %18, align 8
  %144 = ptrtoint ptr %143 to i64
  store i64 %144, ptr %5, align 8
  %145 = load ptr, ptr %18, align 8
  %146 = getelementptr inbounds i64, ptr %145, i64 6
  store ptr %146, ptr %18, align 8
  %147 = load i64, ptr %5, align 8
  %148 = load i64, ptr %15, align 8
  %149 = inttoptr i64 %148 to ptr
  %150 = getelementptr inbounds %struct.C_block_struct, ptr %149, i32 0, i32 1
  %151 = getelementptr inbounds [0 x i64], ptr %150, i64 0, i64 0
  store i64 %147, ptr %151, align 8
  store i64 %147, ptr %16, align 8
  %152 = load i64, ptr %15, align 8
  %153 = inttoptr i64 %152 to ptr
  %154 = getelementptr inbounds i64, ptr %153, i64 1
  %155 = load i64, ptr %154, align 8
  store i64 %155, ptr %17, align 8
  %156 = load i64, ptr %17, align 8
  %157 = load i64, ptr %13, align 8
  %158 = load i64, ptr %6, align 8
  %159 = inttoptr i64 %158 to ptr
  %160 = getelementptr inbounds i64, ptr %159, i64 2
  %161 = load i64, ptr %160, align 8
  call void @f_1549(i64 noundef %156, i64 noundef %157, i64 noundef %161) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1518(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !83
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
  call void @C_save_and_reclaim(ptr noundef @f_1518, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 72, align 16
  store ptr %55, ptr %13, align 8
  %56 = load i64, ptr %6, align 8
  %57 = inttoptr i64 %56 to ptr
  %58 = getelementptr inbounds i64, ptr %57, i64 2
  %59 = load i64, ptr %58, align 8
  %60 = call i64 @C_i_length(i64 noundef %59)
  store i64 %60, ptr %8, align 8
  %61 = load i64, ptr %6, align 8
  %62 = inttoptr i64 %61 to ptr
  %63 = getelementptr inbounds i64, ptr %62, i64 3
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @C_i_length(i64 noundef %64)
  store i64 %65, ptr %9, align 8
  %66 = load ptr, ptr %13, align 8
  store i64 2594073385365405700, ptr %66, align 8
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 ptrtoint (ptr @f_1533 to i64), ptr %68, align 8
  %69 = load i64, ptr %6, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 4
  %72 = load i64, ptr %71, align 8
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
  %86 = load i64, ptr %7, align 8
  %87 = icmp eq i64 %86, 14
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i64 22, i64 6
  %90 = icmp ne i64 %89, 6
  br i1 %90, label %91, label %101

91:                                               ; preds = %54
  %92 = load i64, ptr %10, align 8
  store i64 %92, ptr %11, align 8
  %93 = load ptr, ptr %4, align 8
  store ptr %93, ptr %16, align 8
  %94 = load i64, ptr %11, align 8
  %95 = load ptr, ptr %16, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 0
  store i64 %94, ptr %96, align 8
  %97 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 13), align 8
  %98 = load ptr, ptr %16, align 8
  %99 = getelementptr inbounds i64, ptr %98, i64 1
  store i64 %97, ptr %99, align 8
  %100 = load ptr, ptr %16, align 8
  call void @f_1533(i64 noundef 2, ptr noundef %100) #4
  unreachable

101:                                              ; preds = %54
  %102 = load ptr, ptr %13, align 8
  store i64 2594073385365405699, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  store i64 ptrtoint (ptr @f_1543 to i64), ptr %104, align 8
  %105 = load i64, ptr %10, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load i64, ptr %7, align 8
  %109 = load ptr, ptr %13, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 3
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %13, align 8
  %112 = ptrtoint ptr %111 to i64
  store i64 %112, ptr %5, align 8
  %113 = load ptr, ptr %13, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 4
  store ptr %114, ptr %13, align 8
  %115 = load i64, ptr %5, align 8
  store i64 %115, ptr %11, align 8
  %116 = load i64, ptr %3, align 8
  %117 = icmp sge i64 %116, 4
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load ptr, ptr %4, align 8
  store ptr %119, ptr %17, align 8
  br label %122

120:                                              ; preds = %101
  %121 = alloca i8, i64 32, align 16
  store ptr %121, ptr %17, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = load ptr, ptr %17, align 8
  %124 = getelementptr inbounds i64, ptr %123, i64 0
  store i64 0, ptr %124, align 8
  %125 = load i64, ptr %11, align 8
  %126 = load ptr, ptr %17, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  store i64 %125, ptr %127, align 8
  %128 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 17), align 8
  %129 = inttoptr i64 %128 to ptr
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %17, align 8
  %133 = getelementptr inbounds i64, ptr %132, i64 2
  store i64 %131, ptr %133, align 8
  %134 = load i64, ptr %7, align 8
  %135 = load ptr, ptr %17, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 3
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %17, align 8
  call void @C_apply(i64 noundef 4, ptr noundef %137) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1549(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !84
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
  %37 = add nsw i64 5, %36
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1549, i32 noundef 3, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %27
  %48 = alloca i8, i64 24, align 16
  store ptr %48, ptr %16, align 8
  %49 = load i64, ptr %6, align 8
  %50 = call i64 @C_i_pairp(i64 noundef %49)
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %105

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.C_block_struct, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [0 x i64], ptr %55, i64 0, i64 0
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = call i64 @C_i_cdr(i64 noundef %58)
  store i64 %59, ptr %9, align 8
  %60 = load ptr, ptr %16, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %19, align 8
  %62 = load ptr, ptr %16, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 216172782113783810, ptr %63, align 8
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %16, align 8
  %66 = load i64, ptr %9, align 8
  %67 = load i64, ptr %19, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %19, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %19, align 8
  store i64 %75, ptr %20, align 8
  %76 = load i64, ptr %20, align 8
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %4, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  %87 = load i64, ptr %10, align 8
  %88 = call i64 @C_mutate(ptr noundef %86, i64 noundef %87)
  store i64 30, ptr %11, align 8
  %89 = load i64, ptr %4, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  %92 = load i64, ptr %91, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @C_mutate(ptr noundef %94, i64 noundef %95)
  store i64 %96, ptr %12, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %15, align 8
  %103 = load i64, ptr %14, align 8
  store i64 %103, ptr %5, align 8
  %104 = load i64, ptr %15, align 8
  store i64 %104, ptr %6, align 8
  br label %22

105:                                              ; preds = %47
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %8, align 8
  %107 = load i64, ptr %8, align 8
  %108 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %107, ptr %108, align 16
  %109 = load i64, ptr %4, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  %112 = load i64, ptr %111, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds %struct.C_block_struct, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds [0 x i64], ptr %114, i64 0, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %116, ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %122(i64 noundef 2, ptr noundef %123) #4
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
  %24 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !85
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
  call void @C_save_and_reclaim(ptr noundef @f_1533, i32 noundef %47, ptr noundef %48) #4
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
define internal void @f_1543(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !86
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
  call void @C_save_and_reclaim(ptr noundef @f_1543, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.116)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %82 = call i64 @C_i_length(i64 noundef %81)
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = load ptr, ptr %13, align 8
  call void %85(i64 noundef 4, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1549(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1549(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1583(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1583(i64 noundef %13, i64 noundef %14) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1587(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1587, i32 noundef %47, ptr noundef %48) #4
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
define internal void @f_1589(i64 noundef %0, ptr noundef %1) #2 {
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
  %47 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !88
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
  %59 = add nsw i32 14, %58
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
  call void @C_save_and_reclaim(ptr noundef @f_1589, i32 noundef %70, ptr noundef %71) #4
  unreachable

72:                                               ; preds = %46
  %73 = alloca i8, i64 112, align 16
  store ptr %73, ptr %18, align 8
  %74 = load ptr, ptr %18, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %21, align 8
  %76 = load ptr, ptr %18, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  store i64 216172782113783810, ptr %77, align 8
  %78 = load ptr, ptr %18, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 3
  store ptr %79, ptr %18, align 8
  %80 = load i64, ptr %8, align 8
  %81 = load i64, ptr %21, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = getelementptr inbounds %struct.C_block_struct, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds [0 x i64], ptr %83, i64 0, i64 0
  store i64 %80, ptr %84, align 8
  %85 = load i64, ptr %6, align 8
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  %88 = load i64, ptr %87, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = load i64, ptr %90, align 8
  %92 = load i64, ptr %21, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds %struct.C_block_struct, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds [0 x i64], ptr %94, i64 0, i64 1
  store i64 %91, ptr %95, align 8
  %96 = load i64, ptr %21, align 8
  store i64 %96, ptr %22, align 8
  %97 = load i64, ptr %22, align 8
  store i64 %97, ptr %10, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  %101 = load i64, ptr %100, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  %104 = load i64, ptr %10, align 8
  %105 = call i64 @C_mutate(ptr noundef %103, i64 noundef %104)
  store i64 %105, ptr %11, align 8
  %106 = load ptr, ptr %18, align 8
  store i64 2594073385365405699, ptr %106, align 8
  %107 = load ptr, ptr %18, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 ptrtoint (ptr @f_1595 to i64), ptr %108, align 8
  %109 = load i64, ptr %6, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 2
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %18, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %18, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 ptrtoint (ptr @li25 to i64), ptr %116, align 8
  %117 = load ptr, ptr %18, align 8
  %118 = ptrtoint ptr %117 to i64
  store i64 %118, ptr %5, align 8
  %119 = load ptr, ptr %18, align 8
  %120 = getelementptr inbounds i64, ptr %119, i64 4
  store ptr %120, ptr %18, align 8
  %121 = load i64, ptr %5, align 8
  store i64 %121, ptr %12, align 8
  %122 = load i64, ptr %9, align 8
  %123 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 9), align 8
  %124 = call i64 @C_i_check_list_2(i64 noundef %122, i64 noundef %123)
  store i64 %124, ptr %13, align 8
  store i64 30, ptr %14, align 8
  %125 = load ptr, ptr %18, align 8
  store i64 1, ptr %125, align 8
  %126 = load i64, ptr %14, align 8
  %127 = load ptr, ptr %18, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 1
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %18, align 8
  %130 = ptrtoint ptr %129 to i64
  store i64 %130, ptr %5, align 8
  %131 = load ptr, ptr %18, align 8
  %132 = getelementptr inbounds i64, ptr %131, i64 2
  store ptr %132, ptr %18, align 8
  %133 = load i64, ptr %5, align 8
  store i64 %133, ptr %15, align 8
  %134 = load ptr, ptr %18, align 8
  store i64 2594073385365405700, ptr %134, align 8
  %135 = load ptr, ptr %18, align 8
  %136 = getelementptr inbounds i64, ptr %135, i64 1
  store i64 ptrtoint (ptr @f_1617 to i64), ptr %136, align 8
  %137 = load i64, ptr %15, align 8
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds i64, ptr %138, i64 2
  store i64 %137, ptr %139, align 8
  %140 = load i64, ptr %12, align 8
  %141 = load ptr, ptr %18, align 8
  %142 = getelementptr inbounds i64, ptr %141, i64 3
  store i64 %140, ptr %142, align 8
  %143 = load ptr, ptr %18, align 8
  %144 = getelementptr inbounds i64, ptr %143, i64 4
  store i64 ptrtoint (ptr @li26 to i64), ptr %144, align 8
  %145 = load ptr, ptr %18, align 8
  %146 = ptrtoint ptr %145 to i64
  store i64 %146, ptr %5, align 8
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds i64, ptr %147, i64 5
  store ptr %148, ptr %18, align 8
  %149 = load i64, ptr %5, align 8
  %150 = load i64, ptr %15, align 8
  %151 = inttoptr i64 %150 to ptr
  %152 = getelementptr inbounds %struct.C_block_struct, ptr %151, i32 0, i32 1
  %153 = getelementptr inbounds [0 x i64], ptr %152, i64 0, i64 0
  store i64 %149, ptr %153, align 8
  store i64 %149, ptr %16, align 8
  %154 = load i64, ptr %15, align 8
  %155 = inttoptr i64 %154 to ptr
  %156 = getelementptr inbounds i64, ptr %155, i64 1
  %157 = load i64, ptr %156, align 8
  store i64 %157, ptr %17, align 8
  %158 = load i64, ptr %17, align 8
  %159 = load i64, ptr %7, align 8
  %160 = load i64, ptr %9, align 8
  call void @f_1617(i64 noundef %158, i64 noundef %159, i64 noundef %160) #4
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
  %21 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !89
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
  %30 = add nsw i64 8, %29
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1595, i32 noundef 3, i64 noundef %37, i64 noundef %38, i64 noundef %39) #4
  unreachable

40:                                               ; preds = %20
  %41 = alloca i8, i64 40, align 16
  store ptr %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = call i64 @C_i_car(i64 noundef %42)
  store i64 %43, ptr %8, align 8
  %44 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 1
  store i64 ptrtoint (ptr @f_1605 to i64), ptr %46, align 8
  %47 = load i64, ptr %5, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 2
  store i64 %47, ptr %49, align 8
  %50 = load i64, ptr %8, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %4, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 4
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = ptrtoint ptr %59 to i64
  store i64 %60, ptr %7, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds i64, ptr %61, i64 5
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %7, align 8
  store i64 %63, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.118)
  %64 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 45), align 8
  %65 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %64)
  store ptr %65, ptr %14, align 8
  %66 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 45), align 8
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  store i64 %69, ptr %70, align 16
  %71 = load i64, ptr %9, align 8
  %72 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  store i64 %71, ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 2
  store i64 %73, ptr %74, align 16
  %75 = load i64, ptr %4, align 8
  %76 = inttoptr i64 %75 to ptr
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  %78 = load i64, ptr %77, align 8
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 1
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 3
  store i64 %81, ptr %82, align 8
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 0
  call void %83(i64 noundef 4, ptr noundef %84) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1617(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %19 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !90
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1617, i32 noundef 3, i64 noundef %35, i64 noundef %36, i64 noundef %37) #4
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
  store i64 ptrtoint (ptr @f_1627 to i64), ptr %46, align 8
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
  call void @C_trace(ptr noundef @.str.119)
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
  call void @f_1595(i64 noundef %68, i64 noundef %69, i64 noundef %74) #4
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
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %29 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !91
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
  %38 = icmp sgt i64 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
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
  call void @C_save_and_reclaim(ptr noundef @f_1605, i32 noundef %52, ptr noundef %53) #4
  unreachable

54:                                               ; preds = %28
  %55 = alloca i8, i64 24, align 16
  store ptr %55, ptr %11, align 8
  %56 = load i64, ptr %7, align 8
  %57 = icmp ne i64 %56, 6
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %8, align 8
  %63 = load ptr, ptr %4, align 8
  store ptr %63, ptr %14, align 8
  %64 = load i64, ptr %8, align 8
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 %64, ptr %66, align 8
  %67 = load ptr, ptr %14, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 1
  store i64 30, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i64, ptr %71, align 8
  %73 = inttoptr i64 %72 to ptr
  %74 = load ptr, ptr %14, align 8
  call void %73(i64 noundef 2, ptr noundef %74) #4
  unreachable

75:                                               ; preds = %54
  %76 = load ptr, ptr %11, align 8
  %77 = ptrtoint ptr %76 to i64
  store i64 %77, ptr %15, align 8
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 0
  store i64 216172782113783810, ptr %79, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  store ptr %81, ptr %11, align 8
  %82 = load i64, ptr %6, align 8
  %83 = inttoptr i64 %82 to ptr
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  %85 = load i64, ptr %84, align 8
  %86 = load i64, ptr %15, align 8
  %87 = inttoptr i64 %86 to ptr
  %88 = getelementptr inbounds %struct.C_block_struct, ptr %87, i32 0, i32 1
  %89 = getelementptr inbounds [0 x i64], ptr %88, i64 0, i64 0
  store i64 %85, ptr %89, align 8
  %90 = load i64, ptr %6, align 8
  %91 = inttoptr i64 %90 to ptr
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds i64, ptr %94, i64 1
  %96 = load i64, ptr %95, align 8
  %97 = load i64, ptr %15, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds %struct.C_block_struct, ptr %98, i32 0, i32 1
  %100 = getelementptr inbounds [0 x i64], ptr %99, i64 0, i64 1
  store i64 %96, ptr %100, align 8
  %101 = load i64, ptr %15, align 8
  store i64 %101, ptr %16, align 8
  %102 = load i64, ptr %16, align 8
  store i64 %102, ptr %8, align 8
  %103 = load i64, ptr %6, align 8
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 4
  %106 = load i64, ptr %105, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = load i64, ptr %8, align 8
  %110 = call i64 @C_mutate(ptr noundef %108, i64 noundef %109)
  store i64 %110, ptr %9, align 8
  %111 = load i64, ptr %6, align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  %114 = load i64, ptr %113, align 8
  store i64 %114, ptr %10, align 8
  %115 = load ptr, ptr %4, align 8
  store ptr %115, ptr %17, align 8
  %116 = load i64, ptr %10, align 8
  %117 = load ptr, ptr %17, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 0
  store i64 %116, ptr %118, align 8
  %119 = load i64, ptr %9, align 8
  %120 = load ptr, ptr %17, align 8
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  store i64 %119, ptr %121, align 8
  %122 = load i64, ptr %10, align 8
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds i64, ptr %123, i64 1
  %125 = load i64, ptr %124, align 8
  %126 = inttoptr i64 %125 to ptr
  %127 = load ptr, ptr %17, align 8
  call void %126(i64 noundef 2, ptr noundef %127) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @trf_1617(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1617(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1627(i64 noundef %0, ptr noundef %1) #2 {
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
  %23 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !92
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
  call void @C_save_and_reclaim(ptr noundef @f_1627, i32 noundef %46, ptr noundef %47) #4
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
  call void @f_1617(i64 noundef %56, i64 noundef %60, i64 noundef %68) #4
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !93
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
  call void @C_save_and_reclaim(ptr noundef @f_1656, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1659 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.124)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %90 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %99 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %100 = inttoptr i64 %99 to ptr
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  %102 = load i64, ptr %101, align 8
  %103 = load ptr, ptr %15, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 22, ptr %106, align 8
  %107 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  store i64 %107, ptr %109, align 8
  %110 = load ptr, ptr %14, align 8
  %111 = load ptr, ptr %15, align 8
  call void %110(i64 noundef 5, ptr noundef %111) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1720(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !94
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
  call void @C_save_and_reclaim(ptr noundef @f_1720, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1723 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.133)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 58), align 16
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
define internal void @f_1747(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !95
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
  call void @C_save_and_reclaim(ptr noundef @f_1747, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1750 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.138)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 60), align 16
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
define internal void @f_1768(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1768, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1771 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.143)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 61), align 8
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
define internal void @f_1659(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !97
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
  call void @C_save_and_reclaim(ptr noundef @f_1659, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1662 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.125)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 56), align 16
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
define internal void @f_1662(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !98
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
  call void @C_save_and_reclaim(ptr noundef @f_1662, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1665 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.126)
  %73 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1665(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1665, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1668 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.127)
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %93 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %102 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1668(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1668, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1671 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.128)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 55), align 8
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
define internal void @f_1671(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !101
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
  call void @C_save_and_reclaim(ptr noundef @f_1671, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1674 to i64), ptr %55, align 8
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
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  store ptr %77, ptr %11, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %8, align 8
  %79 = load i64, ptr %6, align 8
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 3
  %82 = load i64, ptr %81, align 8
  %83 = call i64 @C_i_car(i64 noundef %82)
  store i64 %83, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.128)
  %84 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
  %85 = inttoptr i64 %84 to ptr
  %86 = getelementptr inbounds i64, ptr %85, i64 1
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %10, align 8
  %88 = load i64, ptr %3, align 8
  %89 = icmp sge i64 %88, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %51
  %91 = load ptr, ptr %4, align 8
  store ptr %91, ptr %14, align 8
  br label %94

92:                                               ; preds = %51
  %93 = alloca i8, i64 40, align 16
  store ptr %93, ptr %14, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i64, ptr %10, align 8
  %96 = load ptr, ptr %14, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 0
  store i64 %95, ptr %97, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %9, align 8
  %102 = call i64 @C_i_length(i64 noundef %101)
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i64, ptr %103, i64 2
  store i64 %102, ptr %104, align 8
  %105 = load ptr, ptr %14, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store i64 6, ptr %106, align 8
  %107 = load i64, ptr %6, align 8
  %108 = inttoptr i64 %107 to ptr
  %109 = getelementptr inbounds i64, ptr %108, i64 4
  %110 = load i64, ptr %109, align 8
  %111 = load ptr, ptr %14, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load i64, ptr %10, align 8
  %114 = inttoptr i64 %113 to ptr
  %115 = getelementptr inbounds i64, ptr %114, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = inttoptr i64 %116 to ptr
  %118 = load ptr, ptr %14, align 8
  call void %117(i64 noundef 5, ptr noundef %118) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1674(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !102
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
  call void @C_save_and_reclaim(ptr noundef @f_1674, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1677 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.128)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 54), align 16
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
define internal void @f_1677(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1677, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1680 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.129)
  %73 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1680(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !104
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
  call void @C_save_and_reclaim(ptr noundef @f_1680, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1683 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.130)
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %93 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %102 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1683(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !105
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
  call void @C_save_and_reclaim(ptr noundef @f_1683, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1686 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.131)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 51), align 8
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
define internal void @f_1686(i64 noundef %0, ptr noundef %1) #2 {
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !106
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
  call void @C_save_and_reclaim(ptr noundef @f_1686, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1689 to i64), ptr %55, align 8
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
  %77 = call i64 @C_i_cdr(i64 noundef %76)
  store i64 %77, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.131)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %96 = call i64 @C_i_length(i64 noundef %95)
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
define internal void @f_1689(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !107
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
  call void @C_save_and_reclaim(ptr noundef @f_1689, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1692 to i64), ptr %54, align 8
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
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 50), align 16
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
define internal void @f_1692(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !108
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
  call void @C_save_and_reclaim(ptr noundef @f_1692, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.132)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1723(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !109
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
  call void @C_save_and_reclaim(ptr noundef @f_1723, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1726 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1726(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !110
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
  call void @C_save_and_reclaim(ptr noundef @f_1726, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1729 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.135)
  %75 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %96 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1729(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !111
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
  call void @C_save_and_reclaim(ptr noundef @f_1729, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1732 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.136)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 57), align 8
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
define internal void @f_1732(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !112
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
  call void @C_save_and_reclaim(ptr noundef @f_1732, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1735 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.136)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), align 8
  %90 = call i64 @C_retrieve2(i64 noundef %89, ptr noundef @.str.84)
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 6, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %9, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  %104 = load i64, ptr %103, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = load ptr, ptr %13, align 8
  call void %105(i64 noundef 5, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1735(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1735, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.137)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1750(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !114
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
  call void @C_save_and_reclaim(ptr noundef @f_1750, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 24, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405698, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1753 to i64), ptr %55, align 8
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
  %67 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %76 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1753(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !115
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
  call void @C_save_and_reclaim(ptr noundef @f_1753, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405699, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1756 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.140)
  %75 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %96 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %97 = inttoptr i64 %96 to ptr
  %98 = getelementptr inbounds i64, ptr %97, i64 1
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %15, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %15, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 22, ptr %103, align 8
  %104 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %105 = load ptr, ptr %15, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 4
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %14, align 8
  %108 = load ptr, ptr %15, align 8
  call void %107(i64 noundef 5, ptr noundef %108) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1756(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !116
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
  call void @C_save_and_reclaim(ptr noundef @f_1756, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1759 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.141)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 59), align 8
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
define internal void @f_1759(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !117
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
  call void @C_save_and_reclaim(ptr noundef @f_1759, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1762 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.141)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %89 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 3), align 8
  %90 = call i64 @C_retrieve2(i64 noundef %89, ptr noundef @.str.84)
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store i64 %90, ptr %92, align 8
  %93 = load ptr, ptr %13, align 8
  %94 = getelementptr inbounds i64, ptr %93, i64 3
  store i64 6, ptr %94, align 8
  %95 = load i64, ptr %6, align 8
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 4
  store i64 %98, ptr %100, align 8
  %101 = load i64, ptr %9, align 8
  %102 = inttoptr i64 %101 to ptr
  %103 = getelementptr inbounds i64, ptr %102, i64 1
  %104 = load i64, ptr %103, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = load ptr, ptr %13, align 8
  call void %105(i64 noundef 5, ptr noundef %106) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1762(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1762, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.142)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1771(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !119
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
  call void @C_save_and_reclaim(ptr noundef @f_1771, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1774 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.143)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
define internal void @f_1774(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !120
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
  call void @C_save_and_reclaim(ptr noundef @f_1774, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.144)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1783(i64 noundef %0, ptr noundef %1) #2 {
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
  %29 = load i64, ptr @C_timer_interrupt_counter, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, ptr @C_timer_interrupt_counter, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  call void @C_raise_interrupt(i32 noundef 255)
  br label %33

33:                                               ; preds = %32, %2
  %34 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !121
  store ptr %34, ptr %19, align 8
  %35 = load ptr, ptr %19, align 8
  store ptr %35, ptr %20, align 8
  %36 = load ptr, ptr %20, align 8
  %37 = load ptr, ptr @C_stack_limit, align 8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 8
  %42 = load i64, ptr %3, align 8
  %43 = icmp sgt i64 %42, 3
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 3
  %46 = add nsw i32 16, %45
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
  call void @C_save_and_reclaim(ptr noundef @f_1783, i32 noundef %57, ptr noundef %58) #4
  unreachable

59:                                               ; preds = %33
  %60 = alloca i8, i64 128, align 16
  store ptr %60, ptr %18, align 8
  %61 = load ptr, ptr %18, align 8
  %62 = ptrtoint ptr %61 to i64
  store i64 %62, ptr %21, align 8
  %63 = load ptr, ptr %18, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 216172782113783810, ptr %64, align 8
  %65 = load ptr, ptr %18, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 3
  store ptr %66, ptr %18, align 8
  %67 = load i64, ptr %21, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 30, ptr %70, align 8
  %71 = load i64, ptr %21, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %21, align 8
  store i64 %75, ptr %22, align 8
  %76 = load i64, ptr %22, align 8
  store i64 %76, ptr %8, align 8
  %77 = load i64, ptr %8, align 8
  store i64 %77, ptr %9, align 8
  %78 = load ptr, ptr %18, align 8
  store i64 1, ptr %78, align 8
  %79 = load i64, ptr %9, align 8
  %80 = load ptr, ptr %18, align 8
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  store i64 %79, ptr %81, align 8
  %82 = load ptr, ptr %18, align 8
  %83 = ptrtoint ptr %82 to i64
  store i64 %83, ptr %5, align 8
  %84 = load ptr, ptr %18, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store ptr %85, ptr %18, align 8
  %86 = load i64, ptr %5, align 8
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %10, align 8
  %88 = inttoptr i64 %87 to ptr
  %89 = getelementptr inbounds i64, ptr %88, i64 1
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %11, align 8
  %91 = load i64, ptr %7, align 8
  %92 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 14), align 16
  %93 = call i64 @C_i_check_list_2(i64 noundef %91, i64 noundef %92)
  store i64 %93, ptr %12, align 8
  %94 = load ptr, ptr %18, align 8
  store i64 2594073385365405698, ptr %94, align 8
  %95 = load ptr, ptr %18, align 8
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  store i64 ptrtoint (ptr @f_1792 to i64), ptr %96, align 8
  %97 = load i64, ptr %6, align 8
  %98 = inttoptr i64 %97 to ptr
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  %100 = load i64, ptr %99, align 8
  %101 = load ptr, ptr %18, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %18, align 8
  %104 = ptrtoint ptr %103 to i64
  store i64 %104, ptr %5, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = getelementptr inbounds i64, ptr %105, i64 3
  store ptr %106, ptr %18, align 8
  %107 = load i64, ptr %5, align 8
  store i64 %107, ptr %13, align 8
  store i64 30, ptr %14, align 8
  %108 = load ptr, ptr %18, align 8
  store i64 1, ptr %108, align 8
  %109 = load i64, ptr %14, align 8
  %110 = load ptr, ptr %18, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load ptr, ptr %18, align 8
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %5, align 8
  %114 = load ptr, ptr %18, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 2
  store ptr %115, ptr %18, align 8
  %116 = load i64, ptr %5, align 8
  store i64 %116, ptr %15, align 8
  %117 = load ptr, ptr %18, align 8
  store i64 2594073385365405701, ptr %117, align 8
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds i64, ptr %118, i64 1
  store i64 ptrtoint (ptr @f_1861 to i64), ptr %119, align 8
  %120 = load i64, ptr %10, align 8
  %121 = load ptr, ptr %18, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  store i64 %120, ptr %122, align 8
  %123 = load i64, ptr %15, align 8
  %124 = load ptr, ptr %18, align 8
  %125 = getelementptr inbounds i64, ptr %124, i64 3
  store i64 %123, ptr %125, align 8
  %126 = load i64, ptr %11, align 8
  %127 = load ptr, ptr %18, align 8
  %128 = getelementptr inbounds i64, ptr %127, i64 4
  store i64 %126, ptr %128, align 8
  %129 = load ptr, ptr %18, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 5
  store i64 ptrtoint (ptr @li30 to i64), ptr %130, align 8
  %131 = load ptr, ptr %18, align 8
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %5, align 8
  %133 = load ptr, ptr %18, align 8
  %134 = getelementptr inbounds i64, ptr %133, i64 6
  store ptr %134, ptr %18, align 8
  %135 = load i64, ptr %5, align 8
  %136 = load i64, ptr %15, align 8
  %137 = inttoptr i64 %136 to ptr
  %138 = getelementptr inbounds %struct.C_block_struct, ptr %137, i32 0, i32 1
  %139 = getelementptr inbounds [0 x i64], ptr %138, i64 0, i64 0
  store i64 %135, ptr %139, align 8
  store i64 %135, ptr %16, align 8
  %140 = load i64, ptr %15, align 8
  %141 = inttoptr i64 %140 to ptr
  %142 = getelementptr inbounds i64, ptr %141, i64 1
  %143 = load i64, ptr %142, align 8
  store i64 %143, ptr %17, align 8
  %144 = load i64, ptr %17, align 8
  %145 = load i64, ptr %13, align 8
  %146 = load i64, ptr %7, align 8
  call void @f_1861(i64 noundef %144, i64 noundef %145, i64 noundef %146) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1792(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !122
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
  %36 = icmp sgt i64 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 3
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
  call void @C_save_and_reclaim(ptr noundef @f_1792, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 32, align 16
  store ptr %53, ptr %10, align 8
  %54 = load i64, ptr %7, align 8
  %55 = icmp eq i64 %54, 14
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i64 22, i64 6
  %58 = icmp ne i64 %57, 6
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load i64, ptr %6, align 8
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %8, align 8
  %64 = load ptr, ptr %4, align 8
  store ptr %64, ptr %13, align 8
  %65 = load i64, ptr %8, align 8
  %66 = load ptr, ptr %13, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 0
  store i64 %65, ptr %67, align 8
  %68 = load ptr, ptr %13, align 8
  %69 = getelementptr inbounds i64, ptr %68, i64 1
  store i64 30, ptr %69, align 8
  %70 = load i64, ptr %8, align 8
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i64, ptr %72, align 8
  %74 = inttoptr i64 %73 to ptr
  %75 = load ptr, ptr %13, align 8
  call void %74(i64 noundef 2, ptr noundef %75) #4
  unreachable

76:                                               ; preds = %52
  %77 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %77, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 ptrtoint (ptr @f_1801 to i64), ptr %79, align 8
  %80 = load i64, ptr %6, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 2
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds i64, ptr %84, i64 2
  store i64 %83, ptr %85, align 8
  %86 = load i64, ptr %7, align 8
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds i64, ptr %87, i64 3
  store i64 %86, ptr %88, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = ptrtoint ptr %89 to i64
  store i64 %90, ptr %5, align 8
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds i64, ptr %91, i64 4
  store ptr %92, ptr %10, align 8
  %93 = load i64, ptr %5, align 8
  store i64 %93, ptr %8, align 8
  call void @C_trace(ptr noundef @.str.146)
  %94 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), align 16
  %95 = call ptr @C_fast_retrieve_symbol_proc(i64 noundef %94)
  store ptr %95, ptr %14, align 8
  %96 = load i64, ptr %3, align 8
  %97 = icmp sge i64 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load ptr, ptr %4, align 8
  store ptr %99, ptr %15, align 8
  br label %102

100:                                              ; preds = %76
  %101 = alloca i8, i64 32, align 16
  store ptr %101, ptr %15, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 34), align 16
  %104 = inttoptr i64 %103 to ptr
  %105 = getelementptr inbounds i64, ptr %104, i64 1
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %15, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %108, align 8
  %109 = load i64, ptr %8, align 8
  %110 = load ptr, ptr %15, align 8
  %111 = getelementptr inbounds i64, ptr %110, i64 1
  store i64 %109, ptr %111, align 8
  %112 = load i64, ptr %7, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 67), align 8
  %116 = inttoptr i64 %115 to ptr
  %117 = getelementptr inbounds i64, ptr %116, i64 1
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
define internal void @f_1861(i64 noundef %0, i64 noundef %1, i64 noundef %2) #2 {
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
  %28 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !123
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
  %37 = add nsw i64 5, %36
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
  call void (ptr, i32, ...) @C_save_and_reclaim_args(ptr noundef @trf_1861, i32 noundef 3, i64 noundef %44, i64 noundef %45, i64 noundef %46) #4
  unreachable

47:                                               ; preds = %27
  %48 = alloca i8, i64 24, align 16
  store ptr %48, ptr %16, align 8
  %49 = load i64, ptr %6, align 8
  %50 = call i64 @C_i_pairp(i64 noundef %49)
  %51 = icmp ne i64 %50, 6
  br i1 %51, label %52, label %105

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = getelementptr inbounds %struct.C_block_struct, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [0 x i64], ptr %55, i64 0, i64 0
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load i64, ptr %8, align 8
  %59 = call i64 @C_i_cdr(i64 noundef %58)
  store i64 %59, ptr %9, align 8
  %60 = load ptr, ptr %16, align 8
  %61 = ptrtoint ptr %60 to i64
  store i64 %61, ptr %19, align 8
  %62 = load ptr, ptr %16, align 8
  %63 = getelementptr inbounds i64, ptr %62, i64 0
  store i64 216172782113783810, ptr %63, align 8
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 3
  store ptr %65, ptr %16, align 8
  %66 = load i64, ptr %9, align 8
  %67 = load i64, ptr %19, align 8
  %68 = inttoptr i64 %67 to ptr
  %69 = getelementptr inbounds %struct.C_block_struct, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds [0 x i64], ptr %69, i64 0, i64 0
  store i64 %66, ptr %70, align 8
  %71 = load i64, ptr %19, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.C_block_struct, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [0 x i64], ptr %73, i64 0, i64 1
  store i64 14, ptr %74, align 8
  %75 = load i64, ptr %19, align 8
  store i64 %75, ptr %20, align 8
  %76 = load i64, ptr %20, align 8
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %4, align 8
  %78 = inttoptr i64 %77 to ptr
  %79 = getelementptr inbounds i64, ptr %78, i64 2
  %80 = load i64, ptr %79, align 8
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds i64, ptr %81, i64 1
  %83 = load i64, ptr %82, align 8
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.C_block_struct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [0 x i64], ptr %85, i64 0, i64 1
  %87 = load i64, ptr %10, align 8
  %88 = call i64 @C_mutate(ptr noundef %86, i64 noundef %87)
  store i64 30, ptr %11, align 8
  %89 = load i64, ptr %4, align 8
  %90 = inttoptr i64 %89 to ptr
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  %92 = load i64, ptr %91, align 8
  %93 = inttoptr i64 %92 to ptr
  %94 = getelementptr inbounds i64, ptr %93, i64 1
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @C_mutate(ptr noundef %94, i64 noundef %95)
  store i64 %96, ptr %12, align 8
  %97 = load i64, ptr %5, align 8
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %6, align 8
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.C_block_struct, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds [0 x i64], ptr %100, i64 0, i64 1
  %102 = load i64, ptr %101, align 8
  store i64 %102, ptr %15, align 8
  %103 = load i64, ptr %14, align 8
  store i64 %103, ptr %5, align 8
  %104 = load i64, ptr %15, align 8
  store i64 %104, ptr %6, align 8
  br label %22

105:                                              ; preds = %47
  %106 = load i64, ptr %5, align 8
  store i64 %106, ptr %8, align 8
  %107 = load i64, ptr %8, align 8
  %108 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  store i64 %107, ptr %108, align 16
  %109 = load i64, ptr %4, align 8
  %110 = inttoptr i64 %109 to ptr
  %111 = getelementptr inbounds i64, ptr %110, i64 4
  %112 = load i64, ptr %111, align 8
  %113 = inttoptr i64 %112 to ptr
  %114 = getelementptr inbounds %struct.C_block_struct, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds [0 x i64], ptr %114, i64 0, i64 1
  %116 = load i64, ptr %115, align 8
  %117 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 1
  store i64 %116, ptr %117, align 8
  %118 = load i64, ptr %8, align 8
  %119 = inttoptr i64 %118 to ptr
  %120 = getelementptr inbounds i64, ptr %119, i64 1
  %121 = load i64, ptr %120, align 8
  %122 = inttoptr i64 %121 to ptr
  %123 = getelementptr inbounds [2 x i64], ptr %21, i64 0, i64 0
  call void %122(i64 noundef 2, ptr noundef %123) #4
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
  call void @C_save_and_reclaim(ptr noundef @f_1801, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr %7, align 8
  %55 = call i64 @C_i_car(i64 noundef %54)
  store i64 %55, ptr %8, align 8
  %56 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %56, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 ptrtoint (ptr @f_1859 to i64), ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %8, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  store i64 %65, ptr %67, align 8
  %68 = load i64, ptr %6, align 8
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  store i64 %71, ptr %73, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = ptrtoint ptr %74 to i64
  store i64 %75, ptr %5, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 5
  store ptr %77, ptr %11, align 8
  %78 = load i64, ptr %5, align 8
  store i64 %78, ptr %9, align 8
  call void @C_trace(ptr noundef @.str.147)
  %79 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 66), align 16
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %81, align 8
  %83 = call ptr @C_fast_retrieve_proc(i64 noundef %82)
  store ptr %83, ptr %14, align 8
  %84 = load i64, ptr %3, align 8
  %85 = icmp sge i64 %84, 3
  br i1 %85, label %86, label %88

86:                                               ; preds = %52
  %87 = load ptr, ptr %4, align 8
  store ptr %87, ptr %15, align 8
  br label %90

88:                                               ; preds = %52
  %89 = alloca i8, i64 24, align 16
  store ptr %89, ptr %15, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 66), align 16
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
  %100 = load i64, ptr %7, align 8
  %101 = load ptr, ptr %15, align 8
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = load ptr, ptr %15, align 8
  call void %103(i64 noundef 3, ptr noundef %104) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1859(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !125
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
  call void @C_save_and_reclaim(ptr noundef @f_1859, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 72, align 16
  store ptr %53, ptr %12, align 8
  %54 = load i64, ptr %7, align 8
  %55 = call i64 @C_i_car(i64 noundef %54)
  store i64 %55, ptr %8, align 8
  %56 = load ptr, ptr %12, align 8
  store i64 2594073385365405700, ptr %56, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 ptrtoint (ptr @f_1810 to i64), ptr %58, align 8
  %59 = load i64, ptr %6, align 8
  %60 = inttoptr i64 %59 to ptr
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 2
  store i64 %62, ptr %64, align 8
  %65 = load i64, ptr %6, align 8
  %66 = inttoptr i64 %65 to ptr
  %67 = getelementptr inbounds i64, ptr %66, i64 3
  %68 = load i64, ptr %67, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = getelementptr inbounds i64, ptr %69, i64 3
  store i64 %68, ptr %70, align 8
  %71 = load i64, ptr %6, align 8
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds i64, ptr %72, i64 4
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 4
  store i64 %74, ptr %76, align 8
  %77 = load ptr, ptr %12, align 8
  %78 = ptrtoint ptr %77 to i64
  store i64 %78, ptr %5, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds i64, ptr %79, i64 5
  store ptr %80, ptr %12, align 8
  %81 = load i64, ptr %5, align 8
  store i64 %81, ptr %9, align 8
  %82 = load ptr, ptr %12, align 8
  store i64 2594073385365405699, ptr %82, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 ptrtoint (ptr @f_1851 to i64), ptr %84, align 8
  %85 = load i64, ptr %9, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 %85, ptr %87, align 8
  %88 = load i64, ptr %6, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = getelementptr inbounds i64, ptr %89, i64 4
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %12, align 8
  %93 = getelementptr inbounds i64, ptr %92, i64 3
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %12, align 8
  %95 = ptrtoint ptr %94 to i64
  store i64 %95, ptr %5, align 8
  %96 = load ptr, ptr %12, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 4
  store ptr %97, ptr %12, align 8
  %98 = load i64, ptr %5, align 8
  store i64 %98, ptr %10, align 8
  %99 = load i64, ptr %3, align 8
  %100 = icmp sge i64 %99, 4
  br i1 %100, label %101, label %103

101:                                              ; preds = %52
  %102 = load ptr, ptr %4, align 8
  store ptr %102, ptr %15, align 8
  br label %105

103:                                              ; preds = %52
  %104 = alloca i8, i64 32, align 16
  store ptr %104, ptr %15, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 0
  store i64 0, ptr %107, align 8
  %108 = load i64, ptr %10, align 8
  %109 = load ptr, ptr %15, align 8
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 %108, ptr %110, align 8
  %111 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 17), align 8
  %112 = inttoptr i64 %111 to ptr
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = load i64, ptr %113, align 8
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store i64 %114, ptr %116, align 8
  %117 = load i64, ptr %6, align 8
  %118 = inttoptr i64 %117 to ptr
  %119 = getelementptr inbounds i64, ptr %118, i64 4
  %120 = load i64, ptr %119, align 8
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds i64, ptr %121, i64 3
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %15, align 8
  call void @C_apply(i64 noundef 4, ptr noundef %123) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1810(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !126
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
  call void @C_save_and_reclaim(ptr noundef @f_1810, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1813 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.148)
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %99 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %108 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 22, ptr %115, align 8
  %116 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = load ptr, ptr %15, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1851(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !127
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
  call void @C_save_and_reclaim(ptr noundef @f_1851, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.157)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %63 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 15), align 8
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
  %82 = call i64 @C_i_length(i64 noundef %81)
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 3
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = load ptr, ptr %13, align 8
  call void %85(i64 noundef 4, ptr noundef %86) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1813(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !128
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
  call void @C_save_and_reclaim(ptr noundef @f_1813, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1816 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.149)
  %84 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %101 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 65), align 8
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
define internal void @f_1816(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %26 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !129
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
  call void @C_save_and_reclaim(ptr noundef @f_1816, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 40, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1819 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.150)
  %79 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %88 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1819(i64 noundef %0, ptr noundef %1) #2 {
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
  %27 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !130
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
  call void @C_save_and_reclaim(ptr noundef @f_1819, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 48, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405701, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1822 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.151)
  %87 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %99 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %108 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %109 = inttoptr i64 %108 to ptr
  %110 = getelementptr inbounds i64, ptr %109, i64 1
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr %15, align 8
  %113 = getelementptr inbounds i64, ptr %112, i64 2
  store i64 %111, ptr %113, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = getelementptr inbounds i64, ptr %114, i64 3
  store i64 22, ptr %115, align 8
  %116 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i64, ptr %117, i64 4
  store i64 %116, ptr %118, align 8
  %119 = load ptr, ptr %14, align 8
  %120 = load ptr, ptr %15, align 8
  call void %119(i64 noundef 5, ptr noundef %120) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1822(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !131
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
  call void @C_save_and_reclaim(ptr noundef @f_1822, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 48, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405701, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1825 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.152)
  %84 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %101 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 64), align 16
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 6, ptr %105, align 8
  %106 = load i64, ptr %6, align 8
  %107 = inttoptr i64 %106 to ptr
  %108 = getelementptr inbounds i64, ptr %107, i64 4
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
define internal void @f_1825(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !132
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
  call void @C_save_and_reclaim(ptr noundef @f_1825, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1828 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.152)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %99 = call i64 @C_i_length(i64 noundef %98)
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 2
  store i64 %99, ptr %101, align 8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 6, ptr %103, align 8
  %104 = load i64, ptr %6, align 8
  %105 = inttoptr i64 %104 to ptr
  %106 = getelementptr inbounds i64, ptr %105, i64 4
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
define internal void @f_1828(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1828, i32 noundef %49, ptr noundef %50) #4
  unreachable

51:                                               ; preds = %25
  %52 = alloca i8, i64 32, align 16
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %53, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 ptrtoint (ptr @f_1831 to i64), ptr %55, align 8
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
  call void @C_trace(ptr noundef @.str.153)
  %73 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %82 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @f_1831(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @C_save_and_reclaim(ptr noundef @f_1831, i32 noundef %50, ptr noundef %51) #4
  unreachable

52:                                               ; preds = %26
  %53 = alloca i8, i64 40, align 16
  store ptr %53, ptr %11, align 8
  %54 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds i64, ptr %55, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %8, align 8
  %58 = load ptr, ptr %11, align 8
  store i64 2594073385365405700, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %59, i64 1
  store i64 ptrtoint (ptr @f_1834 to i64), ptr %60, align 8
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
  call void @C_trace(ptr noundef @.str.154)
  %81 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %93 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 52), align 16
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
  %102 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 47), align 8
  %103 = inttoptr i64 %102 to ptr
  %104 = getelementptr inbounds i64, ptr %103, i64 1
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %15, align 8
  %107 = getelementptr inbounds i64, ptr %106, i64 2
  store i64 %105, ptr %107, align 8
  %108 = load ptr, ptr %15, align 8
  %109 = getelementptr inbounds i64, ptr %108, i64 3
  store i64 22, ptr %109, align 8
  %110 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 53), align 8
  %111 = load ptr, ptr %15, align 8
  %112 = getelementptr inbounds i64, ptr %111, i64 4
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load ptr, ptr %15, align 8
  call void %113(i64 noundef 5, ptr noundef %114) #4
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @f_1834(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  call void @C_save_and_reclaim(ptr noundef @f_1834, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 40, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405700, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1837 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.155)
  %78 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
  %95 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 63), align 8
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
define internal void @f_1837(i64 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !136
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
  call void @C_save_and_reclaim(ptr noundef @f_1837, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  %51 = alloca i8, i64 32, align 16
  store ptr %51, ptr %10, align 8
  %52 = load ptr, ptr %10, align 8
  store i64 2594073385365405699, ptr %52, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 ptrtoint (ptr @f_1840 to i64), ptr %54, align 8
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
  call void @C_trace(ptr noundef @.str.155)
  %72 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 49), align 8
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
define internal void @f_1840(i64 noundef %0, ptr noundef %1) #2 {
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
  %25 = call ptr asm sideeffect "movq %rsp,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !137
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
  call void @C_save_and_reclaim(ptr noundef @f_1840, i32 noundef %48, ptr noundef %49) #4
  unreachable

50:                                               ; preds = %24
  call void @C_trace(ptr noundef @.str.156)
  %51 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
  %60 = load i64, ptr getelementptr inbounds ([76 x i64], ptr @lf, i64 0, i64 48), align 16
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
define internal void @trf_1861(i64 noundef %0, ptr noundef %1) #2 {
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
  call void @f_1861(i64 noundef %17, i64 noundef %18, i64 noundef %19) #4
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
!6 = !{i64 2148918941}
!7 = !{i64 2148887597}
!8 = !{i64 2148888336}
!9 = !{i64 2148889255}
!10 = !{i64 2148890174}
!11 = !{i64 2148890913}
!12 = !{i64 2148891664}
!13 = !{i64 2148892546}
!14 = !{i64 2148886703}
!15 = !{i64 2148893465}
!16 = !{i64 2148894456}
!17 = !{i64 2148896168}
!18 = !{i64 2148896721}
!19 = !{i64 2148897254}
!20 = !{i64 2148901842}
!21 = !{i64 2148785696}
!22 = !{i64 2148805695}
!23 = !{i64 2148807135}
!24 = !{i64 2148813571}
!25 = !{i64 2148814223}
!26 = !{i64 2148826965}
!27 = !{i64 2148836530}
!28 = !{i64 2148863486}
!29 = !{i64 2148886160}
!30 = !{i64 2148902726}
!31 = !{i64 2148903321}
!32 = !{i64 2148904517}
!33 = !{i64 2148905905}
!34 = !{i64 2148907886}
!35 = !{i64 2148786429}
!36 = !{i64 2148787699}
!37 = !{i64 2148789724}
!38 = !{i64 2148792094}
!39 = !{i64 2148793008}
!40 = !{i64 2148795707}
!41 = !{i64 2148798732}
!42 = !{i64 2148796530}
!43 = !{i64 2148798043}
!44 = !{i64 2148797280}
!45 = !{i64 2148806427}
!46 = !{i64 2148809789}
!47 = !{i64 2148761154}
!48 = !{i64 2148761909}
!49 = !{i64 2148765706}
!50 = !{i64 2148805075}
!51 = !{i64 2148897807}
!52 = !{i64 2148898702}
!53 = !{i64 2148901287}
!54 = !{i64 2148899598}
!55 = !{i64 2148900729}
!56 = !{i64 2148909674}
!57 = !{i64 2148911074}
!58 = !{i64 2148912608}
!59 = !{i64 2148914676}
!60 = !{i64 2148915587}
!61 = !{i64 2148916642}
!62 = !{i64 2148757817}
!63 = !{i64 2148758778}
!64 = !{i64 2148759361}
!65 = !{i64 2148760055}
!66 = !{i64 2148767701}
!67 = !{i64 2148768682}
!68 = !{i64 2148762602}
!69 = !{i64 2148763232}
!70 = !{i64 2148764058}
!71 = !{i64 2148769991}
!72 = !{i64 2148770888}
!73 = !{i64 2148771886}
!74 = !{i64 2148772830}
!75 = !{i64 2148775183}
!76 = !{i64 2148775771}
!77 = !{i64 2148777862}
!78 = !{i64 2148778526}
!79 = !{i64 2148776505}
!80 = !{i64 2148781670}
!81 = !{i64 2148814944}
!82 = !{i64 2148815719}
!83 = !{i64 2148817926}
!84 = !{i64 2148820615}
!85 = !{i64 2148819267}
!86 = !{i64 2148819926}
!87 = !{i64 2148827849}
!88 = !{i64 2148828454}
!89 = !{i64 2148830435}
!90 = !{i64 2148832762}
!91 = !{i64 2148831182}
!92 = !{i64 2148834744}
!93 = !{i64 2148839134}
!94 = !{i64 2148850507}
!95 = !{i64 2148855734}
!96 = !{i64 2148860961}
!97 = !{i64 2148840009}
!98 = !{i64 2148840877}
!99 = !{i64 2148841811}
!100 = !{i64 2148842691}
!101 = !{i64 2148843564}
!102 = !{i64 2148844437}
!103 = !{i64 2148845305}
!104 = !{i64 2148846239}
!105 = !{i64 2148847119}
!106 = !{i64 2148847992}
!107 = !{i64 2148848860}
!108 = !{i64 2148849718}
!109 = !{i64 2148851370}
!110 = !{i64 2148852299}
!111 = !{i64 2148853174}
!112 = !{i64 2148854037}
!113 = !{i64 2148854945}
!114 = !{i64 2148856597}
!115 = !{i64 2148857526}
!116 = !{i64 2148858401}
!117 = !{i64 2148859264}
!118 = !{i64 2148860172}
!119 = !{i64 2148861829}
!120 = !{i64 2148862692}
!121 = !{i64 2148864249}
!122 = !{i64 2148866426}
!123 = !{i64 2148879822}
!124 = !{i64 2148867813}
!125 = !{i64 2148878954}
!126 = !{i64 2148868623}
!127 = !{i64 2148878280}
!128 = !{i64 2148869508}
!129 = !{i64 2148870381}
!130 = !{i64 2148871320}
!131 = !{i64 2148872205}
!132 = !{i64 2148873078}
!133 = !{i64 2148873951}
!134 = !{i64 2148874885}
!135 = !{i64 2148875765}
!136 = !{i64 2148876633}
!137 = !{i64 2148877496}
