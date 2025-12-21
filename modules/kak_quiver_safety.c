/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   uses: eval data-structures library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_data_2dstructures_toplevel)
C_externimport void C_ccall C_data_2dstructures_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[50];
static double C_possibly_force_alignment;


C_noret_decl(f_1002)
static void C_ccall f_1002(C_word c,C_word *av) C_noret;
C_noret_decl(f_1011)
static void C_ccall f_1011(C_word c,C_word *av) C_noret;
C_noret_decl(f_1023)
static void C_ccall f_1023(C_word c,C_word *av) C_noret;
C_noret_decl(f_1032)
static void C_ccall f_1032(C_word c,C_word *av) C_noret;
C_noret_decl(f_1037)
static void C_ccall f_1037(C_word c,C_word *av) C_noret;
C_noret_decl(f_1056)
static void C_fcall f_1056(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1069)
static void C_ccall f_1069(C_word c,C_word *av) C_noret;
C_noret_decl(f_1072)
static void C_ccall f_1072(C_word c,C_word *av) C_noret;
C_noret_decl(f_1089)
static void C_fcall f_1089(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1137)
static void C_ccall f_1137(C_word c,C_word *av) C_noret;
C_noret_decl(f_1139)
static void C_ccall f_1139(C_word c,C_word *av) C_noret;
C_noret_decl(f_511)
static void C_ccall f_511(C_word c,C_word *av) C_noret;
C_noret_decl(f_514)
static void C_ccall f_514(C_word c,C_word *av) C_noret;
C_noret_decl(f_517)
static void C_ccall f_517(C_word c,C_word *av) C_noret;
C_noret_decl(f_520)
static void C_ccall f_520(C_word c,C_word *av) C_noret;
C_noret_decl(f_523)
static void C_ccall f_523(C_word c,C_word *av) C_noret;
C_noret_decl(f_526)
static void C_ccall f_526(C_word c,C_word *av) C_noret;
C_noret_decl(f_529)
static void C_ccall f_529(C_word c,C_word *av) C_noret;
C_noret_decl(f_532)
static void C_ccall f_532(C_word c,C_word *av) C_noret;
C_noret_decl(f_544)
static void C_ccall f_544(C_word c,C_word *av) C_noret;
C_noret_decl(f_553)
static void C_ccall f_553(C_word c,C_word *av) C_noret;
C_noret_decl(f_562)
static void C_fcall f_562(C_word t0,C_word t1) C_noret;
C_noret_decl(f_590)
static void C_ccall f_590(C_word c,C_word *av) C_noret;
C_noret_decl(f_605)
static void C_ccall f_605(C_word c,C_word *av) C_noret;
C_noret_decl(f_608)
static void C_ccall f_608(C_word c,C_word *av) C_noret;
C_noret_decl(f_610)
static void C_fcall f_610(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_614)
static void C_ccall f_614(C_word c,C_word *av) C_noret;
C_noret_decl(f_617)
static void C_ccall f_617(C_word c,C_word *av) C_noret;
C_noret_decl(f_618)
static void C_fcall f_618(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_634)
static void C_ccall f_634(C_word c,C_word *av) C_noret;
C_noret_decl(f_639)
static void C_ccall f_639(C_word c,C_word *av) C_noret;
C_noret_decl(f_642)
static void C_ccall f_642(C_word c,C_word *av) C_noret;
C_noret_decl(f_648)
static void C_ccall f_648(C_word c,C_word *av) C_noret;
C_noret_decl(f_653)
static void C_fcall f_653(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_663)
static void C_ccall f_663(C_word c,C_word *av) C_noret;
C_noret_decl(f_675)
static void C_fcall f_675(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_682)
static void C_ccall f_682(C_word c,C_word *av) C_noret;
C_noret_decl(f_691)
static void C_ccall f_691(C_word c,C_word *av) C_noret;
C_noret_decl(f_693)
static void C_fcall f_693(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_703)
static void C_ccall f_703(C_word c,C_word *av) C_noret;
C_noret_decl(f_716)
static void C_ccall f_716(C_word c,C_word *av) C_noret;
C_noret_decl(f_720)
static void C_ccall f_720(C_word c,C_word *av) C_noret;
C_noret_decl(f_723)
static void C_ccall f_723(C_word c,C_word *av) C_noret;
C_noret_decl(f_724)
static void C_fcall f_724(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_728)
static void C_ccall f_728(C_word c,C_word *av) C_noret;
C_noret_decl(f_729)
static void C_fcall f_729(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_739)
static void C_ccall f_739(C_word c,C_word *av) C_noret;
C_noret_decl(f_742)
static void C_ccall f_742(C_word c,C_word *av) C_noret;
C_noret_decl(f_746)
static void C_ccall f_746(C_word c,C_word *av) C_noret;
C_noret_decl(f_754)
static void C_ccall f_754(C_word c,C_word *av) C_noret;
C_noret_decl(f_762)
static void C_ccall f_762(C_word c,C_word *av) C_noret;
C_noret_decl(f_770)
static void C_fcall f_770(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_780)
static void C_ccall f_780(C_word c,C_word *av) C_noret;
C_noret_decl(f_797)
static void C_ccall f_797(C_word c,C_word *av) C_noret;
C_noret_decl(f_841)
static void C_fcall f_841(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_851)
static void C_ccall f_851(C_word c,C_word *av) C_noret;
C_noret_decl(f_864)
static void C_ccall f_864(C_word c,C_word *av) C_noret;
C_noret_decl(f_891)
static void C_ccall f_891(C_word c,C_word *av) C_noret;
C_noret_decl(f_901)
static void C_fcall f_901(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_903)
static void C_fcall f_903(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_907)
static void C_ccall f_907(C_word c,C_word *av) C_noret;
C_noret_decl(f_908)
static C_word C_fcall f_908(C_word *a,C_word t0,C_word t1);
C_noret_decl(f_925)
static void C_fcall f_925(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_949)
static void C_ccall f_949(C_word c,C_word *av) C_noret;
C_noret_decl(f_955)
static void C_ccall f_955(C_word c,C_word *av) C_noret;
C_noret_decl(f_960)
static void C_fcall f_960(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_970)
static void C_ccall f_970(C_word c,C_word *av) C_noret;
C_noret_decl(f_983)
static void C_fcall f_983(C_word t0,C_word t1) C_noret;
C_noret_decl(f_987)
static void C_ccall f_987(C_word c,C_word *av) C_noret;
C_noret_decl(f_990)
static void C_ccall f_990(C_word c,C_word *av) C_noret;
C_noret_decl(f_999)
static void C_ccall f_999(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_1056)
static void C_ccall trf_1056(C_word c,C_word *av) C_noret;
static void C_ccall trf_1056(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1056(t0,t1,t2,t3);}

