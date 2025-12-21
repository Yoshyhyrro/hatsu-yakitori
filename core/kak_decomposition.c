/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
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


C_noret_decl(f_431)
static void C_ccall f_431(C_word c,C_word *av) C_noret;
C_noret_decl(f_434)
static void C_ccall f_434(C_word c,C_word *av) C_noret;
C_noret_decl(f_437)
static void C_ccall f_437(C_word c,C_word *av) C_noret;
C_noret_decl(f_440)
static void C_ccall f_440(C_word c,C_word *av) C_noret;
C_noret_decl(f_443)
static void C_ccall f_443(C_word c,C_word *av) C_noret;
C_noret_decl(f_446)
static void C_ccall f_446(C_word c,C_word *av) C_noret;
C_noret_decl(f_449)
static void C_ccall f_449(C_word c,C_word *av) C_noret;
C_noret_decl(f_452)
static void C_ccall f_452(C_word c,C_word *av) C_noret;
C_noret_decl(f_455)
static void C_ccall f_455(C_word c,C_word *av) C_noret;
C_noret_decl(f_483)
static void C_ccall f_483(C_word c,C_word *av) C_noret;
C_noret_decl(f_533)
static void C_ccall f_533(C_word c,C_word *av) C_noret;
C_noret_decl(f_612)
static void C_ccall f_612(C_word c,C_word *av) C_noret;
C_noret_decl(f_642)
static void C_ccall f_642(C_word c,C_word *av) C_noret;
C_noret_decl(f_688)
static void C_ccall f_688(C_word c,C_word *av) C_noret;
C_noret_decl(f_733)
static void C_ccall f_733(C_word c,C_word *av) C_noret;
C_noret_decl(f_739)
static void C_ccall f_739(C_word c,C_word *av) C_noret;
C_noret_decl(f_743)
static void C_ccall f_743(C_word c,C_word *av) C_noret;
C_noret_decl(f_752)
static void C_ccall f_752(C_word c,C_word *av) C_noret;
C_noret_decl(f_754)
static void C_ccall f_754(C_word c,C_word *av) C_noret;
C_noret_decl(f_761)
static void C_ccall f_761(C_word c,C_word *av) C_noret;
C_noret_decl(f_773)
static void C_ccall f_773(C_word c,C_word *av) C_noret;
C_noret_decl(f_781)
static void C_ccall f_781(C_word c,C_word *av) C_noret;
C_noret_decl(f_786)
static void C_ccall f_786(C_word c,C_word *av) C_noret;
C_noret_decl(f_787)
static void C_fcall f_787(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_797)
static void C_ccall f_797(C_word c,C_word *av) C_noret;
C_noret_decl(f_801)
static void C_ccall f_801(C_word c,C_word *av) C_noret;
C_noret_decl(f_806)
static void C_fcall f_806(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_816)
static void C_ccall f_816(C_word c,C_word *av) C_noret;
C_noret_decl(f_823)
static void C_ccall f_823(C_word c,C_word *av) C_noret;
C_noret_decl(f_825)
static void C_fcall f_825(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_831)
static void C_ccall f_831(C_word c,C_word *av) C_noret;
C_noret_decl(f_837)
static void C_ccall f_837(C_word c,C_word *av) C_noret;
C_noret_decl(f_854)
static void C_ccall f_854(C_word c,C_word *av) C_noret;
C_noret_decl(f_857)
static void C_ccall f_857(C_word c,C_word *av) C_noret;
C_noret_decl(f_858)
static void C_fcall f_858(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_872)
static void C_ccall f_872(C_word c,C_word *av) C_noret;
C_noret_decl(f_876)
static void C_ccall f_876(C_word c,C_word *av) C_noret;
C_noret_decl(f_882)
static void C_ccall f_882(C_word c,C_word *av) C_noret;
C_noret_decl(f_887)
static void C_fcall f_887(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_897)
static void C_ccall f_897(C_word c,C_word *av) C_noret;
C_noret_decl(f_913)
static void C_ccall f_913(C_word c,C_word *av) C_noret;
C_noret_decl(f_921)
static void C_ccall f_921(C_word c,C_word *av) C_noret;
C_noret_decl(f_923)
static void C_fcall f_923(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_933)
static void C_ccall f_933(C_word c,C_word *av) C_noret;
C_noret_decl(f_946)
static void C_ccall f_946(C_word c,C_word *av) C_noret;
C_noret_decl(f_950)
static void C_ccall f_950(C_word c,C_word *av) C_noret;
C_noret_decl(f_955)
static void C_ccall f_955(C_word c,C_word *av) C_noret;
C_noret_decl(C_kak_5fdecomposition_toplevel)
C_externexport void C_ccall C_kak_5fdecomposition_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_787)
static void C_ccall trf_787(C_word c,C_word *av) C_noret;
static void C_ccall trf_787(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_787(t0,t1,t2);}

