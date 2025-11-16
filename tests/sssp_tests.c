/* Generated from tests/sssp_tests.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.4.0 (rev 1a1d1495)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: tests/sssp_tests.scm -output-file tests/sssp_tests.c -optimize-level 3 -optimize-leaf-routines
   uses: eval library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[46];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,42),40,97,115,115,101,114,116,45,101,113,117,97,108,32,97,99,116,117,97,108,32,101,120,112,101,99,116,101,100,32,100,101,115,99,114,105,112,116,105,111,110,41,0,0,0,0,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,35),40,97,115,115,101,114,116,45,116,114,117,101,32,99,111,110,100,105,116,105,111,110,32,100,101,115,99,114,105,112,116,105,111,110,41,0,0,0,0,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,17),40,97,100,100,45,110,117,109,98,101,114,115,32,97,32,98,41,0,0,0,0,0,0,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,10),40,115,113,117,97,114,101,32,120,41,0,0,0,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,16),40,109,97,112,45,108,111,111,112,51,53,32,103,52,55,41};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_198)
static void C_ccall f_198(C_word c,C_word *av) C_noret;
C_noret_decl(f_201)
static void C_ccall f_201(C_word c,C_word *av) C_noret;
C_noret_decl(f_206)
static void C_ccall f_206(C_word c,C_word *av) C_noret;
C_noret_decl(f_228)
static void C_ccall f_228(C_word c,C_word *av) C_noret;
C_noret_decl(f_235)
static void C_ccall f_235(C_word c,C_word *av) C_noret;
C_noret_decl(f_238)
static void C_ccall f_238(C_word c,C_word *av) C_noret;
C_noret_decl(f_245)
static void C_ccall f_245(C_word c,C_word *av) C_noret;
C_noret_decl(f_249)
static void C_ccall f_249(C_word c,C_word *av) C_noret;
C_noret_decl(f_253)
static void C_ccall f_253(C_word c,C_word *av) C_noret;
C_noret_decl(f_257)
static void C_ccall f_257(C_word c,C_word *av) C_noret;
C_noret_decl(f_261)
static void C_ccall f_261(C_word c,C_word *av) C_noret;
C_noret_decl(f_263)
static void C_ccall f_263(C_word c,C_word *av) C_noret;
C_noret_decl(f_282)
static void C_ccall f_282(C_word c,C_word *av) C_noret;
C_noret_decl(f_293)
static void C_ccall f_293(C_word c,C_word *av) C_noret;
C_noret_decl(f_296)
static void C_ccall f_296(C_word c,C_word *av) C_noret;
C_noret_decl(f_299)
static void C_ccall f_299(C_word c,C_word *av) C_noret;
C_noret_decl(f_302)
static void C_ccall f_302(C_word c,C_word *av) C_noret;
C_noret_decl(f_305)
static void C_ccall f_305(C_word c,C_word *av) C_noret;
C_noret_decl(f_308)
static void C_ccall f_308(C_word c,C_word *av) C_noret;
C_noret_decl(f_310)
static void C_ccall f_310(C_word c,C_word *av) C_noret;
C_noret_decl(f_317)
static void C_ccall f_317(C_word c,C_word *av) C_noret;
C_noret_decl(f_324)
static void C_ccall f_324(C_word c,C_word *av) C_noret;
C_noret_decl(f_326)
static void C_ccall f_326(C_word c,C_word *av) C_noret;
C_noret_decl(f_333)
static void C_ccall f_333(C_word c,C_word *av) C_noret;
C_noret_decl(f_336)
static void C_ccall f_336(C_word c,C_word *av) C_noret;
C_noret_decl(f_339)
static void C_ccall f_339(C_word c,C_word *av) C_noret;
C_noret_decl(f_342)
static void C_ccall f_342(C_word c,C_word *av) C_noret;
C_noret_decl(f_345)
static void C_ccall f_345(C_word c,C_word *av) C_noret;
C_noret_decl(f_348)
static void C_ccall f_348(C_word c,C_word *av) C_noret;
C_noret_decl(f_351)
static void C_ccall f_351(C_word c,C_word *av) C_noret;
C_noret_decl(f_357)
static void C_ccall f_357(C_word c,C_word *av) C_noret;
C_noret_decl(f_363)
static void C_ccall f_363(C_word c,C_word *av) C_noret;
C_noret_decl(f_369)
static void C_ccall f_369(C_word c,C_word *av) C_noret;
C_noret_decl(f_376)
static void C_ccall f_376(C_word c,C_word *av) C_noret;
C_noret_decl(f_380)
static void C_ccall f_380(C_word c,C_word *av) C_noret;
C_noret_decl(f_385)
static void C_ccall f_385(C_word c,C_word *av) C_noret;
C_noret_decl(f_389)
static void C_ccall f_389(C_word c,C_word *av) C_noret;
C_noret_decl(f_394)
static void C_ccall f_394(C_word c,C_word *av) C_noret;
C_noret_decl(f_398)
static void C_ccall f_398(C_word c,C_word *av) C_noret;
C_noret_decl(f_411)
static void C_ccall f_411(C_word c,C_word *av) C_noret;
C_noret_decl(f_413)
static void C_fcall f_413(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_413)
static void C_ccall trf_413(C_word c,C_word *av) C_noret;
static void C_ccall trf_413(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_413(t0,t1,t2);}

/* k196 */
static void C_ccall f_198(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_198,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_201,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k199 in k196 */
static void C_ccall f_201(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,5)))){
C_save_and_reclaim((void *)f_201,c,av);}
a=C_alloc(9);
t2=C_set_block_item(lf[0] /* test-count */,0,C_fix(0));
t3=C_set_block_item(lf[1] /* test-passed */,0,C_fix(0));
t4=C_set_block_item(lf[2] /* test-failed */,0,C_fix(0));
t5=C_mutate((C_word*)lf[3]+1 /* (set! assert-equal ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_206,a[2]=((C_word)li0),tmp=(C_word)a,a+=3,tmp));
t6=C_mutate((C_word*)lf[15]+1 /* (set! assert-true ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_263,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_296,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:35: scheme#display"));
t8=*((C_word*)lf[4]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t8;
av2[1]=t7;
av2[2]=lf[45];
((C_proc)(void*)(*((C_word*)t8+1)))(3,av2);}}

/* assert-equal in k199 in k196 */
static void C_ccall f_206(C_word c,C_word *av){
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
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(66,c,4)))){
C_save_and_reclaim((void *)f_206,c,av);}
a=C_alloc(66);
t5=C_s_a_i_plus(&a,2,*((C_word*)lf[0]+1),C_fix(1));
t6=C_mutate((C_word*)lf[0]+1 /* (set! test-count ...) */,t5);
if(C_truep(C_i_equalp(t2,t3))){
t7=C_s_a_i_plus(&a,2,*((C_word*)lf[1]+1),C_fix(1));
t8=C_mutate((C_word*)lf[1]+1 /* (set! test-passed ...) */,t7);
t9=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_228,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:14: scheme#string-append"));
t10=*((C_word*)lf[5]+1);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
av2[2]=lf[6];
av2[3]=t4;
av2[4]=lf[7];
((C_proc)(void*)(*((C_word*)t10+1)))(5,av2);}}
else{
t7=C_s_a_i_plus(&a,2,*((C_word*)lf[2]+1),C_fix(1));
t8=C_mutate((C_word*)lf[2]+1 /* (set! test-failed ...) */,t7);
t9=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_235,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_261,a[2]=t9,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:17: scheme#string-append"));
t11=*((C_word*)lf[5]+1);{
C_word *av2=av;
av2[0]=t11;
av2[1]=t10;
av2[2]=lf[13];
av2[3]=t4;
av2[4]=lf[14];
((C_proc)(void*)(*((C_word*)t11+1)))(5,av2);}}}

