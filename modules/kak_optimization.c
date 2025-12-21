/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   unit: kak_optimization
   uses: chicken.bitwise eval srfi-69 srfi-1 library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_chicken_2ebitwise_toplevel)
C_externimport void C_ccall C_chicken_2ebitwise_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d69_toplevel)
C_externimport void C_ccall C_srfi_2d69_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d1_toplevel)
C_externimport void C_ccall C_srfi_2d1_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[56];
static double C_possibly_force_alignment;


C_noret_decl(f_1000)
static void C_fcall f_1000(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1007)
static void C_ccall f_1007(C_word c,C_word *av) C_noret;
C_noret_decl(f_1019)
static void C_ccall f_1019(C_word c,C_word *av) C_noret;
C_noret_decl(f_1026)
static void C_fcall f_1026(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1036)
static void C_ccall f_1036(C_word c,C_word *av) C_noret;
C_noret_decl(f_1039)
static void C_ccall f_1039(C_word c,C_word *av) C_noret;
C_noret_decl(f_1044)
static void C_fcall f_1044(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1054)
static void C_ccall f_1054(C_word c,C_word *av) C_noret;
C_noret_decl(f_1060)
static void C_ccall f_1060(C_word c,C_word *av) C_noret;
C_noret_decl(f_1065)
static void C_fcall f_1065(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1071)
static void C_ccall f_1071(C_word c,C_word *av) C_noret;
C_noret_decl(f_1077)
static void C_ccall f_1077(C_word c,C_word *av) C_noret;
C_noret_decl(f_1094)
static void C_ccall f_1094(C_word c,C_word *av) C_noret;
C_noret_decl(f_1095)
static void C_fcall f_1095(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1109)
static void C_ccall f_1109(C_word c,C_word *av) C_noret;
C_noret_decl(f_1112)
static void C_ccall f_1112(C_word c,C_word *av) C_noret;
C_noret_decl(f_1116)
static void C_ccall f_1116(C_word c,C_word *av) C_noret;
C_noret_decl(f_1123)
static void C_ccall f_1123(C_word c,C_word *av) C_noret;
C_noret_decl(f_1129)
static void C_ccall f_1129(C_word c,C_word *av) C_noret;
C_noret_decl(f_1134)
static void C_fcall f_1134(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1144)
static void C_ccall f_1144(C_word c,C_word *av) C_noret;
C_noret_decl(f_1160)
static void C_ccall f_1160(C_word c,C_word *av) C_noret;
C_noret_decl(f_1168)
static void C_ccall f_1168(C_word c,C_word *av) C_noret;
C_noret_decl(f_1170)
static void C_fcall f_1170(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1180)
static void C_ccall f_1180(C_word c,C_word *av) C_noret;
C_noret_decl(f_1194)
static void C_ccall f_1194(C_word c,C_word *av) C_noret;
C_noret_decl(f_1199)
static void C_ccall f_1199(C_word c,C_word *av) C_noret;
C_noret_decl(f_1202)
static void C_ccall f_1202(C_word c,C_word *av) C_noret;
C_noret_decl(f_1206)
static void C_ccall f_1206(C_word c,C_word *av) C_noret;
C_noret_decl(f_1209)
static void C_ccall f_1209(C_word c,C_word *av) C_noret;
C_noret_decl(f_1222)
static void C_fcall f_1222(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1242)
static void C_ccall f_1242(C_word c,C_word *av) C_noret;
C_noret_decl(f_1244)
static void C_fcall f_1244(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1268)
static void C_ccall f_1268(C_word c,C_word *av) C_noret;
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
C_noret_decl(f_535)
static void C_ccall f_535(C_word c,C_word *av) C_noret;
C_noret_decl(f_537)
static void C_ccall f_537(C_word c,C_word *av) C_noret;
C_noret_decl(f_543)
static void C_ccall f_543(C_word c,C_word *av) C_noret;
C_noret_decl(f_549)
static void C_ccall f_549(C_word c,C_word *av) C_noret;
C_noret_decl(f_553)
static void C_ccall f_553(C_word c,C_word *av) C_noret;
C_noret_decl(f_558)
static void C_ccall f_558(C_word c,C_word *av) C_noret;
C_noret_decl(f_586)
static void C_ccall f_586(C_word c,C_word *av) C_noret;
C_noret_decl(f_592)
static void C_ccall f_592(C_word c,C_word *av) C_noret;
C_noret_decl(f_598)
static void C_ccall f_598(C_word c,C_word *av) C_noret;
C_noret_decl(f_604)
static void C_ccall f_604(C_word c,C_word *av) C_noret;
C_noret_decl(f_610)
static void C_ccall f_610(C_word c,C_word *av) C_noret;
C_noret_decl(f_616)
static void C_ccall f_616(C_word c,C_word *av) C_noret;
C_noret_decl(f_622)
static void C_ccall f_622(C_word c,C_word *av) C_noret;
C_noret_decl(f_630)
static void C_ccall f_630(C_word c,C_word *av) C_noret;
C_noret_decl(f_633)
static void C_ccall f_633(C_word c,C_word *av) C_noret;
C_noret_decl(f_635)
static void C_ccall f_635(C_word c,C_word *av) C_noret;
C_noret_decl(f_673)
static void C_ccall f_673(C_word c,C_word *av) C_noret;
C_noret_decl(f_677)
static void C_ccall f_677(C_word c,C_word *av) C_noret;
C_noret_decl(f_680)
static void C_ccall f_680(C_word c,C_word *av) C_noret;
C_noret_decl(f_683)
static void C_ccall f_683(C_word c,C_word *av) C_noret;
C_noret_decl(f_685)
static void C_fcall f_685(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_695)
static void C_ccall f_695(C_word c,C_word *av) C_noret;
C_noret_decl(f_708)
static void C_ccall f_708(C_word c,C_word *av) C_noret;
C_noret_decl(f_717)
static void C_ccall f_717(C_word c,C_word *av) C_noret;
C_noret_decl(f_745)
static void C_ccall f_745(C_word c,C_word *av) C_noret;
C_noret_decl(f_792)
static void C_ccall f_792(C_word c,C_word *av) C_noret;
C_noret_decl(f_871)
static void C_ccall f_871(C_word c,C_word *av) C_noret;
C_noret_decl(f_897)
static void C_ccall f_897(C_word c,C_word *av) C_noret;
C_noret_decl(f_939)
static void C_ccall f_939(C_word c,C_word *av) C_noret;
C_noret_decl(f_943)
static void C_ccall f_943(C_word c,C_word *av) C_noret;
C_noret_decl(f_948)
static void C_ccall f_948(C_word c,C_word *av) C_noret;
C_noret_decl(f_952)
static void C_ccall f_952(C_word c,C_word *av) C_noret;
C_noret_decl(f_978)
static void C_ccall f_978(C_word c,C_word *av) C_noret;
C_noret_decl(f_980)
static void C_ccall f_980(C_word c,C_word *av) C_noret;
C_noret_decl(f_984)
static void C_ccall f_984(C_word c,C_word *av) C_noret;
C_noret_decl(f_987)
static void C_ccall f_987(C_word c,C_word *av) C_noret;
C_noret_decl(f_999)
static void C_ccall f_999(C_word c,C_word *av) C_noret;
C_noret_decl(C_kak_5foptimization_toplevel)
C_externexport void C_ccall C_kak_5foptimization_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(va1395)
static void C_fcall va1395(C_word t0,C_word t1) C_noret;

