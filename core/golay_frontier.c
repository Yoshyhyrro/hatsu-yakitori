/* Generated from core/golay_frontier.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: core/golay_frontier.scm -output-file core/golay_frontier.c -debug 7
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

static C_TLS C_word lf[51];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,14),40,108,111,111,112,32,110,32,99,111,117,110,116,41,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,31),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,103,111,108,97,121,45,119,101,105,103,104,116,32,110,41,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,15),40,108,111,111,112,32,105,32,112,97,114,105,116,121,41,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,41),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,101,110,99,111,100,101,45,103,111,108,97,121,50,52,32,105,110,102,111,45,98,105,116,115,41,0,0,0,0,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,15),40,108,111,111,112,32,105,32,112,97,114,105,116,121,41,0};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,40),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,100,101,99,111,100,101,45,103,111,108,97,121,50,52,32,99,111,100,101,119,111,114,100,41};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,45),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,102,114,111,110,116,105,101,114,45,109,111,100,101,45,102,114,111,109,45,103,111,108,97,121,32,116,97,117,41,0,0,0};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,46),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,109,97,107,101,45,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,32,46,32,114,101,115,116,41,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,46),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,109,111,100,101,32,99,111,110,102,105,103,41,0,0};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,45),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,116,97,117,32,99,111,110,102,105,103,41,0,0,0};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,50),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,99,111,100,101,119,111,114,100,32,99,111,110,102,105,103,41,0,0,0,0,0,0};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,46),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,100,97,116,97,32,99,111,110,102,105,103,41,0,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,60),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,115,101,116,45,100,97,116,97,33,32,99,111,110,102,105,103,32,110,101,119,45,100,97,116,97,41,0,0,0,0};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,51),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,112,117,115,104,32,99,111,110,102,105,103,32,105,116,101,109,41,0,0,0,0,0};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,45),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,112,111,112,32,99,111,110,102,105,103,41,0,0,0};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,40),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,112,114,105,110,116,45,103,111,108,97,121,45,105,110,102,111,32,99,111,110,102,105,103,41};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,6),40,97,56,57,50,41,0,0};
static C_char C_TLS li17[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_408)
static void C_ccall f_408(C_word c,C_word *av) C_noret;
C_noret_decl(f_411)
static void C_ccall f_411(C_word c,C_word *av) C_noret;
C_noret_decl(f_414)
static void C_ccall f_414(C_word c,C_word *av) C_noret;
C_noret_decl(f_417)
static void C_ccall f_417(C_word c,C_word *av) C_noret;
C_noret_decl(f_420)
static void C_ccall f_420(C_word c,C_word *av) C_noret;
C_noret_decl(f_430)
static void C_ccall f_430(C_word c,C_word *av) C_noret;
C_noret_decl(f_436)
static void C_fcall f_436(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_460)
static void C_ccall f_460(C_word c,C_word *av) C_noret;
C_noret_decl(f_466)
static void C_fcall f_466(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_519)
static void C_ccall f_519(C_word c,C_word *av) C_noret;
C_noret_decl(f_528)
static void C_ccall f_528(C_word c,C_word *av) C_noret;
C_noret_decl(f_537)
static void C_fcall f_537(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_583)
static void C_ccall f_583(C_word c,C_word *av) C_noret;
C_noret_decl(f_585)
static void C_ccall f_585(C_word c,C_word *av) C_noret;
C_noret_decl(f_595)
static void C_ccall f_595(C_word c,C_word *av) C_noret;
C_noret_decl(f_618)
static void C_ccall f_618(C_word c,C_word *av) C_noret;
C_noret_decl(f_622)
static void C_ccall f_622(C_word c,C_word *av) C_noret;
C_noret_decl(f_632)
static void C_ccall f_632(C_word c,C_word *av) C_noret;
C_noret_decl(f_634)
static void C_ccall f_634(C_word c,C_word *av) C_noret;
C_noret_decl(f_641)
static void C_ccall f_641(C_word c,C_word *av) C_noret;
C_noret_decl(f_644)
static void C_ccall f_644(C_word c,C_word *av) C_noret;
C_noret_decl(f_647)
static void C_ccall f_647(C_word c,C_word *av) C_noret;
C_noret_decl(f_654)
static void C_ccall f_654(C_word c,C_word *av) C_noret;
C_noret_decl(f_662)
static void C_ccall f_662(C_word c,C_word *av) C_noret;
C_noret_decl(f_668)
static void C_ccall f_668(C_word c,C_word *av) C_noret;
C_noret_decl(f_674)
static void C_ccall f_674(C_word c,C_word *av) C_noret;
C_noret_decl(f_686)
static void C_fcall f_686(C_word t0,C_word t1) C_noret;
C_noret_decl(f_692)
static void C_fcall f_692(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_698)
static void C_ccall f_698(C_word c,C_word *av) C_noret;
C_noret_decl(f_702)
static void C_ccall f_702(C_word c,C_word *av) C_noret;
C_noret_decl(f_705)
static void C_ccall f_705(C_word c,C_word *av) C_noret;
C_noret_decl(f_708)
static void C_ccall f_708(C_word c,C_word *av) C_noret;
C_noret_decl(f_711)
static void C_ccall f_711(C_word c,C_word *av) C_noret;
C_noret_decl(f_735)
static void C_ccall f_735(C_word c,C_word *av) C_noret;
C_noret_decl(f_739)
static void C_ccall f_739(C_word c,C_word *av) C_noret;
C_noret_decl(f_757)
static void C_ccall f_757(C_word c,C_word *av) C_noret;
C_noret_decl(f_762)
static void C_ccall f_762(C_word c,C_word *av) C_noret;
C_noret_decl(f_766)
static void C_ccall f_766(C_word c,C_word *av) C_noret;
C_noret_decl(f_769)
static void C_ccall f_769(C_word c,C_word *av) C_noret;
C_noret_decl(f_775)
static void C_ccall f_775(C_word c,C_word *av) C_noret;
C_noret_decl(f_778)
static void C_ccall f_778(C_word c,C_word *av) C_noret;
C_noret_decl(f_781)
static void C_ccall f_781(C_word c,C_word *av) C_noret;
C_noret_decl(f_784)
static void C_ccall f_784(C_word c,C_word *av) C_noret;
C_noret_decl(f_787)
static void C_ccall f_787(C_word c,C_word *av) C_noret;
C_noret_decl(f_790)
static void C_ccall f_790(C_word c,C_word *av) C_noret;
C_noret_decl(f_793)
static void C_ccall f_793(C_word c,C_word *av) C_noret;
C_noret_decl(f_796)
static void C_ccall f_796(C_word c,C_word *av) C_noret;
C_noret_decl(f_799)
static void C_ccall f_799(C_word c,C_word *av) C_noret;
C_noret_decl(f_802)
static void C_ccall f_802(C_word c,C_word *av) C_noret;
C_noret_decl(f_805)
static void C_ccall f_805(C_word c,C_word *av) C_noret;
C_noret_decl(f_808)
static void C_ccall f_808(C_word c,C_word *av) C_noret;
C_noret_decl(f_811)
static void C_ccall f_811(C_word c,C_word *av) C_noret;
C_noret_decl(f_814)
static void C_ccall f_814(C_word c,C_word *av) C_noret;
C_noret_decl(f_817)
static void C_ccall f_817(C_word c,C_word *av) C_noret;
C_noret_decl(f_820)
static void C_ccall f_820(C_word c,C_word *av) C_noret;
C_noret_decl(f_823)
static void C_ccall f_823(C_word c,C_word *av) C_noret;
C_noret_decl(f_826)
static void C_ccall f_826(C_word c,C_word *av) C_noret;
C_noret_decl(f_829)
static void C_ccall f_829(C_word c,C_word *av) C_noret;
C_noret_decl(f_832)
static void C_ccall f_832(C_word c,C_word *av) C_noret;
C_noret_decl(f_835)
static void C_ccall f_835(C_word c,C_word *av) C_noret;
C_noret_decl(f_838)
static void C_ccall f_838(C_word c,C_word *av) C_noret;
C_noret_decl(f_841)
static void C_ccall f_841(C_word c,C_word *av) C_noret;
C_noret_decl(f_844)
static void C_ccall f_844(C_word c,C_word *av) C_noret;
C_noret_decl(f_847)
static void C_ccall f_847(C_word c,C_word *av) C_noret;
C_noret_decl(f_850)
static void C_ccall f_850(C_word c,C_word *av) C_noret;
C_noret_decl(f_853)
static void C_ccall f_853(C_word c,C_word *av) C_noret;
C_noret_decl(f_856)
static void C_ccall f_856(C_word c,C_word *av) C_noret;
C_noret_decl(f_859)
static void C_ccall f_859(C_word c,C_word *av) C_noret;
C_noret_decl(f_862)
static void C_ccall f_862(C_word c,C_word *av) C_noret;
C_noret_decl(f_865)
static void C_ccall f_865(C_word c,C_word *av) C_noret;
C_noret_decl(f_868)
static void C_ccall f_868(C_word c,C_word *av) C_noret;
C_noret_decl(f_871)
static void C_ccall f_871(C_word c,C_word *av) C_noret;
C_noret_decl(f_885)
static void C_ccall f_885(C_word c,C_word *av) C_noret;
C_noret_decl(f_891)
static void C_ccall f_891(C_word c,C_word *av) C_noret;
C_noret_decl(f_893)
static void C_ccall f_893(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_436)
static void C_ccall trf_436(C_word c,C_word *av) C_noret;
static void C_ccall trf_436(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_436(t0,t1,t2,t3);}

C_noret_decl(trf_466)
static void C_ccall trf_466(C_word c,C_word *av) C_noret;
static void C_ccall trf_466(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_466(t0,t1,t2,t3);}

C_noret_decl(trf_537)
static void C_ccall trf_537(C_word c,C_word *av) C_noret;
static void C_ccall trf_537(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_537(t0,t1,t2,t3);}

C_noret_decl(trf_686)
static void C_ccall trf_686(C_word c,C_word *av) C_noret;
static void C_ccall trf_686(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_686(t0,t1);}

C_noret_decl(trf_692)
static void C_ccall trf_692(C_word c,C_word *av) C_noret;
static void C_ccall trf_692(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_692(t0,t1,t2);}

/* k406 */
static void C_ccall f_408(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_408,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_411,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k409 in k406 */
static void C_ccall f_411(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,c,2)))){
C_save_and_reclaim((void *)f_411,c,av);}
a=C_alloc(14);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_414,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_893,a[2]=((C_word)li16),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/golay_frontier.scm:6: ##sys#with-environment"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[50]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[50]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k412 in k409 in k406 */
static void C_ccall f_414(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_414,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_417,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k415 in k412 in k409 in k406 */
static void C_ccall f_417(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_417,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_420,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/golay_frontier.scm:28: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[45]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[45]+1);
av2[1]=t2;
av2[2]=lf[46];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_420(C_word c,C_word *av){
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
C_word t19;
C_word t20;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(68,c,4)))){
C_save_and_reclaim((void *)f_420,c,av);}
a=C_alloc(68);
t2=C_a_i_vector(&a,12,C_fix(3189),C_fix(1595),C_fix(3944),C_fix(1972),C_fix(986),C_fix(3481),C_fix(1741),C_fix(871),C_fix(3526),C_fix(2711),C_fix(2366),C_fix(2283));
t3=C_mutate((C_word*)lf[1]+1 /* (set! golay_frontier#golay24-generator ...) */,t2);
t4=C_a_i_vector(&a,12,C_fix(2254),C_fix(3175),C_fix(2269),C_fix(1207),C_fix(475),C_fix(3809),C_fix(3103),C_fix(3215),C_fix(1395),C_fix(2553),C_fix(2869),C_fix(2762));
t5=C_mutate((C_word*)lf[2]+1 /* (set! golay_frontier#golay24-parity-check ...) */,t4);
t6=C_mutate((C_word*)lf[3]+1 /* (set! golay_frontier#golay-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_430,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[4]+1 /* (set! golay_frontier#encode-golay24 ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_460,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[5]+1 /* (set! golay_frontier#decode-golay24 ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_585,a[2]=((C_word)li5),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[6]+1 /* (set! golay_frontier#frontier-mode-from-golay ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_618,a[2]=((C_word)li6),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[13]+1 /* (set! golay_frontier#make-adaptive-frontier ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_634,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate((C_word*)lf[14]+1 /* (set! golay_frontier#adaptive-frontier-mode ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_662,a[2]=((C_word)li8),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate((C_word*)lf[15]+1 /* (set! golay_frontier#adaptive-frontier-tau ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_668,a[2]=((C_word)li9),tmp=(C_word)a,a+=3,tmp));
t13=C_mutate((C_word*)lf[16]+1 /* (set! golay_frontier#adaptive-frontier-codeword ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_674,a[2]=((C_word)li10),tmp=(C_word)a,a+=3,tmp));
t14=C_mutate(&lf[17] /* (set! golay_frontier#adaptive-frontier-data ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_686,a[2]=((C_word)li11),tmp=(C_word)a,a+=3,tmp));
t15=C_mutate(&lf[18] /* (set! golay_frontier#adaptive-frontier-set-data! ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_692,a[2]=((C_word)li12),tmp=(C_word)a,a+=3,tmp));
t16=C_mutate((C_word*)lf[19]+1 /* (set! golay_frontier#adaptive-frontier-push ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_698,a[2]=((C_word)li13),tmp=(C_word)a,a+=3,tmp));
t17=C_mutate((C_word*)lf[23]+1 /* (set! golay_frontier#adaptive-frontier-pop ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_735,a[2]=((C_word)li14),tmp=(C_word)a,a+=3,tmp));
t18=C_mutate((C_word*)lf[25]+1 /* (set! golay_frontier#print-golay-info ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_762,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp));
t19=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_891,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("chicken.base#implicit-exit-handler"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[44]);
C_word *av2=av;
av2[0]=*((C_word*)lf[44]+1);
av2[1]=t19;
tp(2,av2);}}

/* golay_frontier#golay-weight in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_430(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_430,c,av);}
a=C_alloc(6);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_436,a[2]=t4,a[3]=((C_word)li0),tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_436(t6,t1,t2,C_fix(0));}

/* loop in golay_frontier#golay-weight in k418 in k415 in k412 in k409 in k406 */
static void C_fcall f_436(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_436,4,t0,t1,t2,t3);}
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
C_trace(C_text("core/golay_frontier.scm:49: loop"));
t8=t1;
t9=t4;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* golay_frontier#encode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_460(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_460,c,av);}
a=C_alloc(8);
t3=C_fast_retrieve(lf[1]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_466,a[2]=t2,a[3]=t5,a[4]=t3,a[5]=((C_word)li2),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_466(t7,t1,C_fix(0),C_fix(0));}