C_noret_decl(trf_1089)
static void C_ccall trf_1089(C_word c,C_word *av) C_noret;
static void C_ccall trf_1089(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1089(t0,t1);}

C_noret_decl(trf_562)
static void C_ccall trf_562(C_word c,C_word *av) C_noret;
static void C_ccall trf_562(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_562(t0,t1);}

C_noret_decl(trf_610)
static void C_ccall trf_610(C_word c,C_word *av) C_noret;
static void C_ccall trf_610(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_610(t0,t1,t2);}

C_noret_decl(trf_618)
static void C_ccall trf_618(C_word c,C_word *av) C_noret;
static void C_ccall trf_618(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_618(t0,t1,t2);}

C_noret_decl(trf_653)
static void C_ccall trf_653(C_word c,C_word *av) C_noret;
static void C_ccall trf_653(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_653(t0,t1,t2);}

C_noret_decl(trf_675)
static void C_ccall trf_675(C_word c,C_word *av) C_noret;
static void C_ccall trf_675(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_675(t0,t1,t2);}

C_noret_decl(trf_693)
static void C_ccall trf_693(C_word c,C_word *av) C_noret;
static void C_ccall trf_693(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_693(t0,t1,t2);}

C_noret_decl(trf_724)
static void C_ccall trf_724(C_word c,C_word *av) C_noret;
static void C_ccall trf_724(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_724(t0,t1,t2);}

C_noret_decl(trf_729)
static void C_ccall trf_729(C_word c,C_word *av) C_noret;
static void C_ccall trf_729(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_729(t0,t1,t2);}

C_noret_decl(trf_770)
static void C_ccall trf_770(C_word c,C_word *av) C_noret;
static void C_ccall trf_770(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_770(t0,t1,t2);}

C_noret_decl(trf_841)
static void C_ccall trf_841(C_word c,C_word *av) C_noret;
static void C_ccall trf_841(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_841(t0,t1,t2);}

C_noret_decl(trf_901)
static void C_ccall trf_901(C_word c,C_word *av) C_noret;
static void C_ccall trf_901(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_901(t0,t1,t2);}

C_noret_decl(trf_903)
static void C_ccall trf_903(C_word c,C_word *av) C_noret;
static void C_ccall trf_903(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_903(t0,t1,t2);}

C_noret_decl(trf_925)
static void C_ccall trf_925(C_word c,C_word *av) C_noret;
static void C_ccall trf_925(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_925(t0,t1,t2);}

C_noret_decl(trf_960)
static void C_ccall trf_960(C_word c,C_word *av) C_noret;
static void C_ccall trf_960(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_960(t0,t1,t2);}

C_noret_decl(trf_983)
static void C_ccall trf_983(C_word c,C_word *av) C_noret;
static void C_ccall trf_983(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_983(t0,t1);}

/* k1000 in k997 in k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1002(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1002,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:123: compute-next-frontier */
f_901(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}

/* k1009 in k997 in k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1011(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1011,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:120: kak_physics_core#update-h-fields! */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k1021 in k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1023(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1023,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:127: compute-next-frontier */
f_901(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}

/* k1030 in k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1032(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1032,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:131: compute-next-frontier */
f_901(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}

/* kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1037(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5=av[5];
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
if(c<6) C_bad_min_argc_2(c,6,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,4)))){
C_save_and_reclaim((void *)f_1037,c,av);}
a=C_alloc(12);
t6=C_i_check_structure_2(t5,lf[2],lf[4]);
t7=C_i_block_ref(t5,C_fix(1));
t8=C_i_check_structure_2(t5,lf[2],lf[6]);
t9=C_i_block_ref(t5,C_fix(2));
t10=C_a_i_cons(&a,2,t9,t4);
t11=C_SCHEME_UNDEFINED;
t12=(*a=C_VECTOR_TYPE|1,a[1]=t11,tmp=(C_word)a,a+=2,tmp);
t13=C_set_block_item(t12,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1056,a[2]=t7,a[3]=t3,a[4]=t9,a[5]=t12,a[6]=t2,tmp=(C_word)a,a+=7,tmp));
t14=((C_word*)t12)[1];
f_1056(t14,t1,t10,C_fix(0));}

/* loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_1056(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,3)))){
C_save_and_reclaim_args((void *)trf_1056,4,t0,t1,t2,t3);}
a=C_alloc(9);
t4=C_i_greater_or_equalp(t3,((C_word*)t0)[2]);
t5=(C_truep(t4)?t4:C_i_nullp(C_i_cdr(t2)));
if(C_truep(t5)){
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t6=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1069,a[2]=((C_word*)t0)[4],a[3]=t3,a[4]=((C_word*)t0)[5],a[5]=t1,a[6]=t2,a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[3],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:145: analyze-frontier-as-quiver */
t7=C_fast_retrieve(lf[14]);{
C_word av2[4];
av2[0]=t7;
av2[1]=t6;
av2[2]=t2;
av2[3]=((C_word*)t0)[6];
f_716(4,av2);}}}