C_noret_decl(trf_1000)
static void C_ccall trf_1000(C_word c,C_word *av) C_noret;
static void C_ccall trf_1000(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1000(t0,t1,t2);}

C_noret_decl(trf_1026)
static void C_ccall trf_1026(C_word c,C_word *av) C_noret;
static void C_ccall trf_1026(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1026(t0,t1,t2);}

C_noret_decl(trf_1044)
static void C_ccall trf_1044(C_word c,C_word *av) C_noret;
static void C_ccall trf_1044(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1044(t0,t1,t2,t3);}

C_noret_decl(trf_1065)
static void C_ccall trf_1065(C_word c,C_word *av) C_noret;
static void C_ccall trf_1065(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1065(t0,t1,t2);}

C_noret_decl(trf_1095)
static void C_ccall trf_1095(C_word c,C_word *av) C_noret;
static void C_ccall trf_1095(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1095(t0,t1,t2);}

C_noret_decl(trf_1134)
static void C_ccall trf_1134(C_word c,C_word *av) C_noret;
static void C_ccall trf_1134(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1134(t0,t1,t2);}

C_noret_decl(trf_1170)
static void C_ccall trf_1170(C_word c,C_word *av) C_noret;
static void C_ccall trf_1170(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1170(t0,t1,t2);}

C_noret_decl(trf_1222)
static void C_ccall trf_1222(C_word c,C_word *av) C_noret;
static void C_ccall trf_1222(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1222(t0,t1,t2);}

C_noret_decl(trf_1244)
static void C_ccall trf_1244(C_word c,C_word *av) C_noret;
static void C_ccall trf_1244(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1244(t0,t1,t2,t3);}

C_noret_decl(trf_685)
static void C_ccall trf_685(C_word c,C_word *av) C_noret;
static void C_ccall trf_685(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_685(t0,t1,t2);}

C_noret_decl(trva1395)
static void C_ccall trva1395(C_word c,C_word *av) C_noret;
static void C_ccall trva1395(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
va1395(t0,t1);}

/* graph-neighbors in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1000(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_1000,3,t0,t1,t2);}
a=C_alloc(5);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1007,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:207: srfi-69#hash-table? */
t4=C_fast_retrieve(lf[42]);{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}

/* k1005 in graph-neighbors in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1007(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1007,c,av);}
a=C_alloc(3);
if(C_truep(t1)){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:208: srfi-69#hash-table-ref/default */
t2=C_fast_retrieve(lf[31]);{
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1019,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:210: srfi-1#assoc */
t3=C_fast_retrieve(lf[41]);{
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

/* k1017 in k1005 in graph-neighbors in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1019(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1019,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=(C_truep(t1)?C_i_cdr(t1):C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* g160 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1026(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_1026,3,t0,t1,t2);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:215: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[43]);{
C_word av2[5];
av2[0]=t3;
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
av2[3]=t2;
av2[4]=lf[44];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1036(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(16,c,4)))){
C_save_and_reclaim((void *)f_1036,c,av);}
a=C_alloc(16);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1039,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
t3=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1160,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1168,a[2]=t2,a[3]=t3,a[4]=((C_word*)t0)[9],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:221: frontier-create */
t5=C_fast_retrieve(lf[19]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[7];
f_717(3,av2);}}

/* k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1039(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,4)))){
C_save_and_reclaim((void *)f_1039,c,av);}
a=C_alloc(11);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1044,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],tmp=(C_word)a,a+=9,tmp));
t5=((C_word*)t3)[1];
f_1044(t5,((C_word*)t0)[8],t1,C_fix(0));}

/* loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1044(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,2)))){
C_save_and_reclaim_args((void *)trf_1044,4,t0,t1,t2,t3);}
a=C_alloc(11);
t4=C_i_greater_or_equalp(t3,((C_word*)t0)[2]);
t5=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_1054,a[2]=t1,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=t2,a[10]=((C_word*)t0)[8],tmp=(C_word)a,a+=11,tmp);
if(C_truep(t4)){
t6=t5;{
C_word av2[2];
av2[0]=t6;
av2[1]=t4;
f_1054(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:226: frontier-empty? */
t6=C_fast_retrieve(lf[28]);{
C_word av2[3];
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
f_897(3,av2);}}}

/* k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1054(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,2)))){
C_save_and_reclaim((void *)f_1054,c,av);}
a=C_alloc(10);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=C_i_vector_ref(((C_word*)t0)[4],((C_word*)t0)[5]);
t3=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_1060,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=t2,a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[7],a[7]=((C_word*)t0)[8],a[8]=((C_word*)t0)[2],a[9]=((C_word*)t0)[9],tmp=(C_word)a,a+=10,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:231: frontier-create */
t4=C_fast_retrieve(lf[19]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[10];
f_717(3,av2);}}}

/* k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1060(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(14,c,3)))){
C_save_and_reclaim((void *)f_1060,c,av);}
a=C_alloc(14);
t2=t1;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_1065,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=t5,a[9]=((C_word*)t0)[7],tmp=(C_word)a,a+=10,tmp));
t7=((C_word*)t5)[1];
f_1065(t7,((C_word*)t0)[8],((C_word*)t0)[9]);}

/* loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1065(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,0,5)))){
C_save_and_reclaim_args((void *)trf_1065,3,t0,t1,t2);}
a=C_alloc(13);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1071,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_1077,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],tmp=(C_word)a,a+=10,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:235: ##sys#call-with-values */{
C_word av2[4];
av2[0]=0;
av2[1]=t1;
av2[2]=t3;
av2[3]=t4;
C_call_with_values(4,av2);}}

/* a1070 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1071(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1071,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:235: frontier-pop */
t2=C_fast_retrieve(lf[25]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
f_792(3,av2);}}

