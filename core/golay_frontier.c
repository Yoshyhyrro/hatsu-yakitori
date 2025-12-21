/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   uses: eval extras library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_extras_toplevel)
C_externimport void C_ccall C_extras_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[48];
static double C_possibly_force_alignment;


C_noret_decl(f_407)
static void C_ccall f_407(C_word c,C_word *av) C_noret;
C_noret_decl(f_410)
static void C_ccall f_410(C_word c,C_word *av) C_noret;
C_noret_decl(f_413)
static void C_ccall f_413(C_word c,C_word *av) C_noret;
C_noret_decl(f_416)
static void C_ccall f_416(C_word c,C_word *av) C_noret;
C_noret_decl(f_419)
static void C_ccall f_419(C_word c,C_word *av) C_noret;
C_noret_decl(f_429)
static void C_ccall f_429(C_word c,C_word *av) C_noret;
C_noret_decl(f_435)
static void C_fcall f_435(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_457)
static void C_ccall f_457(C_word c,C_word *av) C_noret;
C_noret_decl(f_463)
static void C_fcall f_463(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_524)
static void C_ccall f_524(C_word c,C_word *av) C_noret;
C_noret_decl(f_533)
static void C_fcall f_533(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_580)
static void C_ccall f_580(C_word c,C_word *av) C_noret;
C_noret_decl(f_590)
static void C_ccall f_590(C_word c,C_word *av) C_noret;
C_noret_decl(f_614)
static void C_ccall f_614(C_word c,C_word *av) C_noret;
C_noret_decl(f_618)
static void C_ccall f_618(C_word c,C_word *av) C_noret;
C_noret_decl(f_628)
static void C_ccall f_628(C_word c,C_word *av) C_noret;
C_noret_decl(f_631)
static void C_ccall f_631(C_word c,C_word *av) C_noret;
C_noret_decl(f_638)
static void C_ccall f_638(C_word c,C_word *av) C_noret;
C_noret_decl(f_641)
static void C_ccall f_641(C_word c,C_word *av) C_noret;
C_noret_decl(f_644)
static void C_ccall f_644(C_word c,C_word *av) C_noret;
C_noret_decl(f_651)
static void C_ccall f_651(C_word c,C_word *av) C_noret;
C_noret_decl(f_661)
static void C_ccall f_661(C_word c,C_word *av) C_noret;
C_noret_decl(f_667)
static void C_ccall f_667(C_word c,C_word *av) C_noret;
C_noret_decl(f_673)
static void C_ccall f_673(C_word c,C_word *av) C_noret;
C_noret_decl(f_697)
static void C_ccall f_697(C_word c,C_word *av) C_noret;
C_noret_decl(f_707)
static void C_ccall f_707(C_word c,C_word *av) C_noret;
C_noret_decl(f_734)
static void C_ccall f_734(C_word c,C_word *av) C_noret;
C_noret_decl(f_759)
static void C_ccall f_759(C_word c,C_word *av) C_noret;
C_noret_decl(f_778)
static void C_ccall f_778(C_word c,C_word *av) C_noret;
C_noret_decl(f_781)
static void C_ccall f_781(C_word c,C_word *av) C_noret;
C_noret_decl(f_787)
static void C_ccall f_787(C_word c,C_word *av) C_noret;
C_noret_decl(f_790)
static void C_ccall f_790(C_word c,C_word *av) C_noret;
C_noret_decl(f_796)
static void C_ccall f_796(C_word c,C_word *av) C_noret;
C_noret_decl(f_799)
static void C_ccall f_799(C_word c,C_word *av) C_noret;
C_noret_decl(f_805)
static void C_ccall f_805(C_word c,C_word *av) C_noret;
C_noret_decl(f_808)
static void C_ccall f_808(C_word c,C_word *av) C_noret;
C_noret_decl(f_811)
static void C_ccall f_811(C_word c,C_word *av) C_noret;
C_noret_decl(f_817)
static void C_ccall f_817(C_word c,C_word *av) C_noret;
C_noret_decl(f_820)
static void C_ccall f_820(C_word c,C_word *av) C_noret;
C_noret_decl(f_823)
static void C_ccall f_823(C_word c,C_word *av) C_noret;
C_noret_decl(f_826)
static void C_ccall f_826(C_word c,C_word *av) C_noret;
C_noret_decl(f_832)
static void C_ccall f_832(C_word c,C_word *av) C_noret;
C_noret_decl(f_835)
static void C_ccall f_835(C_word c,C_word *av) C_noret;
C_noret_decl(f_838)
static void C_ccall f_838(C_word c,C_word *av) C_noret;
C_noret_decl(f_844)
static void C_ccall f_844(C_word c,C_word *av) C_noret;
C_noret_decl(f_847)
static void C_ccall f_847(C_word c,C_word *av) C_noret;
C_noret_decl(f_850)
static void C_ccall f_850(C_word c,C_word *av) C_noret;
C_noret_decl(f_856)
static void C_ccall f_856(C_word c,C_word *av) C_noret;
C_noret_decl(f_859)
static void C_ccall f_859(C_word c,C_word *av) C_noret;
C_noret_decl(f_862)
static void C_ccall f_862(C_word c,C_word *av) C_noret;
C_noret_decl(f_868)
static void C_ccall f_868(C_word c,C_word *av) C_noret;
C_noret_decl(f_882)
static void C_ccall f_882(C_word c,C_word *av) C_noret;
C_noret_decl(f_890)
static void C_ccall f_890(C_word c,C_word *av) C_noret;
C_noret_decl(f_892)
static void C_ccall f_892(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_435)
static void C_ccall trf_435(C_word c,C_word *av) C_noret;
static void C_ccall trf_435(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_435(t0,t1,t2,t3);}