/* loop in golay_frontier#encode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_fcall f_466(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,2)))){
C_save_and_reclaim_args((void *)trf_466,4,t0,t1,t2,t3);}
a=C_alloc(10);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],C_fix(12));
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_s_a_i_bitwise_ior(&a,2,t4,t3);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_519,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=t3,a[7]=((C_word*)t0)[4],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:57: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k517 in loop in golay_frontier#encode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_519(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(44,c,3)))){
C_save_and_reclaim((void *)f_519,c,av);}
a=C_alloc(44);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,C_fix(1),t2);
if(C_truep(C_i_zerop(t3))){
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
C_trace(C_text("core/golay_frontier.scm:59: loop"));
t5=((C_word*)((C_word*)t0)[4])[1];
f_466(t5,((C_word*)t0)[5],t4,((C_word*)t0)[6]);}
else{
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_vector_ref(((C_word*)t0)[7],((C_word*)t0)[3]);
t6=C_s_a_i_bitwise_xor(&a,2,((C_word*)t0)[6],t5);
C_trace(C_text("core/golay_frontier.scm:60: loop"));
t7=((C_word*)((C_word*)t0)[4])[1];
f_466(t7,((C_word*)t0)[5],t4,t6);}}

/* k526 in golay_frontier#decode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_528(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_528,c,av);}
a=C_alloc(15);
t2=C_s_a_i_bitwise_and(&a,2,((C_word*)t0)[2],C_fix(4095));
t3=C_s_a_i_bitwise_xor(&a,2,t2,t1);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_595,a[2]=t3,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:78: golay-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t4;
av2[2]=t3;
tp(3,av2);}}

/* loop in golay_frontier#decode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_fcall f_537(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_537,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_583,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=t3,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:68: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k581 in loop in golay_frontier#decode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_583(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(44,c,3)))){
C_save_and_reclaim((void *)f_583,c,av);}
a=C_alloc(44);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,C_fix(1),t2);
if(C_truep(C_i_zerop(t3))){
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
C_trace(C_text("core/golay_frontier.scm:70: loop"));
t5=((C_word*)((C_word*)t0)[4])[1];
f_537(t5,((C_word*)t0)[5],t4,((C_word*)t0)[6]);}
else{
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_vector_ref(C_fast_retrieve(lf[1]),((C_word*)t0)[3]);
t6=C_s_a_i_bitwise_xor(&a,2,((C_word*)t0)[6],t5);
C_trace(C_text("core/golay_frontier.scm:71: loop"));
t7=((C_word*)((C_word*)t0)[4])[1];
f_537(t7,((C_word*)t0)[5],t4,t6);}}

/* golay_frontier#decode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_585(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(22,c,4)))){
C_save_and_reclaim((void *)f_585,c,av);}
a=C_alloc(22);
t3=C_fast_retrieve(lf[1]);
t4=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t5=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_528,a[2]=t2,a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_537,a[2]=t5,a[3]=t8,a[4]=((C_word)li4),tmp=(C_word)a,a+=5,tmp));
t10=((C_word*)t8)[1];
f_537(t10,t6,C_fix(0),C_fix(0));}

/* k593 in k526 in golay_frontier#decode-golay24 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_595(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_595,c,av);}
if(C_truep(C_i_zerop(((C_word*)t0)[2]))){
C_trace(C_text("core/golay_frontier.scm:81: scheme#values"));{
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
C_trace(C_text("core/golay_frontier.scm:83: scheme#values"));{
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
C_trace(C_text("core/golay_frontier.scm:85: scheme#values"));{
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

/* golay_frontier#frontier-mode-from-golay in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_618(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_618,c,av);}
a=C_alloc(6);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_622,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_632,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/golay_frontier.scm:92: scheme#min"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[12]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[12]+1);
av2[1]=t4;
av2[2]=t2;
av2[3]=C_fix(24);
tp(4,av2);}}

/* k620 in golay_frontier#frontier-mode-from-golay in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_622(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_622,c,av);}
t2=C_i_lessp(t1,lf[7]);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=(C_truep(t2)?lf[8]:lf[9]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k630 in golay_frontier#frontier-mode-from-golay in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_632(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_632,c,av);}
C_trace(C_text("core/golay_frontier.scm:92: scheme#/"));
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

/* golay_frontier#make-adaptive-frontier in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_634(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_634,c,av);}
a=C_alloc(3);
t2=C_rest_nullp(c,2);
t3=(C_truep(t2)?C_fix(0):C_get_rest_arg(c,2,av,2,t0));
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_641,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/golay_frontier.scm:98: encode-golay24"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word av2[3];
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t4;
av2[2]=t3;
tp(3,av2);}}

/* k639 in golay_frontier#make-adaptive-frontier in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_641(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_641,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_644,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:99: golay-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t2;
av2[2]=t1;
tp(3,av2);}}

/* k642 in k639 in golay_frontier#make-adaptive-frontier in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_644(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_644,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_647,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:100: frontier-mode-from-golay"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[6]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[6]+1);
av2[1]=t2;
av2[2]=t1;
tp(3,av2);}}

/* k645 in k642 in k639 in golay_frontier#make-adaptive-frontier in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_647(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_647,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_654,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:105: scheme#/"));
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

/* k652 in k645 in k642 in k639 in golay_frontier#make-adaptive-frontier in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_654(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_654,c,av);}
a=C_alloc(6);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector5(&a,5,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1,C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-mode in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_662(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_662,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(0));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-tau in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_668(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_668,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-codeword in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_674(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_674,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-data in k418 in k415 in k412 in k409 in k406 */
static void C_fcall f_686(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,1)))){
C_save_and_reclaim_args((void *)trf_686,2,t1,t2);}
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(4));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-set-data! in k418 in k415 in k412 in k409 in k406 */
static void C_fcall f_692(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,1)))){
C_save_and_reclaim_args((void *)trf_692,3,t1,t2,t3);}
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=C_i_vector_set(t2,C_fix(4),t3);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-push in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_698(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_698,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_702,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:121: adaptive-frontier-mode"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word *av2=av;
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t4;
av2[2]=t2;
tp(3,av2);}}