/* a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1077(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(29,c,4)))){
C_save_and_reclaim((void *)f_1077,c,av);}
a=C_alloc(29);
if(C_truep(C_i_not(t2))){
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:238: loop */
t6=((C_word*)((C_word*)t0)[3])[1];
f_1044(t6,t1,((C_word*)((C_word*)t0)[4])[1],t5);}
else{
t5=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_1094,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[6],a[5]=((C_word*)t0)[7],a[6]=((C_word*)t0)[8],a[7]=t1,a[8]=t4,a[9]=((C_word*)t0)[9],a[10]=t3,tmp=(C_word)a,a+=11,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:241: srfi-69#hash-table-ref/default */
t6=C_fast_retrieve(lf[31]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[6];
av2[3]=t3;
av2[4]=lf[46];
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}}

/* k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1094(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_1094,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1095,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1123,a[2]=((C_word*)t0)[6],a[3]=((C_word*)t0)[7],a[4]=((C_word*)t0)[8],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:253: graph-neighbors */
t4=((C_word*)t0)[9];
f_1000(t4,t3,((C_word*)t0)[10]);}

/* g204 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1095(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(69,0,4)))){
C_save_and_reclaim_args((void *)trf_1095,3,t0,t1,t2);}
a=C_alloc(69);
t3=C_i_car(t2);
t4=C_u_i_cdr(t2);
t5=C_s_a_i_times(&a,2,t4,((C_word*)t0)[2]);
t6=C_s_a_i_plus(&a,2,((C_word*)t0)[3],t5);
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1109,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=t3,a[5]=((C_word*)t0)[5],a[6]=t6,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:250: relax-bound */
t8=((C_word*)t0)[6];{
C_word av2[5];
av2[0]=t8;
av2[1]=t7;
av2[2]=((C_word*)t0)[5];
av2[3]=t3;
av2[4]=t6;
((C_proc)C_fast_retrieve_proc(t8))(5,av2);}}

/* k1107 in g204 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 in ... */
static void C_ccall f_1109(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1109,c,av);}
a=C_alloc(5);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1112,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:251: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[43]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1110 in k1107 in g204 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in ... */
static void C_ccall f_1112(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1112,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1116,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:252: frontier-push */
t3=C_fast_retrieve(lf[24]);{
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
f_745(4,av2);}}

/* k1114 in k1110 in k1107 in g204 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in ... */
static void C_ccall f_1116(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1116,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k1121 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1123(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1123,c,av);}
a=C_alloc(11);
t2=C_i_check_list_2(t1,lf[45]);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1129,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1134,a[2]=t5,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_1134(t7,t3,t1);}

/* k1127 in k1121 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 in ... */
static void C_ccall f_1129(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1129,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:256: loop-level */
t2=((C_word*)((C_word*)t0)[2])[1];
f_1065(t2,((C_word*)t0)[3],((C_word*)t0)[4]);}

/* for-each-loop203 in k1121 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 in ... */
static void C_fcall f_1134(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_1134,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1144,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:244: g204 */
t4=((C_word*)t0)[3];
f_1095(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k1142 in for-each-loop203 in k1121 in k1092 in a1076 in loop-level in k1058 in k1052 in loop in k1037 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in ... */
static void C_ccall f_1144(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1144,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_1134(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* a1159 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1160(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1160,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:220: frontier-push */
t4=C_fast_retrieve(lf[24]);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t1;
av2[2]=t3;
av2[3]=t2;
f_745(4,av2);}}

/* k1166 in k1034 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1168(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1168,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:220: srfi-1#fold */
t2=C_fast_retrieve(lf[47]);{
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

/* for-each-loop159 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1170(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_1170,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1180,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:215: g160 */
t4=((C_word*)t0)[3];
f_1026(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k1178 in for-each-loop159 in k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1180(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1180,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_1170(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* k1192 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1194(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1194,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
f_987(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:197: chicken.base#error */
t2=*((C_word*)lf[22]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[49];
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}}

/* a1198 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1199(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1199,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_retrieve2(lf[30],C_text("kak_optimization#relax-bound-default"));
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_optimization#kak-apply-optimized in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1202(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5=av[5];
C_word t6=av[6];
C_word t7=av[7];
C_word t8=av[8];
C_word t9;
C_word t10;
C_word *a;
if(c!=9) C_bad_argc_2(c,9,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,5)))){
C_save_and_reclaim((void *)f_1202,c,av);}
a=C_alloc(5);
t9=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1206,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:264: make-kak-context */
t10=C_fast_retrieve(lf[2]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
av2[2]=t7;
av2[3]=t4;
av2[4]=t6;
av2[5]=t8;
f_537(6,av2);}}

/* k1204 in kak_optimization#kak-apply-optimized in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1206(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1206,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1209,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:265: kak-apply-cached */
t3=C_fast_retrieve(lf[40]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=t1;
f_980(5,av2);}}

/* k1207 in k1204 in kak_optimization#kak-apply-optimized in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1209(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1209,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:266: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_i_vector_ref(((C_word*)t0)[3],C_fix(5));
av2[4]=C_i_vector_ref(((C_word*)t0)[3],C_fix(6));
C_values(5,av2);}}

/* loop in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1222(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,4)))){
C_save_and_reclaim_args((void *)trf_1222,3,t0,t1,t2);}
a=C_alloc(11);
if(C_truep(C_i_lessp(t2,C_fix(256)))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1242,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1244,a[2]=t5,tmp=(C_word)a,a+=3,tmp));
t7=((C_word*)t5)[1];
f_1244(t7,t3,t2,C_fix(0));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k1240 in loop in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1242(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_1242,c,av);}
a=C_alloc(5);
t2=C_i_vector_set(((C_word*)t0)[2],((C_word*)t0)[3],t1);
t3=C_a_i_fixnum_plus(&a,2,((C_word*)t0)[3],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:92: loop */
t4=((C_word*)((C_word*)t0)[4])[1];
f_1222(t4,((C_word*)t0)[5],t3);}

/* loop-count in loop in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_1244(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_1244,4,t0,t1,t2,t3);}
a=C_alloc(63);
if(C_truep(C_i_nequalp(t2,C_fix(0)))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_minus(&a,2,t2,C_fix(1));
t5=C_s_a_i_bitwise_and(&a,2,t2,t4);
t6=C_s_a_i_plus(&a,2,t3,C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:91: loop-count */
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* a1267 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_1268(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_1268,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:16: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[53]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[53]+1);
av2[1]=t1;
av2[2]=lf[0];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[54];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* k518 */
static void C_ccall f_520(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_520,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_523,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k521 in k518 */
static void C_ccall f_523(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_523,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_526,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d1_toplevel(2,av2);}}

/* k524 in k521 in k518 */
static void C_ccall f_526(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_526,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_529,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d69_toplevel(2,av2);}}

/* k527 in k524 in k521 in k518 */
static void C_ccall f_529(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_529,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_532,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_chicken_2ebitwise_toplevel(2,av2);}}

/* k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_532(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_532,c,av);}
a=C_alloc(21);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_535,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1268,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:16: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[55]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[55]+1);
av2[1]=t4;
av2[2]=t5;
tp(3,av2);}}

/* k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_535(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(21,c,6)))){
C_save_and_reclaim((void *)f_535,c,av);}
a=C_alloc(21);
t2=C_mutate((C_word*)lf[2]+1 /* (set! kak_optimization#make-kak-context ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_537,tmp=(C_word)a,a+=2,tmp));
t3=C_mutate((C_word*)lf[5]+1 /* (set! kak_optimization#kak-context? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_558,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[6]+1 /* (set! kak_optimization#kak-context-info-bits ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_586,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[7]+1 /* (set! kak_optimization#kak-context-base ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_592,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[8]+1 /* (set! kak_optimization#kak-context-steps ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_598,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[9]+1 /* (set! kak_optimization#kak-context-mode ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_604,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[10]+1 /* (set! kak_optimization#kak-context-tau ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_610,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[11]+1 /* (set! kak_optimization#kak-context-codeword ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_616,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[12]+1 /* (set! kak_optimization#kak-context-decomp ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_622,tmp=(C_word)a,a+=2,tmp));
t11=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_630,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:83: scheme#make-vector */
t12=*((C_word*)lf[17]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t12;
av2[1]=t11;
av2[2]=C_fix(256);
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t12+1)))(4,av2);}}

