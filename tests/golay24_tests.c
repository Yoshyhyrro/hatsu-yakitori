/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
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

static C_TLS C_word lf[73];
static double C_possibly_force_alignment;


C_noret_decl(f_1002)
static void C_ccall f_1002(C_word c,C_word *av) C_noret;
C_noret_decl(f_1008)
static void C_ccall f_1008(C_word c,C_word *av) C_noret;
C_noret_decl(f_1014)
static void C_ccall f_1014(C_word c,C_word *av) C_noret;
C_noret_decl(f_1017)
static void C_ccall f_1017(C_word c,C_word *av) C_noret;
C_noret_decl(f_1020)
static void C_ccall f_1020(C_word c,C_word *av) C_noret;
C_noret_decl(f_1026)
static void C_ccall f_1026(C_word c,C_word *av) C_noret;
C_noret_decl(f_1043)
static void C_ccall f_1043(C_word c,C_word *av) C_noret;
C_noret_decl(f_1049)
static void C_ccall f_1049(C_word c,C_word *av) C_noret;
C_noret_decl(f_1116)
static void C_ccall f_1116(C_word c,C_word *av) C_noret;
C_noret_decl(f_1122)
static void C_ccall f_1122(C_word c,C_word *av) C_noret;
C_noret_decl(f_1147)
static void C_ccall f_1147(C_word c,C_word *av) C_noret;
C_noret_decl(f_1155)
static void C_ccall f_1155(C_word c,C_word *av) C_noret;
C_noret_decl(f_1163)
static void C_ccall f_1163(C_word c,C_word *av) C_noret;
C_noret_decl(f_1171)
static void C_ccall f_1171(C_word c,C_word *av) C_noret;
C_noret_decl(f_1179)
static void C_ccall f_1179(C_word c,C_word *av) C_noret;
C_noret_decl(f_423)
static void C_ccall f_423(C_word c,C_word *av) C_noret;
C_noret_decl(f_426)
static void C_ccall f_426(C_word c,C_word *av) C_noret;
C_noret_decl(f_429)
static void C_ccall f_429(C_word c,C_word *av) C_noret;
C_noret_decl(f_431)
static void C_ccall f_431(C_word c,C_word *av) C_noret;
C_noret_decl(f_437)
static void C_fcall f_437(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_461)
static void C_ccall f_461(C_word c,C_word *av) C_noret;
C_noret_decl(f_468)
static void C_ccall f_468(C_word c,C_word *av) C_noret;
C_noret_decl(f_473)
static void C_ccall f_473(C_word c,C_word *av) C_noret;
C_noret_decl(f_482)
static void C_ccall f_482(C_word c,C_word *av) C_noret;
C_noret_decl(f_491)
static void C_ccall f_491(C_word c,C_word *av) C_noret;
C_noret_decl(f_495)
static void C_ccall f_495(C_word c,C_word *av) C_noret;
C_noret_decl(f_498)
static void C_ccall f_498(C_word c,C_word *av) C_noret;
C_noret_decl(f_506)
static void C_ccall f_506(C_word c,C_word *av) C_noret;
C_noret_decl(f_512)
static void C_ccall f_512(C_word c,C_word *av) C_noret;
C_noret_decl(f_518)
static void C_ccall f_518(C_word c,C_word *av) C_noret;
C_noret_decl(f_540)
static void C_ccall f_540(C_word c,C_word *av) C_noret;
C_noret_decl(f_583)
static void C_ccall f_583(C_word c,C_word *av) C_noret;
C_noret_decl(f_604)
static void C_ccall f_604(C_word c,C_word *av) C_noret;
C_noret_decl(f_607)
static void C_ccall f_607(C_word c,C_word *av) C_noret;
C_noret_decl(f_620)
static void C_ccall f_620(C_word c,C_word *av) C_noret;
C_noret_decl(f_623)
static void C_ccall f_623(C_word c,C_word *av) C_noret;
C_noret_decl(f_626)
static void C_ccall f_626(C_word c,C_word *av) C_noret;
C_noret_decl(f_635)
static void C_ccall f_635(C_word c,C_word *av) C_noret;
C_noret_decl(f_638)
static void C_ccall f_638(C_word c,C_word *av) C_noret;
C_noret_decl(f_649)
static void C_ccall f_649(C_word c,C_word *av) C_noret;
C_noret_decl(f_664)
static void C_ccall f_664(C_word c,C_word *av) C_noret;
C_noret_decl(f_670)
static void C_ccall f_670(C_word c,C_word *av) C_noret;
C_noret_decl(f_673)
static void C_ccall f_673(C_word c,C_word *av) C_noret;
C_noret_decl(f_676)
static void C_ccall f_676(C_word c,C_word *av) C_noret;
C_noret_decl(f_679)
static void C_ccall f_679(C_word c,C_word *av) C_noret;
C_noret_decl(f_682)
static void C_ccall f_682(C_word c,C_word *av) C_noret;
C_noret_decl(f_695)
static void C_ccall f_695(C_word c,C_word *av) C_noret;
C_noret_decl(f_702)
static void C_ccall f_702(C_word c,C_word *av) C_noret;
C_noret_decl(f_705)
static void C_ccall f_705(C_word c,C_word *av) C_noret;
C_noret_decl(f_708)
static void C_ccall f_708(C_word c,C_word *av) C_noret;
C_noret_decl(f_714)
static void C_ccall f_714(C_word c,C_word *av) C_noret;
C_noret_decl(f_717)
static void C_ccall f_717(C_word c,C_word *av) C_noret;
C_noret_decl(f_723)
static void C_ccall f_723(C_word c,C_word *av) C_noret;
C_noret_decl(f_726)
static void C_ccall f_726(C_word c,C_word *av) C_noret;
C_noret_decl(f_732)
static void C_ccall f_732(C_word c,C_word *av) C_noret;
C_noret_decl(f_735)
static void C_ccall f_735(C_word c,C_word *av) C_noret;
C_noret_decl(f_738)
static void C_ccall f_738(C_word c,C_word *av) C_noret;
C_noret_decl(f_741)
static void C_ccall f_741(C_word c,C_word *av) C_noret;
C_noret_decl(f_744)
static void C_ccall f_744(C_word c,C_word *av) C_noret;
C_noret_decl(f_750)
static void C_ccall f_750(C_word c,C_word *av) C_noret;
C_noret_decl(f_753)
static void C_ccall f_753(C_word c,C_word *av) C_noret;
C_noret_decl(f_756)
static void C_ccall f_756(C_word c,C_word *av) C_noret;
C_noret_decl(f_759)
static void C_ccall f_759(C_word c,C_word *av) C_noret;
C_noret_decl(f_762)
static void C_ccall f_762(C_word c,C_word *av) C_noret;
C_noret_decl(f_768)
static void C_ccall f_768(C_word c,C_word *av) C_noret;
C_noret_decl(f_771)
static void C_ccall f_771(C_word c,C_word *av) C_noret;
C_noret_decl(f_774)
static void C_ccall f_774(C_word c,C_word *av) C_noret;
C_noret_decl(f_777)
static void C_ccall f_777(C_word c,C_word *av) C_noret;
C_noret_decl(f_780)
static void C_ccall f_780(C_word c,C_word *av) C_noret;
C_noret_decl(f_786)
static void C_ccall f_786(C_word c,C_word *av) C_noret;
C_noret_decl(f_793)
static void C_ccall f_793(C_word c,C_word *av) C_noret;
C_noret_decl(f_797)
static void C_ccall f_797(C_word c,C_word *av) C_noret;
C_noret_decl(f_807)
static void C_ccall f_807(C_word c,C_word *av) C_noret;
C_noret_decl(f_812)
static void C_ccall f_812(C_word c,C_word *av) C_noret;
C_noret_decl(f_816)
static void C_ccall f_816(C_word c,C_word *av) C_noret;
C_noret_decl(f_826)
static void C_ccall f_826(C_word c,C_word *av) C_noret;
C_noret_decl(f_831)
static void C_ccall f_831(C_word c,C_word *av) C_noret;
C_noret_decl(f_835)
static void C_ccall f_835(C_word c,C_word *av) C_noret;
C_noret_decl(f_845)
static void C_ccall f_845(C_word c,C_word *av) C_noret;
C_noret_decl(f_852)
static void C_ccall f_852(C_word c,C_word *av) C_noret;
C_noret_decl(f_855)
static void C_ccall f_855(C_word c,C_word *av) C_noret;
C_noret_decl(f_858)
static void C_ccall f_858(C_word c,C_word *av) C_noret;
C_noret_decl(f_861)
static void C_ccall f_861(C_word c,C_word *av) C_noret;
C_noret_decl(f_864)
static void C_ccall f_864(C_word c,C_word *av) C_noret;
C_noret_decl(f_867)
static void C_ccall f_867(C_word c,C_word *av) C_noret;
C_noret_decl(f_870)
static void C_ccall f_870(C_word c,C_word *av) C_noret;
C_noret_decl(f_873)
static void C_ccall f_873(C_word c,C_word *av) C_noret;
C_noret_decl(f_879)
static void C_ccall f_879(C_word c,C_word *av) C_noret;
C_noret_decl(f_882)
static void C_ccall f_882(C_word c,C_word *av) C_noret;
C_noret_decl(f_885)
static void C_ccall f_885(C_word c,C_word *av) C_noret;
C_noret_decl(f_888)
static void C_ccall f_888(C_word c,C_word *av) C_noret;
C_noret_decl(f_891)
static void C_ccall f_891(C_word c,C_word *av) C_noret;
C_noret_decl(f_894)
static void C_ccall f_894(C_word c,C_word *av) C_noret;
C_noret_decl(f_897)
static void C_ccall f_897(C_word c,C_word *av) C_noret;
C_noret_decl(f_900)
static void C_ccall f_900(C_word c,C_word *av) C_noret;
C_noret_decl(f_903)
static void C_ccall f_903(C_word c,C_word *av) C_noret;
C_noret_decl(f_909)
static void C_ccall f_909(C_word c,C_word *av) C_noret;
C_noret_decl(f_912)
static void C_ccall f_912(C_word c,C_word *av) C_noret;
C_noret_decl(f_915)
static void C_ccall f_915(C_word c,C_word *av) C_noret;
C_noret_decl(f_918)
static void C_ccall f_918(C_word c,C_word *av) C_noret;
C_noret_decl(f_921)
static void C_ccall f_921(C_word c,C_word *av) C_noret;
C_noret_decl(f_927)
static void C_ccall f_927(C_word c,C_word *av) C_noret;
C_noret_decl(f_930)
static void C_ccall f_930(C_word c,C_word *av) C_noret;
C_noret_decl(f_933)
static void C_ccall f_933(C_word c,C_word *av) C_noret;
C_noret_decl(f_936)
static void C_ccall f_936(C_word c,C_word *av) C_noret;
C_noret_decl(f_939)
static void C_ccall f_939(C_word c,C_word *av) C_noret;
C_noret_decl(f_942)
static void C_ccall f_942(C_word c,C_word *av) C_noret;
C_noret_decl(f_945)
static void C_ccall f_945(C_word c,C_word *av) C_noret;
C_noret_decl(f_948)
static void C_ccall f_948(C_word c,C_word *av) C_noret;
C_noret_decl(f_954)
static void C_ccall f_954(C_word c,C_word *av) C_noret;
C_noret_decl(f_957)
static void C_ccall f_957(C_word c,C_word *av) C_noret;
C_noret_decl(f_960)
static void C_ccall f_960(C_word c,C_word *av) C_noret;
C_noret_decl(f_963)
static void C_ccall f_963(C_word c,C_word *av) C_noret;
C_noret_decl(f_969)
static void C_ccall f_969(C_word c,C_word *av) C_noret;
C_noret_decl(f_972)
static void C_ccall f_972(C_word c,C_word *av) C_noret;
C_noret_decl(f_975)
static void C_ccall f_975(C_word c,C_word *av) C_noret;
C_noret_decl(f_978)
static void C_ccall f_978(C_word c,C_word *av) C_noret;
C_noret_decl(f_981)
static void C_ccall f_981(C_word c,C_word *av) C_noret;
C_noret_decl(f_987)
static void C_ccall f_987(C_word c,C_word *av) C_noret;
C_noret_decl(f_993)
static void C_ccall f_993(C_word c,C_word *av) C_noret;
C_noret_decl(f_996)
static void C_ccall f_996(C_word c,C_word *av) C_noret;
C_noret_decl(f_999)
static void C_ccall f_999(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_437)
static void C_ccall trf_437(C_word c,C_word *av) C_noret;
static void C_ccall trf_437(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_437(t0,t1,t2,t3);}

