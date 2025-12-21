/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   unit: kak_physics_core
   uses: eval srfi-4 extras library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d4_toplevel)
C_externimport void C_ccall C_srfi_2d4_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_extras_toplevel)
C_externimport void C_ccall C_extras_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[43];
static double C_possibly_force_alignment;


C_noret_decl(f_321)
static void C_ccall f_321(C_word c,C_word *av) C_noret;
C_noret_decl(f_324)
static void C_ccall f_324(C_word c,C_word *av) C_noret;
C_noret_decl(f_327)
static void C_ccall f_327(C_word c,C_word *av) C_noret;
C_noret_decl(f_330)
static void C_ccall f_330(C_word c,C_word *av) C_noret;
C_noret_decl(f_333)
static void C_ccall f_333(C_word c,C_word *av) C_noret;
C_noret_decl(f_348)
static void C_ccall f_348(C_word c,C_word *av) C_noret;
C_noret_decl(f_357)
static void C_ccall f_357(C_word c,C_word *av) C_noret;
C_noret_decl(f_366)
static void C_ccall f_366(C_word c,C_word *av) C_noret;
C_noret_decl(f_375)
static void C_ccall f_375(C_word c,C_word *av) C_noret;
C_noret_decl(f_384)
static void C_ccall f_384(C_word c,C_word *av) C_noret;
C_noret_decl(f_393)
static void C_ccall f_393(C_word c,C_word *av) C_noret;
C_noret_decl(f_402)
static void C_ccall f_402(C_word c,C_word *av) C_noret;
C_noret_decl(f_411)
static void C_ccall f_411(C_word c,C_word *av) C_noret;
C_noret_decl(f_420)
static void C_ccall f_420(C_word c,C_word *av) C_noret;
C_noret_decl(f_429)
static void C_ccall f_429(C_word c,C_word *av) C_noret;
C_noret_decl(f_447)
static void C_ccall f_447(C_word c,C_word *av) C_noret;
C_noret_decl(f_458)
static void C_ccall f_458(C_word c,C_word *av) C_noret;
C_noret_decl(f_462)
static void C_ccall f_462(C_word c,C_word *av) C_noret;
C_noret_decl(f_466)
static void C_ccall f_466(C_word c,C_word *av) C_noret;
C_noret_decl(f_468)
static void C_ccall f_468(C_word c,C_word *av) C_noret;
C_noret_decl(f_487)
static void C_ccall f_487(C_word c,C_word *av) C_noret;
C_noret_decl(f_492)
static void C_fcall f_492(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_502)
static void C_ccall f_502(C_word c,C_word *av) C_noret;
C_noret_decl(f_511)
static void C_fcall f_511(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_614)
static void C_ccall f_614(C_word c,C_word *av) C_noret;
C_noret_decl(f_633)
static void C_ccall f_633(C_word c,C_word *av) C_noret;
C_noret_decl(f_638)
static void C_fcall f_638(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_648)
static void C_ccall f_648(C_word c,C_word *av) C_noret;
C_noret_decl(f_657)
static void C_fcall f_657(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_774)
static void C_ccall f_774(C_word c,C_word *av) C_noret;
C_noret_decl(f_782)
static void C_ccall f_782(C_word c,C_word *av) C_noret;
C_noret_decl(f_797)
static void C_ccall f_797(C_word c,C_word *av) C_noret;
C_noret_decl(f_799)
static void C_fcall f_799(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_833)
static void C_ccall f_833(C_word c,C_word *av) C_noret;
C_noret_decl(f_837)
static void C_ccall f_837(C_word c,C_word *av) C_noret;
C_noret_decl(f_847)
static void C_fcall f_847(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_861)
static void C_fcall f_861(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_886)
static void C_ccall f_886(C_word c,C_word *av) C_noret;
C_noret_decl(f_895)
static void C_ccall f_895(C_word c,C_word *av) C_noret;
C_noret_decl(f_901)
static void C_ccall f_901(C_word c,C_word *av) C_noret;
C_noret_decl(f_912)
static void C_ccall f_912(C_word c,C_word *av) C_noret;
C_noret_decl(f_915)
static void C_ccall f_915(C_word c,C_word *av) C_noret;
C_noret_decl(C_kak_5fphysics_5fcore_toplevel)
C_externexport void C_ccall C_kak_5fphysics_5fcore_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_492)
static void C_ccall trf_492(C_word c,C_word *av) C_noret;
static void C_ccall trf_492(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_492(t0,t1,t2);}

C_noret_decl(trf_511)
static void C_ccall trf_511(C_word c,C_word *av) C_noret;
static void C_ccall trf_511(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_511(t0,t1,t2);}

C_noret_decl(trf_638)
static void C_ccall trf_638(C_word c,C_word *av) C_noret;
static void C_ccall trf_638(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_638(t0,t1,t2);}

C_noret_decl(trf_657)
static void C_ccall trf_657(C_word c,C_word *av) C_noret;
static void C_ccall trf_657(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_657(t0,t1,t2);}

C_noret_decl(trf_799)
static void C_ccall trf_799(C_word c,C_word *av) C_noret;
static void C_ccall trf_799(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_799(t0,t1,t2);}