/* kak_optimization#make-kak-context in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_537(C_word c,C_word *av){
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
C_word *a;
if(c!=6) C_bad_argc_2(c,6,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,5)))){
C_save_and_reclaim((void *)f_537,c,av);}
a=C_alloc(8);
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_543,a[2]=t5,tmp=(C_word)a,a+=3,tmp);
t7=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_549,a[2]=t2,a[3]=t3,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:53: ##sys#call-with-values */{
C_word *av2=av;
av2[0]=0;
av2[1]=t1;
av2[2]=t6;
av2[3]=t7;
C_call_with_values(4,av2);}}

/* a542 in kak_optimization#make-kak-context in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_543(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_543,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:53: af-config */
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=t1;
((C_proc)C_fast_retrieve_proc(t2))(2,av2);}}

/* a548 in kak_optimization#make-kak-context in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_549(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_549,c,av);}
a=C_alloc(9);
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_553,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=t2,a[7]=t3,a[8]=t4,tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:55: cartan-lazy-vector */
t6=C_fast_retrieve(lf[4]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
f_673(4,av2);}}

/* k551 in a548 in kak_optimization#make-kak-context in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_553(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_553,c,av);}
a=C_alloc(9);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector8(&a,8,lf[3],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[6],((C_word*)t0)[7],((C_word*)t0)[8],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_optimization#kak-context? in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_558(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_558,c,av);}
if(C_truep(C_i_vectorp(t2))){
t3=C_block_size(t2);
t4=C_fixnum_greaterp(t3,C_fix(0));
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=(C_truep(t4)?C_eqp(C_i_vector_ref(t2,C_fix(0)),lf[3]):C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* kak_optimization#kak-context-info-bits in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_586(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_586,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-base in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_592(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_592,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-steps in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_598(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_598,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(3));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-mode in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_604(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_604,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(4));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-tau in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_610(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_610,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(5));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-codeword in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_616(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_616,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(6));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* kak_optimization#kak-context-decomp in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_622(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_622,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(7));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_630(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_630,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_633,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1222,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_1222(t6,t2,C_fix(0));}

/* k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_633(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(20,c,9)))){
C_save_and_reclaim((void *)f_633,c,av);}
a=C_alloc(20);
t2=C_mutate(&lf[13] /* (set! kak_optimization#*popcount-lut* ...) */,((C_word*)t0)[2]);
t3=C_mutate((C_word*)lf[14]+1 /* (set! kak_optimization#popcount-fast ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_635,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[4]+1 /* (set! kak_optimization#cartan-lazy-vector ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_673,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[19]+1 /* (set! kak_optimization#frontier-create ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_717,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[24]+1 /* (set! kak_optimization#frontier-push ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_745,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[25]+1 /* (set! kak_optimization#frontier-pop ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_792,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[28]+1 /* (set! kak_optimization#frontier-empty? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_897,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate(&lf[30] /* (set! kak_optimization#relax-bound-default ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_939,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[33]+1 /* (set! kak_optimization#kak-optimize-config ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_948,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[40]+1 /* (set! kak_optimization#kak-apply-cached ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_980,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[52]+1 /* (set! kak_optimization#kak-apply-optimized ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1202,tmp=(C_word)a,a+=2,tmp));
t13=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t13;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t13+1)))(2,av2);}}

/* kak_optimization#popcount-fast in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_635(C_word c,C_word *av){
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
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(58,c,2)))){
C_save_and_reclaim((void *)f_635,c,av);}
a=C_alloc(58);
t3=C_s_a_i_bitwise_and(&a,2,t2,C_fix(255));
t4=C_i_vector_ref(C_retrieve2(lf[13],C_text("kak_optimization#\052popcount-lut\052")),t3);
t5=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-8));
t6=C_s_a_i_bitwise_and(&a,2,t5,C_fix(255));
t7=C_i_vector_ref(C_retrieve2(lf[13],C_text("kak_optimization#\052popcount-lut\052")),t6);
t8=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-16));
t9=C_s_a_i_bitwise_and(&a,2,t8,C_fix(255));
t10=C_i_vector_ref(C_retrieve2(lf[13],C_text("kak_optimization#\052popcount-lut\052")),t9);
t11=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)va1395,a[2]=t1,a[3]=t10,tmp=(C_word)a,a+=4,tmp);
t12=t11;
va1395(t12,C_s_a_i_plus(&a,2,t4,t7));}

/* kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_673(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_673,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_677,a[2]=t1,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* ##sys#log-1 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2=av;
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t4;
av2[2]=t2;
tp(3,av2);}}

/* k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_677(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_677,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_680,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:107: scheme#make-vector */
t3=*((C_word*)lf[17]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(3,av2);}}