C_noret_decl(trf_806)
static void C_ccall trf_806(C_word c,C_word *av) C_noret;
static void C_ccall trf_806(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_806(t0,t1,t2,t3);}

C_noret_decl(trf_825)
static void C_ccall trf_825(C_word c,C_word *av) C_noret;
static void C_ccall trf_825(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_825(t0,t1,t2,t3);}

C_noret_decl(trf_858)
static void C_ccall trf_858(C_word c,C_word *av) C_noret;
static void C_ccall trf_858(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_858(t0,t1,t2);}

C_noret_decl(trf_887)
static void C_ccall trf_887(C_word c,C_word *av) C_noret;
static void C_ccall trf_887(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_887(t0,t1,t2);}

C_noret_decl(trf_923)
static void C_ccall trf_923(C_word c,C_word *av) C_noret;
static void C_ccall trf_923(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_923(t0,t1,t2);}

/* k429 */
static void C_ccall f_431(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_431,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_434,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k432 in k429 */
static void C_ccall f_434(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_434,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_437,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d1_toplevel(2,av2);}}

/* k435 in k432 in k429 */
static void C_ccall f_437(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_437,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_440,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d69_toplevel(2,av2);}}

/* k438 in k435 in k432 in k429 */
static void C_ccall f_440(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(21,c,2)))){
C_save_and_reclaim((void *)f_440,c,av);}
a=C_alloc(21);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_443,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_955,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:5: ##sys#with-environment */
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

/* k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_443(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_443,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_446,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_446(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_446,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_449,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:10: chicken.load#load-extension */
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

/* k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_449(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_449,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_452,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:10: chicken.load#load-extension */
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

/* k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_452(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(20,c,7)))){
C_save_and_reclaim((void *)f_452,c,av);}
a=C_alloc(20);
t2=C_mutate((C_word*)lf[2]+1 /* (set! kak_decomposition#+INF+ ...) */,lf[3]);
t3=C_mutate((C_word*)lf[4]+1 /* (set! kak_decomposition#K-frontier ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_455,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[9]+1 /* (set! kak_decomposition#K-push ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_483,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[11]+1 /* (set! kak_decomposition#K-pop ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_533,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[14]+1 /* (set! kak_decomposition#K-empty? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_642,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[16]+1 /* (set! kak_decomposition#K-size ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_688,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[18]+1 /* (set! kak_decomposition#K-frontier-adaptive ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_733,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[19]+1 /* (set! kak_decomposition#relax-bound ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_739,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[22]+1 /* (set! kak_decomposition#graph-neighbors ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_754,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[25]+1 /* (set! kak_decomposition#KAK-apply ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_781,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[31]+1 /* (set! kak_decomposition#KAK-apply-golay ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_946,tmp=(C_word)a,a+=2,tmp));
t13=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t13;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t13+1)))(2,av2);}}

/* kak_decomposition#K-frontier in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_455(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_455,c,av);}
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:27: chicken.base#error */
t5=*((C_word*)lf[7]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t1;
av2[2]=lf[8];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}}}