C_noret_decl(trf_847)
static void C_ccall trf_847(C_word c,C_word *av) C_noret;
static void C_ccall trf_847(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_847(t0,t1,t2);}

C_noret_decl(trf_861)
static void C_ccall trf_861(C_word c,C_word *av) C_noret;
static void C_ccall trf_861(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_861(t0,t1,t2);}

/* k319 */
static void C_ccall f_321(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_321,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_324,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k322 in k319 */
static void C_ccall f_324(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_324,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_327,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d4_toplevel(2,av2);}}

/* k325 in k322 in k319 */
static void C_ccall f_327(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_327,c,av);}
a=C_alloc(21);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_330,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_915,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:9: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[42]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[42]+1);
av2[1]=t4;
av2[2]=t5;
tp(3,av2);}}

/* k328 in k325 in k322 in k319 */
static void C_ccall f_330(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_330,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_333,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_333(C_word c,C_word *av){
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
C_word t21;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(36,c,8)))){
C_save_and_reclaim((void *)f_333,c,av);}
a=C_alloc(36);
t2=C_mutate((C_word*)lf[2]+1 /* (set! kak_physics_core#grid-width ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_348,tmp=(C_word)a,a+=2,tmp));
t3=C_mutate((C_word*)lf[5]+1 /* (set! kak_physics_core#grid-height ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_357,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[7]+1 /* (set! kak_physics_core#grid-ez ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_366,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[9]+1 /* (set! kak_physics_core#grid-hx ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_375,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[11]+1 /* (set! kak_physics_core#grid-hy ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_384,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[13]+1 /* (set! kak_physics_core#grid-dt ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_393,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[15]+1 /* (set! kak_physics_core#grid-dx ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_402,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[17]+1 /* (set! kak_physics_core#grid-eps ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_411,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[19]+1 /* (set! kak_physics_core#grid-mu ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_420,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[21]+1 /* (set! kak_physics_core#yee-grid-fields ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_429,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[22]+1 /* (set! kak_physics_core#make-yee-grid ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_447,tmp=(C_word)a,a+=2,tmp));
t13=C_mutate((C_word*)lf[25]+1 /* (set! kak_physics_core#update-e-fields! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_468,tmp=(C_word)a,a+=2,tmp));
t14=C_mutate((C_word*)lf[27]+1 /* (set! kak_physics_core#update-h-fields! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_614,tmp=(C_word)a,a+=2,tmp));
t15=C_mutate((C_word*)lf[28]+1 /* (set! kak_physics_core#l2-norm ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_774,tmp=(C_word)a,a+=2,tmp));
t16=C_mutate((C_word*)lf[32]+1 /* (set! kak_physics_core#normalize-vector ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_833,tmp=(C_word)a,a+=2,tmp));
t17=C_mutate((C_word*)lf[34]+1 /* (set! kak_physics_core#r2->complex ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_895,tmp=(C_word)a,a+=2,tmp));
t18=C_mutate((C_word*)lf[36]+1 /* (set! kak_physics_core#cartan-decompose ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_901,tmp=(C_word)a,a+=2,tmp));
t19=C_mutate((C_word*)lf[38]+1 /* (set! kak_physics_core#tau-threshold ...) */,lf[37]);
t20=C_mutate((C_word*)lf[39]+1 /* (set! kak_physics_core#meep-simulate ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_912,tmp=(C_word)a,a+=2,tmp));
t21=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t21;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t21+1)))(2,av2);}}

/* kak_physics_core#grid-width in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_348(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_348,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[4]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-height in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_357(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_357,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[6]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-ez in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_366(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_366,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[8]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(3));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-hx in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_375(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_375,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[10]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(4));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-hy in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_384(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_384,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[12]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(5));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-dt in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_393(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_393,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[14]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(6));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-dx in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_402(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_402,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[16]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(7));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-eps in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_411(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_411,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[18]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(8));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#grid-mu in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_420(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_420,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[20]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(9));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_physics_core#yee-grid-fields in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_429(C_word c,C_word *av){
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
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_429,c,av);}
t3=C_i_check_structure_2(t2,lf[3],lf[8]);
t4=C_i_block_ref(t2,C_fix(3));
t5=C_i_check_structure_2(t2,lf[3],lf[10]);
t6=C_i_block_ref(t2,C_fix(4));
t7=C_i_check_structure_2(t2,lf[3],lf[12]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:50: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t4;
av2[3]=t6;
av2[4]=C_i_block_ref(t2,C_fix(5));
C_values(5,av2);}}

/* kak_physics_core#make-yee-grid in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_447(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5=av[5];
C_word t6=av[6];
C_word t7=av[7];
C_word t8;
C_word t9;
C_word t10;
C_word *a;
if(c!=8) C_bad_argc_2(c,8,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(43,c,3)))){
C_save_and_reclaim((void *)f_447,c,av);}
a=C_alloc(43);
t8=C_s_a_i_times(&a,2,t2,t3);
t9=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_458,a[2]=t1,a[3]=t2,a[4]=t3,a[5]=t4,a[6]=t5,a[7]=t6,a[8]=t7,a[9]=t8,tmp=(C_word)a,a+=10,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:55: srfi-4#make-f64vector */
t10=C_fast_retrieve(lf[23]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
av2[2]=t8;
av2[3]=lf[24];
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}

/* k456 in kak_physics_core#make-yee-grid in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_458(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_458,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_462,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],a[10]=((C_word*)t0)[9],tmp=(C_word)a,a+=11,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:56: srfi-4#make-f64vector */
t3=C_fast_retrieve(lf[23]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[9];
av2[3]=lf[24];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}

/* k460 in k456 in kak_physics_core#make-yee-grid in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_462(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_462,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_466,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],a[10]=((C_word*)t0)[9],tmp=(C_word)a,a+=11,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:57: srfi-4#make-f64vector */
t3=C_fast_retrieve(lf[23]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[10];
av2[3]=lf[24];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}

/* k464 in k460 in k456 in kak_physics_core#make-yee-grid in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_466(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,1)))){
C_save_and_reclaim((void *)f_466,c,av);}
a=C_alloc(11);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_record(&a,10,lf[3],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[6],t1,((C_word*)t0)[7],((C_word*)t0)[8],((C_word*)t0)[9],((C_word*)t0)[10]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_physics_core#update-e-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_468(C_word c,C_word *av){
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
C_word t15;
C_word t16;
C_word t17;
C_word t18;
C_word t19;
C_word t20;
C_word t21;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(41,c,3)))){
C_save_and_reclaim((void *)f_468,c,av);}
a=C_alloc(41);
t3=C_i_check_structure_2(t2,lf[3],lf[4]);
t4=C_i_block_ref(t2,C_fix(1));
t5=C_i_check_structure_2(t2,lf[3],lf[6]);
t6=C_i_block_ref(t2,C_fix(2));
t7=C_i_check_structure_2(t2,lf[3],lf[8]);
t8=C_i_block_ref(t2,C_fix(3));
t9=C_i_check_structure_2(t2,lf[3],lf[10]);
t10=C_i_block_ref(t2,C_fix(4));
t11=C_i_check_structure_2(t2,lf[3],lf[12]);
t12=C_i_block_ref(t2,C_fix(5));
t13=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_487,a[2]=t4,a[3]=t6,a[4]=t8,a[5]=t12,a[6]=t10,a[7]=t1,tmp=(C_word)a,a+=8,tmp);
t14=C_i_check_structure_2(t2,lf[3],lf[14]);
t15=C_i_block_ref(t2,C_fix(6));
t16=C_i_check_structure_2(t2,lf[3],lf[18]);
t17=C_i_block_ref(t2,C_fix(8));
t18=C_i_check_structure_2(t2,lf[3],lf[16]);
t19=C_i_block_ref(t2,C_fix(7));
t20=C_s_a_i_times(&a,2,t17,t19);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[26]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t13;
av2[2]=t15;
av2[3]=t20;
tp(4,av2);}}

/* k485 in kak_physics_core#update-e-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_487(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_487,c,av);}
a=C_alloc(11);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_492,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=t1,tmp=(C_word)a,a+=9,tmp));
t5=((C_word*)t3)[1];
f_492(t5,((C_word*)t0)[7],C_fix(1));}

/* doloop88 in k485 in kak_physics_core#update-e-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_492(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(46,0,3)))){
C_save_and_reclaim_args((void *)trf_492,3,t0,t1,t2);}
a=C_alloc(46);
t3=C_s_a_i_minus(&a,2,((C_word*)t0)[2],C_fix(1));
if(C_truep(C_i_nequalp(t2,t3))){
t4=C_SCHEME_UNDEFINED;
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_502,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_511,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[2],a[4]=t2,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=t6,tmp=(C_word)a,a+=10,tmp));
t8=((C_word*)t6)[1];
f_511(t8,t4,C_fix(1));}}

/* k500 in doloop88 in k485 in kak_physics_core#update-e-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_502(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,2)))){
C_save_and_reclaim((void *)f_502,c,av);}
a=C_alloc(29);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=((C_word*)((C_word*)t0)[3])[1];
f_492(t3,((C_word*)t0)[4],t2);}

/* doloop91 in doloop88 in k485 in kak_physics_core#update-e-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_511(C_word t0,C_word t1,C_word t2){
C_word tmp;
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
C_word t21;
C_word t22;
C_word t23;
C_word t24;
double f0;
double f1;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(388,0,2)))){
C_save_and_reclaim_args((void *)trf_511,3,t0,t1,t2);}
a=C_alloc(388);
t3=C_s_a_i_minus(&a,2,((C_word*)t0)[2],C_fix(1));
if(C_truep(C_i_nequalp(t2,t3))){
t4=C_SCHEME_UNDEFINED;
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=C_s_a_i_times(&a,2,t2,((C_word*)t0)[3]);
t5=C_s_a_i_plus(&a,2,t4,((C_word*)t0)[4]);
t6=C_s_a_i_times(&a,2,t2,((C_word*)t0)[3]);
t7=C_s_a_i_minus(&a,2,((C_word*)t0)[4],C_fix(1));
t8=C_s_a_i_plus(&a,2,t6,t7);
t9=C_s_a_i_minus(&a,2,t2,C_fix(1));
t10=C_s_a_i_times(&a,2,t9,((C_word*)t0)[3]);
t11=C_s_a_i_plus(&a,2,t10,((C_word*)t0)[4]);
t12=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[5],t5);
t13=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t5);
t14=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t8);
f1=C_ub_i_flonum_difference(C_flonum_magnitude(t13),C_flonum_magnitude(t14));
t15=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[7],t5);
t16=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[7],t11);
f0=C_ub_i_flonum_difference(C_flonum_magnitude(t15),C_flonum_magnitude(t16));
t17=C_flonum(&a,C_ub_i_flonum_difference(f1,f0));
t18=C_s_a_i_times(&a,2,((C_word*)t0)[8],t17);
t19=C_s_a_i_plus(&a,2,t12,t18);
t20=C_i_f64vector_set(((C_word*)t0)[5],t5,t19);
t21=C_s_a_i_plus(&a,2,t2,C_fix(1));
t23=t1;
t24=t21;
t1=t23;
t2=t24;
goto loop;}}

/* kak_physics_core#update-h-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_614(C_word c,C_word *av){
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
C_word t15;
C_word t16;
C_word t17;
C_word t18;
C_word t19;
C_word t20;
C_word t21;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(41,c,3)))){
C_save_and_reclaim((void *)f_614,c,av);}
a=C_alloc(41);
t3=C_i_check_structure_2(t2,lf[3],lf[4]);
t4=C_i_block_ref(t2,C_fix(1));
t5=C_i_check_structure_2(t2,lf[3],lf[6]);
t6=C_i_block_ref(t2,C_fix(2));
t7=C_i_check_structure_2(t2,lf[3],lf[8]);
t8=C_i_block_ref(t2,C_fix(3));
t9=C_i_check_structure_2(t2,lf[3],lf[10]);
t10=C_i_block_ref(t2,C_fix(4));
t11=C_i_check_structure_2(t2,lf[3],lf[12]);
t12=C_i_block_ref(t2,C_fix(5));
t13=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_633,a[2]=t4,a[3]=t6,a[4]=t10,a[5]=t8,a[6]=t12,a[7]=t1,tmp=(C_word)a,a+=8,tmp);
t14=C_i_check_structure_2(t2,lf[3],lf[14]);
t15=C_i_block_ref(t2,C_fix(6));
t16=C_i_check_structure_2(t2,lf[3],lf[20]);
t17=C_i_block_ref(t2,C_fix(9));
t18=C_i_check_structure_2(t2,lf[3],lf[16]);
t19=C_i_block_ref(t2,C_fix(7));
t20=C_s_a_i_times(&a,2,t17,t19);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[26]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t13;
av2[2]=t15;
av2[3]=t20;
tp(4,av2);}}

/* k631 in kak_physics_core#update-h-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_633(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_633,c,av);}
a=C_alloc(11);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_638,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=t1,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp));
t5=((C_word*)t3)[1];
f_638(t5,((C_word*)t0)[7],C_fix(0));}

/* doloop109 in k631 in kak_physics_core#update-h-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_638(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(46,0,3)))){
C_save_and_reclaim_args((void *)trf_638,3,t0,t1,t2);}
a=C_alloc(46);
t3=C_s_a_i_minus(&a,2,((C_word*)t0)[2],C_fix(1));
if(C_truep(C_i_nequalp(t2,t3))){
t4=C_SCHEME_UNDEFINED;
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_648,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_657,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[2],a[4]=t2,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=t6,tmp=(C_word)a,a+=10,tmp));
t8=((C_word*)t6)[1];
f_657(t8,t4,C_fix(0));}}

/* k646 in doloop109 in k631 in kak_physics_core#update-h-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_648(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,2)))){
C_save_and_reclaim((void *)f_648,c,av);}
a=C_alloc(29);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=((C_word*)((C_word*)t0)[3])[1];
f_638(t3,((C_word*)t0)[4],t2);}

/* doloop112 in doloop109 in k631 in kak_physics_core#update-h-fields! in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_657(C_word t0,C_word t1,C_word t2){
C_word tmp;
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
C_word t21;
C_word t22;
C_word t23;
C_word t24;
C_word t25;
C_word t26;
C_word t27;
C_word t28;
C_word t29;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(458,0,2)))){
C_save_and_reclaim_args((void *)trf_657,3,t0,t1,t2);}
a=C_alloc(458);
t3=C_s_a_i_minus(&a,2,((C_word*)t0)[2],C_fix(1));
if(C_truep(C_i_nequalp(t2,t3))){
t4=C_SCHEME_UNDEFINED;
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=C_s_a_i_times(&a,2,t2,((C_word*)t0)[3]);
t5=C_s_a_i_plus(&a,2,t4,((C_word*)t0)[4]);
t6=C_s_a_i_times(&a,2,t2,((C_word*)t0)[3]);
t7=C_s_a_i_plus(&a,2,((C_word*)t0)[4],C_fix(1));
t8=C_s_a_i_plus(&a,2,t6,t7);
t9=C_s_a_i_plus(&a,2,t2,C_fix(1));
t10=C_s_a_i_times(&a,2,t9,((C_word*)t0)[3]);
t11=C_s_a_i_plus(&a,2,t10,((C_word*)t0)[4]);
t12=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[5],t5);
t13=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t11);
t14=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t5);
t15=C_flonum(&a,C_ub_i_flonum_difference(C_flonum_magnitude(t13),C_flonum_magnitude(t14)));
t16=C_s_a_i_times(&a,2,((C_word*)t0)[7],t15);
t17=C_s_a_i_minus(&a,2,t12,t16);
t18=C_i_f64vector_set(((C_word*)t0)[5],t5,t17);
t19=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[8],t5);
t20=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t8);
t21=C_a_i_f64vector_ref(&a,2,((C_word*)t0)[6],t5);
t22=C_flonum(&a,C_ub_i_flonum_difference(C_flonum_magnitude(t20),C_flonum_magnitude(t21)));
t23=C_s_a_i_times(&a,2,((C_word*)t0)[7],t22);
t24=C_s_a_i_plus(&a,2,t19,t23);
t25=C_i_f64vector_set(((C_word*)t0)[8],t5,t24);
t26=C_s_a_i_plus(&a,2,t2,C_fix(1));
t28=t1;
t29=t26;
t1=t28;
t2=t29;
goto loop;}}

/* kak_physics_core#l2-norm in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_774(C_word c,C_word *av){
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
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(18,c,3)))){
C_save_and_reclaim((void *)f_774,c,av);}
a=C_alloc(18);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_782,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t5=t4;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=((C_word*)t6)[1];
t8=C_i_check_list_2(t2,lf[30]);
t9=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_797,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t10=C_SCHEME_UNDEFINED;
t11=(*a=C_VECTOR_TYPE|1,a[1]=t10,tmp=(C_word)a,a+=2,tmp);
t12=C_set_block_item(t11,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_799,a[2]=t6,a[3]=t11,a[4]=t7,tmp=(C_word)a,a+=5,tmp));
t13=((C_word*)t11)[1];
f_799(t13,t9,t2);}

/* k780 in kak_physics_core#l2-norm in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_782(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_782,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:109: scheme#sqrt */
t2=*((C_word*)lf[29]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}

/* k795 in kak_physics_core#l2-norm in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_797(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_797,c,av);}{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=*((C_word*)lf[31]+1);
av2[3]=t1;
C_apply(4,av2);}}

/* map-loop127 in kak_physics_core#l2-norm in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_799(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
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
if(C_unlikely(!C_demand(C_calculate_demand(36,0,2)))){
C_save_and_reclaim_args((void *)trf_799,3,t0,t1,t2);}
a=C_alloc(36);
if(C_truep(C_i_pairp(t2))){
t3=C_slot(t2,C_fix(0));
t4=C_s_a_i_times(&a,2,t3,t3);
t5=C_a_i_cons(&a,2,t4,C_SCHEME_END_OF_LIST);
t6=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t5);
t7=C_mutate(((C_word *)((C_word*)t0)[2])+1,t5);
t9=t1;
t10=C_slot(t2,C_fix(1));
t1=t9;
t2=t10;
goto loop;}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[4],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* kak_physics_core#normalize-vector in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_833(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_833,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_837,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:113: l2-norm */
t4=C_fast_retrieve(lf[28]);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_774(3,av2);}}