/* k678 in k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_680(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_680,c,av);}
a=C_alloc(12);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_683,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_685,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t4,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp));
t6=((C_word*)t4)[1];
f_685(t6,t2,C_fix(0));}

/* k681 in k678 in k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_683(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_683,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* loop in k678 in k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall f_685(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(43,0,2)))){
C_save_and_reclaim_args((void *)trf_685,3,t0,t1,t2);}
a=C_alloc(43);
if(C_truep(C_i_lessp(t2,((C_word*)t0)[2]))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_695,a[2]=((C_word*)t0)[3],a[3]=t2,a[4]=((C_word*)t0)[4],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_708,a[2]=t3,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t5=C_s_a_i_times(&a,2,t2,((C_word*)t0)[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:110: scheme#exp */
t6=*((C_word*)lf[16]+1);{
C_word av2[3];
av2[0]=t6;
av2[1]=t4;
av2[2]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k693 in loop in k678 in k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_695(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_695,c,av);}
a=C_alloc(5);
t2=C_i_vector_set(((C_word*)t0)[2],((C_word*)t0)[3],t1);
t3=C_a_i_fixnum_plus(&a,2,((C_word*)t0)[3],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:112: loop */
t4=((C_word*)((C_word*)t0)[4])[1];
f_685(t4,((C_word*)t0)[5],t3);}

/* k706 in loop in k678 in k675 in kak_optimization#cartan-lazy-vector in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_708(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_708,c,av);}
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[15]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[15]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* kak_optimization#frontier-create in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_717(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_717,c,av);}
a=C_alloc(6);
t3=C_eqp(t2,lf[20]);
if(C_truep(t3)){
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_cons(&a,2,lf[20],C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_eqp(t2,lf[21]);
if(C_truep(t4)){
t5=C_a_i_cons(&a,2,C_SCHEME_END_OF_LIST,C_SCHEME_END_OF_LIST);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_a_i_cons(&a,2,lf[21],t5);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:125: chicken.base#error */
t5=*((C_word*)lf[22]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t1;
av2[2]=lf[23];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}}}

/* kak_optimization#frontier-push in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_745(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_745,c,av);}
a=C_alloc(9);
t4=C_i_car(t2);
t5=C_eqp(t4,lf[20]);
if(C_truep(t5)){
t6=C_u_i_cdr(t2);
t7=C_a_i_cons(&a,2,t3,t6);
t8=t1;{
C_word *av2=av;
av2[0]=t8;
av2[1]=C_a_i_cons(&a,2,lf[20],t7);
((C_proc)(void*)(*((C_word*)t8+1)))(2,av2);}}
else{
t6=C_eqp(t4,lf[21]);
if(C_truep(t6)){
t7=C_u_i_cdr(t2);
t8=C_i_car(t7);
t9=C_u_i_cdr(t7);
t10=C_a_i_cons(&a,2,t3,t9);
t11=C_a_i_cons(&a,2,t8,t10);
t12=t1;{
C_word *av2=av;
av2[0]=t12;
av2[1]=C_a_i_cons(&a,2,lf[21],t11);
((C_proc)(void*)(*((C_word*)t12+1)))(2,av2);}}
else{
t7=t1;{
C_word *av2=av;
av2[0]=t7;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t7+1)))(2,av2);}}}}

/* kak_optimization#frontier-pop in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_792(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_792,c,av);}
a=C_alloc(6);
t3=C_i_car(t2);
t4=C_eqp(t3,lf[20]);
if(C_truep(t4)){
t5=C_u_i_cdr(t2);
if(C_truep(C_i_nullp(t5))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:144: scheme#values */{
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
t8=C_a_i_cons(&a,2,lf[20],t7);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:145: scheme#values */{
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
t5=C_eqp(t3,lf[21]);
if(C_truep(t5)){
t6=C_u_i_cdr(t2);
t7=C_i_car(t6);
t8=C_u_i_cdr(t6);
t9=C_i_nullp(t7);
if(C_truep(C_i_not(t9))){
t10=C_i_car(t7);
t11=C_u_i_cdr(t7);
t12=C_a_i_cons(&a,2,t11,t8);
t13=C_a_i_cons(&a,2,lf[21],t12);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:152: scheme#values */{
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:155: scheme#values */{
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
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_871,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:157: scheme#reverse */
t11=*((C_word*)lf[26]+1);{
C_word *av2=av;
av2[0]=t11;
av2[1]=t10;
av2[2]=t8;
((C_proc)(void*)(*((C_word*)t11+1)))(3,av2);}}}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:161: chicken.base#error */
t6=*((C_word*)lf[22]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t1;
av2[2]=lf[27];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}}

/* k869 in kak_optimization#frontier-pop in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_871(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_871,c,av);}
a=C_alloc(6);
t2=C_i_car(t1);
t3=C_u_i_cdr(t1);
t4=C_a_i_cons(&a,2,t3,C_SCHEME_END_OF_LIST);
t5=C_a_i_cons(&a,2,lf[21],t4);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:158: scheme#values */{
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

/* kak_optimization#frontier-empty? in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_897(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_897,c,av);}
t3=C_i_car(t2);
t4=C_eqp(t3,lf[20]);
if(C_truep(t4)){
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_i_nullp(C_u_i_cdr(t2));
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_eqp(t3,lf[21]);
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:170: chicken.base#error */
t6=*((C_word*)lf[22]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t1;
av2[2]=lf[29];
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}}}

/* kak_optimization#relax-bound-default in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_939(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_939,c,av);}
a=C_alloc(4);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_943,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:177: srfi-69#hash-table-ref/default */
t6=C_fast_retrieve(lf[31]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
av2[4]=lf[32];
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k941 in kak_optimization#relax-bound-default in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_943(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_943,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_i_lessp(((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* kak_optimization#kak-optimize-config in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_948(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,2)))){
C_save_and_reclaim((void *)f_948,c,av);}
a=C_alloc(7);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_952,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_978,a[2]=t5,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:181: scheme#sqrt */
t7=*((C_word*)lf[39]+1);{
C_word *av2=av;
av2[0]=t7;
av2[1]=t6;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t7+1)))(3,av2);}}