/* kak_decomposition#K-push in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_483(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_483,c,av);}
a=C_alloc(9);
t4=C_i_car(t2);
t5=C_eqp(t4,lf[5]);
if(C_truep(t5)){
t6=C_u_i_cdr(t2);
t7=C_a_i_cons(&a,2,t3,t6);
t8=t1;{
C_word *av2=av;
av2[0]=t8;
av2[1]=C_a_i_cons(&a,2,lf[5],t7);
((C_proc)(void*)(*((C_word*)t8+1)))(2,av2);}}
else{
t6=C_eqp(t4,lf[6]);
if(C_truep(t6)){
t7=C_u_i_cdr(t2);
t8=C_i_car(t7);
t9=C_u_i_cdr(t7);
t10=C_a_i_cons(&a,2,t3,t9);
t11=C_a_i_cons(&a,2,t8,t10);
t12=t1;{
C_word *av2=av;
av2[0]=t12;
av2[1]=C_a_i_cons(&a,2,lf[6],t11);
((C_proc)(void*)(*((C_word*)t12+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:40: chicken.base#error */
t7=*((C_word*)lf[7]+1);{
C_word *av2=av;
av2[0]=t7;
av2[1]=t1;
av2[2]=lf[10];
av2[3]=t4;
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}}}

/* kak_decomposition#K-pop in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_533(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_533,c,av);}
a=C_alloc(6);
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=C_u_i_cdr(t2);
if(C_truep(C_i_nullp(t5))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:49: scheme#values */{
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
t7=C_u_i_cdr(t5);
t8=C_a_i_cons(&a,2,lf[5],t7);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:50: scheme#values */{
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
t6=C_u_i_cdr(t2);
t7=C_i_car(t6);
t8=C_u_i_cdr(t6);
t9=C_i_nullp(t7);
if(C_truep(C_i_not(t9))){
t10=C_i_car(t7);
t11=C_u_i_cdr(t7);
t12=C_a_i_cons(&a,2,t11,t8);
t13=C_a_i_cons(&a,2,lf[6],t12);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:58: scheme#values */{
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:62: scheme#values */{
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
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_612,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:65: scheme#reverse */
t11=*((C_word*)lf[12]+1);{
C_word *av2=av;
av2[0]=t11;
av2[1]=t10;
av2[2]=t8;
((C_proc)(void*)(*((C_word*)t11+1)))(3,av2);}}}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:69: chicken.base#error */
t6=*((C_word*)lf[7]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t1;
av2[2]=lf[13];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}}

/* k610 in kak_decomposition#K-pop in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_612(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_612,c,av);}
a=C_alloc(6);
t2=C_i_car(t1);
t3=C_u_i_cdr(t1);
t4=C_a_i_cons(&a,2,t3,C_SCHEME_END_OF_LIST);
t5=C_a_i_cons(&a,2,lf[6],t4);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:66: scheme#values */{
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

/* kak_decomposition#K-empty? in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_642(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_642,c,av);}
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_i_nullp(C_u_i_cdr(t2));
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t3,lf[6]);
if(C_truep(t5)){
t6=C_u_i_cdr(t2);
t7=C_i_car(t6);
t8=C_i_nullp(t7);
t9=t1;{
C_word *av2=av;
av2[0]=t9;
av2[1]=(C_truep(t8)?C_i_nullp(C_u_i_cdr(t6)):C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t9+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:78: chicken.base#error */
t6=*((C_word*)lf[7]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t1;
av2[2]=lf[15];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}}

/* kak_decomposition#K-size in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_688(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_688,c,av);}
a=C_alloc(5);
t3=C_i_car(t2);
t4=C_eqp(t3,lf[5]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_i_length(C_u_i_cdr(t2));
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t3,lf[6]);
if(C_truep(t5)){
t6=C_u_i_cdr(t2);
t7=C_i_car(t6);
t8=C_i_length(t7);
t9=C_i_length(C_u_i_cdr(t6));
t10=t1;{
C_word *av2=av;
av2[0]=t10;
av2[1]=C_a_i_fixnum_plus(&a,2,t8,t9);
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:87: chicken.base#error */
t6=*((C_word*)lf[7]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t1;
av2[2]=lf[17];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}}

