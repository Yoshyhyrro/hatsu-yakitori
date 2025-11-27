/* Generated from core/machine_constants.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.4.0 (rev 1a1d1495)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: core/machine_constants.scm -output-file core/machine_constants.c -optimize-level 3 -optimize-leaf-routines -include-path .
   uses: eval library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[42];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,44),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,97,112,112,114,111,120,45,101,113,117,97,108,63,32,97,32,98,32,46,32,114,101,115,116,41,0,0,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,30),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,115,97,102,101,45,108,111,103,32,120,41,0,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,8),40,97,52,56,54,32,120,41};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,42),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,116,114,105,109,45,108,101,97,100,105,110,103,45,122,101,114,111,115,32,108,115,116,41,0,0,0,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,31),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,100,101,103,114,101,101,32,112,111,108,121,41,0};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,20),40,109,97,112,45,108,111,111,112,54,56,32,103,56,48,32,103,56,49,41,0,0,0,0};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,32),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,112,111,108,121,45,120,111,114,32,97,32,98,41};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,37),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,112,111,108,121,45,115,104,105,102,116,32,112,111,108,121,32,107,41,0,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,19),40,108,111,111,112,32,98,105,32,115,104,105,102,116,32,97,99,99,41,0,0,0,0,0};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,32),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,112,111,108,121,45,109,117,108,32,97,32,98,41};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,10),40,108,111,111,112,32,114,101,109,41,0,0,0,0,0,0};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,45),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,112,111,108,121,45,109,111,100,32,100,105,118,105,100,101,110,100,32,100,105,118,105,115,111,114,41,0,0,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,12),40,108,111,111,112,32,105,32,97,99,99,41,0,0,0,0};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,35),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,105,110,116,45,62,98,105,116,115,32,110,32,108,101,110,41,0,0,0,0,0};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,12),40,108,111,111,112,32,105,32,97,99,99,41,0,0,0,0};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,34),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,98,105,116,115,45,62,105,110,116,32,98,105,116,115,41,0,0,0,0,0,0};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,99,111,100,101,32,99,111,117,110,116,41,0,0,0,0,0,0,0};
static C_char C_TLS li17[] C_aligned={C_lihdr(0,0,36),40,109,97,99,104,105,110,101,45,99,111,110,115,116,97,110,116,115,35,104,97,109,109,105,110,103,45,119,101,105,103,104,116,32,110,41,0,0,0,0};
static C_char C_TLS li18[] C_aligned={C_lihdr(0,0,6),40,97,56,49,54,41,0,0};
static C_char C_TLS li19[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f894)
static void C_ccall f894(C_word c,C_word *av) C_noret;
C_noret_decl(f902)
static void C_ccall f902(C_word c,C_word *av) C_noret;
C_noret_decl(f907)
static void C_ccall f907(C_word c,C_word *av) C_noret;
C_noret_decl(f913)
static void C_ccall f913(C_word c,C_word *av) C_noret;
C_noret_decl(f_378)
static void C_ccall f_378(C_word c,C_word *av) C_noret;
C_noret_decl(f_381)
static void C_ccall f_381(C_word c,C_word *av) C_noret;
C_noret_decl(f_384)
static void C_ccall f_384(C_word c,C_word *av) C_noret;
C_noret_decl(f_387)
static void C_ccall f_387(C_word c,C_word *av) C_noret;
C_noret_decl(f_393)
static void C_ccall f_393(C_word c,C_word *av) C_noret;
C_noret_decl(f_404)
static void C_ccall f_404(C_word c,C_word *av) C_noret;
C_noret_decl(f_421)
static void C_ccall f_421(C_word c,C_word *av) C_noret;
C_noret_decl(f_433)
static void C_ccall f_433(C_word c,C_word *av) C_noret;
C_noret_decl(f_462)
static void C_ccall f_462(C_word c,C_word *av) C_noret;
C_noret_decl(f_470)
static void C_ccall f_470(C_word c,C_word *av) C_noret;
C_noret_decl(f_476)
static void C_ccall f_476(C_word c,C_word *av) C_noret;
C_noret_decl(f_487)
static void C_ccall f_487(C_word c,C_word *av) C_noret;
C_noret_decl(f_493)
static void C_ccall f_493(C_word c,C_word *av) C_noret;
C_noret_decl(f_497)
static void C_ccall f_497(C_word c,C_word *av) C_noret;
C_noret_decl(f_502)
static void C_ccall f_502(C_word c,C_word *av) C_noret;
C_noret_decl(f_515)
static void C_ccall f_515(C_word c,C_word *av) C_noret;
C_noret_decl(f_518)
static void C_ccall f_518(C_word c,C_word *av) C_noret;
C_noret_decl(f_542)
static void C_ccall f_542(C_word c,C_word *av) C_noret;
C_noret_decl(f_544)
static void C_fcall f_544(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_594)
static void C_ccall f_594(C_word c,C_word *av) C_noret;
C_noret_decl(f_601)
static void C_ccall f_601(C_word c,C_word *av) C_noret;
C_noret_decl(f_608)
static void C_ccall f_608(C_word c,C_word *av) C_noret;
C_noret_decl(f_616)
static void C_ccall f_616(C_word c,C_word *av) C_noret;
C_noret_decl(f_618)
static void C_ccall f_618(C_word c,C_word *av) C_noret;
C_noret_decl(f_624)
static void C_fcall f_624(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(f_641)
static void C_ccall f_641(C_word c,C_word *av) C_noret;
C_noret_decl(f_652)
static void C_ccall f_652(C_word c,C_word *av) C_noret;
C_noret_decl(f_660)
static void C_ccall f_660(C_word c,C_word *av) C_noret;
C_noret_decl(f_668)
static void C_ccall f_668(C_word c,C_word *av) C_noret;
C_noret_decl(f_670)
static void C_fcall f_670(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_687)
static void C_ccall f_687(C_word c,C_word *av) C_noret;
C_noret_decl(f_690)
static void C_ccall f_690(C_word c,C_word *av) C_noret;
C_noret_decl(f_695)
static void C_ccall f_695(C_word c,C_word *av) C_noret;
C_noret_decl(f_701)
static void C_fcall f_701(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_719)
static void C_ccall f_719(C_word c,C_word *av) C_noret;
C_noret_decl(f_735)
static void C_ccall f_735(C_word c,C_word *av) C_noret;
C_noret_decl(f_744)
static void C_fcall f_744(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_776)
static void C_ccall f_776(C_word c,C_word *av) C_noret;
C_noret_decl(f_786)
static void C_fcall f_786(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_815)
static void C_ccall f_815(C_word c,C_word *av) C_noret;
C_noret_decl(f_817)
static void C_ccall f_817(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_544)
static void C_ccall trf_544(C_word c,C_word *av) C_noret;
static void C_ccall trf_544(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_544(t0,t1,t2,t3);}

C_noret_decl(trf_624)
static void C_ccall trf_624(C_word c,C_word *av) C_noret;
static void C_ccall trf_624(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_624(t0,t1,t2,t3,t4);}

C_noret_decl(trf_670)
static void C_ccall trf_670(C_word c,C_word *av) C_noret;
static void C_ccall trf_670(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_670(t0,t1,t2);}

C_noret_decl(trf_701)
static void C_ccall trf_701(C_word c,C_word *av) C_noret;
static void C_ccall trf_701(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_701(t0,t1,t2,t3);}

C_noret_decl(trf_744)
static void C_ccall trf_744(C_word c,C_word *av) C_noret;
static void C_ccall trf_744(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_744(t0,t1,t2,t3);}

C_noret_decl(trf_786)
static void C_ccall trf_786(C_word c,C_word *av) C_noret;
static void C_ccall trf_786(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_786(t0,t1,t2,t3);}

/* f894 in loop in machine-constants#poly-mul in k385 in k382 in k379 in k376 */
static void C_ccall f894(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f894,c,av);}
C_trace(C_text("core/machine_constants.scm:126: scheme#append"));
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* f902 */
static void C_ccall f902(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f902,c,av);}
C_trace(C_text("core/machine_constants.scm:126: scheme#append"));
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* f907 */
static void C_ccall f907(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(19,c,3)))){
C_save_and_reclaim((void *)f907,c,av);}
a=C_alloc(19);
t2=C_u_i_length(t1);
t3=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
if(C_truep(C_i_integer_lessp(((C_word*)t0)[2],t3))){
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_u_i_integer_minus(&a,2,((C_word*)t0)[2],t3);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_687,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f902,a[2]=t5,a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/machine_constants.scm:126: srfi-1#make-list"));
t7=C_fast_retrieve(lf[25]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=t4;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}}