/* k950 in kak_optimization#kak-optimize-config in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_952(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_952,c,av);}
if(C_truep(C_i_greaterp(t1,lf[34]))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:183: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[21];
av2[3]=lf[35];
av2[4]=C_SCHEME_FALSE;
C_values(5,av2);}}
else{
if(C_truep(C_i_lessp(t1,lf[36]))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:184: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[20];
av2[3]=lf[37];
av2[4]=C_SCHEME_FALSE;
C_values(5,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:185: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[21];
av2[3]=lf[38];
av2[4]=C_SCHEME_FALSE;
C_values(5,av2);}}}}

/* k976 in kak_optimization#kak-optimize-config in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_978(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_978,c,av);}
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[15]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[15]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
tp(4,av2);}}

/* kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_980(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5;
C_word *a;
if(c<5) C_bad_min_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand((c-5)*C_SIZEOF_PAIR +8,c,4)))){
C_save_and_reclaim((void*)f_980,c,av);}
a=C_alloc((c-5)*C_SIZEOF_PAIR+8);
t5=C_build_rest(&a,c,5,av);
C_word t6;
C_word t7;
C_word t8;
t6=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_984,a[2]=t4,a[3]=t2,a[4]=t3,a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t7=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1199,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:192: ##sys#get-keyword */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[50]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[50]+1);
av2[1]=t6;
av2[2]=lf[51];
av2[3]=t5;
av2[4]=t7;
tp(5,av2);}}

/* k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_984(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,2)))){
C_save_and_reclaim((void *)f_984,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_987,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1194,a[2]=t2,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:196: kak-context? */
t4=C_fast_retrieve(lf[5]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[2];
f_558(3,av2);}}

/* k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_987(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_987,c,av);}
a=C_alloc(9);
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(4));
t3=C_i_vector_ref(((C_word*)t0)[2],C_fix(7));
t4=C_i_vector_ref(((C_word*)t0)[2],C_fix(3));
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_999,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t4,a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=t2,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:202: srfi-69#make-hash-table */
t6=C_fast_retrieve(lf[48]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k997 in k985 in k982 in kak_optimization#kak-apply-cached in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_ccall f_999(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(22,c,3)))){
C_save_and_reclaim((void *)f_999,c,av);}
a=C_alloc(22);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1000,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1026,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=C_i_check_list_2(((C_word*)t0)[3],lf[45]);
t5=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_1036,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[6],a[6]=t2,a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[3],tmp=(C_word)a,a+=10,tmp);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1170,a[2]=t7,a[3]=t3,tmp=(C_word)a,a+=4,tmp));
t9=((C_word*)t7)[1];
f_1170(t9,t5,((C_word*)t0)[3]);}

/* toplevel */
static C_TLS int toplevel_initialized=0;