/* k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in ... */
static void C_ccall f_1002(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1002,c,av);}
a=C_alloc(4);
t2=C_i_vector_ref(t1,C_fix(2));
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1008,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:228: adaptive-frontier-push */
t4=*((C_word*)lf[10]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=t1;
av2[3]=lf[47];
f_518(4,av2);}}

/* k1006 in k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in ... */
static void C_ccall f_1008(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1008,c,av);}
a=C_alloc(3);
t2=C_i_vector_ref(t1,C_fix(2));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1014,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:230: test-assert */
t4=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[46];
av2[3]=C_eqp(((C_word*)t0)[3],t2);
f_583(4,av2);}}

/* k1012 in k1006 in k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in ... */
static void C_ccall f_1014(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1014,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1017,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:237: print-summary */
t3=*((C_word*)lf[30]+1);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
f_695(2,av2);}}

/* k1015 in k1012 in k1006 in k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in ... */
static void C_ccall f_1017(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1017,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1020,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
if(C_truep(C_i_greaterp(*((C_word*)lf[14]+1),C_fix(0)))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:238: chicken.base#exit */
t3=C_fast_retrieve(lf[45]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(1);
((C_proc)(void*)(*((C_word*)t3+1)))(3,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:238: chicken.base#exit */
t3=C_fast_retrieve(lf[45]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(0);
((C_proc)(void*)(*((C_word*)t3+1)))(3,av2);}}}

/* k1018 in k1015 in k1012 in k1006 in k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in ... */
static void C_ccall f_1020(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1020,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1026,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* chicken.base#implicit-exit-handler */
t3=C_fast_retrieve(lf[44]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k1024 in k1018 in k1015 in k1012 in k1006 in k1000 in k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in ... */
static void C_ccall f_1026(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1026,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a1042 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in ... */
static void C_ccall f_1043(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1043,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:209: adaptive-frontier-pop */
t2=*((C_word*)lf[11]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
f_540(3,av2);}}

/* a1048 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in ... */
static void C_ccall f_1049(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1049,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:210: test-assert */
t4=*((C_word*)lf[15]+1);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[50];
av2[3]=C_eqp(t2,lf[51]);
f_583(4,av2);}}

/* a1115 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in ... */
static void C_ccall f_1116(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1116,c,av);}
a=C_alloc(5);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],C_fix(-12));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:34: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t2;
av2[3]=C_fix(0);
C_values(4,av2);}}