/* f913 in loop in k666 in machine-constants#poly-mod in k385 in k382 in k379 in k376 */
static void C_ccall f913(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,2)))){
C_save_and_reclaim((void *)f913,c,av);}
a=C_alloc(12);
t2=C_u_i_length(t1);
t3=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f907,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/machine_constants.scm:107: trim-leading-zeros"));
t5=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
f_462(3,av2);}}

/* k376 */
static void C_ccall f_378(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_378,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_381,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k379 in k376 */
static void C_ccall f_381(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_381,c,av);}
a=C_alloc(14);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_384,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_817,a[2]=((C_word)li18),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/machine_constants.scm:6: ##sys#with-environment"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[41]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[41]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k382 in k379 in k376 */
static void C_ccall f_384(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_384,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_387,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/machine_constants.scm:30: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t2;
av2[2]=lf[37];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k385 in k382 in k379 in k376 */
static void C_ccall f_387(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(36,c,4)))){
C_save_and_reclaim((void *)f_387,c,av);}
a=C_alloc(36);
t2=C_mutate((C_word*)lf[1]+1 /* (set! machine-constants#machine-epsilon ...) */,lf[2]);
t3=C_mutate((C_word*)lf[3]+1 /* (set! machine-constants#default-tolerance ...) */,lf[4]);
t4=C_mutate((C_word*)lf[5]+1 /* (set! machine-constants#e ...) */,lf[6]);
t5=C_mutate((C_word*)lf[7]+1 /* (set! machine-constants#pi ...) */,lf[8]);
t6=C_mutate((C_word*)lf[9]+1 /* (set! machine-constants#approx-equal? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_393,a[2]=((C_word)li0),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[12]+1 /* (set! machine-constants#safe-log ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_433,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[17]+1 /* (set! machine-constants#trim-leading-zeros ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_462,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[21]+1 /* (set! machine-constants#degree ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_493,a[2]=((C_word)li4),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[22]+1 /* (set! machine-constants#poly-xor ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_502,a[2]=((C_word)li6),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate((C_word*)lf[26]+1 /* (set! machine-constants#poly-shift ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_608,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate((C_word*)lf[27]+1 /* (set! machine-constants#poly-mul ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_618,a[2]=((C_word)li9),tmp=(C_word)a,a+=3,tmp));
t13=C_mutate((C_word*)lf[30]+1 /* (set! machine-constants#poly-mod ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_660,a[2]=((C_word)li11),tmp=(C_word)a,a+=3,tmp));
t14=C_mutate((C_word*)lf[31]+1 /* (set! machine-constants#int->bits ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_695,a[2]=((C_word)li13),tmp=(C_word)a,a+=3,tmp));
t15=C_mutate((C_word*)lf[32]+1 /* (set! machine-constants#bits->int ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_735,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp));
t16=C_mutate((C_word*)lf[33]+1 /* (set! machine-constants#hamming-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_776,a[2]=((C_word)li17),tmp=(C_word)a,a+=3,tmp));
t17=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_815,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("chicken.base#implicit-exit-handler"));
t18=C_fast_retrieve(lf[35]);{
C_word *av2=av;
av2[0]=t18;
av2[1]=t17;
((C_proc)(void*)(*((C_word*)t18+1)))(2,av2);}}

/* machine-constants#approx-equal? in k385 in k382 in k379 in k376 */
static void C_ccall f_393(C_word c,C_word *av){
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
C_word t11;
C_word t12;
C_word *a;
if(c<4) C_bad_min_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(58,c,3)))){
C_save_and_reclaim((void *)f_393,c,av);}
a=C_alloc(58);
t4=C_rest_nullp(c,4);
t5=(C_truep(t4)?C_fast_retrieve(lf[3]):C_get_rest_arg(c,4,av,4,t0));
t6=C_s_a_i_minus(&a,2,t2,t3);
t7=C_s_a_i_abs(&a,1,t6);
t8=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_404,a[2]=t7,a[3]=t5,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
t9=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_421,a[2]=t8,tmp=(C_word)a,a+=3,tmp);
t10=C_s_a_i_abs(&a,1,t2);
t11=C_s_a_i_abs(&a,1,t3);
C_trace(C_text("core/machine_constants.scm:72: scheme#max"));
t12=*((C_word*)lf[10]+1);{
C_word *av2=av;
av2[0]=t12;
av2[1]=t9;
av2[2]=t10;
av2[3]=t11;
((C_proc)(void*)(*((C_word*)t12+1)))(4,av2);}}