/* k226 in assert-equal in k199 in k196 */
static void C_ccall f_228(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_228,c,av);}
C_trace(C_text("tests/sssp_tests.scm:14: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k233 in assert-equal in k199 in k196 */
static void C_ccall f_235(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,2)))){
C_save_and_reclaim((void *)f_235,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_238,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_253,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_257,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:18: object->string"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[10]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[10]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[4];
tp(3,av2);}}

/* k236 in k233 in assert-equal in k199 in k196 */
static void C_ccall f_238(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_238,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_245,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_249,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:19: object->string"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[10]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[10]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k243 in k236 in k233 in assert-equal in k199 in k196 */
static void C_ccall f_245(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_245,c,av);}
C_trace(C_text("tests/sssp_tests.scm:19: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k247 in k236 in k233 in assert-equal in k199 in k196 */
static void C_ccall f_249(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_249,c,av);}
C_trace(C_text("tests/sssp_tests.scm:19: scheme#string-append"));
t2=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[8];
av2[3]=t1;
av2[4]=lf[9];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k251 in k233 in assert-equal in k199 in k196 */
static void C_ccall f_253(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_253,c,av);}
C_trace(C_text("tests/sssp_tests.scm:18: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k255 in k233 in assert-equal in k199 in k196 */
static void C_ccall f_257(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_257,c,av);}
C_trace(C_text("tests/sssp_tests.scm:18: scheme#string-append"));
t2=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[11];
av2[3]=t1;
av2[4]=lf[12];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k259 in assert-equal in k199 in k196 */
static void C_ccall f_261(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_261,c,av);}
C_trace(C_text("tests/sssp_tests.scm:17: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* assert-true in k199 in k196 */
static void C_ccall f_263(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(61,c,4)))){
C_save_and_reclaim((void *)f_263,c,av);}
a=C_alloc(61);
t4=C_s_a_i_plus(&a,2,*((C_word*)lf[0]+1),C_fix(1));
t5=C_mutate((C_word*)lf[0]+1 /* (set! test-count ...) */,t4);
if(C_truep(t2)){
t6=C_s_a_i_plus(&a,2,*((C_word*)lf[1]+1),C_fix(1));
t7=C_mutate((C_word*)lf[1]+1 /* (set! test-passed ...) */,t6);
t8=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_282,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:26: scheme#string-append"));
t9=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t9;
av2[1]=t8;
av2[2]=lf[16];
av2[3]=t3;
av2[4]=lf[17];
((C_proc)(void*)(*((C_word*)t9+1)))(5,av2);}}
else{
t6=C_s_a_i_plus(&a,2,*((C_word*)lf[2]+1),C_fix(1));
t7=C_mutate((C_word*)lf[2]+1 /* (set! test-failed ...) */,t6);
t8=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_293,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:29: scheme#string-append"));
t9=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t9;
av2[1]=t8;
av2[2]=lf[18];
av2[3]=t3;
av2[4]=lf[19];
((C_proc)(void*)(*((C_word*)t9+1)))(5,av2);}}}