/* a1121 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in ... */
static void C_ccall f_1122(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1122,c,av);}
a=C_alloc(5);
t4=C_s_a_i_bitwise_and(&a,2,t2,C_fix(4095));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:168: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t1;
av2[2]=lf[61];
av2[3]=C_i_integer_equalp(t4,C_fix(42));
f_583(4,av2);}}

/* k1145 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_1147(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1147,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:138: test-assert */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[67];
av2[3]=C_i_nequalp(t1,C_fix(24));
f_583(4,av2);}}

/* k1153 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_1155(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1155,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:135: test-assert */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[68];
av2[3]=C_i_nequalp(t1,C_fix(12));
f_583(4,av2);}}

/* k1161 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_1163(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1163,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:132: test-assert */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[69];
av2[3]=C_i_nequalp(t1,C_fix(2));
f_583(4,av2);}}

/* k1169 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_1171(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1171,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:129: test-assert */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[70];
av2[3]=C_i_nequalp(t1,C_fix(1));
f_583(4,av2);}}

/* k1177 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_1179(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1179,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:126: test-assert */
t2=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[71];
av2[3]=C_i_nequalp(t1,C_fix(0));
f_583(4,av2);}}

/* k421 */
static void C_ccall f_423(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_423,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_426,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k424 in k421 */
static void C_ccall f_426(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_426,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_429,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k427 in k424 in k421 */
static void C_ccall f_429(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(28,c,5)))){
C_save_and_reclaim((void *)f_429,c,av);}
a=C_alloc(28);
t2=C_mutate((C_word*)lf[0]+1 /* (set! golay-weight ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_431,tmp=(C_word)a,a+=2,tmp));
t3=C_mutate((C_word*)lf[1]+1 /* (set! encode-golay24 ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_461,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[2]+1 /* (set! decode-golay24 ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_473,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[3]+1 /* (set! frontier-mode-from-golay ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_482,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[6]+1 /* (set! make-adaptive-frontier ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_491,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[8]+1 /* (set! adaptive-frontier-tau ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_506,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[9]+1 /* (set! adaptive-frontier-mode ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_512,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[10]+1 /* (set! adaptive-frontier-push ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_518,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[11]+1 /* (set! adaptive-frontier-pop ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_540,tmp=(C_word)a,a+=2,tmp));
t11=C_set_block_item(lf[12] /* test-count */,0,C_fix(0));
t12=C_set_block_item(lf[13] /* test-passed */,0,C_fix(0));
t13=C_set_block_item(lf[14] /* test-failed */,0,C_fix(0));
t14=C_mutate((C_word*)lf[15]+1 /* (set! test-assert ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_583,tmp=(C_word)a,a+=2,tmp));
t15=C_mutate((C_word*)lf[23]+1 /* (set! test-approx ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_649,tmp=(C_word)a,a+=2,tmp));
t16=C_mutate((C_word*)lf[30]+1 /* (set! print-summary ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_695,tmp=(C_word)a,a+=2,tmp));
t17=*((C_word*)lf[16]+1);
t18=*((C_word*)lf[16]+1);
t19=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t20=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_852,a[2]=((C_word*)t0)[2],a[3]=t17,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:124: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t20;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* golay-weight in k427 in k424 in k421 */
static void C_ccall f_431(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_431,c,av);}
a=C_alloc(5);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_437,a[2]=t4,tmp=(C_word)a,a+=3,tmp));
t6=((C_word*)t4)[1];
f_437(t6,t1,t2,C_fix(0));}

/* loop in golay-weight in k427 in k424 in k421 */
static void C_fcall f_437(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_437,4,t0,t1,t2,t3);}
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:20: loop */
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* encode-golay24 in k427 in k424 in k421 */
static void C_ccall f_461(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_461,c,av);}
a=C_alloc(9);
t3=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(12));
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_468,a[2]=t1,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:27: golay-weight */
t5=*((C_word*)lf[0]+1);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
f_431(3,av2);}}

/* k466 in encode-golay24 in k427 in k424 in k421 */
static void C_ccall f_468(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_468,c,av);}
a=C_alloc(5);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_s_a_i_bitwise_ior(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* decode-golay24 in k427 in k424 in k421 */
static void C_ccall f_473(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_473,c,av);}
a=C_alloc(5);
t3=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:34: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t3;
av2[3]=C_fix(0);
C_values(4,av2);}}

/* frontier-mode-from-golay in k427 in k424 in k421 */
static void C_ccall f_482(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_482,c,av);}
t3=C_i_lessp(t2,C_fix(12));
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=(C_truep(t3)?lf[4]:lf[5]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* make-adaptive-frontier in k427 in k424 in k421 */
static void C_ccall f_491(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_491,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_495,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:48: encode-golay24 */
t4=*((C_word*)lf[1]+1);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_461(3,av2);}}

/* k493 in make-adaptive-frontier in k427 in k424 in k421 */
static void C_ccall f_495(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_495,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_498,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:49: golay-weight */
t3=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=t1;
f_431(3,av2);}}

/* k496 in k493 in make-adaptive-frontier in k427 in k424 in k421 */
static void C_ccall f_498(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_498,c,av);}
a=C_alloc(6);
t2=C_i_lessp(t1,C_fix(12));
t3=(C_truep(t2)?lf[4]:lf[5]);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_vector5(&a,5,lf[7],t1,t3,((C_word*)t0)[3],C_SCHEME_END_OF_LIST);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* adaptive-frontier-tau in k427 in k424 in k421 */
static void C_ccall f_506(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_506,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* adaptive-frontier-mode in k427 in k424 in k421 */
static void C_ccall f_512(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_512,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* adaptive-frontier-push in k427 in k424 in k421 */
static void C_ccall f_518(C_word c,C_word *av){
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
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_518,c,av);}
a=C_alloc(9);
t4=C_i_vector_ref(t2,C_fix(1));
t5=C_i_vector_ref(t2,C_fix(2));
t6=C_i_vector_ref(t2,C_fix(4));
t7=C_a_i_cons(&a,2,t3,t6);
t8=C_i_vector_ref(t2,C_fix(3));
t9=t1;{
C_word *av2=av;
av2[0]=t9;
av2[1]=C_a_i_vector5(&a,5,lf[7],t4,t5,t8,t7);
((C_proc)(void*)(*((C_word*)t9+1)))(2,av2);}}

/* adaptive-frontier-pop in k427 in k424 in k421 */
static void C_ccall f_540(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_540,c,av);}
a=C_alloc(6);
t3=C_i_vector_ref(t2,C_fix(4));
if(C_truep(C_i_nullp(t3))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:72: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_FALSE;
av2[3]=t2;
C_values(4,av2);}}
else{
t4=C_i_car(t3);
t5=C_i_vector_ref(t2,C_fix(1));
t6=C_i_vector_ref(t2,C_fix(2));
t7=C_i_vector_ref(t2,C_fix(3));
t8=C_u_i_cdr(t3);
t9=C_a_i_vector5(&a,5,lf[7],t5,t6,t7,t8);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:73: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t4;
av2[3]=t9;
C_values(4,av2);}}}