/* k835 in kak_physics_core#normalize-vector in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_837(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(16,c,3)))){
C_save_and_reclaim((void *)f_837,c,av);}
a=C_alloc(16);
if(C_truep(C_i_lessp(t1,lf[33]))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_847,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t7=C_i_check_list_2(((C_word*)t0)[3],lf[30]);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_861,a[2]=t4,a[3]=t9,a[4]=t6,a[5]=t5,tmp=(C_word)a,a+=6,tmp));
t11=((C_word*)t9)[1];
f_861(t11,((C_word*)t0)[2],((C_word*)t0)[3]);}}

/* g163 in k835 in kak_physics_core#normalize-vector in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_847(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,3)))){
C_save_and_reclaim_args((void *)trf_847,3,t0,t1,t2);}
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[26]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[26]+1);
av2[1]=t1;
av2[2]=t2;
av2[3]=((C_word*)t0)[2];
tp(4,av2);}}

/* map-loop157 in k835 in kak_physics_core#normalize-vector in k331 in k328 in k325 in k322 in k319 */
static void C_fcall f_861(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_861,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_886,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:114: g163 */
t4=((C_word*)t0)[4];
f_847(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[5],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k884 in map-loop157 in k835 in kak_physics_core#normalize-vector in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_886(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_886,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_861(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* kak_physics_core#r2->complex in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_895(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_895,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:118: scheme#make-rectangular */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[35]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[35]+1);
av2[1]=t1;
av2[2]=t2;
av2[3]=t3;
tp(4,av2);}}