/* k700 in golay_frontier#adaptive-frontier-push in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_702(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_702,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_705,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:122: adaptive-frontier-data"));
f_686(t2,((C_word*)t0)[3]);}

/* k703 in k700 in golay_frontier#adaptive-frontier-push in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_705(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_705,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_708,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_eqp(((C_word*)t0)[4],lf[8]);
if(C_truep(t3)){
t4=t2;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[5],t1);
f_708(2,av2);}}
else{
t4=C_eqp(((C_word*)t0)[4],lf[9]);
if(C_truep(t4)){
t5=C_a_i_list1(&a,1,((C_word*)t0)[5]);
C_trace(C_text("core/golay_frontier.scm:126: scheme#append"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[20]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[20]+1);
av2[1]=t2;
av2[2]=t1;
av2[3]=t5;
tp(4,av2);}}
else{
C_trace(C_text("core/golay_frontier.scm:127: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[21]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[21]+1);
av2[1]=t2;
av2[2]=lf[22];
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}}}

/* k706 in k703 in k700 in golay_frontier#adaptive-frontier-push in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_708(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_708,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_711,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:130: adaptive-frontier-set-data!"));
f_692(t2,((C_word*)t0)[3],t1);}

/* k709 in k706 in k703 in k700 in golay_frontier#adaptive-frontier-push in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_711(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_711,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-pop in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_735(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_735,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_739,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:135: adaptive-frontier-data"));
f_686(t3,t2);}

/* k737 in golay_frontier#adaptive-frontier-pop in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_739(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_739,c,av);}
a=C_alloc(5);
if(C_truep(C_i_nullp(t1))){
C_trace(C_text("core/golay_frontier.scm:137: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[21]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[21]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=lf[24];
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}
else{
t2=C_i_car(t1);
t3=C_i_cdr(t1);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_757,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:142: adaptive-frontier-set-data!"));
f_692(t4,((C_word*)t0)[3],t3);}}

/* k755 in k737 in golay_frontier#adaptive-frontier-pop in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_757(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_757,c,av);}
C_trace(C_text("core/golay_frontier.scm:145: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
C_values(4,av2);}}

/* golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_762(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_762,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_766,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:152: adaptive-frontier-mode"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word *av2=av;
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_766(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_766,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_769,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:153: adaptive-frontier-tau"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[15]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[15]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_769(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_769,c,av);}
a=C_alloc(6);
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(3));
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_775,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t2,a[5]=t1,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:155: adaptive-frontier-codeword"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[16]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[16]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_775(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_775,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_778,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:156: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_778(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_778,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_781,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:156: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[43];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_781(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_781,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_784,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:156: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_784(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_784,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_787,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:157: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_787(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_787,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_790,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:157: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[42];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_790(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_790,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_793,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:157: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_793(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_793,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_796,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:158: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_796(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_796,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_799,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:158: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[41];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_799(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_799,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_802,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:158: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_802(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_802,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_805,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t2,a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:159: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_805(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_805,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_808,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/golay_frontier.scm:159: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[40];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_808(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_808,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_811,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_885,a[2]=t2,a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:159: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[39]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[39]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[7];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_811(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_811,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_814,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:159: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[6];
tp(4,av2);}}

/* k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 in ... */
static void C_ccall f_814(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_814,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_817,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t2,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:160: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in ... */
static void C_ccall f_817(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_817,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_820,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/golay_frontier.scm:160: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[38];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in ... */
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
C_trace(C_text("core/golay_frontier.scm:160: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
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

/* k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in ... */
static void C_ccall f_823(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_823,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_826,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:160: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[37];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in ... */
static void C_ccall f_826(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_826,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_829,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:160: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in ... */
static void C_ccall f_829(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_829,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_832,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:161: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in ... */
static void C_ccall f_832(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_832,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_835,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/golay_frontier.scm:161: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[36];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in ... */
static void C_ccall f_835(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_835,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_838,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:161: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
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

/* k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in ... */
static void C_ccall f_838(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_838,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_841,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:161: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in ... */
static void C_ccall f_841(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_841,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_844,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:162: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in ... */
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
C_trace(C_text("core/golay_frontier.scm:162: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[35];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in ... */
static void C_ccall f_847(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_847,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_850,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:162: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
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

/* k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in ... */
static void C_ccall f_850(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_850,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_853,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:162: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in ... */
static void C_ccall f_853(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_853,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_856,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:163: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in ... */
static void C_ccall f_856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_856,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_859,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/golay_frontier.scm:163: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in ... */
static void C_ccall f_859(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_859,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_862,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_eqp(((C_word*)t0)[4],lf[8]);
t4=(C_truep(t3)?lf[32]:lf[33]);
C_trace(C_text("core/golay_frontier.scm:163: ##sys#print"));
t5=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=t4;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}

/* k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in k797 in ... */
static void C_ccall f_862(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_862,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_865,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/golay_frontier.scm:163: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in k800 in ... */
static void C_ccall f_865(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_865,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[26]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_868,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:167: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[30]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[26]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[31];
tp(5,av2);}}

/* k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in k803 in ... */
static void C_ccall f_868(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_868,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_871,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/golay_frontier.scm:167: ##sys#print"));
t3=*((C_word*)lf[28]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[29];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k869 in k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in k821 in k818 in k815 in k812 in k809 in k806 in ... */
static void C_ccall f_871(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_871,c,av);}
C_trace(C_text("core/golay_frontier.scm:167: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[27]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k883 in k806 in k803 in k800 in k797 in k794 in k791 in k788 in k785 in k782 in k779 in k776 in k773 in k767 in k764 in golay_frontier#print-golay-info in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_885(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_885,c,av);}
C_trace(C_text("core/golay_frontier.scm:159: ##sys#print"));
t2=*((C_word*)lf[28]+1);{
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

/* k889 in k418 in k415 in k412 in k409 in k406 */
static void C_ccall f_891(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_891,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)C_fast_retrieve_proc(t2))(2,av2);}}

/* a892 in k409 in k406 */
static void C_ccall f_893(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_893,c,av);}
C_trace(C_text("core/golay_frontier.scm:6: ##sys#register-compiled-module"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[47]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[47]+1);
av2[1]=t1;
av2[2]=lf[48];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[49];
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
if(C_unlikely(!C_demand_2(492))){
C_save(t1);
C_rereclaim2(492*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,51);
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
lf[10]=C_h_intern(&lf[10],8, C_text("scheme#/"));
lf[11]=C_decode_literal(C_heaptop,C_text("\376U24.0\000"));
lf[12]=C_h_intern(&lf[12],10, C_text("scheme#min"));
lf[13]=C_h_intern(&lf[13],37, C_text("golay_frontier#make-adaptive-frontier"));
lf[14]=C_h_intern(&lf[14],37, C_text("golay_frontier#adaptive-frontier-mode"));
lf[15]=C_h_intern(&lf[15],36, C_text("golay_frontier#adaptive-frontier-tau"));
lf[16]=C_h_intern(&lf[16],41, C_text("golay_frontier#adaptive-frontier-codeword"));
lf[19]=C_h_intern(&lf[19],37, C_text("golay_frontier#adaptive-frontier-push"));
lf[20]=C_h_intern(&lf[20],13, C_text("scheme#append"));
lf[21]=C_h_intern(&lf[21],18, C_text("chicken.base#error"));
lf[22]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[23]=C_h_intern(&lf[23],36, C_text("golay_frontier#adaptive-frontier-pop"));
lf[24]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036Cannot pop from empty frontier"));
lf[25]=C_h_intern(&lf[25],31, C_text("golay_frontier#print-golay-info"));
lf[26]=C_h_intern(&lf[26],21, C_text("##sys#standard-output"));
lf[27]=C_h_intern(&lf[27],18, C_text("##sys#write-char-0"));
lf[28]=C_h_intern(&lf[28],11, C_text("##sys#print"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235"));
lf[30]=C_h_intern(&lf[30],23, C_text("##sys#check-output-port"));
lf[31]=C_h_intern(&lf[31],6, C_text("printf"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031DFS (Deep / Exploitation)"));
lf[33]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031BFS (Broad / Exploration)"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Strategy:            "));
lf[35]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Decided Mode:        "));
lf[36]=C_decode_literal(C_heaptop,C_text("\376B\000\000\034\342\225\221 Normalized \317\204\314\202:        "));
lf[37]=C_decode_literal(C_heaptop,C_text("\376B\000\000\005 / 24"));
lf[38]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032\342\225\221 Hamming Weight (\317\204):  "));
lf[39]=C_h_intern(&lf[39],21, C_text("scheme#number->string"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033\342\225\221 Codeword:            0x"));
lf[41]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\240\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\243"));
lf[42]=C_decode_literal(C_heaptop,C_text("\376B\000\000-\342\225\221 Golay Control Configuration           \342\225\221"));
lf[43]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227"));
lf[44]=C_h_intern(&lf[44],34, C_text("chicken.base#implicit-exit-handler"));
lf[45]=C_h_intern(&lf[45],27, C_text("chicken.load#load-extension"));
lf[46]=C_h_intern(&lf[46],6, C_text("srfi-1"));
lf[47]=C_h_intern(&lf[47],30, C_text("##sys#register-compiled-module"));
lf[48]=C_h_intern(&lf[48],14, C_text("golay_frontier"));
lf[49]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001golay24-generator\376\001\000\000 \001golay_frontier#golay24-generator\376\003\000\000\002\376\003\000\000"
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
lf[50]=C_h_intern(&lf[50],22, C_text("##sys#with-environment"));
C_register_lf2(lf,51,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_408,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[77] = {
{C_text("f_408:core_2fgolay_5ffrontier_2escm"),(void*)f_408},
{C_text("f_411:core_2fgolay_5ffrontier_2escm"),(void*)f_411},
{C_text("f_414:core_2fgolay_5ffrontier_2escm"),(void*)f_414},
{C_text("f_417:core_2fgolay_5ffrontier_2escm"),(void*)f_417},
{C_text("f_420:core_2fgolay_5ffrontier_2escm"),(void*)f_420},
{C_text("f_430:core_2fgolay_5ffrontier_2escm"),(void*)f_430},
{C_text("f_436:core_2fgolay_5ffrontier_2escm"),(void*)f_436},
{C_text("f_460:core_2fgolay_5ffrontier_2escm"),(void*)f_460},
{C_text("f_466:core_2fgolay_5ffrontier_2escm"),(void*)f_466},
{C_text("f_519:core_2fgolay_5ffrontier_2escm"),(void*)f_519},
{C_text("f_528:core_2fgolay_5ffrontier_2escm"),(void*)f_528},
{C_text("f_537:core_2fgolay_5ffrontier_2escm"),(void*)f_537},
{C_text("f_583:core_2fgolay_5ffrontier_2escm"),(void*)f_583},
{C_text("f_585:core_2fgolay_5ffrontier_2escm"),(void*)f_585},
{C_text("f_595:core_2fgolay_5ffrontier_2escm"),(void*)f_595},
{C_text("f_618:core_2fgolay_5ffrontier_2escm"),(void*)f_618},
{C_text("f_622:core_2fgolay_5ffrontier_2escm"),(void*)f_622},
{C_text("f_632:core_2fgolay_5ffrontier_2escm"),(void*)f_632},
{C_text("f_634:core_2fgolay_5ffrontier_2escm"),(void*)f_634},
{C_text("f_641:core_2fgolay_5ffrontier_2escm"),(void*)f_641},
{C_text("f_644:core_2fgolay_5ffrontier_2escm"),(void*)f_644},
{C_text("f_647:core_2fgolay_5ffrontier_2escm"),(void*)f_647},
{C_text("f_654:core_2fgolay_5ffrontier_2escm"),(void*)f_654},
{C_text("f_662:core_2fgolay_5ffrontier_2escm"),(void*)f_662},
{C_text("f_668:core_2fgolay_5ffrontier_2escm"),(void*)f_668},
{C_text("f_674:core_2fgolay_5ffrontier_2escm"),(void*)f_674},
{C_text("f_686:core_2fgolay_5ffrontier_2escm"),(void*)f_686},
{C_text("f_692:core_2fgolay_5ffrontier_2escm"),(void*)f_692},
{C_text("f_698:core_2fgolay_5ffrontier_2escm"),(void*)f_698},
{C_text("f_702:core_2fgolay_5ffrontier_2escm"),(void*)f_702},
{C_text("f_705:core_2fgolay_5ffrontier_2escm"),(void*)f_705},
{C_text("f_708:core_2fgolay_5ffrontier_2escm"),(void*)f_708},
{C_text("f_711:core_2fgolay_5ffrontier_2escm"),(void*)f_711},
{C_text("f_735:core_2fgolay_5ffrontier_2escm"),(void*)f_735},
{C_text("f_739:core_2fgolay_5ffrontier_2escm"),(void*)f_739},
{C_text("f_757:core_2fgolay_5ffrontier_2escm"),(void*)f_757},
{C_text("f_762:core_2fgolay_5ffrontier_2escm"),(void*)f_762},
{C_text("f_766:core_2fgolay_5ffrontier_2escm"),(void*)f_766},
{C_text("f_769:core_2fgolay_5ffrontier_2escm"),(void*)f_769},
{C_text("f_775:core_2fgolay_5ffrontier_2escm"),(void*)f_775},
{C_text("f_778:core_2fgolay_5ffrontier_2escm"),(void*)f_778},
{C_text("f_781:core_2fgolay_5ffrontier_2escm"),(void*)f_781},
{C_text("f_784:core_2fgolay_5ffrontier_2escm"),(void*)f_784},
{C_text("f_787:core_2fgolay_5ffrontier_2escm"),(void*)f_787},
{C_text("f_790:core_2fgolay_5ffrontier_2escm"),(void*)f_790},
{C_text("f_793:core_2fgolay_5ffrontier_2escm"),(void*)f_793},
{C_text("f_796:core_2fgolay_5ffrontier_2escm"),(void*)f_796},
{C_text("f_799:core_2fgolay_5ffrontier_2escm"),(void*)f_799},
{C_text("f_802:core_2fgolay_5ffrontier_2escm"),(void*)f_802},
{C_text("f_805:core_2fgolay_5ffrontier_2escm"),(void*)f_805},
{C_text("f_808:core_2fgolay_5ffrontier_2escm"),(void*)f_808},
{C_text("f_811:core_2fgolay_5ffrontier_2escm"),(void*)f_811},
{C_text("f_814:core_2fgolay_5ffrontier_2escm"),(void*)f_814},
{C_text("f_817:core_2fgolay_5ffrontier_2escm"),(void*)f_817},
{C_text("f_820:core_2fgolay_5ffrontier_2escm"),(void*)f_820},
{C_text("f_823:core_2fgolay_5ffrontier_2escm"),(void*)f_823},
{C_text("f_826:core_2fgolay_5ffrontier_2escm"),(void*)f_826},
{C_text("f_829:core_2fgolay_5ffrontier_2escm"),(void*)f_829},
{C_text("f_832:core_2fgolay_5ffrontier_2escm"),(void*)f_832},
{C_text("f_835:core_2fgolay_5ffrontier_2escm"),(void*)f_835},
{C_text("f_838:core_2fgolay_5ffrontier_2escm"),(void*)f_838},
{C_text("f_841:core_2fgolay_5ffrontier_2escm"),(void*)f_841},
{C_text("f_844:core_2fgolay_5ffrontier_2escm"),(void*)f_844},
{C_text("f_847:core_2fgolay_5ffrontier_2escm"),(void*)f_847},
{C_text("f_850:core_2fgolay_5ffrontier_2escm"),(void*)f_850},
{C_text("f_853:core_2fgolay_5ffrontier_2escm"),(void*)f_853},
{C_text("f_856:core_2fgolay_5ffrontier_2escm"),(void*)f_856},
{C_text("f_859:core_2fgolay_5ffrontier_2escm"),(void*)f_859},
{C_text("f_862:core_2fgolay_5ffrontier_2escm"),(void*)f_862},
{C_text("f_865:core_2fgolay_5ffrontier_2escm"),(void*)f_865},
{C_text("f_868:core_2fgolay_5ffrontier_2escm"),(void*)f_868},
{C_text("f_871:core_2fgolay_5ffrontier_2escm"),(void*)f_871},
{C_text("f_885:core_2fgolay_5ffrontier_2escm"),(void*)f_885},
{C_text("f_891:core_2fgolay_5ffrontier_2escm"),(void*)f_891},
{C_text("f_893:core_2fgolay_5ffrontier_2escm"),(void*)f_893},
{C_text("toplevel:core_2fgolay_5ffrontier_2escm"),(void*)C_toplevel},
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
o|contracted procedure: "(core/golay_frontier.scm:77) golay_frontier#calculate-syndrome" 
o|propagated global variable: out132165 ##sys#standard-output 
o|propagated global variable: out129161 ##sys#standard-output 
o|propagated global variable: out126157 ##sys#standard-output 
o|propagated global variable: out123153 ##sys#standard-output 
o|propagated global variable: out120148 ##sys#standard-output 
o|propagated global variable: out117144 ##sys#standard-output 
o|propagated global variable: out114141 ##sys#standard-output 
o|propagated global variable: out111138 ##sys#standard-output 
o|propagated global variable: out108135 ##sys#standard-output 
o|contracted procedure: "(core/golay_frontier.scm:154) golay_frontier#adaptive-frontier-tau-norm" 
o|replaced variables: 111 
o|removed binding forms: 62 
o|replaced variables: 5 
o|removed binding forms: 88 
o|removed binding forms: 4 
o|simplifications: ((if . 3) (##core#call . 57)) 
o|  call simplifications:
o|    scheme#cdr
o|    scheme#eq?	3
o|    scheme#list	4
o|    scheme#cons
o|    scheme#vector-set!
o|    scheme#null?	2
o|    scheme#car	2
o|    scheme#vector	3
o|    scheme#<
o|    scheme#<=
o|    scheme#values	4
o|    scheme#=	2
o|    scheme#-	2
o|    scheme#vector-ref	7
o|    chicken.bitwise#bitwise-xor	3
o|    chicken.bitwise#bitwise-ior
o|    scheme#zero?	4
o|    chicken.bitwise#arithmetic-shift	6
o|    chicken.bitwise#bitwise-and	4
o|    scheme#+	5
o|contracted procedure: k422 
o|contracted procedure: k426 
o|contracted procedure: k441 
o|contracted procedure: k448 
o|contracted procedure: k456 
o|contracted procedure: k452 
o|contracted procedure: k471 
o|contracted procedure: k478 
o|contracted procedure: k513 
o|contracted procedure: k481 
o|contracted procedure: k487 
o|contracted procedure: k494 
o|contracted procedure: k501 
o|contracted procedure: k509 
o|contracted procedure: k505 
o|contracted procedure: k587 
o|contracted procedure: k523 
o|contracted procedure: k533 
o|contracted procedure: k590 
o|contracted procedure: k599 
o|contracted procedure: k608 
o|contracted procedure: k542 
o|contracted procedure: k577 
o|contracted procedure: k545 
o|contracted procedure: k551 
o|contracted procedure: k558 
o|contracted procedure: k565 
o|contracted procedure: k573 
o|contracted procedure: k569 
o|contracted procedure: k626 
o|contracted procedure: k655 
o|contracted procedure: k636 
o|contracted procedure: k712 
o|contracted procedure: k721 
o|contracted procedure: k728 
o|contracted procedure: k743 
o|contracted procedure: k749 
o|contracted procedure: k752 
o|contracted procedure: k770 
o|contracted procedure: k879 
o|contracted procedure: k876 
o|contracted procedure: k899 
o|contracted procedure: k903 
o|contracted procedure: k907 
o|simplifications: ((let . 8)) 
o|removed binding forms: 44 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest6263 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest6263 0 
o|substituted constant variable: r900 
o|substituted constant variable: r904 
o|substituted constant variable: r908 
o|removed binding forms: 3 
o|customizable procedures: (golay_frontier#adaptive-frontier-data golay_frontier#adaptive-frontier-set-data! loop40 loop31 loop24) 
o|calls to known targets: 13 
o|identified direct recursive calls: f_436 1 
o|unused rest argument: rest6263 f_634 
o|fast box initializations: 3 
o|fast global references: 4 
o|fast global assignments: 2 
o|dropping unused closure argument: f_686 
o|dropping unused closure argument: f_692 
*/
/* end of file */