/* kak_decomposition#K-frontier-adaptive in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_733(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_733,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:96: K-frontier */
t3=C_fast_retrieve(lf[4]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t1;
av2[2]=lf[6];
f_455(3,av2);}}

/* kak_decomposition#relax-bound in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_739(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_739,c,av);}
a=C_alloc(6);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_743,a[2]=t4,a[3]=t1,a[4]=t2,a[5]=t3,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:99: srfi-69#hash-table-ref/default */
t6=C_fast_retrieve(lf[21]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
av2[4]=C_fast_retrieve(lf[2]);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k741 in kak_decomposition#relax-bound in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_743(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_743,c,av);}
a=C_alloc(3);
if(C_truep(C_i_lessp(((C_word*)t0)[2],t1))){
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_752,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:102: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[20]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
av2[4]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k750 in k741 in kak_decomposition#relax-bound in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_752(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_752,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_decomposition#graph-neighbors in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_754(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_754,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_761,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:108: srfi-69#hash-table? */
t5=C_fast_retrieve(lf[24]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k759 in kak_decomposition#graph-neighbors in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_761(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_761,c,av);}
a=C_alloc(3);
if(C_truep(t1)){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:109: srfi-69#hash-table-ref/default */
t2=C_fast_retrieve(lf[21]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}
else{
if(C_truep(C_i_listp(((C_word*)t0)[3]))){
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_773,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:111: srfi-1#assoc */
t3=C_fast_retrieve(lf[23]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}
else{
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}}

/* k771 in k759 in kak_decomposition#graph-neighbors in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_773(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_773,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=(C_truep(t1)?C_i_cdr(t1):C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_781(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_781,c,av);}
a=C_alloc(10);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_786,a[2]=t8,a[3]=t3,a[4]=t6,a[5]=t2,a[6]=t5,a[7]=t1,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:129: srfi-69#make-hash-table */
t10=C_fast_retrieve(lf[30]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}

/* k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_786(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,3)))){
C_save_and_reclaim((void *)f_786,c,av);}
a=C_alloc(17);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_787,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=C_i_check_list_2(((C_word*)t0)[3],lf[27]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_797,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[7],a[7]=((C_word*)t0)[3],tmp=(C_word)a,a+=8,tmp);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_923,a[2]=t7,a[3]=t3,tmp=(C_word)a,a+=4,tmp));
t9=((C_word*)t7)[1];
f_923(t9,t5,((C_word*)t0)[3]);}

/* g104 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_787(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_787,3,t0,t1,t2);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:132: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[20]);{
C_word av2[5];
av2[0]=t3;
av2[1]=t1;
av2[2]=((C_word*)((C_word*)t0)[2])[1];
av2[3]=t2;
av2[4]=lf[26];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_797(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,4)))){
C_save_and_reclaim((void *)f_797,c,av);}
a=C_alloc(17);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_801,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_913,tmp=(C_word)a,a+=2,tmp);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_921,a[2]=t4,a[3]=t5,a[4]=((C_word*)t0)[7],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:137: K-frontier */
t7=C_fast_retrieve(lf[4]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=((C_word*)t0)[5];
f_455(3,av2);}}

/* k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_801(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_801,c,av);}
a=C_alloc(9);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_806,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t4,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp));
t6=((C_word*)t4)[1];
f_806(t6,((C_word*)t0)[7],((C_word*)((C_word*)t0)[2])[1],C_fix(0));}

/* loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_806(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,2)))){
C_save_and_reclaim_args((void *)trf_806,4,t0,t1,t2,t3);}
a=C_alloc(9);
t4=C_i_greater_or_equalp(t3,((C_word*)t0)[2]);
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_816,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=t2,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
if(C_truep(t4)){
t6=t5;{
C_word av2[2];
av2[0]=t6;
av2[1]=t4;
f_816(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:143: K-empty? */
t6=C_fast_retrieve(lf[14]);{
C_word av2[3];
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
f_642(3,av2);}}}

/* k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_816(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,2)))){
C_save_and_reclaim((void *)f_816,c,av);}
a=C_alloc(8);
if(C_truep(t1)){
t2=((C_word*)((C_word*)t0)[2])[1];
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_823,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[3],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:147: K-frontier */
t3=C_fast_retrieve(lf[4]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[8];
f_455(3,av2);}}}