C_noret_decl(trf_463)
static void C_ccall trf_463(C_word c,C_word *av) C_noret;
static void C_ccall trf_463(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_463(t0,t1,t2,t3);}

C_noret_decl(trf_533)
static void C_ccall trf_533(C_word c,C_word *av) C_noret;
static void C_ccall trf_533(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_533(t0,t1,t2,t3);}

/* k405 */
static void C_ccall f_407(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_407,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_410,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k408 in k405 */
static void C_ccall f_410(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,2)))){
C_save_and_reclaim((void *)f_410,c,av);}
a=C_alloc(13);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_413,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_892,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:6: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[47]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[47]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k411 in k408 in k405 */
static void C_ccall f_413(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_413,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_416,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k414 in k411 in k408 in k405 */
static void C_ccall f_416(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_416,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_419,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:28: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[42]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[42]+1);
av2[1]=t2;
av2[2]=lf[43];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_419(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word t12;
C_word t13;
C_word t14;
C_word t15;
C_word t16;
C_word t17;
C_word t18;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(51,c,4)))){
C_save_and_reclaim((void *)f_419,c,av);}
a=C_alloc(51);
t2=C_a_i_vector(&a,12,C_fix(3189),C_fix(1595),C_fix(3944),C_fix(1972),C_fix(986),C_fix(3481),C_fix(1741),C_fix(871),C_fix(3526),C_fix(2711),C_fix(2366),C_fix(2283));
t3=C_mutate((C_word*)lf[1]+1 /* (set! golay_frontier#golay24-generator ...) */,t2);
t4=C_a_i_vector(&a,12,C_fix(2254),C_fix(3175),C_fix(2269),C_fix(1207),C_fix(475),C_fix(3809),C_fix(3103),C_fix(3215),C_fix(1395),C_fix(2553),C_fix(2869),C_fix(2762));
t5=C_mutate((C_word*)lf[2]+1 /* (set! golay_frontier#golay24-parity-check ...) */,t4);
t6=C_mutate((C_word*)lf[3]+1 /* (set! golay_frontier#golay-weight ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_429,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[4]+1 /* (set! golay_frontier#encode-golay24 ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_457,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[5]+1 /* (set! golay_frontier#decode-golay24 ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_580,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[6]+1 /* (set! golay_frontier#frontier-mode-from-golay ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_614,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[13]+1 /* (set! golay_frontier#make-adaptive-frontier ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_631,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[14]+1 /* (set! golay_frontier#adaptive-frontier-mode ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_661,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[15]+1 /* (set! golay_frontier#adaptive-frontier-tau ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_667,tmp=(C_word)a,a+=2,tmp));
t13=C_mutate((C_word*)lf[16]+1 /* (set! golay_frontier#adaptive-frontier-codeword ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_673,tmp=(C_word)a,a+=2,tmp));
t14=C_mutate((C_word*)lf[17]+1 /* (set! golay_frontier#adaptive-frontier-push ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_697,tmp=(C_word)a,a+=2,tmp));
t15=C_mutate((C_word*)lf[21]+1 /* (set! golay_frontier#adaptive-frontier-pop ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_734,tmp=(C_word)a,a+=2,tmp));
t16=C_mutate((C_word*)lf[23]+1 /* (set! golay_frontier#print-golay-info ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_759,tmp=(C_word)a,a+=2,tmp));
t17=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_890,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* chicken.base#implicit-exit-handler */
t18=C_fast_retrieve(lf[41]);{
C_word *av2=av;
av2[0]=t18;
av2[1]=t17;
((C_proc)(void*)(*((C_word*)t18+1)))(2,av2);}}

