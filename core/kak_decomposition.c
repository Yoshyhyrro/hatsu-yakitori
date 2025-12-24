/* Generated from core/kak_decomposition.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: core/kak_decomposition.scm -output-file core/kak_decomposition.c -debug 7
   unit: kak_decomposition
   uses: srfi-69 srfi-1 eval extras library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_srfi_2d69_toplevel)
C_externimport void C_ccall C_srfi_2d69_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d1_toplevel)
C_externimport void C_ccall C_srfi_2d1_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_extras_toplevel)
C_externimport void C_ccall C_extras_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[39];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,35),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,102,114,111,110,116,105,101,114,32,109,111,100,101,41,0,0,0,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,39),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,112,117,115,104,32,102,114,111,110,116,105,101,114,32,118,97,108,41,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,34),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,112,111,112,32,102,114,111,110,116,105,101,114,41,0,0,0,0,0,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,37),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,101,109,112,116,121,63,32,102,114,111,110,116,105,101,114,41,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,35),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,115,105,122,101,32,102,114,111,110,116,105,101,114,41,0,0,0,0,0};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,49),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,45,102,114,111,110,116,105,101,114,45,97,100,97,112,116,105,118,101,32,105,110,102,111,45,98,105,116,115,41,0,0,0,0,0,0,0};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,53),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,114,101,108,97,120,45,98,111,117,110,100,32,100,105,115,116,45,116,97,98,108,101,32,118,32,110,101,119,45,100,105,115,116,41,0,0,0};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,46),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,103,114,97,112,104,45,110,101,105,103,104,98,111,114,115,32,103,114,97,112,104,32,110,111,100,101,41,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,8),40,103,49,48,52,32,115,41};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,6),40,97,56,54,51,41,0,0};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,11),40,103,49,52,48,32,101,100,103,101,41,0,0,0,0,0};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,23),40,102,111,114,45,101,97,99,104,45,108,111,111,112,49,51,57,32,103,49,52,54,41,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,25),40,97,56,54,57,32,115,117,99,99,101,115,115,32,110,111,100,101,32,110,101,119,45,102,41,0,0,0,0,0,0,0};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,21),40,108,111,111,112,45,108,101,118,101,108,32,102,32,110,101,120,116,45,102,41,0,0,0};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,20),40,108,111,111,112,32,102,114,111,110,116,105,101,114,32,115,116,101,112,41,0,0,0,0};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,12),40,97,57,52,55,32,115,32,97,99,99,41,0,0,0,0};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,23),40,102,111,114,45,101,97,99,104,45,108,111,111,112,49,48,51,32,103,49,49,48,41,0};
static C_char C_TLS li17[] C_aligned={C_lihdr(0,0,69),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,65,75,45,97,112,112,108,121,32,103,114,97,112,104,32,115,111,117,114,99,101,115,32,66,32,102,114,111,110,116,105,101,114,45,109,111,100,101,32,109,97,120,45,115,116,101,112,115,41,0,0,0};
static C_char C_TLS li18[] C_aligned={C_lihdr(0,0,71),40,107,97,107,95,100,101,99,111,109,112,111,115,105,116,105,111,110,35,75,65,75,45,97,112,112,108,121,45,103,111,108,97,121,32,103,114,97,112,104,32,115,111,117,114,99,101,115,32,66,32,109,97,120,45,115,116,101,112,115,32,105,110,102,111,45,98,105,116,115,41,0};
static C_char C_TLS li19[] C_aligned={C_lihdr(0,0,6),40,97,57,56,57,41,0,0};
static C_char C_TLS li20[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_447)
static void C_ccall f_447(C_word c,C_word *av) C_noret;
C_noret_decl(f_450)
static void C_ccall f_450(C_word c,C_word *av) C_noret;
C_noret_decl(f_453)
static void C_ccall f_453(C_word c,C_word *av) C_noret;
C_noret_decl(f_456)
static void C_ccall f_456(C_word c,C_word *av) C_noret;
C_noret_decl(f_459)
static void C_ccall f_459(C_word c,C_word *av) C_noret;
C_noret_decl(f_462)
static void C_ccall f_462(C_word c,C_word *av) C_noret;
C_noret_decl(f_465)
static void C_ccall f_465(C_word c,C_word *av) C_noret;
C_noret_decl(f_468)
static void C_ccall f_468(C_word c,C_word *av) C_noret;
C_noret_decl(f_471)
static void C_ccall f_471(C_word c,C_word *av) C_noret;
C_noret_decl(f_499)
static void C_ccall f_499(C_word c,C_word *av) C_noret;
C_noret_decl(f_551)
static void C_ccall f_551(C_word c,C_word *av) C_noret;
C_noret_decl(f_640)
static void C_ccall f_640(C_word c,C_word *av) C_noret;
C_noret_decl(f_668)
static void C_ccall f_668(C_word c,C_word *av) C_noret;
C_noret_decl(f_716)
static void C_ccall f_716(C_word c,C_word *av) C_noret;
C_noret_decl(f_766)
static void C_ccall f_766(C_word c,C_word *av) C_noret;
C_noret_decl(f_772)
static void C_ccall f_772(C_word c,C_word *av) C_noret;
C_noret_decl(f_776)
static void C_ccall f_776(C_word c,C_word *av) C_noret;
C_noret_decl(f_785)
static void C_ccall f_785(C_word c,C_word *av) C_noret;
C_noret_decl(f_787)
static void C_ccall f_787(C_word c,C_word *av) C_noret;
C_noret_decl(f_794)
static void C_ccall f_794(C_word c,C_word *av) C_noret;
C_noret_decl(f_806)
static void C_ccall f_806(C_word c,C_word *av) C_noret;
C_noret_decl(f_814)
static void C_ccall f_814(C_word c,C_word *av) C_noret;
C_noret_decl(f_819)
static void C_ccall f_819(C_word c,C_word *av) C_noret;
C_noret_decl(f_820)
static void C_fcall f_820(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_830)
static void C_ccall f_830(C_word c,C_word *av) C_noret;
C_noret_decl(f_834)
static void C_ccall f_834(C_word c,C_word *av) C_noret;
C_noret_decl(f_839)
static void C_fcall f_839(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_849)
static void C_ccall f_849(C_word c,C_word *av) C_noret;
C_noret_decl(f_856)
static void C_ccall f_856(C_word c,C_word *av) C_noret;
C_noret_decl(f_858)
static void C_fcall f_858(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_864)
static void C_ccall f_864(C_word c,C_word *av) C_noret;
C_noret_decl(f_870)
static void C_ccall f_870(C_word c,C_word *av) C_noret;
C_noret_decl(f_887)
static void C_ccall f_887(C_word c,C_word *av) C_noret;
C_noret_decl(f_890)
static void C_ccall f_890(C_word c,C_word *av) C_noret;
C_noret_decl(f_891)
static void C_fcall f_891(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_907)
static void C_ccall f_907(C_word c,C_word *av) C_noret;
C_noret_decl(f_911)
static void C_ccall f_911(C_word c,C_word *av) C_noret;
C_noret_decl(f_917)
static void C_ccall f_917(C_word c,C_word *av) C_noret;
C_noret_decl(f_922)
static void C_fcall f_922(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_932)
static void C_ccall f_932(C_word c,C_word *av) C_noret;
C_noret_decl(f_948)
static void C_ccall f_948(C_word c,C_word *av) C_noret;
C_noret_decl(f_956)
static void C_ccall f_956(C_word c,C_word *av) C_noret;
C_noret_decl(f_958)
static void C_fcall f_958(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_968)
static void C_ccall f_968(C_word c,C_word *av) C_noret;
C_noret_decl(f_981)
static void C_ccall f_981(C_word c,C_word *av) C_noret;
C_noret_decl(f_985)
static void C_ccall f_985(C_word c,C_word *av) C_noret;
C_noret_decl(f_990)
static void C_ccall f_990(C_word c,C_word *av) C_noret;
C_noret_decl(C_kak_5fdecomposition_toplevel)
C_externexport void C_ccall C_kak_5fdecomposition_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_820)
static void C_ccall trf_820(C_word c,C_word *av) C_noret;
static void C_ccall trf_820(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_820(t0,t1,t2);}

C_noret_decl(trf_839)
static void C_ccall trf_839(C_word c,C_word *av) C_noret;
static void C_ccall trf_839(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_839(t0,t1,t2,t3);}

C_noret_decl(trf_858)
static void C_ccall trf_858(C_word c,C_word *av) C_noret;
static void C_ccall trf_858(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_858(t0,t1,t2,t3);}

C_noret_decl(trf_891)
static void C_ccall trf_891(C_word c,C_word *av) C_noret;
static void C_ccall trf_891(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_891(t0,t1,t2);}

C_noret_decl(trf_922)
static void C_ccall trf_922(C_word c,C_word *av) C_noret;
static void C_ccall trf_922(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_922(t0,t1,t2);}

C_noret_decl(trf_958)
static void C_ccall trf_958(C_word c,C_word *av) C_noret;
static void C_ccall trf_958(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_958(t0,t1,t2);}

/* k445 */
static void C_ccall f_447(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_447,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_450,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k448 in k445 */
static void C_ccall f_450(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_450,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_453,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d1_toplevel(2,av2);}}