/* kak_physics_core#cartan-decompose in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_901(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(2,c,3)))){
C_save_and_reclaim((void *)f_901,c,av);}
a=C_alloc(2);
t3=C_a_i_vector1(&a,1,lf[37]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:122: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t3;
av2[3]=lf[37];
C_values(4,av2);}}

/* kak_physics_core#meep-simulate in k331 in k328 in k325 in k322 in k319 */
static void C_ccall f_912(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_912,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a914 in k325 in k322 in k319 */
static void C_ccall f_915(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_915,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:9: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[40]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[40]+1);
av2[1]=t1;
av2[2]=lf[0];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[41];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* toplevel */
static C_TLS int toplevel_initialized=0;

void C_ccall C_kak_5fphysics_5fcore_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("kak_physics_core"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_kak_5fphysics_5fcore_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(665))){
C_save(t1);
C_rereclaim2(665*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,43);
lf[0]=C_h_intern(&lf[0],16, C_text("kak_physics_core"));
lf[1]=C_h_intern(&lf[1],17, C_text("kak_physics_core#"));
lf[2]=C_h_intern(&lf[2],27, C_text("kak_physics_core#grid-width"));
lf[3]=C_h_intern(&lf[3],25, C_text("kak_physics_core#yee-grid"));
lf[4]=C_h_intern(&lf[4],10, C_text("grid-width"));
lf[5]=C_h_intern(&lf[5],28, C_text("kak_physics_core#grid-height"));
lf[6]=C_h_intern(&lf[6],11, C_text("grid-height"));
lf[7]=C_h_intern(&lf[7],24, C_text("kak_physics_core#grid-ez"));
lf[8]=C_h_intern(&lf[8],7, C_text("grid-ez"));
lf[9]=C_h_intern(&lf[9],24, C_text("kak_physics_core#grid-hx"));
lf[10]=C_h_intern(&lf[10],7, C_text("grid-hx"));
lf[11]=C_h_intern(&lf[11],24, C_text("kak_physics_core#grid-hy"));
lf[12]=C_h_intern(&lf[12],7, C_text("grid-hy"));
lf[13]=C_h_intern(&lf[13],24, C_text("kak_physics_core#grid-dt"));
lf[14]=C_h_intern(&lf[14],7, C_text("grid-dt"));
lf[15]=C_h_intern(&lf[15],24, C_text("kak_physics_core#grid-dx"));
lf[16]=C_h_intern(&lf[16],7, C_text("grid-dx"));
lf[17]=C_h_intern(&lf[17],25, C_text("kak_physics_core#grid-eps"));
lf[18]=C_h_intern(&lf[18],8, C_text("grid-eps"));
lf[19]=C_h_intern(&lf[19],24, C_text("kak_physics_core#grid-mu"));
lf[20]=C_h_intern(&lf[20],7, C_text("grid-mu"));
lf[21]=C_h_intern(&lf[21],32, C_text("kak_physics_core#yee-grid-fields"));
lf[22]=C_h_intern(&lf[22],30, C_text("kak_physics_core#make-yee-grid"));
lf[23]=C_h_intern(&lf[23],21, C_text("srfi-4#make-f64vector"));
lf[24]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[25]=C_h_intern(&lf[25],33, C_text("kak_physics_core#update-e-fields!"));
lf[26]=C_h_intern(&lf[26],9, C_text("##sys#/-2"));
lf[27]=C_h_intern(&lf[27],33, C_text("kak_physics_core#update-h-fields!"));
lf[28]=C_h_intern(&lf[28],24, C_text("kak_physics_core#l2-norm"));
lf[29]=C_h_intern(&lf[29],11, C_text("scheme#sqrt"));
lf[30]=C_h_intern(&lf[30],3, C_text("map"));
lf[31]=C_h_intern(&lf[31],8, C_text("scheme#+"));
lf[32]=C_h_intern(&lf[32],33, C_text("kak_physics_core#normalize-vector"));
lf[33]=C_decode_literal(C_heaptop,C_text("\376U9.9999999999999997988664762925561536725284350612952266601496376097202301025390"
"625e-13\000"));
lf[34]=C_h_intern(&lf[34],28, C_text("kak_physics_core#r2->complex"));
lf[35]=C_h_intern(&lf[35],23, C_text("scheme#make-rectangular"));
lf[36]=C_h_intern(&lf[36],33, C_text("kak_physics_core#cartan-decompose"));
lf[37]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[38]=C_h_intern(&lf[38],30, C_text("kak_physics_core#tau-threshold"));
lf[39]=C_h_intern(&lf[39],30, C_text("kak_physics_core#meep-simulate"));
lf[40]=C_h_intern(&lf[40],30, C_text("##sys#register-compiled-module"));
lf[41]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\015\001make-yee-grid\376\001\000\000\036\001kak_physics_core#make-yee-grid\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020"
"\001update-e-fields!\376\001\000\000!\001kak_physics_core#update-e-fields!\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001update-h"
"-fields!\376\001\000\000!\001kak_physics_core#update-h-fields!\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001yee-grid-fields\376\001"
"\000\000 \001kak_physics_core#yee-grid-fields\376\003\000\000\002\376\003\000\000\002\376\001\000\000\012\001grid-width\376\001\000\000\033\001kak_physics_"
"core#grid-width\376\003\000\000\002\376\003\000\000\002\376\001\000\000\013\001grid-height\376\001\000\000\034\001kak_physics_core#grid-height\376\003\000\000"
"\002\376\003\000\000\002\376\001\000\000\007\001grid-ez\376\001\000\000\030\001kak_physics_core#grid-ez\376\003\000\000\002\376\003\000\000\002\376\001\000\000\007\001grid-hx\376\001\000\000\030\001ka"
"k_physics_core#grid-hx\376\003\000\000\002\376\003\000\000\002\376\001\000\000\007\001grid-hy\376\001\000\000\030\001kak_physics_core#grid-hy\376\003\000\000\002"
"\376\003\000\000\002\376\001\000\000\007\001grid-dt\376\001\000\000\030\001kak_physics_core#grid-dt\376\003\000\000\002\376\003\000\000\002\376\001\000\000\007\001grid-dx\376\001\000\000\030\001kak"
"_physics_core#grid-dx\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001grid-eps\376\001\000\000\031\001kak_physics_core#grid-eps\376\003\000\000"
"\002\376\003\000\000\002\376\001\000\000\007\001grid-mu\376\001\000\000\030\001kak_physics_core#grid-mu\376\003\000\000\002\376\003\000\000\002\376\001\000\000\007\001l2-norm\376\001\000\000\030\001ka"
"k_physics_core#l2-norm\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001normalize-vector\376\001\000\000!\001kak_physics_core#nor"
"malize-vector\376\003\000\000\002\376\003\000\000\002\376\001\000\000\013\001r2->complex\376\001\000\000\034\001kak_physics_core#r2->complex\376\003\000\000\002\376"
"\003\000\000\002\376\001\000\000\020\001cartan-decompose\376\001\000\000!\001kak_physics_core#cartan-decompose\376\003\000\000\002\376\003\000\000\002\376\001\000\000\015"
"\001tau-threshold\376\001\000\000\036\001kak_physics_core#tau-threshold\376\003\000\000\002\376\003\000\000\002\376\001\000\000\015\001meep-simulate\376"
"\001\000\000\036\001kak_physics_core#meep-simulate\376\377\016"));
lf[42]=C_h_intern(&lf[42],22, C_text("##sys#with-environment"));
C_register_lf2(lf,43,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_321,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[44] = {
{C_text("f_321:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_321},
{C_text("f_324:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_324},
{C_text("f_327:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_327},
{C_text("f_330:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_330},
{C_text("f_333:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_333},
{C_text("f_348:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_348},
{C_text("f_357:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_357},
{C_text("f_366:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_366},
{C_text("f_375:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_375},
{C_text("f_384:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_384},
{C_text("f_393:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_393},
{C_text("f_402:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_402},
{C_text("f_411:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_411},
{C_text("f_420:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_420},
{C_text("f_429:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_429},
{C_text("f_447:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_447},
{C_text("f_458:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_458},
{C_text("f_462:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_462},
{C_text("f_466:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_466},
{C_text("f_468:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_468},
{C_text("f_487:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_487},
{C_text("f_492:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_492},
{C_text("f_502:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_502},
{C_text("f_511:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_511},
{C_text("f_614:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_614},
{C_text("f_633:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_633},
{C_text("f_638:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_638},
{C_text("f_648:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_648},
{C_text("f_657:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_657},
{C_text("f_774:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_774},
{C_text("f_782:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_782},
{C_text("f_797:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_797},
{C_text("f_799:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_799},
{C_text("f_833:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_833},
{C_text("f_837:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_837},
{C_text("f_847:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_847},
{C_text("f_861:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_861},
{C_text("f_886:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_886},
{C_text("f_895:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_895},
{C_text("f_901:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_901},
{C_text("f_912:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_912},
{C_text("f_915:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)f_915},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fphysics_5fcore_2escm"),(void*)C_kak_5fphysics_5fcore_toplevel},
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
o|hiding unexported module binding: kak_physics_core#yee-grid 
o|hiding unexported module binding: kak_physics_core#make-yee-grid-raw 
o|hiding unexported module binding: kak_physics_core#yee-grid? 
S|applied compiler syntax:
S|  scheme#map		2
o|eliminated procedure checks: 18 
o|specializations:
o|  5 (scheme#- float float)
o|  3 (scheme#/ * *)
(o e)|safe calls: 103 
o|removed side-effect free assignment to unused variable: kak_physics_core#yee-grid 
o|removed side-effect free assignment to unused variable: kak_physics_core#yee-grid? 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:54) kak_physics_core#make-yee-grid-raw" 
o|inlining procedure: k494 
o|inlining procedure: k494 
o|inlining procedure: k513 
o|inlining procedure: k513 
o|inlining procedure: k640 
o|inlining procedure: k640 
o|inlining procedure: k659 
o|inlining procedure: k659 
o|inlining procedure: k801 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:109) g133142" 
o|inlining procedure: k801 
o|inlining procedure: k838 
o|inlining procedure: k838 
o|inlining procedure: k863 
o|inlining procedure: k863 
o|replaced variables: 146 
o|removed binding forms: 57 
o|replaced variables: 14 
o|removed binding forms: 126 
o|removed binding forms: 13 
o|simplifications: ((##core#call . 95)) 
o|  call simplifications:
o|    scheme#list	3
o|    scheme#vector
o|    scheme#<
o|    ##sys#check-list	2
o|    scheme#pair?	2
o|    scheme#cons	4
o|    ##sys#setslot	2
o|    ##sys#slot	6
o|    scheme#apply
o|    scheme#=	4
o|    scheme#-	7
o|    srfi-4#f64vector-ref	11
o|    srfi-4#f64vector-set!	3
o|    scheme#+	14
o|    scheme#*	13
o|    ##sys#make-structure
o|    scheme#values	2
o|    ##sys#check-structure	9
o|    ##sys#block-ref	9
o|contracted procedure: k350 
o|contracted procedure: k359 
o|contracted procedure: k368 
o|contracted procedure: k377 
o|contracted procedure: k386 
o|contracted procedure: k395 
o|contracted procedure: k404 
o|contracted procedure: k413 
o|contracted procedure: k422 
o|contracted procedure: k449 
o|contracted procedure: k594 
o|contracted procedure: k497 
o|contracted procedure: k507 
o|contracted procedure: k590 
o|contracted procedure: k516 
o|contracted procedure: k586 
o|contracted procedure: k519 
o|contracted procedure: k578 
o|contracted procedure: k582 
o|contracted procedure: k522 
o|contracted procedure: k574 
o|contracted procedure: k570 
o|contracted procedure: k525 
o|contracted procedure: k543 
o|contracted procedure: k553 
o|contracted procedure: k557 
o|contracted procedure: k562 
o|contracted procedure: k566 
o|contracted procedure: k547 
o|contracted procedure: k539 
o|contracted procedure: k528 
o|contracted procedure: k535 
o|contracted procedure: k602 
o|contracted procedure: k754 
o|contracted procedure: k643 
o|contracted procedure: k653 
o|contracted procedure: k750 
o|contracted procedure: k662 
o|contracted procedure: k746 
o|contracted procedure: k665 
o|contracted procedure: k738 
o|contracted procedure: k742 
o|contracted procedure: k668 
o|contracted procedure: k734 
o|contracted procedure: k730 
o|contracted procedure: k671 
o|contracted procedure: k713 
o|contracted procedure: k722 
o|contracted procedure: k726 
o|contracted procedure: k717 
o|contracted procedure: k709 
o|contracted procedure: k674 
o|contracted procedure: k692 
o|contracted procedure: k701 
o|contracted procedure: k705 
o|contracted procedure: k696 
o|contracted procedure: k688 
o|contracted procedure: k677 
o|contracted procedure: k684 
o|contracted procedure: k762 
o|contracted procedure: k784 
o|contracted procedure: k792 
o|contracted procedure: k804 
o|contracted procedure: k826 
o|contracted procedure: k822 
o|contracted procedure: k807 
o|contracted procedure: k810 
o|contracted procedure: k818 
o|contracted procedure: k841 
o|contracted procedure: k844 
o|contracted procedure: k854 
o|contracted procedure: k866 
o|contracted procedure: k869 
o|contracted procedure: k872 
o|contracted procedure: k880 
o|contracted procedure: k888 
o|contracted procedure: k907 
o|contracted procedure: k921 
o|contracted procedure: k925 
o|contracted procedure: k929 
o|simplifications: ((let . 10)) 
o|removed binding forms: 80 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:50) kak_physics_core#grid-hy" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:50) kak_physics_core#grid-hx" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:50) kak_physics_core#grid-ez" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:69) kak_physics_core#grid-dx" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:69) kak_physics_core#grid-eps" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:69) kak_physics_core#grid-dt" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:68) kak_physics_core#grid-hy" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:67) kak_physics_core#grid-hx" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:66) kak_physics_core#grid-ez" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:65) kak_physics_core#grid-height" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:64) kak_physics_core#grid-width" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:88) kak_physics_core#grid-dx" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:88) kak_physics_core#grid-mu" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:88) kak_physics_core#grid-dt" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:87) kak_physics_core#grid-hy" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:86) kak_physics_core#grid-hx" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:85) kak_physics_core#grid-ez" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:84) kak_physics_core#grid-height" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_physics_core.scm:83) kak_physics_core#grid-width" 
o|substituted constant variable: r922 
o|substituted constant variable: r926 
o|substituted constant variable: r930 
o|replaced variables: 57 
o|removed binding forms: 3 
o|inlining procedure: k443 
o|inlining procedure: k610 
o|inlining procedure: k770 
o|removed binding forms: 38 
o|contracted procedure: k435 
o|contracted procedure: k439 
o|contracted procedure: k470 
o|contracted procedure: k473 
o|contracted procedure: k476 
o|contracted procedure: k479 
o|contracted procedure: k482 
o|contracted procedure: k598 
o|contracted procedure: k606 
o|contracted procedure: k616 
o|contracted procedure: k619 
o|contracted procedure: k622 
o|contracted procedure: k625 
o|contracted procedure: k628 
o|contracted procedure: k758 
o|contracted procedure: k766 
o|simplifications: ((let . 1)) 
o|removed binding forms: 19 
x|number of unboxed float variables: 2
x|number of inline operations replaced with unboxed ones: 5
o|customizable procedures: (g163172 map-loop157175 map-loop127145 doloop112113 doloop109110 doloop9192 doloop8889) 
o|calls to known targets: 14 
o|identified direct recursive calls: f_511 1 
o|identified direct recursive calls: f_657 1 
o|identified direct recursive calls: f_799 1 
o|unused rest argument: _189 f_912 
o|fast box initializations: 6 
*/
/* end of file */