/* golay_frontier#golay-weight in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_429(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_429,c,av);}
a=C_alloc(5);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_435,a[2]=t4,tmp=(C_word)a,a+=3,tmp));
t6=((C_word*)t4)[1];
f_435(t6,t1,t2,C_fix(0));}

/* loop in golay_frontier#golay-weight in k417 in k414 in k411 in k408 in k405 */
static void C_fcall f_435(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(39,0,3)))){
C_save_and_reclaim_args((void *)trf_435,4,t0,t1,t2,t3);}
a=C_alloc(39);
if(C_truep(C_i_zerop(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-1));
t5=C_s_a_i_bitwise_and(&a,2,t2,C_fix(1));
t6=C_s_a_i_plus(&a,2,t3,t5);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:49: loop */
t8=t1;
t9=t4;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* golay_frontier#encode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_457(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_457,c,av);}
a=C_alloc(7);
t3=C_fast_retrieve(lf[1]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_463,a[2]=t2,a[3]=t5,a[4]=t3,tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_463(t7,t1,C_fix(0),C_fix(0));}

/* loop in golay_frontier#encode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_fcall f_463(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word t12;
C_word t13;
C_word t14;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(73,0,3)))){
C_save_and_reclaim_args((void *)trf_463,4,t0,t1,t2,t3);}
a=C_alloc(73);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],C_fix(12));
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_s_a_i_bitwise_ior(&a,2,t4,t3);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=C_s_a_i_negate(&a,1,t2);
t5=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t4);
t6=C_s_a_i_bitwise_and(&a,2,C_fix(1),t5);
t7=C_eqp(t6,C_fix(0));
if(C_truep(t7)){
t8=C_s_a_i_plus(&a,2,t2,C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:59: loop */
t12=t1;
t13=t8;
t14=t3;
t1=t12;
t2=t13;
t3=t14;
goto loop;}
else{
t8=C_s_a_i_plus(&a,2,t2,C_fix(1));
t9=C_i_vector_ref(((C_word*)t0)[4],t2);
t10=C_s_a_i_bitwise_xor(&a,2,t3,t9);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:60: loop */
t12=t1;
t13=t8;
t14=t10;
t1=t12;
t2=t13;
t3=t14;
goto loop;}}}

/* k522 in golay_frontier#decode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_524(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,2)))){
C_save_and_reclaim((void *)f_524,c,av);}
a=C_alloc(15);
t2=C_s_a_i_bitwise_and(&a,2,((C_word*)t0)[2],C_fix(4095));
t3=C_s_a_i_bitwise_xor(&a,2,t2,t1);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_590,a[2]=t3,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:78: golay-weight */
t5=C_fast_retrieve(lf[3]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
f_429(3,av2);}}

/* loop in golay_frontier#decode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_fcall f_533(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word t12;
C_word t13;
C_word t14;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(73,0,3)))){
C_save_and_reclaim_args((void *)trf_533,4,t0,t1,t2,t3);}
a=C_alloc(73);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_negate(&a,1,t2);
t5=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t4);
t6=C_s_a_i_bitwise_and(&a,2,C_fix(1),t5);
t7=C_eqp(t6,C_fix(0));
if(C_truep(t7)){
t8=C_s_a_i_plus(&a,2,t2,C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:70: loop */
t12=t1;
t13=t8;
t14=t3;
t1=t12;
t2=t13;
t3=t14;
goto loop;}
else{
t8=C_s_a_i_plus(&a,2,t2,C_fix(1));
t9=C_i_vector_ref(C_fast_retrieve(lf[1]),t2);
t10=C_s_a_i_bitwise_xor(&a,2,t3,t9);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:71: loop */
t12=t1;
t13=t8;
t14=t10;
t1=t12;
t2=t13;
t3=t14;
goto loop;}}}

/* golay_frontier#decode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_580(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(21,c,4)))){
C_save_and_reclaim((void *)f_580,c,av);}
a=C_alloc(21);
t3=C_fast_retrieve(lf[1]);
t4=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t5=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_524,a[2]=t2,a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_533,a[2]=t5,a[3]=t8,tmp=(C_word)a,a+=4,tmp));
t10=((C_word*)t8)[1];
f_533(t10,t6,C_fix(0),C_fix(0));}

/* k588 in k522 in golay_frontier#decode-golay24 in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_590(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_590,c,av);}
t2=C_eqp(((C_word*)t0)[2],C_fix(0));
if(C_truep(t2)){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:81: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=C_fix(0);
C_values(4,av2);}}
else{
if(C_truep(C_i_less_or_equalp(t1,C_fix(3)))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:83: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:85: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}}}

/* golay_frontier#frontier-mode-from-golay in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_614(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_614,c,av);}
a=C_alloc(6);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_618,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_628,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:92: scheme#min */
t5=*((C_word*)lf[12]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
av2[3]=C_fix(24);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k616 in golay_frontier#frontier-mode-from-golay in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_618(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_618,c,av);}
t2=C_i_lessp(t1,lf[7]);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=(C_truep(t2)?lf[8]:lf[9]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k626 in golay_frontier#frontier-mode-from-golay in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_628(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_628,c,av);}
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[10]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[10]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=lf[11];
tp(4,av2);}}