/* k402 in machine-constants#approx-equal? in k385 in k382 in k379 in k376 */
static void C_ccall f_404(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,1)))){
C_save_and_reclaim((void *)f_404,c,av);}
a=C_alloc(33);
t2=C_i_lessp(((C_word*)t0)[2],((C_word*)t0)[3]);
if(C_truep(t2)){
t3=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_s_a_i_times(&a,2,((C_word*)t0)[3],t1);
t4=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_lessp(((C_word*)t0)[2],t3);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k419 in machine-constants#approx-equal? in k385 in k382 in k379 in k376 */
static void C_ccall f_421(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_421,c,av);}
C_trace(C_text("core/machine_constants.scm:72: scheme#max"));
t2=*((C_word*)lf[10]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[11];
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* machine-constants#safe-log in k385 in k382 in k379 in k376 */
static void C_ccall f_433(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_433,c,av);}
t3=C_i_numberp(t2);
if(C_truep(C_i_not(t3))){
C_trace(C_text("core/machine_constants.scm:84: chicken.base#error"));
t4=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[14];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}
else{
if(C_truep(C_i_less_or_equalp(t2,C_fix(0)))){
C_trace(C_text("core/machine_constants.scm:86: chicken.base#error"));
t4=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[15];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}
else{
C_trace(C_text("##sys#log-1"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[16]);
C_word *av2=av;
av2[0]=*((C_word*)lf[16]+1);
av2[1]=t1;
av2[2]=t2;
tp(3,av2);}}}}

/* machine-constants#trim-leading-zeros in k385 in k382 in k379 in k376 */
static void C_ccall f_462(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_462,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_470,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/machine_constants.scm:98: scheme#reverse"));
t4=*((C_word*)lf[19]+1);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}

/* k468 in machine-constants#trim-leading-zeros in k385 in k382 in k379 in k376 */
static void C_ccall f_470(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_470,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_476,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_487,a[2]=((C_word)li2),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/machine_constants.scm:99: srfi-1#drop-while"));
t4=C_fast_retrieve(lf[20]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=t3;
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k474 in k468 in machine-constants#trim-leading-zeros in k385 in k382 in k379 in k376 */
static void C_ccall f_476(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_476,c,av);}
if(C_truep(C_i_nullp(t1))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[18];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
C_trace(C_text("core/machine_constants.scm:100: scheme#reverse"));
t2=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}}

/* a486 in k468 in machine-constants#trim-leading-zeros in k385 in k382 in k379 in k376 */
static void C_ccall f_487(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_487,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_nequalp(t2,C_fix(0));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* machine-constants#degree in k385 in k382 in k379 in k376 */
static void C_ccall f_493(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_493,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_497,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/machine_constants.scm:107: trim-leading-zeros"));
t4=C_fast_retrieve(lf[17]);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_462(3,av2);}}