/* test-assert in k427 in k424 in k421 */
static void C_ccall f_583(C_word c,C_word *av){
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
C_word t13;
C_word t14;
C_word *a;
if(c<4) C_bad_min_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(64,c,4)))){
C_save_and_reclaim((void *)f_583,c,av);}
a=C_alloc(64);
t4=C_rest_nullp(c,4);
t5=(C_truep(t4)?C_SCHEME_FALSE:C_get_rest_arg(c,4,av,4,t0));
t6=C_s_a_i_plus(&a,2,*((C_word*)lf[12]+1),C_fix(1));
t7=C_mutate((C_word*)lf[12]+1 /* (set! test-count ...) */,t6);
if(C_truep(t3)){
t8=C_s_a_i_plus(&a,2,*((C_word*)lf[13]+1),C_fix(1));
t9=C_mutate((C_word*)lf[13]+1 /* (set! test-passed ...) */,t8);
t10=*((C_word*)lf[16]+1);
t11=*((C_word*)lf[16]+1);
t12=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t13=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_604,a[2]=t1,a[3]=t10,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:93: ##sys#print */
t14=*((C_word*)lf[19]+1);{
C_word av2[5];
av2[0]=t14;
av2[1]=t13;
av2[2]=lf[20];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t14+1)))(5,av2);}}
else{
t8=C_s_a_i_plus(&a,2,*((C_word*)lf[14]+1),C_fix(1));
t9=C_mutate((C_word*)lf[14]+1 /* (set! test-failed ...) */,t8);
t10=*((C_word*)lf[16]+1);
t11=*((C_word*)lf[16]+1);
t12=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t13=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_620,a[2]=t5,a[3]=t1,a[4]=t10,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:96: ##sys#print */
t14=*((C_word*)lf[19]+1);{
C_word av2[5];
av2[0]=t14;
av2[1]=t13;
av2[2]=lf[22];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t14+1)))(5,av2);}}}