/* golay_frontier#make-adaptive-frontier in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_631(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_631,c,av);}
a=C_alloc(3);
t2=C_rest_nullp(c,2);
t3=(C_truep(t2)?C_fix(0):C_get_rest_arg(c,2,av,2,t0));
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_638,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:98: encode-golay24 */
t5=C_fast_retrieve(lf[4]);{
C_word av2[3];
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
f_457(3,av2);}}

/* k636 in golay_frontier#make-adaptive-frontier in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_638(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_638,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_641,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:99: golay-weight */
t3=C_fast_retrieve(lf[3]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=t1;
f_429(3,av2);}}

/* k639 in k636 in golay_frontier#make-adaptive-frontier in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_641(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_641,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_644,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:100: frontier-mode-from-golay */
t3=C_fast_retrieve(lf[6]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=t1;
f_614(3,av2);}}

/* k642 in k639 in k636 in golay_frontier#make-adaptive-frontier in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_644(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_644,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_651,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[10]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[10]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=lf[11];
tp(4,av2);}}

/* k649 in k642 in k639 in k636 in golay_frontier#make-adaptive-frontier in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_651(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_651,c,av);}
a=C_alloc(6);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector5(&a,5,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1,C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-mode in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_661(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_661,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(0));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-tau in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_667(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_667,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-codeword in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_673(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_673,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-push in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_697(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_697,c,av);}
a=C_alloc(7);
t4=C_i_vector_ref(t2,C_fix(0));
t5=C_i_vector_ref(t2,C_fix(4));
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_707,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t7=C_eqp(t4,lf[8]);
if(C_truep(t7)){
t8=C_a_i_cons(&a,2,t3,t5);
t9=C_i_vector_set(t2,C_fix(4),t8);
t10=t1;{
C_word *av2=av;
av2[0]=t10;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}
else{
t8=C_eqp(t4,lf[9]);
if(C_truep(t8)){
t9=C_a_i_list1(&a,1,t3);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:126: scheme#append */
t10=*((C_word*)lf[18]+1);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t6;
av2[2]=t5;
av2[3]=t9;
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:127: chicken.base#error */
t9=*((C_word*)lf[19]+1);{
C_word *av2=av;
av2[0]=t9;
av2[1]=t6;
av2[2]=lf[20];
av2[3]=t4;
((C_proc)(void*)(*((C_word*)t9+1)))(4,av2);}}}}

/* k705 in golay_frontier#adaptive-frontier-push in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_707(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_707,c,av);}
t2=C_i_vector_set(((C_word*)t0)[2],C_fix(4),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-pop in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_734(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_734,c,av);}
t3=C_i_vector_ref(t2,C_fix(4));
if(C_truep(C_i_nullp(t3))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:137: chicken.base#error */
t4=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[22];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}
else{
t4=C_i_car(t3);
t5=C_u_i_cdr(t3);
t6=C_i_vector_set(t2,C_fix(4),t5);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:145: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t4;
av2[3]=t2;
C_values(4,av2);}}}

/* golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_759(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_759,c,av);}
a=C_alloc(8);
t3=C_i_vector_ref(t2,C_fix(0));
t4=C_i_vector_ref(t2,C_fix(1));
t5=C_i_vector_ref(t2,C_fix(3));
t6=C_i_vector_ref(t2,C_fix(2));
t7=*((C_word*)lf[24]+1);
t8=*((C_word*)lf[24]+1);
t9=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t10=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_778,a[2]=t1,a[3]=t3,a[4]=t5,a[5]=t4,a[6]=t6,a[7]=t7,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:156: ##sys#print */
t11=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t11;
av2[1]=t10;
av2[2]=lf[40];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t11+1)))(5,av2);}}