/* k451 in k448 in k445 */
static void C_ccall f_453(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_453,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_456,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d69_toplevel(2,av2);}}

/* k454 in k451 in k448 in k445 */
static void C_ccall f_456(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(22,c,2)))){
C_save_and_reclaim((void *)f_456,c,av);}
a=C_alloc(22);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_459,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_990,a[2]=((C_word)li19),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:5: ##sys#with-environment"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[38]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[38]+1);
av2[1]=t4;
av2[2]=t5;
tp(3,av2);}}

/* k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_459(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_459,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_462,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_462(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_462,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_465,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:10: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[33]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[33]+1);
av2[1]=t2;
av2[2]=lf[35];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_465(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_465,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_468,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:10: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[33]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[33]+1);
av2[1]=t2;
av2[2]=lf[34];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_468(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(30,c,7)))){
C_save_and_reclaim((void *)f_468,c,av);}
a=C_alloc(30);
t2=C_mutate((C_word*)lf[2]+1 /* (set! kak_decomposition#+INF+ ...) */,lf[3]);
t3=C_mutate((C_word*)lf[4]+1 /* (set! kak_decomposition#K-frontier ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_471,a[2]=((C_word)li0),tmp=(C_word)a,a+=3,tmp));
t4=C_mutate((C_word*)lf[9]+1 /* (set! kak_decomposition#K-push ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_499,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t5=C_mutate((C_word*)lf[11]+1 /* (set! kak_decomposition#K-pop ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_551,a[2]=((C_word)li2),tmp=(C_word)a,a+=3,tmp));
t6=C_mutate((C_word*)lf[14]+1 /* (set! kak_decomposition#K-empty? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_668,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[16]+1 /* (set! kak_decomposition#K-size ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_716,a[2]=((C_word)li4),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[18]+1 /* (set! kak_decomposition#K-frontier-adaptive ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_766,a[2]=((C_word)li5),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[19]+1 /* (set! kak_decomposition#relax-bound ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_772,a[2]=((C_word)li6),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[22]+1 /* (set! kak_decomposition#graph-neighbors ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_787,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate((C_word*)lf[25]+1 /* (set! kak_decomposition#KAK-apply ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_814,a[2]=((C_word)li17),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate((C_word*)lf[31]+1 /* (set! kak_decomposition#KAK-apply-golay ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_981,a[2]=((C_word)li18),tmp=(C_word)a,a+=3,tmp));
t13=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t13;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t13+1)))(2,av2);}}

/* kak_decomposition#K-frontier in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_471(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_471,c,av);}
a=C_alloc(6);
t3=C_eqp(t2,lf[5]);
if(C_truep(t3)){
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_cons(&a,2,lf[5],C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_eqp(t2,lf[6]);
if(C_truep(t4)){
t5=C_a_i_cons(&a,2,C_SCHEME_END_OF_LIST,C_SCHEME_END_OF_LIST);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_a_i_cons(&a,2,lf[6],t5);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
C_trace(C_text("core/kak_decomposition.scm:27: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[7]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t1;
av2[2]=lf[8];
av2[3]=t2;
tp(4,av2);}}}}

/* kak_decomposition#K-push in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_499(C_word c,C_word *av){
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
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_499,c,av);}
a=C_alloc(9);
t4=C_i_car(t2);
t5=C_eqp(t4,lf[5]);
if(C_truep(t5)){
t6=C_i_cdr(t2);
t7=C_a_i_cons(&a,2,t3,t6);
t8=t1;{
C_word *av2=av;
av2[0]=t8;
av2[1]=C_a_i_cons(&a,2,lf[5],t7);
((C_proc)(void*)(*((C_word*)t8+1)))(2,av2);}}
else{
t6=C_eqp(t4,lf[6]);
if(C_truep(t6)){
t7=C_i_cdr(t2);
t8=C_i_car(t7);
t9=C_i_cdr(t7);
t10=C_a_i_cons(&a,2,t3,t9);
t11=C_a_i_cons(&a,2,t8,t10);
t12=t1;{
C_word *av2=av;
av2[0]=t12;
av2[1]=C_a_i_cons(&a,2,lf[6],t11);
((C_proc)(void*)(*((C_word*)t12+1)))(2,av2);}}
else{
C_trace(C_text("core/kak_decomposition.scm:40: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[7]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t1;
av2[2]=lf[10];
av2[3]=t4;
tp(4,av2);}}}}

/* kak_decomposition#K-pop in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_551(C_word c,C_word *av){
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
C_word t12;
C_word t13;
C_word t14;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_551,c,av);}
a=C_alloc(6);
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=C_i_cdr(t2);
if(C_truep(C_i_nullp(t5))){
C_trace(C_text("core/kak_decomposition.scm:49: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_FALSE;
av2[4]=t2;
C_values(5,av2);}}
else{
t6=C_i_car(t5);
t7=C_i_cdr(t5);
t8=C_a_i_cons(&a,2,lf[5],t7);
C_trace(C_text("core/kak_decomposition.scm:50: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_TRUE;
av2[3]=t6;
av2[4]=t8;
C_values(5,av2);}}}
else{
t5=C_eqp(t3,lf[6]);
if(C_truep(t5)){
t6=C_i_cdr(t2);
t7=C_i_car(t6);
t8=C_i_cdr(t6);
t9=C_i_nullp(t7);
if(C_truep(C_i_not(t9))){
t10=C_i_car(t7);
t11=C_i_cdr(t7);
t12=C_a_i_cons(&a,2,t11,t8);
t13=C_a_i_cons(&a,2,lf[6],t12);
C_trace(C_text("core/kak_decomposition.scm:58: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_TRUE;
av2[3]=t10;
av2[4]=t13;
C_values(5,av2);}}
else{
if(C_truep(C_i_nullp(t8))){
C_trace(C_text("core/kak_decomposition.scm:62: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_FALSE;
av2[4]=t2;
C_values(5,av2);}}
else{
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_640,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:65: scheme#reverse"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[12]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[12]+1);
av2[1]=t10;
av2[2]=t8;
tp(3,av2);}}}}
else{
C_trace(C_text("core/kak_decomposition.scm:69: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[7]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t1;
av2[2]=lf[13];
av2[3]=t3;
tp(4,av2);}}}}

/* k638 in kak_decomposition#K-pop in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_640(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_640,c,av);}
a=C_alloc(6);
t2=C_i_car(t1);
t3=C_i_cdr(t1);
t4=C_a_i_cons(&a,2,t3,C_SCHEME_END_OF_LIST);
t5=C_a_i_cons(&a,2,lf[6],t4);
C_trace(C_text("core/kak_decomposition.scm:66: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=C_SCHEME_TRUE;
av2[3]=t2;
av2[4]=t5;
C_values(5,av2);}}

/* kak_decomposition#K-empty? in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_668(C_word c,C_word *av){
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
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_668,c,av);}
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_i_nullp(C_i_cdr(t2));
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t3,lf[6]);
if(C_truep(t5)){
t6=C_i_cdr(t2);
t7=C_i_car(t6);
t8=C_i_nullp(t7);
t9=t1;{
C_word *av2=av;
av2[0]=t9;
av2[1]=(C_truep(t8)?C_i_nullp(C_i_cdr(t6)):C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t9+1)))(2,av2);}}
else{
C_trace(C_text("core/kak_decomposition.scm:78: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[7]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t1;
av2[2]=lf[15];
av2[3]=t3;
tp(4,av2);}}}}

/* kak_decomposition#K-size in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_716(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(29,c,3)))){
C_save_and_reclaim((void *)f_716,c,av);}
a=C_alloc(29);
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_i_length(C_i_cdr(t2));
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t3,lf[6]);
if(C_truep(t5)){
t6=C_i_cdr(t2);
t7=C_i_car(t6);
t8=C_i_length(t7);
t9=C_i_cdr(t6);
t10=C_i_length(t9);
t11=t1;{
C_word *av2=av;
av2[0]=t11;
av2[1]=C_s_a_i_plus(&a,2,t8,t10);
((C_proc)(void*)(*((C_word*)t11+1)))(2,av2);}}
else{
C_trace(C_text("core/kak_decomposition.scm:87: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[7]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t1;
av2[2]=lf[17];
av2[3]=t3;
tp(4,av2);}}}}

/* kak_decomposition#K-frontier-adaptive in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_766(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_766,c,av);}
C_trace(C_text("core/kak_decomposition.scm:96: K-frontier"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word *av2=av;
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t1;
av2[2]=lf[6];
tp(3,av2);}}

/* kak_decomposition#relax-bound in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_772(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5;
C_word t6;
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_772,c,av);}
a=C_alloc(6);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_776,a[2]=t4,a[3]=t1,a[4]=t2,a[5]=t3,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/kak_decomposition.scm:99: srfi-69#hash-table-ref/default"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[21]);
C_word *av2=av;
av2[0]=*((C_word*)lf[21]+1);
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
av2[4]=C_fast_retrieve(lf[2]);
tp(5,av2);}}

/* k774 in kak_decomposition#relax-bound in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_776(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_776,c,av);}
a=C_alloc(3);
if(C_truep(C_i_lessp(((C_word*)t0)[2],t1))){
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_785,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:102: srfi-69#hash-table-set!"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[20]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[20]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
av2[4]=((C_word*)t0)[2];
tp(5,av2);}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k783 in k774 in kak_decomposition#relax-bound in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_785(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_785,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_decomposition#graph-neighbors in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_787(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_787,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_794,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/kak_decomposition.scm:108: srfi-69#hash-table?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[24]);
C_word *av2=av;
av2[0]=*((C_word*)lf[24]+1);
av2[1]=t4;
av2[2]=t2;
tp(3,av2);}}

/* k792 in kak_decomposition#graph-neighbors in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_794(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_794,c,av);}
a=C_alloc(3);
if(C_truep(t1)){
C_trace(C_text("core/kak_decomposition.scm:109: srfi-69#hash-table-ref/default"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[21]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[21]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=C_SCHEME_END_OF_LIST;
tp(5,av2);}}
else{
if(C_truep(C_i_listp(((C_word*)t0)[3]))){
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_806,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:111: srfi-1#assoc"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[23]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[23]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}
else{
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}}

/* k804 in k792 in kak_decomposition#graph-neighbors in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_806(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_806,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=(C_truep(t1)?C_i_cdr(t1):C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_814(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5=av[5];
C_word t6=av[6];
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
if(c!=7) C_bad_argc_2(c,7,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,2)))){
C_save_and_reclaim((void *)f_814,c,av);}
a=C_alloc(10);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_819,a[2]=t8,a[3]=t3,a[4]=t6,a[5]=t2,a[6]=t5,a[7]=t1,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/kak_decomposition.scm:129: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[30]);
C_word *av2=av;
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t9;
tp(2,av2);}}

/* k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_819(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,c,3)))){
C_save_and_reclaim((void *)f_819,c,av);}
a=C_alloc(19);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_820,a[2]=((C_word*)t0)[2],a[3]=((C_word)li8),tmp=(C_word)a,a+=4,tmp);
t4=C_i_check_list_2(((C_word*)t0)[3],lf[27]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_830,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[7],a[7]=((C_word*)t0)[3],tmp=(C_word)a,a+=8,tmp);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_958,a[2]=t7,a[3]=t3,a[4]=((C_word)li16),tmp=(C_word)a,a+=5,tmp));
t9=((C_word*)t7)[1];
f_958(t9,t5,((C_word*)t0)[3]);}

/* g104 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_820(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_820,3,t0,t1,t2);}
C_trace(C_text("core/kak_decomposition.scm:132: srfi-69#hash-table-set!"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[20]);
C_word av2[5];
av2[0]=*((C_word*)lf[20]+1);
av2[1]=t1;
av2[2]=((C_word*)((C_word*)t0)[2])[1];
av2[3]=t2;
av2[4]=lf[26];
tp(5,av2);}}

/* k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_830(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(18,c,4)))){
C_save_and_reclaim((void *)f_830,c,av);}
a=C_alloc(18);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_834,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_948,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_956,a[2]=t4,a[3]=t5,a[4]=((C_word*)t0)[7],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/kak_decomposition.scm:137: K-frontier"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t6;
av2[2]=((C_word*)t0)[5];
tp(3,av2);}}

/* k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_834(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,c,4)))){
C_save_and_reclaim((void *)f_834,c,av);}
a=C_alloc(10);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_839,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t4,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word)li14),tmp=(C_word)a,a+=8,tmp));
t6=((C_word*)t4)[1];
f_839(t6,((C_word*)t0)[7],((C_word*)((C_word*)t0)[2])[1],C_fix(0));}

/* loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_839(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,2)))){
C_save_and_reclaim_args((void *)trf_839,4,t0,t1,t2,t3);}
a=C_alloc(9);
t4=C_i_greater_or_equalp(t3,((C_word*)t0)[2]);
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_849,a[2]=t1,a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=t2,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
if(C_truep(t4)){
t6=t5;{
C_word av2[2];
av2[0]=t6;
av2[1]=t4;
f_849(2,av2);}}
else{
C_trace(C_text("core/kak_decomposition.scm:143: K-empty?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word av2[3];
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t5;
av2[2]=t2;
tp(3,av2);}}}

/* k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_849(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,2)))){
C_save_and_reclaim((void *)f_849,c,av);}
a=C_alloc(8);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)((C_word*)t0)[3])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_856,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/kak_decomposition.scm:147: K-frontier"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[8];
tp(3,av2);}}}

/* k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,4)))){
C_save_and_reclaim((void *)f_856,c,av);}
a=C_alloc(10);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_858,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=((C_word)li13),tmp=(C_word)a,a+=8,tmp));
t5=((C_word*)t3)[1];
f_858(t5,((C_word*)t0)[6],((C_word*)t0)[7],t1);}

/* loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_858(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,0,5)))){
C_save_and_reclaim_args((void *)trf_858,4,t0,t1,t2,t3);}
a=C_alloc(15);
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_864,a[2]=t2,a[3]=((C_word)li9),tmp=(C_word)a,a+=4,tmp);
t6=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_870,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t4,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word)li12),tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("core/kak_decomposition.scm:148: scheme#call-with-values"));{
C_word av2[4];
av2[0]=0;
av2[1]=t1;
av2[2]=t5;
av2[3]=t6;
C_call_with_values(4,av2);}}

/* a863 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_864(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_864,c,av);}
C_trace(C_text("core/kak_decomposition.scm:149: K-pop"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[11]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_870(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5;
C_word t6;
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,3)))){
C_save_and_reclaim((void *)f_870,c,av);}
a=C_alloc(29);
if(C_truep(C_i_not(t2))){
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
C_trace(C_text("core/kak_decomposition.scm:153: loop"));
t6=((C_word*)((C_word*)t0)[3])[1];
f_839(t6,t1,((C_word*)((C_word*)t0)[4])[1],t5);}
else{
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_887,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[6],a[5]=t1,a[6]=t4,a[7]=((C_word*)t0)[7],a[8]=t3,tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("core/kak_decomposition.scm:156: srfi-69#hash-table-ref"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[28]);
C_word *av2=av;
av2[0]=*((C_word*)lf[28]+1);
av2[1]=t5;
av2[2]=((C_word*)((C_word*)t0)[5])[1];
av2[3]=t3;
tp(4,av2);}}}

/* k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_887(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_887,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_890,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/kak_decomposition.scm:157: graph-neighbors"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[22]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[7];
av2[3]=((C_word*)t0)[8];
tp(4,av2);}}

/* k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_890(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,c,3)))){
C_save_and_reclaim((void *)f_890,c,av);}
a=C_alloc(19);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_891,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word)li10),tmp=(C_word)a,a+=6,tmp);
t3=C_i_check_list_2(t1,lf[27]);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_917,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[7],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_922,a[2]=t6,a[3]=t2,a[4]=((C_word)li11),tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_922(t8,t4,t1);}

/* g140 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_891(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(34,0,4)))){
C_save_and_reclaim_args((void *)trf_891,3,t0,t1,t2);}
a=C_alloc(34);
t3=C_i_car(t2);
t4=C_i_cdr(t2);
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[2],t4);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_907,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/kak_decomposition.scm:165: relax-bound"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word av2[5];
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t6;
av2[2]=((C_word*)((C_word*)t0)[4])[1];
av2[3]=t3;
av2[4]=t5;
tp(5,av2);}}

/* k905 in g140 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_907(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_907,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_911,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/kak_decomposition.scm:167: K-push"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[9]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[9]+1);
av2[1]=t2;
av2[2]=((C_word*)((C_word*)t0)[2])[1];
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k909 in k905 in g140 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 in ... */
static void C_ccall f_911(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_911,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k915 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_917(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_917,c,av);}
C_trace(C_text("core/kak_decomposition.scm:171: loop-level"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_858(t2,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)((C_word*)t0)[5])[1]);}