void C_ccall C_kak_5foptimization_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("kak_optimization"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_kak_5foptimization_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(679))){
C_save(t1);
C_rereclaim2(679*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,56);
lf[0]=C_h_intern(&lf[0],16, C_text("kak_optimization"));
lf[1]=C_h_intern(&lf[1],17, C_text("kak_optimization#"));
lf[2]=C_h_intern(&lf[2],33, C_text("kak_optimization#make-kak-context"));
lf[3]=C_h_intern(&lf[3],11, C_text("kak-context"));
lf[4]=C_h_intern(&lf[4],35, C_text("kak_optimization#cartan-lazy-vector"));
lf[5]=C_h_intern(&lf[5],29, C_text("kak_optimization#kak-context\077"));
lf[6]=C_h_intern(&lf[6],38, C_text("kak_optimization#kak-context-info-bits"));
lf[7]=C_h_intern(&lf[7],33, C_text("kak_optimization#kak-context-base"));
lf[8]=C_h_intern(&lf[8],34, C_text("kak_optimization#kak-context-steps"));
lf[9]=C_h_intern(&lf[9],33, C_text("kak_optimization#kak-context-mode"));
lf[10]=C_h_intern(&lf[10],32, C_text("kak_optimization#kak-context-tau"));
lf[11]=C_h_intern(&lf[11],37, C_text("kak_optimization#kak-context-codeword"));
lf[12]=C_h_intern(&lf[12],35, C_text("kak_optimization#kak-context-decomp"));
lf[14]=C_h_intern(&lf[14],30, C_text("kak_optimization#popcount-fast"));
lf[15]=C_h_intern(&lf[15],9, C_text("##sys#/-2"));
lf[16]=C_h_intern(&lf[16],10, C_text("scheme#exp"));
lf[17]=C_h_intern(&lf[17],18, C_text("scheme#make-vector"));
lf[18]=C_h_intern(&lf[18],11, C_text("##sys#log-1"));
lf[19]=C_h_intern(&lf[19],32, C_text("kak_optimization#frontier-create"));
lf[20]=C_h_intern(&lf[20],5, C_text("stack"));
lf[21]=C_h_intern(&lf[21],5, C_text("queue"));
lf[22]=C_h_intern(&lf[22],18, C_text("chicken.base#error"));
lf[23]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[24]=C_h_intern(&lf[24],30, C_text("kak_optimization#frontier-push"));
lf[25]=C_h_intern(&lf[25],29, C_text("kak_optimization#frontier-pop"));
lf[26]=C_h_intern(&lf[26],14, C_text("scheme#reverse"));
lf[27]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[28]=C_h_intern(&lf[28],32, C_text("kak_optimization#frontier-empty\077"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025Unknown frontier mode"));
lf[31]=C_h_intern(&lf[31],30, C_text("srfi-69#hash-table-ref/default"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376U999999999999999967336168804116691273849533185806555472917961779471295845921727"
"862608739868455469056.0\000"));
lf[33]=C_h_intern(&lf[33],36, C_text("kak_optimization#kak-optimize-config"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376U0.1000000000000000055511151231257827021181583404541015625\000"));
lf[35]=C_decode_literal(C_heaptop,C_text("\376U1.1999999999999999555910790149937383830547332763671875\000"));
lf[36]=C_decode_literal(C_heaptop,C_text("\376U0.01000000000000000020816681711721685132943093776702880859375\000"));
lf[37]=C_decode_literal(C_heaptop,C_text("\376U1.5\000"));
lf[38]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[39]=C_h_intern(&lf[39],11, C_text("scheme#sqrt"));
lf[40]=C_h_intern(&lf[40],33, C_text("kak_optimization#kak-apply-cached"));
lf[41]=C_h_intern(&lf[41],12, C_text("srfi-1#assoc"));
lf[42]=C_h_intern(&lf[42],19, C_text("srfi-69#hash-table\077"));
lf[43]=C_h_intern(&lf[43],23, C_text("srfi-69#hash-table-set!"));
lf[44]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[45]=C_h_intern(&lf[45],8, C_text("for-each"));
lf[46]=C_decode_literal(C_heaptop,C_text("\376U+inf.0\000"));
lf[47]=C_h_intern(&lf[47],11, C_text("srfi-1#fold"));
lf[48]=C_h_intern(&lf[48],23, C_text("srfi-69#make-hash-table"));
lf[49]=C_decode_literal(C_heaptop,C_text("\376B\000\0004kak-apply-cached: context must be kak-context object"));
lf[50]=C_h_intern(&lf[50],17, C_text("##sys#get-keyword"));
lf[51]=C_h_intern_kw(&lf[51],11, C_text("relax-bound"));
lf[52]=C_h_intern(&lf[52],36, C_text("kak_optimization#kak-apply-optimized"));
lf[53]=C_h_intern(&lf[53],30, C_text("##sys#register-compiled-module"));
lf[54]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001make-kak-context\376\001\000\000!\001kak_optimization#make-kak-context\376\003\000\000\002\376\003\000\000"
"\002\376\001\000\000\020\001kak-apply-cached\376\001\000\000!\001kak_optimization#kak-apply-cached\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001ka"
"k-apply-optimized\376\001\000\000$\001kak_optimization#kak-apply-optimized\376\003\000\000\002\376\003\000\000\002\376\001\000\000\015\001popco"
"unt-fast\376\001\000\000\036\001kak_optimization#popcount-fast\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001cartan-lazy-vector\376\001"
"\000\000#\001kak_optimization#cartan-lazy-vector\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001kak-optimize-config\376\001\000\000$\001"
"kak_optimization#kak-optimize-config\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001frontier-create\376\001\000\000 \001kak_opt"
"imization#frontier-create\376\003\000\000\002\376\003\000\000\002\376\001\000\000\015\001frontier-push\376\001\000\000\036\001kak_optimization#fro"
"ntier-push\376\003\000\000\002\376\003\000\000\002\376\001\000\000\014\001frontier-pop\376\001\000\000\035\001kak_optimization#frontier-pop\376\003\000\000\002\376\003"
"\000\000\002\376\001\000\000\017\001frontier-empty\077\376\001\000\000 \001kak_optimization#frontier-empty\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\014\001ka"
"k-context\077\376\001\000\000\035\001kak_optimization#kak-context\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001kak-context-mode\376\001\000"
"\000!\001kak_optimization#kak-context-mode\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001kak-context-tau\376\001\000\000 \001kak_opt"
"imization#kak-context-tau\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001kak-context-decomp\376\001\000\000#\001kak_optimizatio"
"n#kak-context-decomp\376\003\000\000\002\376\003\000\000\002\376\001\000\000\025\001kak-context-info-bits\376\001\000\000&\001kak_optimization#"
"kak-context-info-bits\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001kak-context-steps\376\001\000\000\042\001kak_optimization#kak"
"-context-steps\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001kak-context-base\376\001\000\000!\001kak_optimization#kak-context"
"-base\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001kak-context-codeword\376\001\000\000%\001kak_optimization#kak-context-code"
"word\376\377\016"));
lf[55]=C_h_intern(&lf[55],22, C_text("##sys#with-environment"));
C_register_lf2(lf,56,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_520,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

/* va1395 in kak_optimization#popcount-fast in k631 in k628 in k533 in k530 in k527 in k524 in k521 in k518 */
static void C_fcall va1395(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,0,1)))){
C_save_and_reclaim_args((void *)trva1395,2,t0,t1);}
a=C_alloc(29);
t2=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t2;
av2[1]=C_s_a_i_plus(&a,2,t1,((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[79] = {
{C_text("f_1000:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1000},
{C_text("f_1007:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1007},
{C_text("f_1019:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1019},
{C_text("f_1026:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1026},
{C_text("f_1036:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1036},
{C_text("f_1039:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1039},
{C_text("f_1044:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1044},
{C_text("f_1054:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1054},
{C_text("f_1060:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1060},
{C_text("f_1065:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1065},
{C_text("f_1071:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1071},
{C_text("f_1077:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1077},
{C_text("f_1094:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1094},
{C_text("f_1095:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1095},
{C_text("f_1109:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1109},
{C_text("f_1112:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1112},
{C_text("f_1116:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1116},
{C_text("f_1123:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1123},
{C_text("f_1129:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1129},
{C_text("f_1134:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1134},
{C_text("f_1144:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1144},
{C_text("f_1160:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1160},
{C_text("f_1168:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1168},
{C_text("f_1170:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1170},
{C_text("f_1180:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1180},
{C_text("f_1194:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1194},
{C_text("f_1199:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1199},
{C_text("f_1202:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1202},
{C_text("f_1206:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1206},
{C_text("f_1209:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1209},
{C_text("f_1222:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1222},
{C_text("f_1242:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1242},
{C_text("f_1244:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1244},
{C_text("f_1268:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_1268},
{C_text("f_520:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_520},
{C_text("f_523:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_523},
{C_text("f_526:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_526},
{C_text("f_529:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_529},
{C_text("f_532:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_532},
{C_text("f_535:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_535},
{C_text("f_537:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_537},
{C_text("f_543:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_543},
{C_text("f_549:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_549},
{C_text("f_553:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_553},
{C_text("f_558:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_558},
{C_text("f_586:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_586},
{C_text("f_592:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_592},
{C_text("f_598:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_598},
{C_text("f_604:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_604},
{C_text("f_610:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_610},
{C_text("f_616:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_616},
{C_text("f_622:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_622},
{C_text("f_630:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_630},
{C_text("f_633:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_633},
{C_text("f_635:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_635},
{C_text("f_673:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_673},
{C_text("f_677:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_677},
{C_text("f_680:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_680},
{C_text("f_683:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_683},
{C_text("f_685:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_685},
{C_text("f_695:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_695},
{C_text("f_708:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_708},
{C_text("f_717:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_717},
{C_text("f_745:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_745},
{C_text("f_792:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_792},
{C_text("f_871:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_871},
{C_text("f_897:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_897},
{C_text("f_939:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_939},
{C_text("f_943:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_943},
{C_text("f_948:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_948},
{C_text("f_952:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_952},
{C_text("f_978:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_978},
{C_text("f_980:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_980},
{C_text("f_984:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_984},
{C_text("f_987:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_987},
{C_text("f_999:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)f_999},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)C_kak_5foptimization_toplevel},
{C_text("va1395:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2fkak_5foptimization_2escm"),(void*)va1395},
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
o|hiding unexported module binding: kak_optimization#*popcount-lut* 
o|hiding unexported module binding: kak_optimization#+INF+ 
o|hiding unexported module binding: kak_optimization#relax-bound-default 
S|applied compiler syntax:
S|  scheme#for-each		2
o|eliminated procedure checks: 6 
o|specializations:
o|  13 (scheme#cdr pair)
o|  2 (scheme#eqv? * (or eof null fixnum char boolean symbol keyword))
o|  2 (scheme#/ * *)
o|  1 (scheme#log *)
o|  2 (scheme#+ fixnum fixnum)
o|  1 (scheme#> fixnum fixnum)
o|  1 (scheme#vector-length vector)
(o e)|safe calls: 137 
o|inlining procedure: k560 
o|substituted constant variable: a583 
o|inlining procedure: k560 
o|inlining procedure: k687 
o|substituted constant variable: a704 
o|inlining procedure: k687 
o|inlining procedure: k719 
o|inlining procedure: k719 
o|inlining procedure: k750 
o|inlining procedure: k750 
o|substituted constant variable: a788 
o|substituted constant variable: a790 
o|inlining procedure: k797 
o|inlining procedure: k797 
o|inlining procedure: k837 
o|inlining procedure: k837 
o|inlining procedure: k902 
o|inlining procedure: k902 
o|inlining procedure: k920 
o|inlining procedure: k920 
o|substituted constant variable: kak_optimization#+INF+ 
o|inlining procedure: k953 
o|inlining procedure: k953 
o|inlining procedure: k1002 
o|inlining procedure: k1002 
o|inlining procedure: k1020 
o|inlining procedure: k1020 
o|inlining procedure: k1046 
o|inlining procedure: k1046 
o|inlining procedure: k1079 
o|inlining procedure: k1104 
o|inlining procedure: k1104 
o|inlining procedure: k1079 
o|inlining procedure: k1136 
o|inlining procedure: k1136 
o|inlining procedure: k1172 
o|inlining procedure: k1172 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:201) kak_optimization#kak-context-steps" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:200) kak_optimization#kak-context-decomp" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:199) kak_optimization#kak-context-mode" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:268) kak_optimization#kak-context-codeword" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/kak_optimization.scm:267) kak_optimization#kak-context-tau" 
o|inlining procedure: k1224 
o|substituted constant variable: a1238 
o|inlining procedure: k1246 
o|inlining procedure: k1246 
o|inlining procedure: k1224 
o|replaced variables: 199 
o|removed binding forms: 51 
o|substituted constant variable: r5611286 
o|removed side-effect free assignment to unused variable: kak_optimization#+INF+ 
o|substituted constant variable: r9211300 
o|substituted constant variable: r10211306 
o|replaced variables: 18 
o|removed binding forms: 181 
o|removed binding forms: 22 
o|simplifications: ((if . 2) (let . 2) (##core#call . 107)) 
o|  call simplifications:
o|    scheme#list	3
o|    scheme#=
o|    scheme#-
o|    scheme#>=
o|    ##sys#check-list	2
o|    scheme#pair?	2
o|    ##sys#slot	4
o|    scheme#list?
o|    scheme#cdr
o|    scheme#>
o|    scheme#not	2
o|    scheme#null?	6
o|    scheme#values	9
o|    scheme#car	10
o|    scheme#cons	13
o|    scheme#<	4
o|    scheme#*	2
o|    scheme#vector-set!	2
o|    chicken.bitwise#arithmetic-shift	2
o|    chicken.bitwise#bitwise-and	4
o|    scheme#+	4
o|    scheme#vector?
o|    ##sys#size
o|    chicken.fixnum#fx>
o|    scheme#vector-ref	17
o|    scheme#eq?	9
o|    ##sys#call-with-values	2
o|    scheme#vector
o|contracted procedure: k563 
o|contracted procedure: k580 
o|contracted procedure: k569 
o|contracted procedure: k576 
o|contracted procedure: k669 
o|contracted procedure: k641 
o|contracted procedure: k665 
o|contracted procedure: k661 
o|contracted procedure: k645 
o|contracted procedure: k657 
o|contracted procedure: k653 
o|contracted procedure: k649 
o|contracted procedure: k690 
o|contracted procedure: k696 
o|contracted procedure: k711 
o|contracted procedure: k722 
o|contracted procedure: k731 
o|contracted procedure: k738 
o|contracted procedure: k747 
o|contracted procedure: k753 
o|contracted procedure: k760 
o|contracted procedure: k768 
o|contracted procedure: k772 
o|contracted procedure: k784 
o|contracted procedure: k780 
o|contracted procedure: k794 
o|contracted procedure: k800 
o|contracted procedure: k807 
o|contracted procedure: k817 
o|contracted procedure: k821 
o|contracted procedure: k829 
o|contracted procedure: k833 
o|contracted procedure: k890 
o|contracted procedure: k840 
o|contracted procedure: k847 
o|contracted procedure: k855 
o|contracted procedure: k851 
o|contracted procedure: k863 
o|contracted procedure: k876 
o|contracted procedure: k884 
o|contracted procedure: k880 
o|contracted procedure: k899 
o|contracted procedure: k905 
o|contracted procedure: k916 
o|contracted procedure: k932 
o|contracted procedure: k923 
o|contracted procedure: k956 
o|contracted procedure: k965 
o|contracted procedure: k988 
o|contracted procedure: k991 
o|contracted procedure: k994 
o|contracted procedure: k1014 
o|contracted procedure: k1031 
o|contracted procedure: k1049 
o|contracted procedure: k1055 
o|contracted procedure: k1082 
o|contracted procedure: k1089 
o|contracted procedure: k1097 
o|contracted procedure: k1118 
o|contracted procedure: k1101 
o|contracted procedure: k1124 
o|contracted procedure: k1139 
o|contracted procedure: k1149 
o|contracted procedure: k1153 
o|contracted procedure: k1175 
o|contracted procedure: k1185 
o|contracted procedure: k1189 
o|contracted procedure: k1214 
o|contracted procedure: k1218 
o|contracted procedure: k1227 
o|contracted procedure: k1230 
o|contracted procedure: k1249 
o|contracted procedure: k1264 
o|contracted procedure: k1256 
o|contracted procedure: k1260 
o|contracted procedure: k1274 
o|contracted procedure: k1278 
o|contracted procedure: k1282 
o|simplifications: ((##core#call . 2) (if . 1) (let . 20)) 
o|  call simplifications:
o|    scheme#+	2
o|removed binding forms: 78 
o|substituted constant variable: r1275 
o|substituted constant variable: r1279 
o|substituted constant variable: r1283 
o|removed binding forms: 3 
o|customizable procedures: (loop-count57 loop55 g160167 for-each-loop159170 graph-neighbors150 g204211 for-each-loop203218 loop-level186 loop178 loop71 va1395) 
o|calls to known targets: 30 
o|identified direct recursive calls: f_1244 1 
o|fast box initializations: 7 
o|fast global references: 4 
o|fast global assignments: 2 
*/
/* end of file */