/* k280 in assert-true in k199 in k196 */
static void C_ccall f_282(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_282,c,av);}
C_trace(C_text("tests/sssp_tests.scm:26: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k291 in assert-true in k199 in k196 */
static void C_ccall f_293(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_293,c,av);}
C_trace(C_text("tests/sssp_tests.scm:29: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k294 in k199 in k196 */
static void C_ccall f_296(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_296,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_299,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:38: assert-true"));
t3=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_SCHEME_TRUE;
av2[3]=lf[44];
f_263(4,av2);}}

/* k297 in k294 in k199 in k196 */
static void C_ccall f_299(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_299,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_302,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:41: assert-equal"));
t3=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(6);
av2[3]=C_fix(6);
av2[4]=lf[43];
f_206(5,av2);}}

/* k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_302(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_302,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_305,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:44: assert-equal"));
t3=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(5);
av2[3]=C_fix(5);
av2[4]=lf[42];
f_206(5,av2);}}

/* k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_305(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_305,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_308,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:47: assert-true"));
t3=*((C_word*)lf[15]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_SCHEME_TRUE;
av2[3]=lf[41];
f_263(4,av2);}}

/* k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_308(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_308,c,av);}
a=C_alloc(6);
t2=C_mutate((C_word*)lf[20]+1 /* (set! add-numbers ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_310,a[2]=((C_word)li2),tmp=(C_word)a,a+=3,tmp));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_317,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:51: assert-equal"));
t4=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(10);
av2[3]=C_fix(10);
av2[4]=lf[40];
f_206(5,av2);}}

/* add-numbers in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_310(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,1)))){
C_save_and_reclaim((void *)f_310,c,av);}
a=C_alloc(29);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_s_a_i_plus(&a,2,t2,t3);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_317(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_317,c,av);}
a=C_alloc(7);
t2=C_a_i_vector3(&a,3,C_fix(1),C_fix(2),C_fix(3));
t3=C_mutate((C_word*)lf[21]+1 /* (set! v ...) */,t2);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_324,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=C_fast_retrieve(lf[21]);
C_trace(C_text("tests/sssp_tests.scm:55: assert-equal"));
t6=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t4;
av2[2]=C_block_size(C_fast_retrieve(lf[21]));
av2[3]=C_fix(3);
av2[4]=lf[39];
f_206(5,av2);}}