/* k602 in test-assert in k427 in k424 in k421 */
static void C_ccall f_604(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_604,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_607,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:93: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k605 in k602 in test-assert in k427 in k424 in k421 */
static void C_ccall f_607(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_607,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:93: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k618 in test-assert in k427 in k424 in k421 */
static void C_ccall f_620(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_620,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_623,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:96: ##sys#print */
t3=*((C_word*)lf[19]+1);{
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

/* k621 in k618 in test-assert in k427 in k424 in k421 */
static void C_ccall f_623(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_623,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_626,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:96: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k624 in k621 in k618 in test-assert in k427 in k424 in k421 */
static void C_ccall f_626(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_626,c,av);}
a=C_alloc(5);
if(C_truep(((C_word*)t0)[2])){
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_635,a[2]=((C_word*)t0)[3],a[3]=t2,a[4]=((C_word*)t0)[2],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:98: ##sys#print */
t6=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[21];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k633 in k624 in k621 in k618 in test-assert in k427 in k424 in k421 */
static void C_ccall f_635(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_635,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_638,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:98: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k636 in k633 in k624 in k621 in k618 in test-assert in k427 in k424 in k421 */
static void C_ccall f_638(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_638,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:98: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* test-approx in k427 in k424 in k421 */
static void C_ccall f_649(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4=av[4];
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word *a;
if(c<5) C_bad_min_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(43,c,2)))){
C_save_and_reclaim((void *)f_649,c,av);}
a=C_alloc(43);
t5=C_rest_nullp(c,5);
t6=(C_truep(t5)?lf[24]:C_get_rest_arg(c,5,av,5,t0));
t7=C_s_a_i_minus(&a,2,t3,t4);
t8=C_s_a_i_abs(&a,1,t7);
t9=C_i_lessp(t8,t6);
t10=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_664,a[2]=t1,a[3]=t2,a[4]=t9,a[5]=t4,a[6]=t3,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: chicken.base#open-output-string */
t11=C_fast_retrieve(lf[29]);{
C_word *av2=av;
av2[0]=t11;
av2[1]=t10;
((C_proc)(void*)(*((C_word*)t11+1)))(2,av2);}}

/* k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_664(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_664,c,av);}
a=C_alloc(8);
t2=C_i_check_port_2(t1,C_fix(2),C_SCHEME_TRUE,lf[25]);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_670,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: ##sys#print */
t4=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[28];
av2[3]=C_SCHEME_FALSE;
av2[4]=t1;
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k668 in k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_670(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_670,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_673,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[7];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k671 in k668 in k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_673(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_673,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_676,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[27];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k674 in k671 in k668 in k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_676(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_676,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_679,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: ##sys#print */
t3=*((C_word*)lf[19]+1);{
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

/* k677 in k674 in k671 in k668 in k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_679(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_679,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_682,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:103: chicken.base#get-output-string */
t3=C_fast_retrieve(lf[26]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(3,av2);}}

/* k680 in k677 in k674 in k671 in k668 in k662 in test-approx in k427 in k424 in k421 */
static void C_ccall f_682(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_682,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:101: test-assert */
t2=*((C_word*)lf[15]+1);{
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
av2[4]=t1;
f_583(5,av2);}}

/* print-summary in k427 in k424 in k421 */
static void C_ccall f_695(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_695,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_702,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:106: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_702(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_702,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_705,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:106: ##sys#print */
t3=*((C_word*)lf[19]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_705(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_705,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_708,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:106: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_708(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_708,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_714,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:107: ##sys#print */
t6=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[42];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_714(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_714,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_717,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:107: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_717(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_717,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_723,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:108: ##sys#print */
t6=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[41];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_723(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_723,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_726,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:108: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_726(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_726,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_732,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:109: ##sys#print */
t6=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[40];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_732(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_732,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_735,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:109: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=*((C_word*)lf[12]+1);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_735(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_735,c,av);}
a=C_alloc(14);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_738,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_831,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_835,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_845,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
t6=*((C_word*)lf[12]+1);
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[35]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[35]+1);
av2[1]=t5;
av2[2]=*((C_word*)lf[12]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_738(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_738,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_741,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:109: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[39];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_741(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_741,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_744,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:109: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_744(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_744,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_750,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:112: ##sys#print */
t6=*((C_word*)lf[19]+1);{
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
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_750(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_750,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_753,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:112: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=*((C_word*)lf[13]+1);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_753(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_753,c,av);}
a=C_alloc(14);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_756,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_812,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_816,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_826,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
t6=*((C_word*)lf[13]+1);
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[35]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[35]+1);
av2[1]=t5;
av2[2]=*((C_word*)lf[13]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_756(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_756,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_759,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:112: ##sys#print */
t3=*((C_word*)lf[19]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_759(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_759,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_762,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:112: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_762(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_762,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_768,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:115: ##sys#print */
t6=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[36];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 in ... */
static void C_ccall f_768(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_768,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_771,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:115: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=*((C_word*)lf[14]+1);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in ... */
static void C_ccall f_771(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_771,c,av);}
a=C_alloc(14);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_774,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_793,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_797,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_807,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
t6=*((C_word*)lf[14]+1);
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[35]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[35]+1);
av2[1]=t5;
av2[2]=*((C_word*)lf[14]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k772 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in ... */
static void C_ccall f_774(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_774,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_777,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:115: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[32];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k775 in k772 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in ... */
static void C_ccall f_777(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_777,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_780,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:115: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k778 in k775 in k772 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in ... */
static void C_ccall f_780(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_780,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_786,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:118: ##sys#print */
t6=*((C_word*)lf[19]+1);{
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
av2[4]=*((C_word*)lf[16]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k784 in k778 in k775 in k772 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in ... */
static void C_ccall f_786(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_786,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:118: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k791 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in ... */
static void C_ccall f_793(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_793,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:115: ##sys#print */
t2=*((C_word*)lf[19]+1);{
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

/* k795 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in ... */
static void C_ccall f_797(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_797,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:117: scheme#make-string */
t2=*((C_word*)lf[33]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_make_character(32);
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* k805 in k769 in k766 in k760 in k757 in k754 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in ... */
static void C_ccall f_807(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_807,c,av);}
a=C_alloc(5);
t2=C_block_size(t1);
t3=C_a_i_fixnum_difference(&a,2,C_fix(45),t2);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:117: scheme#max */
t4=*((C_word*)lf[34]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
av2[2]=C_fix(0);
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k810 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_812(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_812,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:112: ##sys#print */
t2=*((C_word*)lf[19]+1);{
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

/* k814 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_816(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_816,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:114: scheme#make-string */
t2=*((C_word*)lf[33]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_make_character(32);
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* k824 in k751 in k748 in k742 in k739 in k736 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_826(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_826,c,av);}
a=C_alloc(5);
t2=C_block_size(t1);
t3=C_a_i_fixnum_difference(&a,2,C_fix(45),t2);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:114: scheme#max */
t4=*((C_word*)lf[34]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
av2[2]=C_fix(0);
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k829 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_831(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_831,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:109: ##sys#print */
t2=*((C_word*)lf[19]+1);{
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

/* k833 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_835(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_835,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:111: scheme#make-string */
t2=*((C_word*)lf[33]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_make_character(32);
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* k843 in k733 in k730 in k724 in k721 in k715 in k712 in k706 in k703 in k700 in print-summary in k427 in k424 in k421 */
static void C_ccall f_845(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_845,c,av);}
a=C_alloc(5);
t2=C_block_size(t1);
t3=C_a_i_fixnum_difference(&a,2,C_fix(45),t2);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:111: scheme#max */
t4=*((C_word*)lf[34]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
av2[2]=C_fix(0);
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k850 in k427 in k424 in k421 */
static void C_ccall f_852(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_852,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_855,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:124: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[72];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_855(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_855,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_858,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:124: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_858(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_858,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_861,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1179,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:127: golay-weight */
t4=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(0);
f_431(3,av2);}}

/* k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_861(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_861,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_864,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1171,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:130: golay-weight */
t4=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(1);
f_431(3,av2);}}

/* k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_864(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_864,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_867,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1163,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:133: golay-weight */
t4=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(3);
f_431(3,av2);}}

/* k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_867(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_867,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_870,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1155,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:136: golay-weight */
t4=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(4095);
f_431(3,av2);}}

/* k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_870(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_870,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_873,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1147,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:139: golay-weight */
t4=*((C_word*)lf[0]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(16777215);
f_431(3,av2);}}

/* k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_873(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_873,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_879,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:145: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_879(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_879,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_882,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:145: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[66];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_882(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_882,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_885,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:145: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_885(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_885,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_888,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:147: encode-golay24 */
t3=*((C_word*)lf[1]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(0);
f_461(3,av2);}}

/* k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_888(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_888,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_891,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:148: test-assert */
t3=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[65];
av2[3]=C_SCHEME_TRUE;
f_583(4,av2);}}

/* k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_891(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_891,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_894,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:151: encode-golay24 */
t3=*((C_word*)lf[1]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(1);
f_461(3,av2);}}

/* k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_894(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_894,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_897,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:152: test-assert */
t3=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[64];
av2[3]=C_i_integer_greaterp(t1,C_fix(0));
f_583(4,av2);}}

/* k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_897(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_897,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_900,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:155: encode-golay24 */
t3=*((C_word*)lf[1]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(4095);
f_461(3,av2);}}

/* k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_900(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_900,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_903,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:156: test-assert */
t3=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[63];
av2[3]=C_i_integer_less_or_equalp(t1,C_fix(16777215));
f_583(4,av2);}}

/* k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_903(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_903,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_909,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:163: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 */
static void C_ccall f_909(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_909,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_912,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:163: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[62];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in k421 in ... */
static void C_ccall f_912(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_912,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_915,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:163: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in k424 in ... */
static void C_ccall f_915(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_915,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_918,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:166: encode-golay24 */
t3=*((C_word*)lf[1]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(42);
f_461(3,av2);}}

/* k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in k427 in ... */
static void C_ccall f_918(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_918,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_921,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1116,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1122,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:167: ##sys#call-with-values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t2;
av2[2]=t3;
av2[3]=t4;
C_call_with_values(4,av2);}}

/* k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in k850 in ... */
static void C_ccall f_921(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_921,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_927,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:175: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in k853 in ... */
static void C_ccall f_927(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_927,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_930,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:175: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[60];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in k856 in ... */
static void C_ccall f_930(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_930,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_933,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:175: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in k859 in ... */
static void C_ccall f_933(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_933,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_936,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_lessp(C_fix(0),C_fix(12));
t4=(C_truep(t3)?lf[4]:lf[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:177: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[59];
av2[3]=C_eqp(t4,lf[4]);
f_583(4,av2);}}

/* k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in k862 in ... */
static void C_ccall f_936(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_936,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_939,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_lessp(C_fix(6),C_fix(12));
t4=(C_truep(t3)?lf[4]:lf[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:180: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[58];
av2[3]=C_eqp(t4,lf[4]);
f_583(4,av2);}}

/* k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in k865 in ... */
static void C_ccall f_939(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_939,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_942,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_lessp(C_fix(12),C_fix(12));
t4=(C_truep(t3)?lf[4]:lf[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:183: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[57];
av2[3]=C_eqp(t4,lf[5]);
f_583(4,av2);}}

/* k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in k868 in ... */
static void C_ccall f_942(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_942,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_945,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_lessp(C_fix(18),C_fix(12));
t4=(C_truep(t3)?lf[4]:lf[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:186: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[56];
av2[3]=C_eqp(t4,lf[5]);
f_583(4,av2);}}

/* k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in k871 in ... */
static void C_ccall f_945(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_945,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_948,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_i_lessp(C_fix(24),C_fix(12));
t4=(C_truep(t3)?lf[4]:lf[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:189: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[55];
av2[3]=C_eqp(t4,lf[5]);
f_583(4,av2);}}

/* k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in k877 in ... */
static void C_ccall f_948(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_948,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_954,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:196: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in k880 in ... */
static void C_ccall f_954(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_954,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_957,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:196: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[54];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in k883 in ... */
static void C_ccall f_957(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_957,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_960,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:196: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in k886 in ... */
static void C_ccall f_960(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_960,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_963,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:199: make-adaptive-frontier */
t3=*((C_word*)lf[6]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(1);
f_491(3,av2);}}

/* k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in k889 in ... */
static void C_ccall f_963(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_963,c,av);}
a=C_alloc(4);
t2=C_i_vector_ref(t1,C_fix(1));
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_969,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:201: test-assert */
t4=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[53];
av2[3]=C_i_lessp(t2,C_fix(12));
f_583(4,av2);}}

/* k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in k892 in ... */
static void C_ccall f_969(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_969,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_972,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:205: adaptive-frontier-push */
t3=*((C_word*)lf[10]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=lf[51];
f_518(4,av2);}}

/* k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in k895 in ... */
static void C_ccall f_972(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_972,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_975,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t3=C_slot(t1,C_fix(4));
t4=C_i_length(t3);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:206: test-assert */
t5=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=lf[52];
av2[3]=C_fixnum_greaterp(t4,C_fix(0));
f_583(4,av2);}}

/* k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in k898 in ... */
static void C_ccall f_975(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_975,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_978,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1043,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1049,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:209: ##sys#call-with-values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t2;
av2[2]=t3;
av2[3]=t4;
C_call_with_values(4,av2);}}

/* k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in k901 in ... */
static void C_ccall f_978(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_978,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_981,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:214: make-adaptive-frontier */
t3=*((C_word*)lf[6]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(4095);
f_491(3,av2);}}

/* k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in k907 in ... */
static void C_ccall f_981(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_981,c,av);}
a=C_alloc(3);
t2=C_i_vector_ref(t1,C_fix(1));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_987,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:216: test-assert */
t4=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[49];
av2[3]=C_i_greater_or_equalp(t2,C_fix(12));
f_583(4,av2);}}

/* k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in k910 in ... */
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_987,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[16]+1);
t3=*((C_word*)lf[16]+1);
t4=C_i_check_port_2(*((C_word*)lf[16]+1),C_fix(2),C_SCHEME_TRUE,lf[17]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_993,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:224: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[16]+1);
tp(4,av2);}}

/* k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in k913 in ... */
static void C_ccall f_993(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_993,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_996,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:224: ##sys#print */
t3=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[48];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in k916 in ... */
static void C_ccall f_996(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_996,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_999,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:224: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[18]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[18]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k997 in k994 in k991 in k985 in k979 in k976 in k973 in k970 in k967 in k961 in k958 in k955 in k952 in k946 in k943 in k940 in k937 in k934 in k931 in k928 in k925 in k919 in ... */
static void C_ccall f_999(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_999,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1002,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:226: make-adaptive-frontier */
t3=*((C_word*)lf[6]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(5);
f_491(3,av2);}}

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
if(C_unlikely(!C_demand_2(228))){
C_save(t1);
C_rereclaim2(228*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,73);
lf[0]=C_h_intern(&lf[0],12, C_text("golay-weight"));
lf[1]=C_h_intern(&lf[1],14, C_text("encode-golay24"));
lf[2]=C_h_intern(&lf[2],14, C_text("decode-golay24"));
lf[3]=C_h_intern(&lf[3],24, C_text("frontier-mode-from-golay"));
lf[4]=C_h_intern(&lf[4],5, C_text("stack"));
lf[5]=C_h_intern(&lf[5],5, C_text("queue"));
lf[6]=C_h_intern(&lf[6],22, C_text("make-adaptive-frontier"));
lf[7]=C_h_intern(&lf[7],17, C_text("adaptive-frontier"));
lf[8]=C_h_intern(&lf[8],21, C_text("adaptive-frontier-tau"));
lf[9]=C_h_intern(&lf[9],22, C_text("adaptive-frontier-mode"));
lf[10]=C_h_intern(&lf[10],22, C_text("adaptive-frontier-push"));
lf[11]=C_h_intern(&lf[11],21, C_text("adaptive-frontier-pop"));
lf[12]=C_h_intern(&lf[12],10, C_text("test-count"));
lf[13]=C_h_intern(&lf[13],11, C_text("test-passed"));
lf[14]=C_h_intern(&lf[14],11, C_text("test-failed"));
lf[15]=C_h_intern(&lf[15],11, C_text("test-assert"));
lf[16]=C_h_intern(&lf[16],21, C_text("##sys#standard-output"));
lf[17]=C_h_intern(&lf[17],6, C_text("printf"));
lf[18]=C_h_intern(&lf[18],18, C_text("##sys#write-char-0"));
lf[19]=C_h_intern(&lf[19],11, C_text("##sys#print"));
lf[20]=C_decode_literal(C_heaptop,C_text("\376B\000\000\006  \342\234\223 "));
lf[21]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010    \342\206\263 "));
lf[22]=C_decode_literal(C_heaptop,C_text("\376B\000\000\006  \342\234\227 "));
lf[23]=C_h_intern(&lf[23],11, C_text("test-approx"));
lf[24]=C_decode_literal(C_heaptop,C_text("\376U1.0000000000000000364321973154977415791655470655996396089904010295867919921875"
"e-10\000"));
lf[25]=C_h_intern(&lf[25],6, C_text("format"));
lf[26]=C_h_intern(&lf[26],30, C_text("chicken.base#get-output-string"));
lf[27]=C_decode_literal(C_heaptop,C_text("\376B\000\000\006, got "));
lf[28]=C_decode_literal(C_heaptop,C_text("\376B\000\000\011expected "));
lf[29]=C_h_intern(&lf[29],31, C_text("chicken.base#open-output-string"));
lf[30]=C_h_intern(&lf[30],13, C_text("print-summary"));
lf[31]=C_decode_literal(C_heaptop,C_text("\376B\000\000\237\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225"
"\220\342\225\235"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000\003\342\225\221"));
lf[33]=C_h_intern(&lf[33],18, C_text("scheme#make-string"));
lf[34]=C_h_intern(&lf[34],10, C_text("scheme#max"));
lf[35]=C_h_intern(&lf[35],20, C_text("##sys#number->string"));
lf[36]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014\342\225\221 Failed: "));
lf[37]=C_decode_literal(C_heaptop,C_text("\376B\000\000\003\342\225\221"));
lf[38]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014\342\225\221 Passed: "));
lf[39]=C_decode_literal(C_heaptop,C_text("\376B\000\000\003\342\225\221"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014\342\225\221 Total:  "));
lf[41]=C_decode_literal(C_heaptop,C_text("\376B\000\000\237\342\225\240\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225"
"\220\342\225\243"));
lf[42]=C_decode_literal(C_heaptop,C_text("\376B\000\0009\342\225\221 Test Results                                      \342\225\221"));
lf[43]=C_decode_literal(C_heaptop,C_text("\376B\000\000\237\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225"
"\220\342\225\227"));
lf[44]=C_h_intern(&lf[44],34, C_text("chicken.base#implicit-exit-handler"));
lf[45]=C_h_intern(&lf[45],17, C_text("chicken.base#exit"));
lf[46]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031mode preserved after push"));
lf[47]=C_h_intern(&lf[47],1, C_text("x"));
lf[48]=C_decode_literal(C_heaptop,C_text("\376B\000\000\042Testing frontier mode consistency:"));
lf[49]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032high-seed frontier created"));
lf[50]=C_decode_literal(C_heaptop,C_text("\376B\000\000\023pop retrieves value"));
lf[51]=C_h_intern(&lf[51],1, C_text("a"));
lf[52]=C_decode_literal(C_heaptop,C_text("\376B\000\000\015push succeeds"));
lf[53]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031low-seed frontier created"));
lf[54]=C_decode_literal(C_heaptop,C_text("\376B\000\000-Testing adaptive frontier with Golay control:"));
lf[55]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033\317\204=24 (24/24=1.0) \342\206\222 queue"));
lf[56]=C_decode_literal(C_heaptop,C_text("\376B\000\000\034\317\204=18 (18/24=0.75) \342\206\222 queue"));
lf[57]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033\317\204=12 (12/24=0.5) \342\206\222 queue"));
lf[58]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032\317\204=6 (6/24=0.25) \342\206\222 stack"));
lf[59]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025\317\204=0 (0/24) \342\206\222 stack"));
lf[60]=C_decode_literal(C_heaptop,C_text("\376B\000\000\037Testing mode selection from \317\204:"));
lf[61]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033decode recovers information"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036Testing Golay[24,12] decoding:"));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000!encode max 12-bit produces 24-bit"));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\042encode 1 produces nonzero codeword"));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035encode zero produces codeword"));
lf[66]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036Testing Golay[24,12] encoding:"));
lf[67]=C_decode_literal(C_heaptop,C_text("\376B\000\000\030weight 24 for max 24-bit"));
lf[68]=C_decode_literal(C_heaptop,C_text("\376B\000\000\023weight 12 for 0xFFF"));
lf[69]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025weight 2 for two bits"));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\000\027weight 1 for single bit"));
lf[71]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024zero weight for zero"));
lf[72]=C_decode_literal(C_heaptop,C_text("\376B\000\000!Testing Golay weight calculation:"));
C_register_lf2(lf,73,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_423,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[124] = {
{C_text("f_1002:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1002},
{C_text("f_1008:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1008},
{C_text("f_1014:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1014},
{C_text("f_1017:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1017},
{C_text("f_1020:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1020},
{C_text("f_1026:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1026},
{C_text("f_1043:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1043},
{C_text("f_1049:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1049},
{C_text("f_1116:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1116},
{C_text("f_1122:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1122},
{C_text("f_1147:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1147},
{C_text("f_1155:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1155},
{C_text("f_1163:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1163},
{C_text("f_1171:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1171},
{C_text("f_1179:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_1179},
{C_text("f_423:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_423},
{C_text("f_426:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_426},
{C_text("f_429:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_429},
{C_text("f_431:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_431},
{C_text("f_437:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_437},
{C_text("f_461:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_461},
{C_text("f_468:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_468},
{C_text("f_473:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_473},
{C_text("f_482:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_482},
{C_text("f_491:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_491},
{C_text("f_495:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_495},
{C_text("f_498:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_498},
{C_text("f_506:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_506},
{C_text("f_512:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_512},
{C_text("f_518:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_518},
{C_text("f_540:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_540},
{C_text("f_583:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_583},
{C_text("f_604:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_604},
{C_text("f_607:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_607},
{C_text("f_620:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_620},
{C_text("f_623:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_623},
{C_text("f_626:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_626},
{C_text("f_635:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_635},
{C_text("f_638:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_638},
{C_text("f_649:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_649},
{C_text("f_664:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_664},
{C_text("f_670:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_670},
{C_text("f_673:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_673},
{C_text("f_676:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_676},
{C_text("f_679:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_679},
{C_text("f_682:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_682},
{C_text("f_695:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_695},
{C_text("f_702:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_702},
{C_text("f_705:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_705},
{C_text("f_708:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_708},
{C_text("f_714:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_714},
{C_text("f_717:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_717},
{C_text("f_723:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_723},
{C_text("f_726:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_726},
{C_text("f_732:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_732},
{C_text("f_735:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_735},
{C_text("f_738:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_738},
{C_text("f_741:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_741},
{C_text("f_744:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_744},
{C_text("f_750:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_750},
{C_text("f_753:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_753},
{C_text("f_756:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_756},
{C_text("f_759:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_759},
{C_text("f_762:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_762},
{C_text("f_768:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_768},
{C_text("f_771:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_771},
{C_text("f_774:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_774},
{C_text("f_777:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_777},
{C_text("f_780:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_780},
{C_text("f_786:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_786},
{C_text("f_793:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_793},
{C_text("f_797:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_797},
{C_text("f_807:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_807},
{C_text("f_812:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_812},
{C_text("f_816:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_816},
{C_text("f_826:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_826},
{C_text("f_831:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_831},
{C_text("f_835:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_835},
{C_text("f_845:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_845},
{C_text("f_852:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_852},
{C_text("f_855:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_855},
{C_text("f_858:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_858},
{C_text("f_861:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_861},
{C_text("f_864:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_864},
{C_text("f_867:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_867},
{C_text("f_870:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_870},
{C_text("f_873:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_873},
{C_text("f_879:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_879},
{C_text("f_882:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_882},
{C_text("f_885:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_885},
{C_text("f_888:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_888},
{C_text("f_891:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_891},
{C_text("f_894:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_894},
{C_text("f_897:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_897},
{C_text("f_900:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_900},
{C_text("f_903:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_903},
{C_text("f_909:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_909},
{C_text("f_912:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_912},
{C_text("f_915:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_915},
{C_text("f_918:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_918},
{C_text("f_921:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_921},
{C_text("f_927:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_927},
{C_text("f_930:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_930},
{C_text("f_933:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_933},
{C_text("f_936:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_936},
{C_text("f_939:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_939},
{C_text("f_942:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_942},
{C_text("f_945:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_945},
{C_text("f_948:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_948},
{C_text("f_954:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_954},
{C_text("f_957:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_957},
{C_text("f_960:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_960},
{C_text("f_963:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_963},
{C_text("f_969:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_969},
{C_text("f_972:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_972},
{C_text("f_975:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_975},
{C_text("f_978:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_978},
{C_text("f_981:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_981},
{C_text("f_987:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_987},
{C_text("f_993:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_993},
{C_text("f_996:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_996},
{C_text("f_999:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)f_999},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftests_2fgolay24_5ftests_2escm"),(void*)C_toplevel},
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
S|  chicken.format#sprintf		1
S|  chicken.format#printf		16
o|eliminated procedure checks: 34 
o|eliminated procedure checks: 1 
o|specializations:
o|  1 (scheme#> fixnum fixnum)
o|  2 (scheme#vector? vector)
o|  1 (scheme#= integer integer)
o|  1 (scheme#<= integer integer)
o|  1 (scheme#> integer integer)
o|  1 (scheme#number? number)
o|  3 (scheme#- fixnum fixnum)
o|  3 (scheme#string-length string)
o|  3 (scheme#number->string *)
o|  1 (scheme#abs *)
o|  17 (##sys#check-output-port * * *)
o|  1 (scheme#cdr pair)
(o e)|safe calls: 121 
(o e)|dropped branches: 2 
(o e)|assignments to immediate values: 3 
o|safe globals: (print-summary test-approx test-assert test-failed test-passed test-count adaptive-frontier-pop adaptive-frontier-push adaptive-frontier-mode adaptive-frontier-tau make-adaptive-frontier frontier-mode-from-golay decode-golay24 encode-golay24 golay-weight) 
o|inlining procedure: k439 
o|inlining procedure: k439 
o|inlining procedure: k484 
o|inlining procedure: k484 
o|inlining procedure: k545 
o|inlining procedure: k545 
o|propagated global variable: out6770 ##sys#standard-output 
o|substituted constant variable: a600 
o|substituted constant variable: a601 
o|inlining procedure: k592 
o|propagated global variable: out6770 ##sys#standard-output 
o|propagated global variable: out7578 ##sys#standard-output 
o|substituted constant variable: a616 
o|substituted constant variable: a617 
o|inlining procedure: k592 
o|propagated global variable: out8285 ##sys#standard-output 
o|substituted constant variable: a631 
o|substituted constant variable: a632 
o|propagated global variable: out8285 ##sys#standard-output 
o|propagated global variable: out7578 ##sys#standard-output 
o|substituted constant variable: a666 
o|substituted constant variable: a667 
o|propagated global variable: out120141 ##sys#standard-output 
o|substituted constant variable: a698 
o|substituted constant variable: a699 
o|propagated global variable: out123145 ##sys#standard-output 
o|substituted constant variable: a710 
o|substituted constant variable: a711 
o|propagated global variable: out126148 ##sys#standard-output 
o|substituted constant variable: a719 
o|substituted constant variable: a720 
o|propagated global variable: out129151 ##sys#standard-output 
o|substituted constant variable: a728 
o|substituted constant variable: a729 
o|propagated global variable: out132157 ##sys#standard-output 
o|substituted constant variable: a746 
o|substituted constant variable: a747 
o|propagated global variable: out135163 ##sys#standard-output 
o|substituted constant variable: a764 
o|substituted constant variable: a765 
o|propagated global variable: out138169 ##sys#standard-output 
o|substituted constant variable: a782 
o|substituted constant variable: a783 
o|propagated global variable: out138169 ##sys#standard-output 
o|substituted constant variable: a799 
o|propagated global variable: a808 test-failed 
o|propagated global variable: out135163 ##sys#standard-output 
o|substituted constant variable: a818 
o|propagated global variable: a827 test-passed 
o|propagated global variable: out132157 ##sys#standard-output 
o|substituted constant variable: a837 
o|propagated global variable: a846 test-count 
o|propagated global variable: out129151 ##sys#standard-output 
o|propagated global variable: out126148 ##sys#standard-output 
o|propagated global variable: out123145 ##sys#standard-output 
o|propagated global variable: out120141 ##sys#standard-output 
o|propagated global variable: out178181 ##sys#standard-output 
o|substituted constant variable: a848 
o|substituted constant variable: a849 
o|propagated global variable: out185188 ##sys#standard-output 
o|substituted constant variable: a875 
o|substituted constant variable: a876 
o|propagated global variable: out195198 ##sys#standard-output 
o|substituted constant variable: a905 
o|substituted constant variable: a906 
o|propagated global variable: out212215 ##sys#standard-output 
o|substituted constant variable: a923 
o|substituted constant variable: a924 
o|propagated global variable: out219222 ##sys#standard-output 
o|substituted constant variable: a950 
o|substituted constant variable: a951 
o|propagated global variable: out243246 ##sys#standard-output 
o|substituted constant variable: a989 
o|substituted constant variable: a990 
o|inlining procedure: k1028 
o|inlining procedure: k1028 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:229) adaptive-frontier-mode" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:227) adaptive-frontier-mode" 
o|propagated global variable: out243246 ##sys#standard-output 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:215) adaptive-frontier-tau" 
o|substituted constant variable: a1066 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:200) adaptive-frontier-tau" 
o|propagated global variable: out219222 ##sys#standard-output 
o|propagated global variable: out212215 ##sys#standard-output 
o|substituted constant variable: info202 
o|substituted constant variable: info202 
o|substituted constant variable: info202 
o|propagated global variable: out195198 ##sys#standard-output 
o|substituted constant variable: a1135 
o|substituted constant variable: a1138 
o|substituted constant variable: a1139 
o|propagated global variable: out185188 ##sys#standard-output 
o|propagated global variable: out178181 ##sys#standard-output 
o|replaced variables: 142 
o|removed binding forms: 106 
o|substituted constant variable: r4851182 
o|substituted constant variable: r4851183 
o|propagated global variable: out6770 ##sys#standard-output 
o|propagated global variable: out7578 ##sys#standard-output 
o|propagated global variable: out8285 ##sys#standard-output 
o|propagated global variable: out120141 ##sys#standard-output 
o|propagated global variable: out123145 ##sys#standard-output 
o|propagated global variable: out126148 ##sys#standard-output 
o|propagated global variable: out129151 ##sys#standard-output 
o|propagated global variable: out132157 ##sys#standard-output 
o|propagated global variable: out135163 ##sys#standard-output 
o|propagated global variable: out138169 ##sys#standard-output 
o|propagated global variable: out178181 ##sys#standard-output 
o|propagated global variable: out185188 ##sys#standard-output 
o|propagated global variable: out195198 ##sys#standard-output 
o|propagated global variable: out212215 ##sys#standard-output 
o|propagated global variable: out219222 ##sys#standard-output 
o|propagated global variable: out243246 ##sys#standard-output 
o|substituted constant variable: r10291188 
o|substituted constant variable: r10291188 
o|substituted constant variable: r10291190 
o|substituted constant variable: r10291190 
o|replaced variables: 13 
o|removed binding forms: 158 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:167) decode-golay24" 
o|removed binding forms: 19 
o|replaced variables: 2 
o|removed binding forms: 2 
o|simplifications: ((let . 3) (if . 3) (##core#call . 66)) 
o|  call simplifications:
o|    ##sys#slot
o|    scheme#length
o|    chicken.fixnum#fx>
o|    ##sys#call-with-values	2
o|    scheme#>=
o|    scheme#eq?	7
o|    scheme#>
o|    ##sys#size	3
o|    scheme#null?	3
o|    scheme#car	3
o|    scheme#cons
o|    scheme#vector-ref	14
o|    scheme#vector	3
o|    scheme#<	3
o|    scheme#values	4
o|    chicken.bitwise#arithmetic-shift	3
o|    chicken.bitwise#bitwise-ior
o|    scheme#=	6
o|    scheme#-	2
o|    chicken.bitwise#bitwise-and	2
o|    scheme#+	4
o|contracted procedure: k442 
o|contracted procedure: k457 
o|contracted procedure: k449 
o|contracted procedure: k453 
o|contracted procedure: k463 
o|contracted procedure: k475 
o|contracted procedure: k487 
o|contracted procedure: k520 
o|contracted procedure: k523 
o|contracted procedure: k526 
o|contracted procedure: k529 
o|contracted procedure: k536 
o|contracted procedure: k542 
o|contracted procedure: k548 
o|contracted procedure: k558 
o|contracted procedure: k566 
o|contracted procedure: k570 
o|contracted procedure: k574 
o|contracted procedure: k562 
o|contracted procedure: k642 
o|contracted procedure: k585 
o|contracted procedure: k589 
o|contracted procedure: k596 
o|contracted procedure: k612 
o|contracted procedure: k688 
o|contracted procedure: k651 
o|contracted procedure: k685 
o|contracted procedure: k658 
o|contracted procedure: k801 
o|contracted procedure: k820 
o|contracted procedure: k839 
o|contracted procedure: k964 
o|contracted procedure: k982 
o|contracted procedure: k1003 
o|contracted procedure: k1009 
o|contracted procedure: k1031 
o|contracted procedure: k1035 
o|contracted procedure: k1039 
o|contracted procedure: k1055 
o|contracted procedure: k1068 
o|contracted procedure: k1063 
o|contracted procedure: k1059 
o|contracted procedure: k1072 
o|contracted procedure: k1076 
o|contracted procedure: k1084 
o|contracted procedure: k1092 
o|contracted procedure: k1100 
o|contracted procedure: k1108 
o|contracted procedure: k4751222 
o|contracted procedure: k1129 
o|contracted procedure: k1141 
o|contracted procedure: k1149 
o|contracted procedure: k1157 
o|contracted procedure: k1165 
o|contracted procedure: k1173 
o|simplifications: ((let . 18)) 
o|removed binding forms: 55 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:50) frontier-mode-from-golay" 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest5861 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest5861 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest96100 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest96100 0 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:190) frontier-mode-from-golay" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:187) frontier-mode-from-golay" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:184) frontier-mode-from-golay" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:181) frontier-mode-from-golay" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/tests/golay24_tests.scm:178) frontier-mode-from-golay" 
o|substituted constant variable: tau311239 
o|substituted constant variable: tau311242 
o|substituted constant variable: tau311245 
o|substituted constant variable: tau311248 
o|substituted constant variable: tau311251 
o|replaced variables: 7 
o|inlining procedure: k499 
o|inlining procedure: k1080 
o|inlining procedure: k1088 
o|inlining procedure: k1096 
o|inlining procedure: k1104 
o|inlining procedure: k1112 
o|removed binding forms: 12 
o|removed binding forms: 6 
o|customizable procedures: (loop19) 
o|calls to known targets: 41 
o|identified direct recursive calls: f_437 1 
o|unused rest argument: rest5861 f_583 
o|unused rest argument: rest96100 f_649 
o|fast box initializations: 1 
*/
/* end of file */