/* k495 in machine-constants#degree in k385 in k382 in k379 in k376 */
static void C_ccall f_497(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_497,c,av);}
a=C_alloc(5);
t2=C_u_i_length(t1);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_502(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(15,c,3)))){
C_save_and_reclaim((void *)f_502,c,av);}
a=C_alloc(15);
t4=C_i_length(t2);
t5=C_i_length(t3);
t6=C_i_fixnum_max(t4,t5);
t7=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_515,a[2]=t1,a[3]=t3,a[4]=t6,a[5]=t5,tmp=(C_word)a,a+=6,tmp);
t8=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_601,a[2]=t7,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
t9=C_a_i_fixnum_difference(&a,2,t6,t4);
C_trace(C_text("core/machine_constants.scm:116: srfi-1#make-list"));
t10=C_fast_retrieve(lf[25]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t8;
av2[2]=t9;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}

/* k513 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_515(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_515,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_518,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_594,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=C_a_i_fixnum_difference(&a,2,((C_word*)t0)[4],((C_word*)t0)[5]);
C_trace(C_text("core/machine_constants.scm:117: srfi-1#make-list"));
t5=C_fast_retrieve(lf[25]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k516 in k513 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_518(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(16,c,4)))){
C_save_and_reclaim((void *)f_518,c,av);}
a=C_alloc(16);
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=C_i_check_list_2(((C_word*)t0)[2],lf[23]);
t7=C_i_check_list_2(t1,lf[23]);
t8=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_542,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
t9=C_SCHEME_UNDEFINED;
t10=(*a=C_VECTOR_TYPE|1,a[1]=t9,tmp=(C_word)a,a+=2,tmp);
t11=C_set_block_item(t10,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_544,a[2]=t4,a[3]=t10,a[4]=t5,a[5]=((C_word)li5),tmp=(C_word)a,a+=6,tmp));
t12=((C_word*)t10)[1];
f_544(t12,t8,((C_word*)t0)[2],t1);}

/* k540 in k516 in k513 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_542(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_542,c,av);}
C_trace(C_text("core/machine_constants.scm:118: trim-leading-zeros"));
t2=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
f_462(3,av2);}}

/* map-loop68 in k516 in k513 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_fcall f_544(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_word t15;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,0,3)))){
C_save_and_reclaim_args((void *)trf_544,4,t0,t1,t2,t3);}
a=C_alloc(3);
t4=C_i_pairp(t2);
t5=(C_truep(t4)?C_i_pairp(t3):C_SCHEME_FALSE);
if(C_truep(t5)){
t6=C_slot(t2,C_fix(0));
t7=C_slot(t3,C_fix(0));
t8=C_i_nequalp(t6,t7);
t9=(C_truep(t8)?C_a_i_cons(&a,2,C_fix(0),C_SCHEME_END_OF_LIST):C_a_i_cons(&a,2,C_fix(1),C_SCHEME_END_OF_LIST));
t10=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t9);
t11=C_mutate(((C_word *)((C_word*)t0)[2])+1,t9);
t13=t1;
t14=C_slot(t2,C_fix(1));
t15=C_slot(t3,C_fix(1));
t1=t13;
t2=t14;
t3=t15;
goto loop;}
else{
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_slot(((C_word*)t0)[4],C_fix(1));
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}

/* k592 in k513 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_594(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_594,c,av);}
C_trace(C_text("core/machine_constants.scm:117: scheme#append"));
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* k599 in machine-constants#poly-xor in k385 in k382 in k379 in k376 */
static void C_ccall f_601(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_601,c,av);}
C_trace(C_text("core/machine_constants.scm:116: scheme#append"));
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* machine-constants#poly-shift in k385 in k382 in k379 in k376 */
static void C_ccall f_608(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_608,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_616,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/machine_constants.scm:126: srfi-1#make-list"));
t5=C_fast_retrieve(lf[25]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k614 in machine-constants#poly-shift in k385 in k382 in k379 in k376 */
static void C_ccall f_616(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_616,c,av);}
C_trace(C_text("core/machine_constants.scm:126: scheme#append"));
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* machine-constants#poly-mul in k385 in k382 in k379 in k376 */
static void C_ccall f_618(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,5)))){
C_save_and_reclaim((void *)f_618,c,av);}
a=C_alloc(7);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_624,a[2]=t5,a[3]=t2,a[4]=((C_word)li8),tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_624(t7,t1,t3,C_fix(0),lf[29]);}

/* loop in machine-constants#poly-mul in k385 in k382 in k379 in k376 */
static void C_fcall f_624(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,3)))){
C_save_and_reclaim_args((void *)trf_624,5,t0,t1,t2,t3,t4);}
a=C_alloc(11);
if(C_truep(C_i_nullp(t2))){
C_trace(C_text("core/machine_constants.scm:135: trim-leading-zeros"));
t5=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t5;
av2[1]=t1;
av2[2]=t4;
f_462(3,av2);}}
else{
t5=C_i_car(t2);
t6=C_u_i_cdr(t2);
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_641,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=t1,a[5]=t6,a[6]=t4,tmp=(C_word)a,a+=7,tmp);
if(C_truep(C_i_nequalp(t5,C_fix(1)))){
t8=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f894,a[2]=t7,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/machine_constants.scm:126: srfi-1#make-list"));
t9=C_fast_retrieve(lf[25]);{
C_word av2[4];
av2[0]=t9;
av2[1]=t8;
av2[2]=t3;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t9+1)))(4,av2);}}
else{
t8=t7;{
C_word av2[2];
av2[0]=t8;
av2[1]=lf[28];
f_641(2,av2);}}}}

/* k639 in loop in machine-constants#poly-mul in k385 in k382 in k379 in k376 */
static void C_ccall f_641(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(35,c,3)))){
C_save_and_reclaim((void *)f_641,c,av);}
a=C_alloc(35);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_652,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/machine_constants.scm:139: poly-xor"));
t4=C_fast_retrieve(lf[22]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[6];
av2[3]=t1;
f_502(4,av2);}}