/* k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_823(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_823,c,av);}
a=C_alloc(9);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_825,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp));
t5=((C_word*)t3)[1];
f_825(t5,((C_word*)t0)[6],((C_word*)t0)[7],t1);}

/* loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_825(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,0,5)))){
C_save_and_reclaim_args((void *)trf_825,4,t0,t1,t2,t3);}
a=C_alloc(13);
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_831,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t6=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_837,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t4,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:148: scheme#call-with-values */{
C_word av2[4];
av2[0]=0;
av2[1]=t1;
av2[2]=t5;
av2[3]=t6;
C_call_with_values(4,av2);}}

/* a830 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_831(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_831,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:149: K-pop */
t2=C_fast_retrieve(lf[11]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
f_533(3,av2);}}

/* a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_837(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_837,c,av);}
a=C_alloc(29);
if(C_truep(C_i_not(t2))){
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:153: loop */
t6=((C_word*)((C_word*)t0)[3])[1];
f_806(t6,t1,((C_word*)((C_word*)t0)[4])[1],t5);}
else{
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_854,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[6],a[5]=t1,a[6]=t4,a[7]=((C_word*)t0)[7],a[8]=t3,tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:156: srfi-69#hash-table-ref */
t6=C_fast_retrieve(lf[28]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)((C_word*)t0)[5])[1];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}

/* k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_854(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_854,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_857,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:157: graph-neighbors */
t3=C_fast_retrieve(lf[22]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[7];
av2[3]=((C_word*)t0)[8];
f_754(4,av2);}}

/* k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_857(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,3)))){
C_save_and_reclaim((void *)f_857,c,av);}
a=C_alloc(17);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_858,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_i_check_list_2(t1,lf[27]);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_882,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[7],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_887,a[2]=t6,a[3]=t2,tmp=(C_word)a,a+=4,tmp));
t8=((C_word*)t6)[1];
f_887(t8,t4,t1);}

/* g140 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_858(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(34,0,4)))){
C_save_and_reclaim_args((void *)trf_858,3,t0,t1,t2);}
a=C_alloc(34);
t3=C_i_car(t2);
t4=C_u_i_cdr(t2);
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[2],t4);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_872,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:165: relax-bound */
t7=C_fast_retrieve(lf[19]);{
C_word av2[5];
av2[0]=t7;
av2[1]=t6;
av2[2]=((C_word*)((C_word*)t0)[4])[1];
av2[3]=t3;
av2[4]=t5;
f_739(5,av2);}}

/* k870 in g140 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_872(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_872,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_876,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:167: K-push */
t3=C_fast_retrieve(lf[9]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)((C_word*)t0)[2])[1];
av2[3]=((C_word*)t0)[4];
f_483(4,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k874 in k870 in g140 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 in ... */
static void C_ccall f_876(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_876,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k880 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_882(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_882,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:171: loop-level */
t2=((C_word*)((C_word*)t0)[2])[1];
f_825(t2,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)((C_word*)t0)[5])[1]);}