/* k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1069(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(13,c,2)))){
C_save_and_reclaim((void *)f_1069,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1072,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=C_eqp(t1,lf[21]);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1089,a[2]=t2,a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[7],a[5]=((C_word*)t0)[8],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
if(C_truep(t3)){
t5=t4;
f_1089(t5,t3);}
else{
t5=C_eqp(t1,lf[22]);
t6=t4;
f_1089(t6,(C_truep(t5)?t5:C_eqp(t1,lf[25])));}}

/* k1070 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1072(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(32,c,3)))){
C_save_and_reclaim((void *)f_1072,c,av);}
a=C_alloc(32);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:154: loop */
t4=((C_word*)((C_word*)t0)[4])[1];
f_1056(t4,((C_word*)t0)[5],t2,t3);}

/* k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_1089(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_1089,2,t0,t1);}
a=C_alloc(6);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_999,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:116: analyze-frontier-as-quiver */
t3=C_fast_retrieve(lf[14]);{
C_word av2[4];
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
f_716(4,av2);}}
else{
t2=C_eqp(((C_word*)t0)[6],lf[23]);
if(C_truep(t2)){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1023,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:126: update-localized-fields! */
f_983(t3,((C_word*)t0)[5]);}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1032,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:130: update-localized-fields! */
f_983(t3,((C_word*)t0)[5]);}}}

/* k1135 in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_1137(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1137,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a1138 in k512 in k509 */
static void C_ccall f_1139(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_1139,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:1: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[46]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[46]+1);
av2[1]=t1;
av2[2]=lf[47];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[48];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* k509 */
static void C_ccall f_511(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_511,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_514,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k512 in k509 */
static void C_ccall f_514(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_514,c,av);}
a=C_alloc(13);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_517,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1139,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:1: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k515 in k512 in k509 */
static void C_ccall f_517(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_517,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_520,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_data_2dstructures_toplevel(2,av2);}}

/* k518 in k515 in k512 in k509 */
static void C_ccall f_520(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_520,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_523,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:10: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[42]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[42]+1);
av2[1]=t2;
av2[2]=lf[45];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_523(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_523,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_526,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:10: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[42]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[42]+1);
av2[1]=t2;
av2[2]=lf[44];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_526(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_526,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_529,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:10: chicken.load#load-extension */
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

/* k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_529(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(23,c,6)))){
C_save_and_reclaim((void *)f_529,c,av);}
a=C_alloc(23);
t2=C_mutate((C_word*)lf[1]+1 /* (set! kak_quiver_safety#make-quiver-context ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_532,tmp=(C_word)a,a+=2,tmp));
t3=C_mutate((C_word*)lf[3]+1 /* (set! kak_quiver_safety#quiver-context-steps ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_544,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[5]+1 /* (set! kak_quiver_safety#quiver-context-mode ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_553,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate(&lf[7] /* (set! kak_quiver_safety#frontier-to-list ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_562,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[14]+1 /* (set! kak_quiver_safety#analyze-frontier-as-quiver ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_716,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[27]+1 /* (set! kak_quiver_safety#estimate-quiver-speedup ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_864,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[32]+1 /* (set! kak_quiver_safety#classify-quiver-type ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_891,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate(&lf[33] /* (set! kak_quiver_safety#compute-next-frontier ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_901,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate(&lf[35] /* (set! kak_quiver_safety#update-localized-fields! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_983,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[40]+1 /* (set! kak_quiver_safety#kak-apply-quiver-safe ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1037,tmp=(C_word)a,a+=2,tmp));
t12=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1137,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* chicken.base#implicit-exit-handler */
t13=C_fast_retrieve(lf[41]);{
C_word *av2=av;
av2[0]=t13;
av2[1]=t12;
((C_proc)(void*)(*((C_word*)t13+1)))(2,av2);}}

/* kak_quiver_safety#make-quiver-context in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_532(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,1)))){
C_save_and_reclaim((void *)f_532,c,av);}
a=C_alloc(4);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_record3(&a,3,lf[2],t2,t3);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_quiver_safety#quiver-context-steps in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_544(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_544,c,av);}
t3=C_i_check_structure_2(t2,lf[2],lf[4]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_quiver_safety#quiver-context-mode in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_553(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_553,c,av);}
t3=C_i_check_structure_2(t2,lf[2],lf[6]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_block_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* kak_quiver_safety#frontier-to-list in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_562(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,0,3)))){
C_save_and_reclaim_args((void *)trf_562,2,t1,t2);}
a=C_alloc(4);
t3=C_i_car(t2);
t4=C_u_i_cdr(t2);
t5=C_eqp(t3,lf[8]);
if(C_truep(t5)){
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t6=C_eqp(t3,lf[9]);
if(C_truep(t6)){
t7=C_i_car(t4);
t8=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_590,a[2]=t1,a[3]=t7,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:36: scheme#reverse */
t9=*((C_word*)lf[11]+1);{
C_word av2[3];
av2[0]=t9;
av2[1]=t8;
av2[2]=C_u_i_cdr(t4);
((C_proc)(void*)(*((C_word*)t9+1)))(3,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:37: chicken.base#error */
t7=*((C_word*)lf[12]+1);{
C_word av2[4];
av2[0]=t7;
av2[1]=t1;
av2[2]=lf[13];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}}}