/* k650 in k639 in loop in machine-constants#poly-mul in k385 in k382 in k379 in k376 */
static void C_ccall f_652(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_652,c,av);}
C_trace(C_text("core/machine_constants.scm:139: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_624(t2,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1);}

/* machine-constants#poly-mod in k385 in k382 in k379 in k376 */
static void C_ccall f_660(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_660,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_668,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/machine_constants.scm:146: trim-leading-zeros"));
t5=C_fast_retrieve(lf[17]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
f_462(3,av2);}}

/* k666 in machine-constants#poly-mod in k385 in k382 in k379 in k376 */
static void C_ccall f_668(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_668,c,av);}
a=C_alloc(7);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_670,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=((C_word)li10),tmp=(C_word)a,a+=5,tmp));
t5=((C_word*)t3)[1];
f_670(t5,((C_word*)t0)[3],t1);}

/* loop in k666 in machine-constants#poly-mod in k385 in k382 in k379 in k376 */
static void C_fcall f_670(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_670,3,t0,t1,t2);}
a=C_alloc(6);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f913,a[2]=t1,a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/machine_constants.scm:107: trim-leading-zeros"));
t4=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_462(3,av2);}}

/* k685 */
static void C_ccall f_687(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_687,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_690,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/machine_constants.scm:151: poly-xor"));
t3=C_fast_retrieve(lf[22]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=t1;
f_502(4,av2);}}

/* k688 in k685 */
static void C_ccall f_690(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_690,c,av);}
C_trace(C_text("core/machine_constants.scm:152: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_670(t2,((C_word*)t0)[3],t1);}

/* machine-constants#int->bits in k385 in k382 in k379 in k376 */
static void C_ccall f_695(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_695,c,av);}
a=C_alloc(8);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_701,a[2]=t3,a[3]=t5,a[4]=t2,a[5]=((C_word)li12),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_701(t7,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in machine-constants#int->bits in k385 in k382 in k379 in k376 */
static void C_fcall f_701(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(76,0,3)))){
C_save_and_reclaim_args((void *)trf_701,4,t0,t1,t2,t3);}
a=C_alloc(76);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_plus(&a,2,t2,C_fix(1));
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_719,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
t6=C_s_a_i_negate(&a,1,t2);
t7=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[4],t6);
t8=C_s_a_i_bitwise_and(&a,2,t7,C_fix(1));
t9=C_a_i_list1(&a,1,t8);
C_trace(C_text("core/machine_constants.scm:166: scheme#append"));
t10=*((C_word*)lf[24]+1);{
C_word av2[4];
av2[0]=t10;
av2[1]=t5;
av2[2]=t3;
av2[3]=t9;
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}}

/* k717 in loop in machine-constants#int->bits in k385 in k382 in k379 in k376 */
static void C_ccall f_719(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_719,c,av);}
C_trace(C_text("core/machine_constants.scm:166: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_701(t2,((C_word*)t0)[3],((C_word*)t0)[4],t1);}

/* machine-constants#bits->int in k385 in k382 in k379 in k376 */
static void C_ccall f_735(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_735,c,av);}
a=C_alloc(8);
t3=C_i_length(t2);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_744,a[2]=t3,a[3]=t2,a[4]=t5,a[5]=((C_word)li14),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_744(t7,t1,C_fix(0),C_fix(0));}

/* loop in machine-constants#bits->int in k385 in k382 in k379 in k376 */
static void C_fcall f_744(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,0,3)))){
C_save_and_reclaim_args((void *)trf_744,4,t0,t1,t2,t3);}
a=C_alloc(15);
if(C_truep(C_i_greater_or_equalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_list_ref(((C_word*)t0)[3],t2);
t5=C_a_i_fixnum_plus(&a,2,t2,C_fix(1));
if(C_truep(C_i_nequalp(t4,C_fix(1)))){
t6=C_s_a_i_arithmetic_shift(&a,2,C_fix(1),t2);
t7=C_s_a_i_bitwise_ior(&a,2,t3,t6);
C_trace(C_text("core/machine_constants.scm:177: loop"));
t9=t1;
t10=t5;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}
else{
C_trace(C_text("core/machine_constants.scm:177: loop"));
t9=t1;
t10=t5;
t11=t3;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}}

/* machine-constants#hamming-weight in k385 in k382 in k379 in k376 */
static void C_ccall f_776(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(11,c,4)))){
C_save_and_reclaim((void *)f_776,c,av);}
a=C_alloc(11);
t3=C_s_a_i_bitwise_and(&a,2,t2,lf[34]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_786,a[2]=t5,a[3]=((C_word)li16),tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_786(t7,t1,t3,C_fix(0));}