/* for-each-loop139 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_922(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_922,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_932,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/kak_decomposition.scm:160: g140"));
t4=((C_word*)t0)[3];
f_891(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k930 in for-each-loop139 in k888 in k885 in a869 in loop-level in k854 in k847 in loop in k832 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_932(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_932,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_922(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* a947 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_948(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_948,c,av);}
C_trace(C_text("core/kak_decomposition.scm:136: K-push"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[9]);
C_word *av2=av;
av2[0]=*((C_word*)lf[9]+1);
av2[1]=t1;
av2[2]=t3;
av2[3]=t2;
tp(4,av2);}}

/* k954 in k828 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_956(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_956,c,av);}
C_trace(C_text("core/kak_decomposition.scm:136: srfi-1#fold"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
av2[4]=((C_word*)t0)[4];
tp(5,av2);}}

/* for-each-loop103 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_fcall f_958(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_958,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_968,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/kak_decomposition.scm:132: g104"));
t4=((C_word*)t0)[3];
f_820(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k966 in for-each-loop103 in k817 in kak_decomposition#KAK-apply in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_968(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_968,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_958(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* kak_decomposition#KAK-apply-golay in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_981(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5=av[5];
C_word t6=av[6];
C_word t7;
C_word t8;
C_word *a;
if(c!=7) C_bad_argc_2(c,7,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,6)))){
C_save_and_reclaim((void *)f_981,c,av);}
a=C_alloc(3);
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_985,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/kak_decomposition.scm:180: KAK-apply"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[25]);
C_word *av2=av;
av2[0]=*((C_word*)lf[25]+1);
av2[1]=t7;
av2[2]=t2;
av2[3]=t3;
av2[4]=t4;
av2[5]=lf[6];
av2[6]=t5;
tp(7,av2);}}

/* k983 in kak_decomposition#KAK-apply-golay in k466 in k463 in k460 in k457 in k454 in k451 in k448 in k445 */
static void C_ccall f_985(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_985,c,av);}
C_trace(C_text("core/kak_decomposition.scm:181: scheme#values"));{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=lf[32];
av2[4]=C_SCHEME_FALSE;
C_values(5,av2);}}