/* k588 in kak_quiver_safety#frontier-to-list in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_590(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_590,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:36: scheme#append */
t2=*((C_word*)lf[10]+1);{
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

/* k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_605(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,2)))){
C_save_and_reclaim((void *)f_605,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_608,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:45: srfi-69#make-hash-table */
t3=C_fast_retrieve(lf[26]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_608(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(26,c,3)))){
C_save_and_reclaim((void *)f_608,c,av);}
a=C_alloc(26);
t2=C_SCHEME_FALSE;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_610,a[2]=t5,a[3]=t3,a[4]=t1,a[5]=((C_word*)t0)[2],a[6]=((C_word*)t0)[3],tmp=(C_word)a,a+=7,tmp));
t7=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_675,a[2]=t5,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t8=C_i_check_list_2(((C_word*)t0)[4],lf[20]);
t9=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_691,a[2]=t3,a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[6],tmp=(C_word)a,a+=5,tmp);
t10=C_SCHEME_UNDEFINED;
t11=(*a=C_VECTOR_TYPE|1,a[1]=t10,tmp=(C_word)a,a+=2,tmp);
t12=C_set_block_item(t11,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_693,a[2]=t11,a[3]=t7,tmp=(C_word)a,a+=4,tmp));
t13=((C_word*)t11)[1];
f_693(t13,t9,((C_word*)t0)[4]);}

/* dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_610(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,4)))){
C_save_and_reclaim_args((void *)trf_610,3,t0,t1,t2);}
a=C_alloc(9);
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_614,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=t2,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:48: srfi-69#hash-table-set! */
t4=C_fast_retrieve(lf[17]);{
C_word av2[5];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[5];
av2[3]=t2;
av2[4]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_614(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_614,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_617,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:49: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[7];
av2[4]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_617(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,4)))){
C_save_and_reclaim((void *)f_617,c,av);}
a=C_alloc(12);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_618,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_642,a[2]=((C_word*)t0)[6],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[7],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:55: srfi-69#hash-table-ref/default */
t4=C_fast_retrieve(lf[18]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[8];
av2[3]=((C_word*)t0)[7];
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* g77 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_618(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_618,3,t0,t1,t2);}
a=C_alloc(7);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_639,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:51: srfi-69#hash-table-ref/default */
t4=C_fast_retrieve(lf[18]);{
C_word av2[5];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[5];
av2[3]=t2;
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k632 in k637 in g77 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_634(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_634,c,av);}
if(C_truep(t1)){
t2=C_set_block_item(((C_word*)t0)[2],0,C_SCHEME_TRUE);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k637 in g77 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_639(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_639,c,av);}
a=C_alloc(4);
if(C_truep(C_i_not(t1))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:52: dfs */
t2=((C_word*)((C_word*)t0)[2])[1];
f_610(t2,((C_word*)t0)[3],((C_word*)t0)[4]);}
else{
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_634,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:53: srfi-69#hash-table-ref/default */
t3=C_fast_retrieve(lf[18]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=((C_word*)t0)[4];
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k640 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_642(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_642,c,av);}
a=C_alloc(11);
t2=C_i_check_list_2(t1,lf[20]);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_648,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_653,a[2]=t5,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_653(t7,t3,t1);}

/* k646 in k640 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_648(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_648,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:56: srfi-69#hash-table-set! */
t2=C_fast_retrieve(lf[17]);{
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
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* for-each-loop76 in k640 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_653(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_653,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_663,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:50: g77 */
t4=((C_word*)t0)[3];
f_618(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k661 in for-each-loop76 in k640 in k615 in k612 in dfs in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_663(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_663,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_653(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* g65 in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_675(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,4)))){
C_save_and_reclaim_args((void *)trf_675,3,t0,t1,t2);}
a=C_alloc(5);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_682,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:57: srfi-69#hash-table-ref/default */
t4=C_fast_retrieve(lf[18]);{
C_word av2[5];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
av2[3]=t2;
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k680 in g65 in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_682(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_682,c,av);}
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:57: dfs */
t2=((C_word*)((C_word*)t0)[3])[1];
f_610(t2,((C_word*)t0)[2],((C_word*)t0)[4]);}}

/* k689 in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_691(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_691,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
t3=C_i_less_or_equalp(((C_word*)((C_word*)t0)[3])[1],C_fix(2));
t4=(C_truep(t3)?C_i_not(t2):C_SCHEME_FALSE);
if(C_truep(t4)){
t5=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t5;
av2[1]=lf[21];
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_i_nequalp(((C_word*)((C_word*)t0)[3])[1],C_fix(3));
t6=(C_truep(t5)?C_i_not(t2):C_SCHEME_FALSE);
if(C_truep(t6)){
t7=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t7;
av2[1]=lf[22];
((C_proc)(void*)(*((C_word*)t7+1)))(2,av2);}}
else{
t7=C_i_less_or_equalp(((C_word*)((C_word*)t0)[3])[1],C_fix(2));
t8=(C_truep(t7)?t2:C_SCHEME_FALSE);
if(C_truep(t8)){
t9=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t9;
av2[1]=lf[23];
((C_proc)(void*)(*((C_word*)t9+1)))(2,av2);}}
else{
t9=C_i_greaterp(((C_word*)((C_word*)t0)[3])[1],C_fix(3));
t10=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t10;
av2[1]=(C_truep(t9)?lf[24]:lf[25]);
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}}}}

/* for-each-loop64 in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_693(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_693,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_703,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:57: g65 */
t4=((C_word*)t0)[3];
f_675(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k701 in for-each-loop64 in k606 in k603 in k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_703(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_703,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_693(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_716(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_716,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_720,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:61: frontier-to-list */
f_562(t4,t2);}

/* k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_720(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_720,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_723,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:62: srfi-69#make-hash-table */
t3=C_fast_retrieve(lf[26]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_723(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(20,c,3)))){
C_save_and_reclaim((void *)f_723,c,av);}
a=C_alloc(20);
t2=C_fix(0);
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_724,a[2]=t3,a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
t5=C_i_check_list_2(((C_word*)t0)[2],lf[20]);
t6=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_797,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t3,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_841,a[2]=t8,a[3]=t4,tmp=(C_word)a,a+=4,tmp));
t10=((C_word*)t8)[1];
f_841(t10,t6,((C_word*)t0)[2]);}