/* for-each-loop139 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_887(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_887,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_897,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:160: g140 */
t4=((C_word*)t0)[3];
f_858(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k895 in for-each-loop139 in k855 in k852 in a836 in loop-level in k821 in k814 in loop in k799 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_897(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_897,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_887(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* a912 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_913(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_913,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:136: K-push */
t4=C_fast_retrieve(lf[9]);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t1;
av2[2]=t3;
av2[3]=t2;
f_483(4,av2);}}

/* k919 in k795 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_921(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_921,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:136: srfi-1#fold */
t2=C_fast_retrieve(lf[29]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* for-each-loop103 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_fcall f_923(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_923,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_933,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:132: g104 */
t4=((C_word*)t0)[3];
f_787(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k931 in for-each-loop103 in k784 in kak_decomposition#KAK-apply in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_933(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_933,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_923(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* kak_decomposition#KAK-apply-golay in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_946(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_946,c,av);}
a=C_alloc(3);
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_950,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:180: KAK-apply */
t8=C_fast_retrieve(lf[25]);{
C_word *av2=av;
av2[0]=t8;
av2[1]=t7;
av2[2]=t2;
av2[3]=t3;
av2[4]=t4;
av2[5]=lf[6];
av2[6]=t5;
f_781(7,av2);}}

/* k948 in kak_decomposition#KAK-apply-golay in k450 in k447 in k444 in k441 in k438 in k435 in k432 in k429 */
static void C_ccall f_950(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_950,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:181: scheme#values */{
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

/* a954 in k438 in k435 in k432 in k429 */
static void C_ccall f_955(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_955,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/kak_decomposition.scm:5: ##sys#register-compiled-module */
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_431,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[49] = {
{C_text("f_431:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_431},
{C_text("f_434:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_434},
{C_text("f_437:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_437},
{C_text("f_440:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_440},
{C_text("f_443:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_443},
{C_text("f_446:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_446},
{C_text("f_449:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_449},
{C_text("f_452:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_452},
{C_text("f_455:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_455},
{C_text("f_483:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_483},
{C_text("f_533:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_533},
{C_text("f_612:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_612},
{C_text("f_642:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_642},
{C_text("f_688:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_688},
{C_text("f_733:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_733},
{C_text("f_739:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_739},
{C_text("f_743:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_743},
{C_text("f_752:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_752},
{C_text("f_754:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_754},
{C_text("f_761:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_761},
{C_text("f_773:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_773},
{C_text("f_781:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_781},
{C_text("f_786:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_786},
{C_text("f_787:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_787},
{C_text("f_797:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_797},
{C_text("f_801:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_801},
{C_text("f_806:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_806},
{C_text("f_816:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_816},
{C_text("f_823:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_823},
{C_text("f_825:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_825},
{C_text("f_831:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_831},
{C_text("f_837:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_837},
{C_text("f_854:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_854},
{C_text("f_857:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_857},
{C_text("f_858:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_858},
{C_text("f_872:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_872},
{C_text("f_876:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_876},
{C_text("f_882:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_882},
{C_text("f_887:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_887},
{C_text("f_897:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_897},
{C_text("f_913:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_913},
{C_text("f_921:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_921},
{C_text("f_923:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_923},
{C_text("f_933:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_933},
{C_text("f_946:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_946},
{C_text("f_950:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_950},
{C_text("f_955:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)f_955},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fkak_5fdecomposition_2escm"),(void*)C_kak_5fdecomposition_toplevel},
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
o|specializations:
o|  1 (scheme#+ fixnum fixnum)
o|  16 (scheme#cdr pair)
o|  8 (scheme#eqv? * (or eof null fixnum char boolean symbol keyword))
(o e)|safe calls: 97 
o|inlining procedure: k457 
o|inlining procedure: k457 
o|inlining procedure: k488 
o|inlining procedure: k488 
o|substituted constant variable: a529 
o|substituted constant variable: a531 
o|inlining procedure: k538 
o|inlining procedure: k538 
o|inlining procedure: k578 
o|inlining procedure: k578 
o|substituted constant variable: a638 
o|substituted constant variable: a640 
o|inlining procedure: k647 
o|inlining procedure: k647 
o|inlining procedure: k665 
o|inlining procedure: k665 
o|substituted constant variable: a684 
o|substituted constant variable: a686 
o|inlining procedure: k693 
o|inlining procedure: k693 
o|substituted constant variable: a729 
o|substituted constant variable: a731 
o|inlining procedure: k744 
o|inlining procedure: k744 
o|inlining procedure: k756 
o|inlining procedure: k756 
o|inlining procedure: k774 
o|inlining procedure: k774 
o|inlining procedure: k808 
o|inlining procedure: k808 
o|inlining procedure: k839 
o|inlining procedure: k867 
o|inlining procedure: k867 
o|inlining procedure: k839 
o|inlining procedure: k889 
o|inlining procedure: k889 
o|inlining procedure: k925 
o|inlining procedure: k925 
o|replaced variables: 143 
o|removed binding forms: 34 
o|substituted constant variable: r666983 
o|substituted constant variable: r745986 
o|substituted constant variable: r745987 
o|substituted constant variable: r775991 
o|replaced variables: 1 
o|removed binding forms: 136 
o|removed binding forms: 5 
o|simplifications: ((if . 2) (let . 4) (##core#call . 70)) 
o|  call simplifications:
o|    scheme#list	3
o|    scheme#>=
o|    scheme#call-with-values
o|    ##sys#check-list	2
o|    scheme#pair?	2
o|    ##sys#slot	4
o|    scheme#+	2
o|    scheme#list?
o|    scheme#cdr
o|    scheme#<
o|    scheme#length	3
o|    scheme#not	2
o|    scheme#null?	6
o|    scheme#values	6
o|    scheme#car	12
o|    scheme#eq?	10
o|    scheme#cons	13
o|contracted procedure: k460 
o|contracted procedure: k469 
o|contracted procedure: k476 
o|contracted procedure: k485 
o|contracted procedure: k491 
o|contracted procedure: k498 
o|contracted procedure: k506 
o|contracted procedure: k510 
o|contracted procedure: k522 
o|contracted procedure: k518 
o|contracted procedure: k535 
o|contracted procedure: k541 
o|contracted procedure: k548 
o|contracted procedure: k558 
o|contracted procedure: k562 
o|contracted procedure: k570 
o|contracted procedure: k574 
o|contracted procedure: k631 
o|contracted procedure: k581 
o|contracted procedure: k588 
o|contracted procedure: k596 
o|contracted procedure: k592 
o|contracted procedure: k604 
o|contracted procedure: k617 
o|contracted procedure: k625 
o|contracted procedure: k621 
o|contracted procedure: k644 
o|contracted procedure: k650 
o|contracted procedure: k661 
o|contracted procedure: k677 
o|contracted procedure: k668 
o|contracted procedure: k690 
o|contracted procedure: k696 
o|contracted procedure: k707 
o|contracted procedure: k722 
o|contracted procedure: k712 
o|contracted procedure: k716 
o|contracted procedure: k747 
o|contracted procedure: k768 
o|contracted procedure: k792 
o|contracted procedure: k811 
o|contracted procedure: k842 
o|contracted procedure: k849 
o|contracted procedure: k860 
o|contracted procedure: k864 
o|contracted procedure: k877 
o|contracted procedure: k892 
o|contracted procedure: k902 
o|contracted procedure: k906 
o|contracted procedure: k928 
o|contracted procedure: k938 
o|contracted procedure: k942 
o|contracted procedure: k961 
o|contracted procedure: k965 
o|contracted procedure: k969 
o|simplifications: ((let . 12)) 
o|removed binding forms: 55 
o|substituted constant variable: r962 
o|substituted constant variable: r966 
o|substituted constant variable: r970 
o|removed binding forms: 3 
o|customizable procedures: (g104112 for-each-loop103115 g140147 for-each-loop139153 loop-level129 loop123) 
o|calls to known targets: 21 
o|fast box initializations: 4 
*/
/* end of file */