/* a989 in k454 in k451 in k448 in k445 */
static void C_ccall f_990(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_990,c,av);}
C_trace(C_text("core/kak_decomposition.scm:5: ##sys#register-compiled-module"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t1;
av2[2]=lf[0];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[37];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* toplevel */
static C_TLS int toplevel_initialized=0;

void C_ccall C_kak_5fdecomposition_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("kak_decomposition"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_kak_5fdecomposition_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(442))){
C_save(t1);
C_rereclaim2(442*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,39);
lf[0]=C_h_intern(&lf[0],17, C_text("kak_decomposition"));
lf[1]=C_h_intern(&lf[1],18, C_text("kak_decomposition#"));
lf[2]=C_h_intern(&lf[2],23, C_text("kak_decomposition#+INF+"));
lf[3]=C_decode_literal(C_heaptop,C_text("\376U999999999999999967336168804116691273849533185806555472917961779471295845921727"
"862608739868455469056.0\000"));
lf[4]=C_h_intern(&lf[4],28, C_text("kak_decomposition#K-frontier"));
lf[5]=C_h_intern(&lf[5],5, C_text("stack"));
lf[6]=C_h_intern(&lf[6],5, C_text("queue"));
lf[7]=C_h_intern(&lf[7],18, C_text("chicken.base#error"));
lf[8]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[9]=C_h_intern(&lf[9],24, C_text("kak_decomposition#K-push"));
lf[10]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[11]=C_h_intern(&lf[11],23, C_text("kak_decomposition#K-pop"));
lf[12]=C_h_intern(&lf[12],14, C_text("scheme#reverse"));
lf[13]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[14]=C_h_intern(&lf[14],26, C_text("kak_decomposition#K-empty\077"));
lf[15]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[16]=C_h_intern(&lf[16],24, C_text("kak_decomposition#K-size"));
lf[17]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[18]=C_h_intern(&lf[18],37, C_text("kak_decomposition#K-frontier-adaptive"));
lf[19]=C_h_intern(&lf[19],29, C_text("kak_decomposition#relax-bound"));
lf[20]=C_h_intern(&lf[20],23, C_text("srfi-69#hash-table-set!"));
lf[21]=C_h_intern(&lf[21],30, C_text("srfi-69#hash-table-ref/default"));
lf[22]=C_h_intern(&lf[22],33, C_text("kak_decomposition#graph-neighbors"));
lf[23]=C_h_intern(&lf[23],12, C_text("srfi-1#assoc"));
lf[24]=C_h_intern(&lf[24],19, C_text("srfi-69#hash-table\077"));
lf[25]=C_h_intern(&lf[25],27, C_text("kak_decomposition#KAK-apply"));
lf[26]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[27]=C_h_intern(&lf[27],8, C_text("for-each"));
lf[28]=C_h_intern(&lf[28],22, C_text("srfi-69#hash-table-ref"));
lf[29]=C_h_intern(&lf[29],11, C_text("srfi-1#fold"));
lf[30]=C_h_intern(&lf[30],23, C_text("srfi-69#make-hash-table"));
lf[31]=C_h_intern(&lf[31],33, C_text("kak_decomposition#KAK-apply-golay"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[33]=C_h_intern(&lf[33],27, C_text("chicken.load#load-extension"));
lf[34]=C_h_intern(&lf[34],7, C_text("srfi-69"));
lf[35]=C_h_intern(&lf[35],6, C_text("srfi-1"));
lf[36]=C_h_intern(&lf[36],30, C_text("##sys#register-compiled-module"));
lf[37]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\012\001K-frontier\376\001\000\000\034\001kak_decomposition#K-frontier\376\003\000\000\002\376\003\000\000\002\376\001\000\000\006\001K-pu"
"sh\376\001\000\000\030\001kak_decomposition#K-push\376\003\000\000\002\376\003\000\000\002\376\001\000\000\005\001K-pop\376\001\000\000\027\001kak_decomposition#K-p"
"op\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001K-empty\077\376\001\000\000\032\001kak_decomposition#K-empty\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\006\001K-size"
"\376\001\000\000\030\001kak_decomposition#K-size\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001K-frontier-adaptive\376\001\000\000%\001kak_decom"
"position#K-frontier-adaptive\376\003\000\000\002\376\003\000\000\002\376\001\000\000\013\001relax-bound\376\001\000\000\035\001kak_decomposition#r"
"elax-bound\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001graph-neighbors\376\001\000\000!\001kak_decomposition#graph-neighbors"
"\376\003\000\000\002\376\003\000\000\002\376\001\000\000\011\001KAK-apply\376\001\000\000\033\001kak_decomposition#KAK-apply\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001KAK-ap"
"ply-golay\376\001\000\000!\001kak_decomposition#KAK-apply-golay\376\003\000\000\002\376\003\000\000\002\376\001\000\000\005\001+INF+\376\001\000\000\027\001kak_d"
"ecomposition#+INF+\376\377\016"));
lf[38]=C_h_intern(&lf[38],22, C_text("##sys#with-environment"));
C_register_lf2(lf,39,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_447,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[49] = {
{C_text("f_447:core_2fkak_5fdecomposition_2escm"),(void*)f_447},
{C_text("f_450:core_2fkak_5fdecomposition_2escm"),(void*)f_450},
{C_text("f_453:core_2fkak_5fdecomposition_2escm"),(void*)f_453},
{C_text("f_456:core_2fkak_5fdecomposition_2escm"),(void*)f_456},
{C_text("f_459:core_2fkak_5fdecomposition_2escm"),(void*)f_459},
{C_text("f_462:core_2fkak_5fdecomposition_2escm"),(void*)f_462},
{C_text("f_465:core_2fkak_5fdecomposition_2escm"),(void*)f_465},
{C_text("f_468:core_2fkak_5fdecomposition_2escm"),(void*)f_468},
{C_text("f_471:core_2fkak_5fdecomposition_2escm"),(void*)f_471},
{C_text("f_499:core_2fkak_5fdecomposition_2escm"),(void*)f_499},
{C_text("f_551:core_2fkak_5fdecomposition_2escm"),(void*)f_551},
{C_text("f_640:core_2fkak_5fdecomposition_2escm"),(void*)f_640},
{C_text("f_668:core_2fkak_5fdecomposition_2escm"),(void*)f_668},
{C_text("f_716:core_2fkak_5fdecomposition_2escm"),(void*)f_716},
{C_text("f_766:core_2fkak_5fdecomposition_2escm"),(void*)f_766},
{C_text("f_772:core_2fkak_5fdecomposition_2escm"),(void*)f_772},
{C_text("f_776:core_2fkak_5fdecomposition_2escm"),(void*)f_776},
{C_text("f_785:core_2fkak_5fdecomposition_2escm"),(void*)f_785},
{C_text("f_787:core_2fkak_5fdecomposition_2escm"),(void*)f_787},
{C_text("f_794:core_2fkak_5fdecomposition_2escm"),(void*)f_794},
{C_text("f_806:core_2fkak_5fdecomposition_2escm"),(void*)f_806},
{C_text("f_814:core_2fkak_5fdecomposition_2escm"),(void*)f_814},
{C_text("f_819:core_2fkak_5fdecomposition_2escm"),(void*)f_819},
{C_text("f_820:core_2fkak_5fdecomposition_2escm"),(void*)f_820},
{C_text("f_830:core_2fkak_5fdecomposition_2escm"),(void*)f_830},
{C_text("f_834:core_2fkak_5fdecomposition_2escm"),(void*)f_834},
{C_text("f_839:core_2fkak_5fdecomposition_2escm"),(void*)f_839},
{C_text("f_849:core_2fkak_5fdecomposition_2escm"),(void*)f_849},
{C_text("f_856:core_2fkak_5fdecomposition_2escm"),(void*)f_856},
{C_text("f_858:core_2fkak_5fdecomposition_2escm"),(void*)f_858},
{C_text("f_864:core_2fkak_5fdecomposition_2escm"),(void*)f_864},
{C_text("f_870:core_2fkak_5fdecomposition_2escm"),(void*)f_870},
{C_text("f_887:core_2fkak_5fdecomposition_2escm"),(void*)f_887},
{C_text("f_890:core_2fkak_5fdecomposition_2escm"),(void*)f_890},
{C_text("f_891:core_2fkak_5fdecomposition_2escm"),(void*)f_891},
{C_text("f_907:core_2fkak_5fdecomposition_2escm"),(void*)f_907},
{C_text("f_911:core_2fkak_5fdecomposition_2escm"),(void*)f_911},
{C_text("f_917:core_2fkak_5fdecomposition_2escm"),(void*)f_917},
{C_text("f_922:core_2fkak_5fdecomposition_2escm"),(void*)f_922},
{C_text("f_932:core_2fkak_5fdecomposition_2escm"),(void*)f_932},
{C_text("f_948:core_2fkak_5fdecomposition_2escm"),(void*)f_948},
{C_text("f_956:core_2fkak_5fdecomposition_2escm"),(void*)f_956},
{C_text("f_958:core_2fkak_5fdecomposition_2escm"),(void*)f_958},
{C_text("f_968:core_2fkak_5fdecomposition_2escm"),(void*)f_968},
{C_text("f_981:core_2fkak_5fdecomposition_2escm"),(void*)f_981},
{C_text("f_985:core_2fkak_5fdecomposition_2escm"),(void*)f_985},
{C_text("f_990:core_2fkak_5fdecomposition_2escm"),(void*)f_990},
{C_text("toplevel:core_2fkak_5fdecomposition_2escm"),(void*)C_kak_5fdecomposition_toplevel},
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
S|  scheme#for-each		2
o|eliminated procedure checks: 4 
o|replaced variables: 168 
o|removed binding forms: 34 
o|removed binding forms: 121 
o|simplifications: ((if . 1) (##core#call . 87)) 
o|  call simplifications:
o|    scheme#list	3
o|    scheme#>=
o|    scheme#call-with-values
o|    ##sys#check-list	2
o|    scheme#pair?	2
o|    ##sys#slot	4
o|    scheme#list?
o|    scheme#<
o|    scheme#+	3
o|    scheme#length	3
o|    scheme#not	2
o|    scheme#null?	6
o|    scheme#values	6
o|    scheme#eqv?	8
o|    scheme#car	12
o|    scheme#cdr	17
o|    scheme#eq?	2
o|    scheme#cons	13
o|contracted procedure: k476 
o|contracted procedure: k485 
o|contracted procedure: k492 
o|contracted procedure: k501 
o|contracted procedure: k507 
o|contracted procedure: k518 
o|contracted procedure: k514 
o|contracted procedure: k524 
o|contracted procedure: k527 
o|contracted procedure: k530 
o|contracted procedure: k533 
o|contracted procedure: k544 
o|contracted procedure: k540 
o|contracted procedure: k553 
o|contracted procedure: k559 
o|contracted procedure: k562 
o|contracted procedure: k568 
o|contracted procedure: k578 
o|contracted procedure: k586 
o|contracted procedure: k582 
o|contracted procedure: k592 
o|contracted procedure: k595 
o|contracted procedure: k598 
o|contracted procedure: k601 
o|contracted procedure: k661 
o|contracted procedure: k607 
o|contracted procedure: k614 
o|contracted procedure: k626 
o|contracted procedure: k622 
o|contracted procedure: k618 
o|contracted procedure: k632 
o|contracted procedure: k645 
o|contracted procedure: k657 
o|contracted procedure: k653 
o|contracted procedure: k649 
o|contracted procedure: k670 
o|contracted procedure: k676 
o|contracted procedure: k683 
o|contracted procedure: k689 
o|contracted procedure: k692 
o|contracted procedure: k709 
o|contracted procedure: k698 
o|contracted procedure: k705 
o|contracted procedure: k718 
o|contracted procedure: k724 
o|contracted procedure: k731 
o|contracted procedure: k737 
o|contracted procedure: k740 
o|contracted procedure: k759 
o|contracted procedure: k747 
o|contracted procedure: k755 
o|contracted procedure: k751 
o|contracted procedure: k780 
o|contracted procedure: k801 
o|contracted procedure: k825 
o|contracted procedure: k844 
o|contracted procedure: k875 
o|contracted procedure: k882 
o|contracted procedure: k893 
o|contracted procedure: k896 
o|contracted procedure: k899 
o|contracted procedure: k912 
o|contracted procedure: k927 
o|contracted procedure: k937 
o|contracted procedure: k941 
o|contracted procedure: k963 
o|contracted procedure: k973 
o|contracted procedure: k977 
o|contracted procedure: k996 
o|contracted procedure: k1000 
o|contracted procedure: k1004 
o|simplifications: ((if . 1) (let . 15)) 
o|removed binding forms: 71 
o|substituted constant variable: r997 
o|substituted constant variable: r1001 
o|substituted constant variable: r1005 
o|removed binding forms: 3 
o|customizable procedures: (g104112 for-each-loop103115 g140147 for-each-loop139153 loop-level129 loop123) 
o|calls to known targets: 11 
o|fast box initializations: 4 
*/
/* end of file */