/* g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_724(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_724,3,t0,t1,t2);}
a=C_alloc(7);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_728,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:66: graph-fn */
t4=((C_word*)t0)[5];{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
((C_proc)C_fast_retrieve_proc(t4))(3,av2);}}

/* k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_728(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_728,c,av);}
a=C_alloc(12);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_729,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=C_i_check_list_2(t1,lf[20]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_770,a[2]=t5,a[3]=t2,tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_770(t7,((C_word*)t0)[6],t1);}

/* g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_729(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,3)))){
C_save_and_reclaim_args((void *)trf_729,3,t0,t1,t2);}
a=C_alloc(7);
t3=C_i_car(t2);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_739,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=t3,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:70: srfi-1#member */
t5=C_fast_retrieve(lf[19]);{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
av2[3]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k737 in g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_739(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,4)))){
C_save_and_reclaim((void *)f_739,c,av);}
a=C_alloc(12);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_742,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_762,a[2]=((C_word*)t0)[6],a[3]=t2,a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:71: srfi-69#hash-table-ref/default */
t4=C_fast_retrieve(lf[18]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k740 in k737 in g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_742(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_742,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_746,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_754,a[2]=t2,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:72: srfi-69#hash-table-ref */
t4=C_fast_retrieve(lf[16]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k744 in k740 in k737 in g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_746(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_746,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k752 in k740 in k737 in g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_754(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_754,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:72: scheme#max */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)((C_word*)t0)[3])[1];
av2[3]=C_i_length(t1);
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* k760 in k737 in g132 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_762(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_762,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:71: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
av2[4]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* for-each-loop131 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_770(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_770,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_780,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:67: g132 */
t4=((C_word*)t0)[3];
f_729(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k778 in for-each-loop131 in k726 in g118 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_780(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_780,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_770(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* k795 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_797(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_797,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_605,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:44: srfi-69#make-hash-table */
t3=C_fast_retrieve(lf[26]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* for-each-loop117 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_841(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_841,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_851,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:64: g118 */
t4=((C_word*)t0)[3];
f_724(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k849 in for-each-loop117 in k721 in k718 in kak_quiver_safety#analyze-frontier-as-quiver in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_851(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_851,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_841(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* kak_quiver_safety#estimate-quiver-speedup in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_864(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_864,c,av);}
t3=C_eqp(t2,lf[21]);
if(C_truep(t3)){
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=lf[28];
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_eqp(t2,lf[22]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=lf[29];
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t2,lf[23]);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=(C_truep(t5)?lf[30]:lf[31]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}}

/* kak_quiver_safety#classify-quiver-type in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_891(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_891,c,av);}
a=C_alloc(3);
t4=C_a_i_cons(&a,2,lf[8],t3);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:88: analyze-frontier-as-quiver */
t5=C_fast_retrieve(lf[14]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t1;
av2[2]=t4;
av2[3]=t2;
f_716(4,av2);}}

/* kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_901(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,3)))){
C_save_and_reclaim_args((void *)trf_901,3,t1,t2,t3);}
a=C_alloc(11);
t4=C_SCHEME_END_OF_LIST;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_903,a[2]=t5,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
t7=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_949,a[2]=t1,a[3]=t5,a[4]=t6,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:101: frontier-to-list */
f_562(t7,t2);}

/* g181 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_903(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,0,2)))){
C_save_and_reclaim_args((void *)trf_903,3,t0,t1,t2);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_907,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:98: graph-fn */
t4=((C_word*)t0)[3];{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
((C_proc)C_fast_retrieve_proc(t4))(3,av2);}}

/* k905 in g181 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_907(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_907,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_908,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_check_list_2(t1,lf[20]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_925,a[2]=t2,a[3]=t5,tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_925(t7,((C_word*)t0)[3],t1);}

/* g195 in k905 in g181 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static C_word C_fcall f_908(C_word *a,C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_stack_overflow_check;{}
t2=C_i_car(t1);
t3=C_a_i_cons(&a,2,t2,((C_word*)((C_word*)t0)[2])[1]);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t3);
return(t4);}

/* for-each-loop194 in k905 in g181 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_925(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_925,3,t0,t1,t2);}
a=C_alloc(3);
if(C_truep(C_i_pairp(t2))){
t3=(
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:99: g195 */
  f_908(C_a_i(&a,3),((C_word*)t0)[2],C_slot(t2,C_fix(0)))
);
t5=t1;
t6=C_slot(t2,C_fix(1));
t1=t5;
t2=t6;
goto loop;}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k947 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_949(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_949,c,av);}
a=C_alloc(10);
t2=C_i_check_list_2(t1,lf[20]);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_955,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_960,a[2]=t5,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_960(t7,t3,t1);}

/* k953 in k947 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_955(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_955,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:102: srfi-1#delete-duplicates */
t2=C_fast_retrieve(lf[34]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)((C_word*)t0)[3])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}

/* for-each-loop180 in k947 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_960(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_960,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_970,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:97: g181 */
t4=((C_word*)t0)[3];
f_903(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k968 in for-each-loop180 in k947 in kak_quiver_safety#compute-next-frontier in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_970(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_970,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_960(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* kak_quiver_safety#update-localized-fields! in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_fcall f_983(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,0,2)))){
C_save_and_reclaim_args((void *)trf_983,2,t1,t2);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_987,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:106: chicken.base#print */
t4=*((C_word*)lf[38]+1);{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[39];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}

/* k985 in kak_quiver_safety#update-localized-fields! in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_987(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_987,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_990,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:107: kak_physics_core#update-e-fields! */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[37]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[37]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k988 in k985 in kak_quiver_safety#update-localized-fields! in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_990(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_990,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:108: kak_physics_core#update-h-fields! */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k997 in k1087 in k1067 in loop in kak_quiver_safety#kak-apply-quiver-safe in k527 in k524 in k521 in k518 in k515 in k512 in k509 */
static void C_ccall f_999(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_999,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1002,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_eqp(t1,lf[21]);
if(C_truep(t3)){
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1011,a[2]=t2,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:119: kak_physics_core#update-e-fields! */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[37]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[37]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
tp(3,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:121: update-localized-fields! */
f_983(t2,((C_word*)t0)[5]);}}

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
if(C_unlikely(!C_demand_2(436))){
C_save(t1);
C_rereclaim2(436*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,50);
lf[0]=C_h_intern(&lf[0],18, C_text("kak_quiver_safety#"));
lf[1]=C_h_intern(&lf[1],37, C_text("kak_quiver_safety#make-quiver-context"));
lf[2]=C_h_intern(&lf[2],32, C_text("kak_quiver_safety#quiver-context"));
lf[3]=C_h_intern(&lf[3],38, C_text("kak_quiver_safety#quiver-context-steps"));
lf[4]=C_h_intern(&lf[4],20, C_text("quiver-context-steps"));
lf[5]=C_h_intern(&lf[5],37, C_text("kak_quiver_safety#quiver-context-mode"));
lf[6]=C_h_intern(&lf[6],19, C_text("quiver-context-mode"));
lf[8]=C_h_intern(&lf[8],5, C_text("stack"));
lf[9]=C_h_intern(&lf[9],5, C_text("queue"));
lf[10]=C_h_intern(&lf[10],13, C_text("scheme#append"));
lf[11]=C_h_intern(&lf[11],14, C_text("scheme#reverse"));
lf[12]=C_h_intern(&lf[12],18, C_text("chicken.base#error"));
lf[13]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[14]=C_h_intern(&lf[14],44, C_text("kak_quiver_safety#analyze-frontier-as-quiver"));
lf[15]=C_h_intern(&lf[15],10, C_text("scheme#max"));
lf[16]=C_h_intern(&lf[16],22, C_text("srfi-69#hash-table-ref"));
lf[17]=C_h_intern(&lf[17],23, C_text("srfi-69#hash-table-set!"));
lf[18]=C_h_intern(&lf[18],30, C_text("srfi-69#hash-table-ref/default"));
lf[19]=C_h_intern(&lf[19],13, C_text("srfi-1#member"));
lf[20]=C_h_intern(&lf[20],8, C_text("for-each"));
lf[21]=C_h_intern(&lf[21],8, C_text("dynkin-a"));
lf[22]=C_h_intern(&lf[22],8, C_text("dynkin-d"));
lf[23]=C_h_intern(&lf[23],8, C_text("affine-a"));
lf[24]=C_h_intern(&lf[24],4, C_text("wild"));
lf[25]=C_h_intern(&lf[25],8, C_text("dynkin-e"));
lf[26]=C_h_intern(&lf[26],23, C_text("srfi-69#make-hash-table"));
lf[27]=C_h_intern(&lf[27],41, C_text("kak_quiver_safety#estimate-quiver-speedup"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376U16.0\000"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376U8.0\000"));
lf[30]=C_decode_literal(C_heaptop,C_text("\376U4.0\000"));
lf[31]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[32]=C_h_intern(&lf[32],38, C_text("kak_quiver_safety#classify-quiver-type"));
lf[34]=C_h_intern(&lf[34],24, C_text("srfi-1#delete-duplicates"));
lf[36]=C_h_intern(&lf[36],33, C_text("kak_physics_core#update-h-fields!"));
lf[37]=C_h_intern(&lf[37],33, C_text("kak_physics_core#update-e-fields!"));
lf[38]=C_h_intern(&lf[38],18, C_text("chicken.base#print"));
lf[39]=C_decode_literal(C_heaptop,C_text("\376B\000\000OWarning: update-localized-fields! called (fallback to global update for saf"
"ety)"));
lf[40]=C_h_intern(&lf[40],39, C_text("kak_quiver_safety#kak-apply-quiver-safe"));
lf[41]=C_h_intern(&lf[41],34, C_text("chicken.base#implicit-exit-handler"));
lf[42]=C_h_intern(&lf[42],27, C_text("chicken.load#load-extension"));
lf[43]=C_h_intern(&lf[43],16, C_text("kak_physics_core"));
lf[44]=C_h_intern(&lf[44],7, C_text("srfi-69"));
lf[45]=C_h_intern(&lf[45],6, C_text("srfi-1"));
lf[46]=C_h_intern(&lf[46],30, C_text("##sys#register-compiled-module"));
lf[47]=C_h_intern(&lf[47],17, C_text("kak_quiver_safety"));
lf[48]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\032\001analyze-frontier-as-quiver\376\001\000\000,\001kak_quiver_safety#analyze-fronti"
"er-as-quiver\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001classify-quiver-type\376\001\000\000&\001kak_quiver_safety#classify"
"-quiver-type\376\003\000\000\002\376\003\000\000\002\376\001\000\000\025\001kak-apply-quiver-safe\376\001\000\000\047\001kak_quiver_safety#kak-app"
"ly-quiver-safe\376\003\000\000\002\376\003\000\000\002\376\001\000\000\027\001estimate-quiver-speedup\376\001\000\000)\001kak_quiver_safety#est"
"imate-quiver-speedup\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001make-quiver-context\376\001\000\000%\001kak_quiver_safety#m"
"ake-quiver-context\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001quiver-context-steps\376\001\000\000&\001kak_quiver_safety#qu"
"iver-context-steps\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001quiver-context-mode\376\001\000\000%\001kak_quiver_safety#qui"
"ver-context-mode\376\377\016"));
lf[49]=C_h_intern(&lf[49],22, C_text("##sys#with-environment"));
C_register_lf2(lf,50,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_511,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[73] = {
{C_text("f_1002:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1002},
{C_text("f_1011:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1011},
{C_text("f_1023:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1023},
{C_text("f_1032:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1032},
{C_text("f_1037:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1037},
{C_text("f_1056:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1056},
{C_text("f_1069:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1069},
{C_text("f_1072:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1072},
{C_text("f_1089:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1089},
{C_text("f_1137:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1137},
{C_text("f_1139:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_1139},
{C_text("f_511:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_511},
{C_text("f_514:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_514},
{C_text("f_517:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_517},
{C_text("f_520:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_520},
{C_text("f_523:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_523},
{C_text("f_526:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_526},
{C_text("f_529:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_529},
{C_text("f_532:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_532},
{C_text("f_544:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_544},
{C_text("f_553:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_553},
{C_text("f_562:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_562},
{C_text("f_590:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_590},
{C_text("f_605:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_605},
{C_text("f_608:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_608},
{C_text("f_610:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_610},
{C_text("f_614:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_614},
{C_text("f_617:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_617},
{C_text("f_618:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_618},
{C_text("f_634:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_634},
{C_text("f_639:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_639},
{C_text("f_642:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_642},
{C_text("f_648:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_648},
{C_text("f_653:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_653},
{C_text("f_663:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_663},
{C_text("f_675:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_675},
{C_text("f_682:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_682},
{C_text("f_691:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_691},
{C_text("f_693:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_693},
{C_text("f_703:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_703},
{C_text("f_716:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_716},
{C_text("f_720:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_720},
{C_text("f_723:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_723},
{C_text("f_724:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_724},
{C_text("f_728:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_728},
{C_text("f_729:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_729},
{C_text("f_739:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_739},
{C_text("f_742:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_742},
{C_text("f_746:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_746},
{C_text("f_754:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_754},
{C_text("f_762:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_762},
{C_text("f_770:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_770},
{C_text("f_780:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_780},
{C_text("f_797:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_797},
{C_text("f_841:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_841},
{C_text("f_851:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_851},
{C_text("f_864:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_864},
{C_text("f_891:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_891},
{C_text("f_901:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_901},
{C_text("f_903:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_903},
{C_text("f_907:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_907},
{C_text("f_908:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_908},
{C_text("f_925:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_925},
{C_text("f_949:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_949},
{C_text("f_955:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_955},
{C_text("f_960:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_960},
{C_text("f_970:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_970},
{C_text("f_983:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_983},
{C_text("f_987:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_987},
{C_text("f_990:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_990},
{C_text("f_999:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)f_999},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5fquiver_5fsafety_2escm"),(void*)C_toplevel},
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
o|hiding unexported module binding: kak_quiver_safety#quiver-context 
o|hiding unexported module binding: kak_quiver_safety#quiver-context? 
o|hiding unexported module binding: kak_quiver_safety#frontier-to-list 
o|hiding unexported module binding: kak_quiver_safety#detect-cycle 
o|hiding unexported module binding: kak_quiver_safety#compute-next-frontier 
o|hiding unexported module binding: kak_quiver_safety#update-localized-fields! 
o|hiding unexported module binding: kak_quiver_safety#execute-vectorized-step! 
o|hiding unexported module binding: kak_quiver_safety#execute-synchronized-step! 
o|hiding unexported module binding: kak_quiver_safety#execute-sequential-step! 
S|applied compiler syntax:
S|  scheme#for-each		6
o|eliminated procedure checks: 15 
o|specializations:
o|  4 (scheme#eqv? (or eof null fixnum char boolean symbol keyword) *)
o|  5 (scheme#eqv? * (or eof null fixnum char boolean symbol keyword))
o|  2 (scheme#cdr pair)
(o e)|safe calls: 103 
o|removed side-effect free assignment to unused variable: kak_quiver_safety#quiver-context 
o|removed side-effect free assignment to unused variable: kak_quiver_safety#quiver-context? 
o|inlining procedure: k568 
o|inlining procedure: k568 
o|substituted constant variable: a597 
o|substituted constant variable: a599 
o|inlining procedure: k734 
o|inlining procedure: k734 
o|inlining procedure: k772 
o|inlining procedure: k772 
o|inlining procedure: k801 
o|inlining procedure: k801 
o|inlining procedure: k813 
o|inlining procedure: k813 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:75) kak_quiver_safety#detect-cycle" 
o|inlining procedure: k620 
o|inlining procedure: k620 
o|inlining procedure: k655 
o|inlining procedure: k655 
o|inlining procedure: k677 
o|inlining procedure: k677 
o|inlining procedure: k695 
o|inlining procedure: k695 
o|inlining procedure: k843 
o|inlining procedure: k843 
o|inlining procedure: k866 
o|inlining procedure: k866 
o|inlining procedure: k878 
o|inlining procedure: k878 
o|substituted constant variable: a885 
o|substituted constant variable: a887 
o|substituted constant variable: a889 
o|inlining procedure: k927 
o|inlining procedure: k927 
o|inlining procedure: k962 
o|inlining procedure: k962 
o|removed unused formal parameters: (frontier217) 
o|inlining procedure: k1058 
o|inlining procedure: k1058 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:149) kak_quiver_safety#execute-vectorized-step!" 
o|inlining procedure: k1000 
o|inlining procedure: k1000 
o|removed unused parameter to known procedure: frontier217 "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:121) kak_quiver_safety#update-localized-fields!" 
o|inlining procedure: k1093 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:151) kak_quiver_safety#execute-synchronized-step!" 
o|removed unused parameter to known procedure: frontier217 "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:126) kak_quiver_safety#update-localized-fields!" 
o|inlining procedure: k1093 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:153) kak_quiver_safety#execute-sequential-step!" 
o|removed unused parameter to known procedure: frontier217 "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:130) kak_quiver_safety#update-localized-fields!" 
o|substituted constant variable: a1106 
o|inlining procedure: k1110 
o|inlining procedure: k1110 
o|substituted constant variable: a1117 
o|substituted constant variable: a1119 
o|substituted constant variable: a1121 
o|replaced variables: 143 
o|removed binding forms: 61 
o|substituted constant variable: r8021162 
o|substituted constant variable: r8141164 
o|substituted constant variable: r8671176 
o|substituted constant variable: r8791178 
o|substituted constant variable: r8791179 
o|removed call to pure procedure with unused result: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:137) ##sys#get-keyword" 
o|replaced variables: 24 
o|removed binding forms: 143 
o|contracted procedure: k1039 
o|removed binding forms: 26 
o|contracted procedure: k798 
o|removed binding forms: 2 
o|simplifications: ((if . 6) (let . 1) (##core#call . 63)) 
o|  call simplifications:
o|    scheme#list	3
o|    scheme#>=
o|    scheme#cdr
o|    scheme#null?
o|    scheme#+
o|    scheme#=
o|    scheme#<=	2
o|    scheme#>
o|    scheme#not	3
o|    ##sys#check-list	6
o|    scheme#pair?	6
o|    ##sys#slot	12
o|    scheme#cons	5
o|    scheme#length
o|    scheme#eq?	10
o|    scheme#car	4
o|    ##sys#check-structure	2
o|    ##sys#block-ref	2
o|    ##sys#make-structure
o|contracted procedure: k546 
o|contracted procedure: k555 
o|contracted procedure: k564 
o|contracted procedure: k571 
o|contracted procedure: k577 
o|contracted procedure: k584 
o|contracted procedure: k731 
o|contracted procedure: k748 
o|contracted procedure: k756 
o|contracted procedure: k763 
o|contracted procedure: k775 
o|contracted procedure: k785 
o|contracted procedure: k789 
o|contracted procedure: k792 
o|contracted procedure: k623 
o|contracted procedure: k643 
o|contracted procedure: k658 
o|contracted procedure: k668 
o|contracted procedure: k672 
o|contracted procedure: k686 
o|contracted procedure: k834 
o|contracted procedure: k804 
o|contracted procedure: k828 
o|contracted procedure: k810 
o|contracted procedure: k825 
o|contracted procedure: k816 
o|contracted procedure: k822 
o|contracted procedure: k698 
o|contracted procedure: k708 
o|contracted procedure: k712 
o|contracted procedure: k846 
o|contracted procedure: k856 
o|contracted procedure: k860 
o|contracted procedure: k869 
o|contracted procedure: k875 
o|contracted procedure: k881 
o|contracted procedure: k897 
o|contracted procedure: k915 
o|contracted procedure: k911 
o|contracted procedure: k918 
o|contracted procedure: k930 
o|contracted procedure: k940 
o|contracted procedure: k944 
o|contracted procedure: k950 
o|contracted procedure: k965 
o|contracted procedure: k975 
o|contracted procedure: k979 
o|contracted procedure: k1052 
o|contracted procedure: k1061 
o|contracted procedure: k1077 
o|contracted procedure: k1081 
o|contracted procedure: k1084 
o|contracted procedure: k1006 
o|contracted procedure: k1096 
o|contracted procedure: k1107 
o|contracted procedure: k1126 
o|contracted procedure: k1145 
o|contracted procedure: k1149 
o|contracted procedure: k1153 
o|simplifications: ((if . 1) (let . 21)) 
o|removed binding forms: 59 
o|contracted procedure: k1064 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:140) kak_quiver_safety#quiver-context-mode" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:139) kak_quiver_safety#quiver-context-steps" 
o|substituted constant variable: r1146 
o|substituted constant variable: r1150 
o|substituted constant variable: r1154 
o|removed binding forms: 1 
o|replaced variables: 6 
o|removed binding forms: 3 
o|removed binding forms: 4 
o|contracted procedure: k1042 
o|contracted procedure: k1045 
o|removed binding forms: 2 
o|direct leaf routine/allocation: g195202 3 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_quiver_safety.scm:99) k933" 
o|removed binding forms: 1 
o|customizable procedures: (k1087 kak_quiver_safety#update-localized-fields! kak_quiver_safety#compute-next-frontier loop257 g181188 for-each-loop180210 for-each-loop194205 kak_quiver_safety#frontier-to-list g118125 for-each-loop117149 g6599 for-each-loop64102 g7784 for-each-loop7691 dfs72 g132139 for-each-loop131144) 
o|calls to known targets: 34 
o|identified direct recursive calls: f_925 1 
o|unused rest argument: rest248253 f_1037 
o|fast box initializations: 8 
o|fast global references: 8 
o|fast global assignments: 3 
o|dropping unused closure argument: f_562 
o|dropping unused closure argument: f_901 
o|dropping unused closure argument: f_983 
*/
/* end of file */