/* k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_778(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_778,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_781,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:156: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_781(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_781,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_787,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:157: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[39];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_787(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_787,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_790,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:157: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_790(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_790,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_796,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:158: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[38];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_796(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_796,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_799,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:158: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_799(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_799,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_805,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t2,a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:159: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[37];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_805(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_805,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_808,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_882,a[2]=t2,a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[7];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_808(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_808,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_811,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:159: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[6];
tp(4,av2);}}

/* k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_811(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_811,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_817,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t2,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:160: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[35];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_817(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_817,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_820,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:160: ##sys#print */
t3=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_820(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_820,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_823,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:160: ##sys#print */
t3=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[34];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_823(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_823,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_826,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:160: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_826(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_826,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_832,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:161: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[33];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_832(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_832,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_835,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:161: ##sys#print */
t3=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_835(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_835,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_838,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:161: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 in ... */
static void C_ccall f_838(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_838,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_844,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:162: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[32];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in ... */
static void C_ccall f_844(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_844,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_847,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:162: ##sys#print */
t3=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in ... */
static void C_ccall f_847(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_847,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_850,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:162: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k848 in k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in ... */
static void C_ccall f_850(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_850,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_856,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:163: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[31];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k854 in k848 in k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in ... */
static void C_ccall f_856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_856,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_859,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_eqp(((C_word*)t0)[4],lf[8]);
if(C_truep(t3)){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:163: ##sys#print */
t4=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=lf[29];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:163: ##sys#print */
t4=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=lf[30];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}}

/* k857 in k854 in k848 in k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in ... */
static void C_ccall f_859(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_859,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_862,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:163: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k860 in k857 in k854 in k848 in k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in ... */
static void C_ccall f_862(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_862,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[24]+1);
t3=*((C_word*)lf[24]+1);
t4=C_i_check_port_2(*((C_word*)lf[24]+1),C_fix(2),C_SCHEME_TRUE,lf[25]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_868,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:167: ##sys#print */
t6=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[28];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[24]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k866 in k860 in k857 in k854 in k848 in k845 in k842 in k836 in k833 in k830 in k824 in k821 in k818 in k815 in k809 in k806 in k803 in k797 in k794 in k788 in k785 in k779 in ... */
static void C_ccall f_868(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_868,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:167: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[26]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k880 in k803 in k797 in k794 in k788 in k785 in k779 in k776 in golay_frontier#print-golay-info in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_882(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_882,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:159: ##sys#print */
t2=*((C_word*)lf[27]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k888 in k417 in k414 in k411 in k408 in k405 */
static void C_ccall f_890(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_890,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a891 in k408 in k405 */
static void C_ccall f_892(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_892,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:6: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[44]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[44]+1);
av2[1]=t1;
av2[2]=lf[45];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[46];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* toplevel */
static C_TLS int toplevel_initialized=0;
C_main_entry_point

void C_ccall C_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("toplevel"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(485))){
C_save(t1);
C_rereclaim2(485*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,48);
lf[0]=C_h_intern(&lf[0],15, C_text("golay_frontier#"));
lf[1]=C_h_intern(&lf[1],32, C_text("golay_frontier#golay24-generator"));
lf[2]=C_h_intern(&lf[2],35, C_text("golay_frontier#golay24-parity-check"));
lf[3]=C_h_intern(&lf[3],27, C_text("golay_frontier#golay-weight"));
lf[4]=C_h_intern(&lf[4],29, C_text("golay_frontier#encode-golay24"));
lf[5]=C_h_intern(&lf[5],29, C_text("golay_frontier#decode-golay24"));
lf[6]=C_h_intern(&lf[6],39, C_text("golay_frontier#frontier-mode-from-golay"));
lf[7]=C_decode_literal(C_heaptop,C_text("\376U0.5\000"));
lf[8]=C_h_intern(&lf[8],5, C_text("stack"));
lf[9]=C_h_intern(&lf[9],5, C_text("queue"));
lf[10]=C_h_intern(&lf[10],9, C_text("##sys#/-2"));
lf[11]=C_decode_literal(C_heaptop,C_text("\376U24.0\000"));
lf[12]=C_h_intern(&lf[12],10, C_text("scheme#min"));
lf[13]=C_h_intern(&lf[13],37, C_text("golay_frontier#make-adaptive-frontier"));
lf[14]=C_h_intern(&lf[14],37, C_text("golay_frontier#adaptive-frontier-mode"));
lf[15]=C_h_intern(&lf[15],36, C_text("golay_frontier#adaptive-frontier-tau"));
lf[16]=C_h_intern(&lf[16],41, C_text("golay_frontier#adaptive-frontier-codeword"));
lf[17]=C_h_intern(&lf[17],37, C_text("golay_frontier#adaptive-frontier-push"));
lf[18]=C_h_intern(&lf[18],13, C_text("scheme#append"));
lf[19]=C_h_intern(&lf[19],18, C_text("chicken.base#error"));
lf[20]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[21]=C_h_intern(&lf[21],36, C_text("golay_frontier#adaptive-frontier-pop"));
lf[22]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036Cannot pop from empty frontier"));
lf[23]=C_h_intern(&lf[23],31, C_text("golay_frontier#print-golay-info"));
lf[24]=C_h_intern(&lf[24],21, C_text("##sys#standard-output"));
lf[25]=C_h_intern(&lf[25],6, C_text("printf"));
lf[26]=C_h_intern(&lf[26],18, C_text("##sys#write-char-0"));
lf[27]=C_h_intern(&lf[27],11, C_text("##sys#print"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031DFS (Deep / Exploitation)"));
lf[30]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031BFS (Broad / Exploration)"));
lf[31]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Strategy:            "));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Decided Mode:        "));
lf[33]=C_decode_literal(C_heaptop,C_text("\376B\000\000\034\342\225\221 Normalized \317\204\314\202:        "));
lf[34]=C_decode_literal(C_heaptop,C_text("\376B\000\000\005 / 24"));
lf[35]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032\342\225\221 Hamming Weight (\317\204):  "));
lf[36]=C_h_intern(&lf[36],20, C_text("##sys#number->string"));
lf[37]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033\342\225\221 Codeword:            0x"));
lf[38]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\240\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\243"));
lf[39]=C_decode_literal(C_heaptop,C_text("\376B\000\000-\342\225\221 Golay Control Configuration           \342\225\221"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227"));
lf[41]=C_h_intern(&lf[41],34, C_text("chicken.base#implicit-exit-handler"));
lf[42]=C_h_intern(&lf[42],27, C_text("chicken.load#load-extension"));
lf[43]=C_h_intern(&lf[43],6, C_text("srfi-1"));
lf[44]=C_h_intern(&lf[44],30, C_text("##sys#register-compiled-module"));
lf[45]=C_h_intern(&lf[45],14, C_text("golay_frontier"));
lf[46]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001golay24-generator\376\001\000\000 \001golay_frontier#golay24-generator\376\003\000\000\002\376\003\000\000"
"\002\376\001\000\000\024\001golay24-parity-check\376\001\000\000#\001golay_frontier#golay24-parity-check\376\003\000\000\002\376\003\000\000\002\376\001"
"\000\000\016\001encode-golay24\376\001\000\000\035\001golay_frontier#encode-golay24\376\003\000\000\002\376\003\000\000\002\376\001\000\000\016\001decode-gola"
"y24\376\001\000\000\035\001golay_frontier#decode-golay24\376\003\000\000\002\376\003\000\000\002\376\001\000\000\014\001golay-weight\376\001\000\000\033\001golay_fr"
"ontier#golay-weight\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001make-adaptive-frontier\376\001\000\000%\001golay_frontier#ma"
"ke-adaptive-frontier\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001adaptive-frontier-mode\376\001\000\000%\001golay_frontier#a"
"daptive-frontier-mode\376\003\000\000\002\376\003\000\000\002\376\001\000\000\025\001adaptive-frontier-tau\376\001\000\000$\001golay_frontier#a"
"daptive-frontier-tau\376\003\000\000\002\376\003\000\000\002\376\001\000\000\032\001adaptive-frontier-codeword\376\001\000\000)\001golay_fronti"
"er#adaptive-frontier-codeword\376\003\000\000\002\376\003\000\000\002\376\001\000\000\030\001frontier-mode-from-golay\376\001\000\000\047\001golay"
"_frontier#frontier-mode-from-golay\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001adaptive-frontier-push\376\001\000\000%\001go"
"lay_frontier#adaptive-frontier-push\376\003\000\000\002\376\003\000\000\002\376\001\000\000\025\001adaptive-frontier-pop\376\001\000\000$\001go"
"lay_frontier#adaptive-frontier-pop\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001print-golay-info\376\001\000\000\037\001golay_fr"
"ontier#print-golay-info\376\377\016"));
lf[47]=C_h_intern(&lf[47],22, C_text("##sys#with-environment"));
C_register_lf2(lf,48,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_407,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[56] = {
{C_text("f_407:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_407},
{C_text("f_410:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_410},
{C_text("f_413:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_413},
{C_text("f_416:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_416},
{C_text("f_419:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_419},
{C_text("f_429:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_429},
{C_text("f_435:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_435},
{C_text("f_457:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_457},
{C_text("f_463:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_463},
{C_text("f_524:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_524},
{C_text("f_533:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_533},
{C_text("f_580:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_580},
{C_text("f_590:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_590},
{C_text("f_614:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_614},
{C_text("f_618:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_618},
{C_text("f_628:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_628},
{C_text("f_631:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_631},
{C_text("f_638:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_638},
{C_text("f_641:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_641},
{C_text("f_644:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_644},
{C_text("f_651:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_651},
{C_text("f_661:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_661},
{C_text("f_667:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_667},
{C_text("f_673:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_673},
{C_text("f_697:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_697},
{C_text("f_707:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_707},
{C_text("f_734:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_734},
{C_text("f_759:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_759},
{C_text("f_778:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_778},
{C_text("f_781:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_781},
{C_text("f_787:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_787},
{C_text("f_790:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_790},
{C_text("f_796:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_796},
{C_text("f_799:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_799},
{C_text("f_805:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_805},
{C_text("f_808:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_808},
{C_text("f_811:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_811},
{C_text("f_817:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_817},
{C_text("f_820:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_820},
{C_text("f_823:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_823},
{C_text("f_826:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_826},
{C_text("f_832:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_832},
{C_text("f_835:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_835},
{C_text("f_838:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_838},
{C_text("f_844:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_844},
{C_text("f_847:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_847},
{C_text("f_850:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_850},
{C_text("f_856:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_856},
{C_text("f_859:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_859},
{C_text("f_862:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_862},
{C_text("f_868:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_868},
{C_text("f_882:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_882},
{C_text("f_890:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_890},
{C_text("f_892:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)f_892},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fgolay_5ffrontier_2escm"),(void*)C_toplevel},
{NULL,NULL}};
#endif

static C_PTABLE_ENTRY *create_ptable(void){
#ifdef C_ENABLE_PTABLES
return ptable;
#else
return NULL;
#endif
}

/*
o|hiding unexported module binding: golay_frontier#calculate-syndrome 
o|hiding unexported module binding: golay_frontier#adaptive-frontier-tau-norm 
o|hiding unexported module binding: golay_frontier#adaptive-frontier-data 
o|hiding unexported module binding: golay_frontier#adaptive-frontier-set-data! 
S|applied compiler syntax:
S|  chicken.format#printf		9
o|eliminated procedure checks: 15 
o|specializations:
o|  1 (scheme#number->string * *)
o|  9 (##sys#check-output-port * * *)
o|  1 (scheme#cdr pair)
o|  2 (scheme#/ * *)
o|  3 (scheme#zero? integer)
o|  2 (scheme#- *)
o|  1 (scheme#zero? *)
(o e)|safe calls: 73 
o|inlining procedure: k437 
o|inlining procedure: k437 
o|inlining procedure: k465 
o|inlining procedure: k465 
o|inlining procedure: k591 
o|inlining procedure: k591 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:77) golay_frontier#calculate-syndrome" 
o|inlining procedure: k535 
o|inlining procedure: k535 
o|inlining procedure: k619 
o|inlining procedure: k619 
o|substituted constant variable: a629 
o|substituted constant variable: a653 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:130) golay_frontier#adaptive-frontier-set-data!" 
o|inlining procedure: k717 
o|inlining procedure: k717 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:122) golay_frontier#adaptive-frontier-data" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:121) golay_frontier#adaptive-frontier-mode" 
o|inlining procedure: k739 
o|inlining procedure: k739 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:142) golay_frontier#adaptive-frontier-set-data!" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:135) golay_frontier#adaptive-frontier-data" 
o|propagated global variable: out108135 ##sys#standard-output 
o|substituted constant variable: a774 
o|substituted constant variable: a775 
o|propagated global variable: out111138 ##sys#standard-output 
o|substituted constant variable: a783 
o|substituted constant variable: a784 
o|propagated global variable: out114141 ##sys#standard-output 
o|substituted constant variable: a792 
o|substituted constant variable: a793 
o|propagated global variable: out117144 ##sys#standard-output 
o|substituted constant variable: a801 
o|substituted constant variable: a802 
o|propagated global variable: out120148 ##sys#standard-output 
o|substituted constant variable: a813 
o|substituted constant variable: a814 
o|propagated global variable: out123153 ##sys#standard-output 
o|substituted constant variable: a828 
o|substituted constant variable: a829 
o|propagated global variable: out126157 ##sys#standard-output 
o|substituted constant variable: a840 
o|substituted constant variable: a841 
o|propagated global variable: out129161 ##sys#standard-output 
o|substituted constant variable: a852 
o|substituted constant variable: a853 
o|propagated global variable: out132165 ##sys#standard-output 
o|substituted constant variable: a864 
o|substituted constant variable: a865 
o|propagated global variable: out132165 ##sys#standard-output 
o|inlining procedure: k873 
o|inlining procedure: k873 
o|propagated global variable: out129161 ##sys#standard-output 
o|propagated global variable: out126157 ##sys#standard-output 
o|propagated global variable: out123153 ##sys#standard-output 
o|propagated global variable: out120148 ##sys#standard-output 
o|substituted constant variable: a884 
o|propagated global variable: out117144 ##sys#standard-output 
o|propagated global variable: out114141 ##sys#standard-output 
o|propagated global variable: out111138 ##sys#standard-output 
o|propagated global variable: out108135 ##sys#standard-output 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:155) golay_frontier#adaptive-frontier-codeword" 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:154) golay_frontier#adaptive-frontier-tau-norm" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:153) golay_frontier#adaptive-frontier-tau" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/golay_frontier.scm:152) golay_frontier#adaptive-frontier-mode" 
o|replaced variables: 112 
o|removed binding forms: 53 
o|substituted constant variable: r620917 
o|substituted constant variable: r620918 
o|removed side-effect free assignment to unused variable: golay_frontier#adaptive-frontier-data 
o|removed side-effect free assignment to unused variable: golay_frontier#adaptive-frontier-set-data! 
o|propagated global variable: out108135 ##sys#standard-output 
o|propagated global variable: out111138 ##sys#standard-output 
o|propagated global variable: out114141 ##sys#standard-output 
o|propagated global variable: out117144 ##sys#standard-output 
o|propagated global variable: out120148 ##sys#standard-output 
o|propagated global variable: out123153 ##sys#standard-output 
o|propagated global variable: out126157 ##sys#standard-output 
o|propagated global variable: out129161 ##sys#standard-output 
o|propagated global variable: out132165 ##sys#standard-output 
o|substituted constant variable: r874950 
o|substituted constant variable: r874950 
o|substituted constant variable: r874952 
o|substituted constant variable: r874952 
o|replaced variables: 33 
o|removed binding forms: 113 
o|removed binding forms: 40 
o|simplifications: ((if . 2) (##core#call . 59)) 
o|  call simplifications:
o|    scheme#list	4
o|    scheme#cons
o|    scheme#vector-set!	2
o|    scheme#null?	2
o|    scheme#car	2
o|    scheme#vector	3
o|    scheme#<
o|    scheme#<=
o|    scheme#values	4
o|    scheme#=	2
o|    scheme#eq?	6
o|    scheme#vector-ref	12
o|    chicken.bitwise#bitwise-xor	3
o|    chicken.bitwise#bitwise-ior
o|    chicken.bitwise#arithmetic-shift	6
o|    chicken.bitwise#bitwise-and	4
o|    scheme#+	5
o|contracted procedure: k421 
o|contracted procedure: k425 
o|contracted procedure: k445 
o|contracted procedure: k453 
o|contracted procedure: k449 
o|contracted procedure: k468 
o|contracted procedure: k475 
o|contracted procedure: k511 
o|contracted procedure: k478 
o|contracted procedure: k484 
o|contracted procedure: k491 
o|contracted procedure: k498 
o|contracted procedure: k506 
o|contracted procedure: k502 
o|contracted procedure: k582 
o|contracted procedure: k519 
o|contracted procedure: k529 
o|contracted procedure: k585 
o|contracted procedure: k594 
o|contracted procedure: k603 
o|contracted procedure: k538 
o|contracted procedure: k574 
o|contracted procedure: k541 
o|contracted procedure: k547 
o|contracted procedure: k554 
o|contracted procedure: k561 
o|contracted procedure: k569 
o|contracted procedure: k565 
o|contracted procedure: k622 
o|contracted procedure: k654 
o|contracted procedure: k633 
o|contracted procedure: k699 
o|contracted procedure: k702 
o|contracted procedure: k708 
o|contracted procedure: k711 
o|contracted procedure: k720 
o|contracted procedure: k727 
o|contracted procedure: k736 
o|contracted procedure: k742 
o|contracted procedure: k748 
o|contracted procedure: k752 
o|contracted procedure: k761 
o|contracted procedure: k764 
o|contracted procedure: k767 
o|contracted procedure: k770 
o|contracted procedure: k876 
o|contracted procedure: k898 
o|contracted procedure: k902 
o|contracted procedure: k906 
o|simplifications: ((let . 4)) 
o|removed binding forms: 49 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest6263 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest6263 0 
o|inlining procedure: k705 
o|substituted constant variable: r899 
o|substituted constant variable: r903 
o|substituted constant variable: r907 
o|removed binding forms: 3 
o|customizable procedures: (loop40 loop31 loop24) 
o|calls to known targets: 12 
o|identified direct recursive calls: f_435 1 
o|identified direct recursive calls: f_463 2 
o|identified direct recursive calls: f_533 2 
o|unused rest argument: rest6263 f_631 
o|fast box initializations: 3 
*/
/* end of file */