/* loop in machine-constants#hamming-weight in k385 in k382 in k379 in k376 */
static void C_fcall f_786(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(63,0,3)))){
C_save_and_reclaim_args((void *)trf_786,4,t0,t1,t2,t3);}
a=C_alloc(63);
if(C_truep(C_i_zerop(t2))){
C_trace(C_text("core/machine_constants.scm:191: count"));
t4=t3;{
C_word av2[2];
av2[0]=t4;
av2[1]=t1;
((C_proc)C_fast_retrieve_proc(t4))(2,av2);}}
else{
t4=C_s_a_i_minus(&a,2,t2,C_fix(1));
t5=C_s_a_i_bitwise_and(&a,2,t2,t4);
t6=C_s_a_i_plus(&a,2,t3,C_fix(1));
C_trace(C_text("core/machine_constants.scm:192: loop"));
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* k813 in k385 in k382 in k379 in k376 */
static void C_ccall f_815(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_815,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a816 in k379 in k376 */
static void C_ccall f_817(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,8)))){
C_save_and_reclaim((void *)f_817,c,av);}
C_trace(C_text("core/machine_constants.scm:6: ##sys#register-compiled-module"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[38]);
C_word *av2;
if(c >= 9) {
  av2=av;
} else {
  av2=C_alloc(9);
}
av2[0]=*((C_word*)lf[38]+1);
av2[1]=t1;
av2[2]=lf[39];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[40];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
av2[8]=C_SCHEME_END_OF_LIST;
tp(9,av2);}}

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
if(C_unlikely(!C_demand_2(541))){
C_save(t1);
C_rereclaim2(541*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,42);
lf[0]=C_h_intern(&lf[0],18, C_text("machine-constants#"));
lf[1]=C_h_intern(&lf[1],33, C_text("machine-constants#machine-epsilon"));
lf[2]=C_decode_literal(C_heaptop,C_text("\376U2.220446049250313080847263336181640625e-16\000"));
lf[3]=C_h_intern(&lf[3],35, C_text("machine-constants#default-tolerance"));
lf[4]=C_decode_literal(C_heaptop,C_text("\376U1.0000000000000000364321973154977415791655470655996396089904010295867919921875"
"e-10\000"));
lf[5]=C_h_intern(&lf[5],19, C_text("machine-constants#e"));
lf[6]=C_decode_literal(C_heaptop,C_text("\376U2.718281828459045090795598298427648842334747314453125\000"));
lf[7]=C_h_intern(&lf[7],20, C_text("machine-constants#pi"));
lf[8]=C_decode_literal(C_heaptop,C_text("\376U3.141592653589793115997963468544185161590576171875\000"));
lf[9]=C_h_intern(&lf[9],31, C_text("machine-constants#approx-equal\077"));
lf[10]=C_h_intern(&lf[10],10, C_text("scheme#max"));
lf[11]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[12]=C_h_intern(&lf[12],26, C_text("machine-constants#safe-log"));
lf[13]=C_h_intern(&lf[13],18, C_text("chicken.base#error"));
lf[14]=C_decode_literal(C_heaptop,C_text("\376B\000\000#safe-log: argument must be a number"));
lf[15]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036safe-log: argument must be > 0"));
lf[16]=C_h_intern(&lf[16],11, C_text("##sys#log-1"));
lf[17]=C_h_intern(&lf[17],36, C_text("machine-constants#trim-leading-zeros"));
lf[18]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[19]=C_h_intern(&lf[19],14, C_text("scheme#reverse"));
lf[20]=C_h_intern(&lf[20],17, C_text("srfi-1#drop-while"));
lf[21]=C_h_intern(&lf[21],24, C_text("machine-constants#degree"));
lf[22]=C_h_intern(&lf[22],26, C_text("machine-constants#poly-xor"));
lf[23]=C_h_intern(&lf[23],3, C_text("map"));
lf[24]=C_h_intern(&lf[24],13, C_text("scheme#append"));
lf[25]=C_h_intern(&lf[25],16, C_text("srfi-1#make-list"));
lf[26]=C_h_intern(&lf[26],28, C_text("machine-constants#poly-shift"));
lf[27]=C_h_intern(&lf[27],26, C_text("machine-constants#poly-mul"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[30]=C_h_intern(&lf[30],26, C_text("machine-constants#poly-mod"));
lf[31]=C_h_intern(&lf[31],27, C_text("machine-constants#int->bits"));
lf[32]=C_h_intern(&lf[32],27, C_text("machine-constants#bits->int"));
lf[33]=C_h_intern(&lf[33],32, C_text("machine-constants#hamming-weight"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376\302\000\000\020ffffffffffffffff"));
lf[35]=C_h_intern(&lf[35],34, C_text("chicken.base#implicit-exit-handler"));
lf[36]=C_h_intern(&lf[36],27, C_text("chicken.load#load-extension"));
lf[37]=C_h_intern(&lf[37],6, C_text("srfi-1"));
lf[38]=C_h_intern(&lf[38],30, C_text("##sys#register-compiled-module"));
lf[39]=C_h_intern(&lf[39],17, C_text("machine-constants"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001machine-epsilon\376\001\000\000!\001machine-constants#machine-epsilon\376\003\000\000\002\376\003\000\000\002"
"\376\001\000\000\021\001default-tolerance\376\001\000\000#\001machine-constants#default-tolerance\376\003\000\000\002\376\003\000\000\002\376\001\000\000\001\001"
"e\376\001\000\000\023\001machine-constants#e\376\003\000\000\002\376\003\000\000\002\376\001\000\000\002\001pi\376\001\000\000\024\001machine-constants#pi\376\003\000\000\002\376\003\000\000\002"
"\376\001\000\000\015\001approx-equal\077\376\001\000\000\037\001machine-constants#approx-equal\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001safe-log"
"\376\001\000\000\032\001machine-constants#safe-log\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001trim-leading-zeros\376\001\000\000$\001machine-"
"constants#trim-leading-zeros\376\003\000\000\002\376\003\000\000\002\376\001\000\000\006\001degree\376\001\000\000\030\001machine-constants#degree"
"\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-xor\376\001\000\000\032\001machine-constants#poly-xor\376\003\000\000\002\376\003\000\000\002\376\001\000\000\012\001poly-shi"
"ft\376\001\000\000\034\001machine-constants#poly-shift\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-mul\376\001\000\000\032\001machine-consta"
"nts#poly-mul\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-mod\376\001\000\000\032\001machine-constants#poly-mod\376\003\000\000\002\376\003\000\000\002\376\001"
"\000\000\011\001int->bits\376\001\000\000\033\001machine-constants#int->bits\376\003\000\000\002\376\003\000\000\002\376\001\000\000\011\001bits->int\376\001\000\000\033\001mac"
"hine-constants#bits->int\376\003\000\000\002\376\003\000\000\002\376\001\000\000\016\001hamming-weight\376\001\000\000 \001machine-constants#ha"
"mming-weight\376\377\016"));
lf[41]=C_h_intern(&lf[41],22, C_text("##sys#with-environment"));
C_register_lf2(lf,42,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_378,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[47] = {
{C_text("f894:core_2fmachine_5fconstants_2escm"),(void*)f894},
{C_text("f902:core_2fmachine_5fconstants_2escm"),(void*)f902},
{C_text("f907:core_2fmachine_5fconstants_2escm"),(void*)f907},
{C_text("f913:core_2fmachine_5fconstants_2escm"),(void*)f913},
{C_text("f_378:core_2fmachine_5fconstants_2escm"),(void*)f_378},
{C_text("f_381:core_2fmachine_5fconstants_2escm"),(void*)f_381},
{C_text("f_384:core_2fmachine_5fconstants_2escm"),(void*)f_384},
{C_text("f_387:core_2fmachine_5fconstants_2escm"),(void*)f_387},
{C_text("f_393:core_2fmachine_5fconstants_2escm"),(void*)f_393},
{C_text("f_404:core_2fmachine_5fconstants_2escm"),(void*)f_404},
{C_text("f_421:core_2fmachine_5fconstants_2escm"),(void*)f_421},
{C_text("f_433:core_2fmachine_5fconstants_2escm"),(void*)f_433},
{C_text("f_462:core_2fmachine_5fconstants_2escm"),(void*)f_462},
{C_text("f_470:core_2fmachine_5fconstants_2escm"),(void*)f_470},
{C_text("f_476:core_2fmachine_5fconstants_2escm"),(void*)f_476},
{C_text("f_487:core_2fmachine_5fconstants_2escm"),(void*)f_487},
{C_text("f_493:core_2fmachine_5fconstants_2escm"),(void*)f_493},
{C_text("f_497:core_2fmachine_5fconstants_2escm"),(void*)f_497},
{C_text("f_502:core_2fmachine_5fconstants_2escm"),(void*)f_502},
{C_text("f_515:core_2fmachine_5fconstants_2escm"),(void*)f_515},
{C_text("f_518:core_2fmachine_5fconstants_2escm"),(void*)f_518},
{C_text("f_542:core_2fmachine_5fconstants_2escm"),(void*)f_542},
{C_text("f_544:core_2fmachine_5fconstants_2escm"),(void*)f_544},
{C_text("f_594:core_2fmachine_5fconstants_2escm"),(void*)f_594},
{C_text("f_601:core_2fmachine_5fconstants_2escm"),(void*)f_601},
{C_text("f_608:core_2fmachine_5fconstants_2escm"),(void*)f_608},
{C_text("f_616:core_2fmachine_5fconstants_2escm"),(void*)f_616},
{C_text("f_618:core_2fmachine_5fconstants_2escm"),(void*)f_618},
{C_text("f_624:core_2fmachine_5fconstants_2escm"),(void*)f_624},
{C_text("f_641:core_2fmachine_5fconstants_2escm"),(void*)f_641},
{C_text("f_652:core_2fmachine_5fconstants_2escm"),(void*)f_652},
{C_text("f_660:core_2fmachine_5fconstants_2escm"),(void*)f_660},
{C_text("f_668:core_2fmachine_5fconstants_2escm"),(void*)f_668},
{C_text("f_670:core_2fmachine_5fconstants_2escm"),(void*)f_670},
{C_text("f_687:core_2fmachine_5fconstants_2escm"),(void*)f_687},
{C_text("f_690:core_2fmachine_5fconstants_2escm"),(void*)f_690},
{C_text("f_695:core_2fmachine_5fconstants_2escm"),(void*)f_695},
{C_text("f_701:core_2fmachine_5fconstants_2escm"),(void*)f_701},
{C_text("f_719:core_2fmachine_5fconstants_2escm"),(void*)f_719},
{C_text("f_735:core_2fmachine_5fconstants_2escm"),(void*)f_735},
{C_text("f_744:core_2fmachine_5fconstants_2escm"),(void*)f_744},
{C_text("f_776:core_2fmachine_5fconstants_2escm"),(void*)f_776},
{C_text("f_786:core_2fmachine_5fconstants_2escm"),(void*)f_786},
{C_text("f_815:core_2fmachine_5fconstants_2escm"),(void*)f_815},
{C_text("f_817:core_2fmachine_5fconstants_2escm"),(void*)f_817},
{C_text("toplevel:core_2fmachine_5fconstants_2escm"),(void*)C_toplevel},
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
S|applied compiler syntax:
S|  scheme#map		1
o|eliminated procedure checks: 6 
o|folded constant expression: (scheme#expt (quote 2.0) (quote -52)) 
o|folded constant expression: (scheme#exp (quote 1.0)) 
o|folded constant expression: (scheme#acos (quote -1.0)) 
o|specializations:
o|  1 (scheme#zero? *)
o|  1 (scheme#+ fixnum fixnum)
o|  1 (scheme#- *)
o|  1 (scheme#- integer integer)
o|  1 (scheme#< integer integer)
o|  1 (scheme#cdr pair)
o|  1 (scheme#max fixnum fixnum)
o|  3 (scheme#- fixnum fixnum)
o|  1 (scheme#length list)
o|  1 (scheme#log *)
o|  3 (scheme#abs *)
(o e)|safe calls: 78 
o|inlining procedure: k408 
o|inlining procedure: k408 
o|inlining procedure: k435 
o|inlining procedure: k435 
o|contracted procedure: loop50 
o|inlining procedure: k477 
o|inlining procedure: k477 
o|substituted constant variable: a500 
o|inlining procedure: k546 
o|contracted procedure: "(core/machine_constants.scm:118) g7484" 
o|inlining procedure: k528 
o|inlining procedure: k528 
o|inlining procedure: k546 
o|inlining procedure: k626 
o|inlining procedure: k626 
o|inlining procedure: k678 
o|inlining procedure: k678 
o|inlining procedure: k703 
o|inlining procedure: k703 
o|inlining procedure: k746 
o|inlining procedure: k746 
o|substituted constant variable: a760 
o|inlining procedure: k762 
o|inlining procedure: k762 
o|inlining procedure: k788 
o|inlining procedure: k788 
o|replaced variables: 117 
o|removed binding forms: 36 
o|substituted constant variable: r478842 
o|substituted constant variable: r529845 
o|substituted constant variable: r529846 
o|replaced variables: 13 
o|removed binding forms: 115 
o|inlining procedure: k571 
o|inlining procedure: k571 
o|inlining procedure: "(core/machine_constants.scm:138) machine-constants#poly-shift" 
o|inlining procedure: "(core/machine_constants.scm:150) machine-constants#poly-shift" 
o|inlining procedure: "(core/machine_constants.scm:147) machine-constants#degree" 
o|inlining procedure: "(core/machine_constants.scm:147) machine-constants#degree" 
o|removed binding forms: 14 
o|substituted constant variable: r572886 
o|substituted constant variable: r572887 
o|replaced variables: 10 
o|removed binding forms: 1 
o|removed binding forms: 12 
o|contracted procedure: k672 
o|contracted procedure: k675 
o|removed binding forms: 2 
o|simplifications: ((if . 3) (##core#call . 51)) 
o|  call simplifications:
o|    scheme#>=
o|    scheme#list-ref
o|    chicken.bitwise#bitwise-ior
o|    chicken.bitwise#arithmetic-shift	2
o|    chicken.bitwise#bitwise-and	3
o|    scheme#list	5
o|    scheme#+	3
o|    scheme#length	3
o|    chicken.fixnum#fxmax
o|    ##sys#check-list	2
o|    scheme#pair?	2
o|    scheme#cons	3
o|    ##sys#setslot
o|    ##sys#slot	5
o|    scheme#=	5
o|    scheme#number?
o|    scheme#not
o|    scheme#<=
o|    scheme#null?	3
o|    scheme#car	2
o|    scheme#-	2
o|    scheme#*
o|    scheme#<	2
o|contracted procedure: k426 
o|contracted procedure: k395 
o|contracted procedure: k399 
o|contracted procedure: k405 
o|contracted procedure: k415 
o|contracted procedure: k458 
o|contracted procedure: k438 
o|contracted procedure: k447 
o|contracted procedure: k480 
o|contracted procedure: k504 
o|contracted procedure: k507 
o|contracted procedure: k510 
o|contracted procedure: k523 
o|contracted procedure: k534 
o|contracted procedure: k537 
o|contracted procedure: k585 
o|contracted procedure: k549 
o|contracted procedure: k575 
o|contracted procedure: k579 
o|contracted procedure: k531 
o|contracted procedure: k552 
o|contracted procedure: k555 
o|contracted procedure: k563 
o|contracted procedure: k567 
o|contracted procedure: k629 
o|contracted procedure: k635 
o|contracted procedure: k646 
o|contracted procedure: k653 
o|contracted procedure: k706 
o|contracted procedure: k713 
o|contracted procedure: k729 
o|contracted procedure: k725 
o|contracted procedure: k721 
o|contracted procedure: k737 
o|contracted procedure: k749 
o|contracted procedure: k752 
o|contracted procedure: k765 
o|contracted procedure: k772 
o|contracted procedure: k762 
o|contracted procedure: k782 
o|contracted procedure: k807 
o|contracted procedure: k799 
o|contracted procedure: k803 
o|contracted procedure: k823 
o|contracted procedure: k827 
o|contracted procedure: k831 
o|contracted procedure: k835 
o|simplifications: ((let . 10)) 
o|removed binding forms: 47 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest2831 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest2831 0 
o|substituted constant variable: r824 
o|substituted constant variable: r828 
o|substituted constant variable: r832 
o|substituted constant variable: r836 
o|removed binding forms: 4 
o|customizable procedures: (loop141 loop134 loop127 loop116 loop105 map-loop6889) 
o|calls to known targets: 22 
o|unused rest argument: rest2831 f_393 
o|identified direct recursive calls: f_544 1 
o|identified direct recursive calls: f_744 2 
o|identified direct recursive calls: f_786 1 
o|fast box initializations: 6 
*/
/* end of file */