/* k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_324(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_324,c,av);}
a=C_alloc(6);
t2=C_mutate((C_word*)lf[22]+1 /* (set! square ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_326,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_333,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:59: assert-equal"));
t4=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_fix(25);
av2[3]=C_fix(25);
av2[4]=lf[38];
f_206(5,av2);}}

/* square in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_326(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,1)))){
C_save_and_reclaim((void *)f_326,c,av);}
a=C_alloc(33);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_s_a_i_times(&a,2,t2,t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,c,3)))){
C_save_and_reclaim((void *)f_333,c,av);}
a=C_alloc(19);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_336,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t4=t3;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=((C_word*)t5)[1];
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_411,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_413,a[2]=t5,a[3]=t9,a[4]=t6,a[5]=((C_word)li4),tmp=(C_word)a,a+=6,tmp));
t11=((C_word*)t9)[1];
f_413(t11,t7,lf[37]);}

/* k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_336(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_336,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_339,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:68: scheme#display"));
t3=*((C_word*)lf[4]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[34];
((C_proc)(void*)(*((C_word*)t3+1)))(3,av2);}}

/* k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_339(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_339,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_342,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_394,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_398,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=*((C_word*)lf[0]+1);
C_trace(C_text("##sys#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=t4;
av2[2]=*((C_word*)lf[0]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_342(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_342,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_345,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_385,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_389,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=*((C_word*)lf[1]+1);
C_trace(C_text("##sys#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=t4;
av2[2]=*((C_word*)lf[1]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_345(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_345,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_348,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_376,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_380,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=*((C_word*)lf[2]+1);
C_trace(C_text("##sys#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=t4;
av2[2]=*((C_word*)lf[2]+1);
av2[3]=C_fix(10);
tp(4,av2);}}

/* k346 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_348(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_348,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_351,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
if(C_truep(C_i_nequalp(*((C_word*)lf[2]+1),C_fix(0)))){
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_363,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:75: scheme#display"));
t4=*((C_word*)lf[4]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[25];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_369,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("tests/sssp_tests.scm:78: scheme#display"));
t4=*((C_word*)lf[4]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=lf[26];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}}

/* k349 in k346 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_351(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_351,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_357,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("chicken.base#implicit-exit-handler"));
t3=C_fast_retrieve(lf[23]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k355 in k349 in k346 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_357(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_357,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k361 in k346 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_363(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_363,c,av);}
C_trace(C_text("tests/sssp_tests.scm:76: chicken.base#exit"));
t2=C_fast_retrieve(lf[24]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=C_fix(0);
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}

/* k367 in k346 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_369(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_369,c,av);}
C_trace(C_text("tests/sssp_tests.scm:79: chicken.base#exit"));
t2=C_fast_retrieve(lf[24]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=C_fix(1);
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}

/* k374 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_376(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_376,c,av);}
C_trace(C_text("tests/sssp_tests.scm:71: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k378 in k343 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_380(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_380,c,av);}
C_trace(C_text("tests/sssp_tests.scm:71: scheme#string-append"));
t2=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[27];
av2[3]=t1;
av2[4]=lf[28];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k383 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_385(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_385,c,av);}
C_trace(C_text("tests/sssp_tests.scm:70: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k387 in k340 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_389(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_389,c,av);}
C_trace(C_text("tests/sssp_tests.scm:70: scheme#string-append"));
t2=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[30];
av2[3]=t1;
av2[4]=lf[31];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k392 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_394(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_394,c,av);}
C_trace(C_text("tests/sssp_tests.scm:69: scheme#display"));
t2=*((C_word*)lf[4]+1);{
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

/* k396 in k337 in k334 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_398(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_398,c,av);}
C_trace(C_text("tests/sssp_tests.scm:69: scheme#string-append"));
t2=*((C_word*)lf[5]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[32];
av2[3]=t1;
av2[4]=lf[33];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k409 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_ccall f_411(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_411,c,av);}
C_trace(C_text("tests/sssp_tests.scm:62: assert-equal"));
t2=*((C_word*)lf[3]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=lf[35];
av2[4]=lf[36];
f_206(5,av2);}}

/* map-loop35 in k331 in k322 in k315 in k306 in k303 in k300 in k297 in k294 in k199 in k196 */
static void C_fcall f_413(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(32,0,2)))){
C_save_and_reclaim_args((void *)trf_413,3,t0,t1,t2);}
a=C_alloc(32);
if(C_truep(C_i_pairp(t2))){
t3=C_slot(t2,C_fix(0));
t4=C_s_a_i_plus(&a,2,t3,C_fix(1));
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
if(C_unlikely(!C_demand_2(116))){
C_save(t1);
C_rereclaim2(116*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,46);
lf[0]=C_h_intern(&lf[0],10, C_text("test-count"));
lf[1]=C_h_intern(&lf[1],11, C_text("test-passed"));
lf[2]=C_h_intern(&lf[2],11, C_text("test-failed"));
lf[3]=C_h_intern(&lf[3],12, C_text("assert-equal"));
lf[4]=C_h_intern(&lf[4],14, C_text("scheme#display"));
lf[5]=C_h_intern(&lf[5],20, C_text("scheme#string-append"));
lf[6]=C_decode_literal(C_heaptop,C_text("\376B\000\000\007[PASS] "));
lf[7]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[8]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Actual: "));
lf[9]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[10]=C_h_intern(&lf[10],14, C_text("object->string"));
lf[11]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014  Expected: "));
lf[12]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[13]=C_decode_literal(C_heaptop,C_text("\376B\000\000\007[FAIL] "));
lf[14]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[15]=C_h_intern(&lf[15],11, C_text("assert-true"));
lf[16]=C_decode_literal(C_heaptop,C_text("\376B\000\000\007[PASS] "));
lf[17]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[18]=C_decode_literal(C_heaptop,C_text("\376B\000\000\007[FAIL] "));
lf[19]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[20]=C_h_intern(&lf[20],11, C_text("add-numbers"));
lf[21]=C_h_intern(&lf[21],1, C_text("v"));
lf[22]=C_h_intern(&lf[22],6, C_text("square"));
lf[23]=C_h_intern(&lf[23],34, C_text("chicken.base#implicit-exit-handler"));
lf[24]=C_h_intern(&lf[24],17, C_text("chicken.base#exit"));
lf[25]=C_decode_literal(C_heaptop,C_text("\376B\000\000\027\012\342\234\223 All tests passed!\012"));
lf[26]=C_decode_literal(C_heaptop,C_text("\376B\000\000\027\012\342\234\227 Some tests failed\012"));
lf[27]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010Failed: "));
lf[28]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[29]=C_h_intern(&lf[29],20, C_text("##sys#number->string"));
lf[30]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010Passed: "));
lf[31]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000\007Total: "));
lf[33]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376B\000\000\026\012=== Test Summary ===\012"));
lf[35]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\002\376\003\000\000\002\376\377\001\000\000\000\003\376\003\000\000\002\376\377\001\000\000\000\004\376\377\016"));
lf[36]=C_decode_literal(C_heaptop,C_text("\376B\000\000\026Map: map inc over list"));
lf[37]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\001\376\003\000\000\002\376\377\001\000\000\000\002\376\003\000\000\002\376\377\001\000\000\000\003\376\377\016"));
lf[38]=C_decode_literal(C_heaptop,C_text("\376B\000\000 Lambda function: (square 5) = 25"));
lf[39]=C_decode_literal(C_heaptop,C_text("\376B\000\000+Vector length: (vector-length #(1 2 3)) = 3"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376B\000\000+Function definition: (add-numbers 7 3) = 10"));
lf[41]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032Comparison: 10 > 5 is true"));
lf[42]=C_decode_literal(C_heaptop,C_text("\376B\000\000(List length: \047(1 2 3 4 5) has 5 elements"));
lf[43]=C_decode_literal(C_heaptop,C_text("\376B\000\000\037Basic arithmetic: (+ 1 2 3) = 6"));
lf[44]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031Module loads successfully"));
lf[45]=C_decode_literal(C_heaptop,C_text("\376B\000\000\034\012=== SSSP Module Tests ===\012\012"));
C_register_lf2(lf,46,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_198,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[43] = {
{C_text("f_198:tests_2fsssp_5ftests_2escm"),(void*)f_198},
{C_text("f_201:tests_2fsssp_5ftests_2escm"),(void*)f_201},
{C_text("f_206:tests_2fsssp_5ftests_2escm"),(void*)f_206},
{C_text("f_228:tests_2fsssp_5ftests_2escm"),(void*)f_228},
{C_text("f_235:tests_2fsssp_5ftests_2escm"),(void*)f_235},
{C_text("f_238:tests_2fsssp_5ftests_2escm"),(void*)f_238},
{C_text("f_245:tests_2fsssp_5ftests_2escm"),(void*)f_245},
{C_text("f_249:tests_2fsssp_5ftests_2escm"),(void*)f_249},
{C_text("f_253:tests_2fsssp_5ftests_2escm"),(void*)f_253},
{C_text("f_257:tests_2fsssp_5ftests_2escm"),(void*)f_257},
{C_text("f_261:tests_2fsssp_5ftests_2escm"),(void*)f_261},
{C_text("f_263:tests_2fsssp_5ftests_2escm"),(void*)f_263},
{C_text("f_282:tests_2fsssp_5ftests_2escm"),(void*)f_282},
{C_text("f_293:tests_2fsssp_5ftests_2escm"),(void*)f_293},
{C_text("f_296:tests_2fsssp_5ftests_2escm"),(void*)f_296},
{C_text("f_299:tests_2fsssp_5ftests_2escm"),(void*)f_299},
{C_text("f_302:tests_2fsssp_5ftests_2escm"),(void*)f_302},
{C_text("f_305:tests_2fsssp_5ftests_2escm"),(void*)f_305},
{C_text("f_308:tests_2fsssp_5ftests_2escm"),(void*)f_308},
{C_text("f_310:tests_2fsssp_5ftests_2escm"),(void*)f_310},
{C_text("f_317:tests_2fsssp_5ftests_2escm"),(void*)f_317},
{C_text("f_324:tests_2fsssp_5ftests_2escm"),(void*)f_324},
{C_text("f_326:tests_2fsssp_5ftests_2escm"),(void*)f_326},
{C_text("f_333:tests_2fsssp_5ftests_2escm"),(void*)f_333},
{C_text("f_336:tests_2fsssp_5ftests_2escm"),(void*)f_336},
{C_text("f_339:tests_2fsssp_5ftests_2escm"),(void*)f_339},
{C_text("f_342:tests_2fsssp_5ftests_2escm"),(void*)f_342},
{C_text("f_345:tests_2fsssp_5ftests_2escm"),(void*)f_345},
{C_text("f_348:tests_2fsssp_5ftests_2escm"),(void*)f_348},
{C_text("f_351:tests_2fsssp_5ftests_2escm"),(void*)f_351},
{C_text("f_357:tests_2fsssp_5ftests_2escm"),(void*)f_357},
{C_text("f_363:tests_2fsssp_5ftests_2escm"),(void*)f_363},
{C_text("f_369:tests_2fsssp_5ftests_2escm"),(void*)f_369},
{C_text("f_376:tests_2fsssp_5ftests_2escm"),(void*)f_376},
{C_text("f_380:tests_2fsssp_5ftests_2escm"),(void*)f_380},
{C_text("f_385:tests_2fsssp_5ftests_2escm"),(void*)f_385},
{C_text("f_389:tests_2fsssp_5ftests_2escm"),(void*)f_389},
{C_text("f_394:tests_2fsssp_5ftests_2escm"),(void*)f_394},
{C_text("f_398:tests_2fsssp_5ftests_2escm"),(void*)f_398},
{C_text("f_411:tests_2fsssp_5ftests_2escm"),(void*)f_411},
{C_text("f_413:tests_2fsssp_5ftests_2escm"),(void*)f_413},
{C_text("toplevel:tests_2fsssp_5ftests_2escm"),(void*)C_toplevel},
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
o|eliminated procedure checks: 4 
o|folded constant expression: (scheme#+ (quote 1) (quote 2) (quote 3)) 
o|folded constant expression: (scheme#length (quote (1 2 3 4 5))) 
o|folded constant expression: (scheme#> (quote 10) (quote 5)) 
o|specializations:
o|  3 (scheme#number->string *)
o|  1 (##sys#check-list (or pair list) *)
o|  1 (scheme#vector-length vector)
(o e)|safe calls: 57 
(o e)|assignments to immediate values: 3 
o|safe globals: (assert-true assert-equal test-failed test-passed test-count) 
o|inlining procedure: k212 
o|inlining procedure: k212 
o|inlining procedure: k269 
o|inlining procedure: k269 
o|propagated global variable: a381 test-failed 
o|propagated global variable: a390 test-passed 
o|propagated global variable: a399 test-count 
o|inlining procedure: k415 
o|contracted procedure: "(tests/sssp_tests.scm:62) g4150" 
o|inlining procedure: k415 
o|inlining procedure: "(tests/sssp_tests.scm:59) square" 
o|propagated global variable: a454 v 
o|inlining procedure: "(tests/sssp_tests.scm:51) add-numbers" 
o|replaced variables: 35 
o|removed binding forms: 40 
o|substituted constant variable: g4751 
o|substituted constant variable: x32466 
o|substituted constant variable: x32466 
o|folded constant expression: (scheme#* (quote 5) (quote 5)) 
o|substituted constant variable: a28471 
o|substituted constant variable: b29472 
o|folded constant expression: (scheme#+ (quote 7) (quote 3)) 
o|replaced variables: 6 
o|removed binding forms: 37 
o|inlining procedure: k447 
o|inlining procedure: k456 
o|removed binding forms: 10 
o|substituted constant variable: r448480 
o|substituted constant variable: r457481 
o|removed binding forms: 2 
o|removed binding forms: 2 
o|simplifications: ((##core#call . 20)) 
o|  call simplifications:
o|    scheme#vector
o|    ##sys#size
o|    scheme#pair?
o|    scheme#cons	2
o|    ##sys#setslot
o|    ##sys#slot	3
o|    scheme#=
o|    scheme#*
o|    scheme#equal?
o|    scheme#+	8
o|contracted procedure: k209 
o|contracted procedure: k215 
o|contracted procedure: k219 
o|contracted procedure: k230 
o|contracted procedure: k266 
o|contracted procedure: k273 
o|contracted procedure: k284 
o|contracted procedure: k319 
o|contracted procedure: k358 
o|contracted procedure: k401 
o|contracted procedure: k418 
o|contracted procedure: k440 
o|contracted procedure: k436 
o|contracted procedure: k421 
o|contracted procedure: k424 
o|contracted procedure: k432 
o|contracted procedure: k451 
o|simplifications: ((let . 5)) 
o|removed binding forms: 17 
o|customizable procedures: (map-loop3553) 
o|calls to known targets: 10 
o|identified direct recursive calls: f_413 1 
o|fast box initializations: 1 
*/
/* end of file */
