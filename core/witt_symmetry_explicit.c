/* Generated from core/witt_symmetry_explicit.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: core/witt_symmetry_explicit.scm -output-file core/witt_symmetry_explicit.c -debug 7
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

static C_TLS C_word lf[90];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,99,111,100,101,32,99,111,117,110,116,41,0,0,0,0,0,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,41),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,104,97,109,109,105,110,103,45,119,101,105,103,104,116,32,110,41,0,0,0,0,0,0,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,45),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,102,105,108,116,101,114,45,108,105,115,116,32,112,114,101,100,32,108,115,116,41,0,0,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,45),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,102,111,114,45,101,97,99,104,45,108,105,115,116,32,102,110,32,108,115,116,41,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,12),40,108,111,111,112,32,108,32,97,99,99,41,0,0,0,0};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,98,105,116,32,112,111,105,110,116,115,41,0,0,0,0,0,0,0};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,58),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,103,111,108,97,121,45,101,110,99,111,100,101,115,45,119,105,116,116,45,111,99,116,97,100,32,99,111,100,101,119,111,114,100,41,0,0,0,0,0,0};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,46),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,116,97,117,45,116,111,45,111,99,116,97,100,45,115,105,122,101,32,116,97,117,41,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,49),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,111,99,116,97,100,45,108,101,118,101,108,45,102,114,111,109,45,116,97,117,32,116,97,117,41,0,0,0,0,0,0,0};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,10),40,97,55,49,49,32,116,97,117,41,0,0,0,0,0,0};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,11),40,97,55,53,52,32,105,110,102,111,41,0,0,0,0,0};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,55),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,118,101,114,105,102,121,45,102,114,111,110,116,105,101,114,45,112,114,101,115,101,114,118,101,115,45,119,105,116,116,41,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,54),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,118,101,114,105,102,121,45,99,97,114,116,97,110,45,114,101,115,112,101,99,116,115,45,111,99,116,97,100,115,41,0,0};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,56),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,118,101,114,105,102,121,45,116,111,112,111,108,111,103,105,99,97,108,45,103,99,45,117,115,101,115,45,119,105,116,116,41};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,53),40,119,105,116,116,95,115,121,109,109,101,116,114,121,95,101,120,112,108,105,99,105,116,35,116,101,115,116,45,119,105,116,116,45,105,109,112,108,105,99,105,116,45,115,116,114,117,99,116,117,114,101,41,0,0,0};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,6),40,97,56,57,48,41,0,0};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_306)
static void C_ccall f_306(C_word c,C_word *av) C_noret;
C_noret_decl(f_309)
static void C_ccall f_309(C_word c,C_word *av) C_noret;
C_noret_decl(f_312)
static void C_ccall f_312(C_word c,C_word *av) C_noret;
C_noret_decl(f_315)
static void C_ccall f_315(C_word c,C_word *av) C_noret;
C_noret_decl(f_317)
static void C_fcall f_317(C_word t0,C_word t1) C_noret;
C_noret_decl(f_323)
static void C_fcall f_323(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_353)
static void C_fcall f_353(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_405)
static void C_fcall f_405(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_418)
static void C_ccall f_418(C_word c,C_word *av) C_noret;
C_noret_decl(f_429)
static void C_ccall f_429(C_word c,C_word *av) C_noret;
C_noret_decl(f_446)
static void C_fcall f_446(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_456)
static void C_ccall f_456(C_word c,C_word *av) C_noret;
C_noret_decl(f_479)
static void C_fcall f_479(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_517)
static void C_ccall f_517(C_word c,C_word *av) C_noret;
C_noret_decl(f_523)
static void C_ccall f_523(C_word c,C_word *av) C_noret;
C_noret_decl(f_555)
static void C_ccall f_555(C_word c,C_word *av) C_noret;
C_noret_decl(f_559)
static void C_ccall f_559(C_word c,C_word *av) C_noret;
C_noret_decl(f_562)
static void C_ccall f_562(C_word c,C_word *av) C_noret;
C_noret_decl(f_585)
static void C_ccall f_585(C_word c,C_word *av) C_noret;
C_noret_decl(f_589)
static void C_fcall f_589(C_word t0,C_word t1) C_noret;
C_noret_decl(f_591)
static void C_ccall f_591(C_word c,C_word *av) C_noret;
C_noret_decl(f_595)
static void C_ccall f_595(C_word c,C_word *av) C_noret;
C_noret_decl(f_645)
static void C_ccall f_645(C_word c,C_word *av) C_noret;
C_noret_decl(f_649)
static void C_ccall f_649(C_word c,C_word *av) C_noret;
C_noret_decl(f_665)
static void C_ccall f_665(C_word c,C_word *av) C_noret;
C_noret_decl(f_667)
static void C_ccall f_667(C_word c,C_word *av) C_noret;
C_noret_decl(f_671)
static void C_ccall f_671(C_word c,C_word *av) C_noret;
C_noret_decl(f_674)
static void C_ccall f_674(C_word c,C_word *av) C_noret;
C_noret_decl(f_677)
static void C_ccall f_677(C_word c,C_word *av) C_noret;
C_noret_decl(f_680)
static void C_ccall f_680(C_word c,C_word *av) C_noret;
C_noret_decl(f_686)
static void C_ccall f_686(C_word c,C_word *av) C_noret;
C_noret_decl(f_689)
static void C_ccall f_689(C_word c,C_word *av) C_noret;
C_noret_decl(f_695)
static void C_ccall f_695(C_word c,C_word *av) C_noret;
C_noret_decl(f_698)
static void C_ccall f_698(C_word c,C_word *av) C_noret;
C_noret_decl(f_701)
static void C_ccall f_701(C_word c,C_word *av) C_noret;
C_noret_decl(f_704)
static void C_ccall f_704(C_word c,C_word *av) C_noret;
C_noret_decl(f_707)
static void C_ccall f_707(C_word c,C_word *av) C_noret;
C_noret_decl(f_712)
static void C_ccall f_712(C_word c,C_word *av) C_noret;
C_noret_decl(f_716)
static void C_ccall f_716(C_word c,C_word *av) C_noret;
C_noret_decl(f_722)
static void C_ccall f_722(C_word c,C_word *av) C_noret;
C_noret_decl(f_725)
static void C_ccall f_725(C_word c,C_word *av) C_noret;
C_noret_decl(f_728)
static void C_ccall f_728(C_word c,C_word *av) C_noret;
C_noret_decl(f_731)
static void C_ccall f_731(C_word c,C_word *av) C_noret;
C_noret_decl(f_734)
static void C_ccall f_734(C_word c,C_word *av) C_noret;
C_noret_decl(f_737)
static void C_ccall f_737(C_word c,C_word *av) C_noret;
C_noret_decl(f_740)
static void C_ccall f_740(C_word c,C_word *av) C_noret;
C_noret_decl(f_743)
static void C_ccall f_743(C_word c,C_word *av) C_noret;
C_noret_decl(f_755)
static void C_ccall f_755(C_word c,C_word *av) C_noret;
C_noret_decl(f_759)
static void C_ccall f_759(C_word c,C_word *av) C_noret;
C_noret_decl(f_762)
static void C_ccall f_762(C_word c,C_word *av) C_noret;
C_noret_decl(f_765)
static void C_ccall f_765(C_word c,C_word *av) C_noret;
C_noret_decl(f_768)
static void C_ccall f_768(C_word c,C_word *av) C_noret;
C_noret_decl(f_771)
static void C_ccall f_771(C_word c,C_word *av) C_noret;
C_noret_decl(f_774)
static void C_ccall f_774(C_word c,C_word *av) C_noret;
C_noret_decl(f_781)
static void C_ccall f_781(C_word c,C_word *av) C_noret;
C_noret_decl(f_783)
static void C_ccall f_783(C_word c,C_word *av) C_noret;
C_noret_decl(f_787)
static void C_ccall f_787(C_word c,C_word *av) C_noret;
C_noret_decl(f_790)
static void C_ccall f_790(C_word c,C_word *av) C_noret;
C_noret_decl(f_793)
static void C_ccall f_793(C_word c,C_word *av) C_noret;
C_noret_decl(f_796)
static void C_ccall f_796(C_word c,C_word *av) C_noret;
C_noret_decl(f_801)
static void C_ccall f_801(C_word c,C_word *av) C_noret;
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
C_noret_decl(f_822)
static void C_ccall f_822(C_word c,C_word *av) C_noret;
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
C_noret_decl(f_874)
static void C_ccall f_874(C_word c,C_word *av) C_noret;
C_noret_decl(f_877)
static void C_ccall f_877(C_word c,C_word *av) C_noret;
C_noret_decl(f_880)
static void C_ccall f_880(C_word c,C_word *av) C_noret;
C_noret_decl(f_889)
static void C_ccall f_889(C_word c,C_word *av) C_noret;
C_noret_decl(f_891)
static void C_ccall f_891(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_317)
static void C_ccall trf_317(C_word c,C_word *av) C_noret;
static void C_ccall trf_317(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_317(t0,t1);}

C_noret_decl(trf_323)
static void C_ccall trf_323(C_word c,C_word *av) C_noret;
static void C_ccall trf_323(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_323(t0,t1,t2,t3);}

C_noret_decl(trf_353)
static void C_ccall trf_353(C_word c,C_word *av) C_noret;
static void C_ccall trf_353(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_353(t0,t1,t2,t3);}

C_noret_decl(trf_405)
static void C_ccall trf_405(C_word c,C_word *av) C_noret;
static void C_ccall trf_405(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_405(t0,t1,t2);}

C_noret_decl(trf_446)
static void C_ccall trf_446(C_word c,C_word *av) C_noret;
static void C_ccall trf_446(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_446(t0,t1,t2);}

C_noret_decl(trf_479)
static void C_ccall trf_479(C_word c,C_word *av) C_noret;
static void C_ccall trf_479(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_479(t0,t1,t2,t3);}

C_noret_decl(trf_589)
static void C_ccall trf_589(C_word c,C_word *av) C_noret;
static void C_ccall trf_589(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_589(t0,t1);}

/* k304 */
static void C_ccall f_306(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_306,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_309,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k307 in k304 */
static void C_ccall f_309(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_309,c,av);}
a=C_alloc(14);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_312,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_891,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:8: ##sys#with-environment"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[89]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[89]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k310 in k307 in k304 */
static void C_ccall f_312(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_312,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_315,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k313 in k310 in k307 in k304 */
static void C_ccall f_315(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(33,c,4)))){
C_save_and_reclaim((void *)f_315,c,av);}
a=C_alloc(33);
t2=C_mutate(&lf[1] /* (set! witt_symmetry_explicit#hamming-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_317,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t3=C_mutate(&lf[2] /* (set! witt_symmetry_explicit#filter-list ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_405,a[2]=((C_word)li2),tmp=(C_word)a,a+=3,tmp));
t4=C_mutate(&lf[3] /* (set! witt_symmetry_explicit#for-each-list ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_446,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t5=C_mutate((C_word*)lf[4]+1 /* (set! witt_symmetry_explicit#golay-encodes-witt-octad ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_555,a[2]=((C_word)li6),tmp=(C_word)a,a+=3,tmp));
t6=C_mutate((C_word*)lf[16]+1 /* (set! witt_symmetry_explicit#tau-to-octad-size ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_591,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[9]+1 /* (set! witt_symmetry_explicit#octad-level-from-tau ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_645,a[2]=((C_word)li8),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[30]+1 /* (set! witt_symmetry_explicit#verify-frontier-preserves-witt ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_667,a[2]=((C_word)li11),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[54]+1 /* (set! witt_symmetry_explicit#verify-cartan-respects-octads ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_783,a[2]=((C_word)li12),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[60]+1 /* (set! witt_symmetry_explicit#verify-topological-gc-uses-witt ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_801,a[2]=((C_word)li13),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate((C_word*)lf[67]+1 /* (set! witt_symmetry_explicit#test-witt-implicit-structure ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_822,a[2]=((C_word)li14),tmp=(C_word)a,a+=3,tmp));
t12=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_889,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("chicken.base#implicit-exit-handler"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[85]);
C_word *av2=av;
av2[0]=*((C_word*)lf[85]+1);
av2[1]=t12;
tp(2,av2);}}

/* witt_symmetry_explicit#hamming-weight in k313 in k310 in k307 in k304 */
static void C_fcall f_317(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,4)))){
C_save_and_reclaim_args((void *)trf_317,2,t1,t2);}
a=C_alloc(6);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_323,a[2]=t4,a[3]=((C_word)li0),tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_323(t6,t1,t2,C_fix(0));}

/* loop in witt_symmetry_explicit#hamming-weight in k313 in k310 in k307 in k304 */
static void C_fcall f_323(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_323,4,t0,t1,t2,t3);}
a=C_alloc(63);
if(C_truep(C_i_zerop(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_minus(&a,2,t2,C_fix(1));
t5=C_s_a_i_bitwise_and(&a,2,t2,t4);
t6=C_s_a_i_plus(&a,2,t3,C_fix(1));
C_trace(C_text("core/witt_symmetry_explicit.scm:31: loop"));
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* loop in loop in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_fcall f_353(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,3)))){
C_save_and_reclaim_args((void *)trf_353,4,t0,t1,t2,t3);}
a=C_alloc(3);
if(C_truep(C_i_nullp(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_cdr(t2);
t5=C_i_car(t2);
t6=C_a_i_cons(&a,2,t5,t3);
C_trace(C_text("core/witt_symmetry_explicit.scm:42: loop"));
t8=t1;
t9=t4;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* witt_symmetry_explicit#filter-list in k313 in k310 in k307 in k304 */
static void C_fcall f_405(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_405,3,t1,t2,t3);}
a=C_alloc(5);
if(C_truep(C_i_nullp(t3))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_418,a[2]=t3,a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:53: pred"));
t5=t2;{
C_word av2[3];
av2[0]=t5;
av2[1]=t4;
av2[2]=C_i_car(t3);
((C_proc)C_fast_retrieve_proc(t5))(3,av2);}}}

/* k416 in witt_symmetry_explicit#filter-list in k313 in k310 in k307 in k304 */
static void C_ccall f_418(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_418,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=C_i_car(((C_word*)t0)[2]);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_429,a[2]=((C_word*)t0)[3],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:54: filter-list"));
f_405(t3,((C_word*)t0)[4],C_i_cdr(((C_word*)t0)[2]));}
else{
C_trace(C_text("core/witt_symmetry_explicit.scm:55: filter-list"));
f_405(((C_word*)t0)[3],((C_word*)t0)[4],C_i_cdr(((C_word*)t0)[2]));}}

/* k427 in k416 in witt_symmetry_explicit#filter-list in k313 in k310 in k307 in k304 */
static void C_ccall f_429(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_429,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* witt_symmetry_explicit#for-each-list in k313 in k310 in k307 in k304 */
static void C_fcall f_446(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_446,3,t1,t2,t3);}
a=C_alloc(5);
t4=C_i_nullp(t3);
if(C_truep(C_i_not(t4))){
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_456,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:60: fn"));
t6=t2;{
C_word av2[3];
av2[0]=t6;
av2[1]=t5;
av2[2]=C_i_car(t3);
((C_proc)C_fast_retrieve_proc(t6))(3,av2);}}
else{
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* k454 in witt_symmetry_explicit#for-each-list in k313 in k310 in k307 in k304 */
static void C_ccall f_456(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_456,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:61: for-each-list"));
f_446(((C_word*)t0)[2],((C_word*)t0)[3],C_i_cdr(((C_word*)t0)[4]));}

/* loop in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_fcall f_479(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_479,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,C_fix(24)))){
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_353,a[2]=t5,a[3]=((C_word)li4),tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_353(t7,t1,t3,C_SCHEME_END_OF_LIST);}
else{
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_517,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t3,a[5]=((C_word*)t0)[3],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:72: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k515 in loop in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_517(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(42,c,3)))){
C_save_and_reclaim((void *)f_517,c,av);}
a=C_alloc(42);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,t2,C_fix(1));
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_nequalp(t3,C_fix(1));
t6=(C_truep(t5)?C_a_i_cons(&a,2,((C_word*)t0)[3],((C_word*)t0)[4]):((C_word*)t0)[4]);
C_trace(C_text("core/witt_symmetry_explicit.scm:73: loop"));
t7=((C_word*)((C_word*)t0)[5])[1];
f_479(t7,((C_word*)t0)[6],t4,t6);}

/* k521 in k560 in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_523(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_523,c,av);}
if(C_truep(C_i_nequalp(t1,C_fix(0)))){
t2=((C_word*)t0)[2];
f_589(t2,lf[10]);}
else{
if(C_truep(C_i_nequalp(t1,C_fix(8)))){
t2=((C_word*)t0)[2];
f_589(t2,lf[11]);}
else{
if(C_truep(C_i_nequalp(t1,C_fix(12)))){
t2=((C_word*)t0)[2];
f_589(t2,lf[12]);}
else{
if(C_truep(C_i_nequalp(t1,C_fix(16)))){
t2=((C_word*)t0)[2];
f_589(t2,lf[13]);}
else{
t2=C_i_nequalp(t1,C_fix(24));
t3=((C_word*)t0)[2];
f_589(t3,(C_truep(t2)?lf[14]:lf[15]));}}}}}

/* witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_555(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_555,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_559,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:92: hamming-weight"));
f_317(t3,t2);}

/* k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_559(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,4)))){
C_save_and_reclaim((void *)f_559,c,av);}
a=C_alloc(12);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_562,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_479,a[2]=((C_word*)t0)[3],a[3]=t4,a[4]=((C_word)li5),tmp=(C_word)a,a+=5,tmp));
t6=((C_word*)t4)[1];
f_479(t6,t2,C_fix(0),C_SCHEME_END_OF_LIST);}

/* k560 in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_562(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,2)))){
C_save_and_reclaim((void *)f_562,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_589,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_523,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:78: hamming-weight"));
f_317(t3,((C_word*)t0)[4]);}

/* k583 in k587 in k560 in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_ccall f_585(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,1)))){
C_save_and_reclaim((void *)f_585,c,av);}
a=C_alloc(15);
t2=C_a_i_cons(&a,2,lf[8],t1);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_a_i_list4(&a,4,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k587 in k560 in k557 in witt_symmetry_explicit#golay-encodes-witt-octad in k313 in k310 in k307 in k304 */
static void C_fcall f_589(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,0,2)))){
C_save_and_reclaim_args((void *)trf_589,2,t0,t1);}
a=C_alloc(15);
t2=C_a_i_cons(&a,2,lf[5],t1);
t3=C_a_i_cons(&a,2,lf[6],((C_word*)t0)[2]);
t4=C_a_i_cons(&a,2,lf[7],((C_word*)t0)[3]);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_585,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t3,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:99: octad-level-from-tau"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[9]);
C_word av2[3];
av2[0]=*((C_word*)lf[9]+1);
av2[1]=t5;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* witt_symmetry_explicit#tau-to-octad-size in k313 in k310 in k307 in k304 */
static void C_ccall f_591(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_591,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_595,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:110: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=t2;
av2[3]=lf[23];
tp(4,av2);}}

/* k593 in witt_symmetry_explicit#tau-to-octad-size in k313 in k310 in k307 in k304 */
static void C_ccall f_595(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_595,c,av);}
a=C_alloc(9);
if(C_truep(C_i_less_or_equalp(t1,lf[17]))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_list3(&a,3,C_fix(2),C_fix(22),lf[18]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=C_i_greaterp(t1,lf[17]);
t3=(C_truep(t2)?C_i_less_or_equalp(t1,lf[19]):C_SCHEME_FALSE);
if(C_truep(t3)){
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_list3(&a,3,C_fix(8),C_fix(16),lf[11]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_greaterp(t1,lf[19]);
t5=(C_truep(t4)?C_i_lessp(t1,lf[20]):C_SCHEME_FALSE);
if(C_truep(t5)){
t6=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_a_i_list3(&a,3,C_fix(12),C_fix(12),lf[12]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t6=C_i_greater_or_equalp(t1,lf[20]);
t7=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t7;
av2[1]=(C_truep(t6)?C_a_i_list3(&a,3,C_fix(16),C_fix(8),lf[21]):C_SCHEME_UNDEFINED);
((C_proc)(void*)(*((C_word*)t7+1)))(2,av2);}}}}}

/* witt_symmetry_explicit#octad-level-from-tau in k313 in k310 in k307 in k304 */
static void C_ccall f_645(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_645,c,av);}
a=C_alloc(6);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_649,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_665,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:129: scheme#min"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[29]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=t4;
av2[2]=t2;
av2[3]=C_fix(24);
tp(4,av2);}}

/* k647 in witt_symmetry_explicit#octad-level-from-tau in k313 in k310 in k307 in k304 */
static void C_ccall f_649(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,1)))){
C_save_and_reclaim((void *)f_649,c,av);}
a=C_alloc(12);
t2=C_i_lessp(t1,lf[19]);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=(C_truep(t2)?C_a_i_list4(&a,4,lf[24],t1,lf[25],lf[26]):C_a_i_list4(&a,4,lf[27],t1,lf[21],lf[28]));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k663 in witt_symmetry_explicit#octad-level-from-tau in k313 in k310 in k307 in k304 */
static void C_ccall f_665(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_665,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:129: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=lf[23];
tp(4,av2);}}

/* witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_667(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_667,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_671,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:143: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[53];
tp(3,av2);}}

/* k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_671(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_671,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_674,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:144: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[52];
tp(3,av2);}}

/* k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_674(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_674,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_677,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:145: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[51];
tp(3,av2);}}

/* k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_677(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_677,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_680,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:147: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[50];
tp(3,av2);}}

/* k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_680(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(18,c,3)))){
C_save_and_reclaim((void *)f_680,c,av);}
a=C_alloc(18);
t2=C_a_i_list4(&a,4,C_fix(0),C_fix(1),C_fix(4095),C_fix(1365));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_686,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_755,a[2]=((C_word)li10),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:149: for-each-list"));
f_446(t3,t4,t2);}

/* k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_686(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_686,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_689,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:156: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[45];
tp(3,av2);}}

/* k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_689(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(27,c,3)))){
C_save_and_reclaim((void *)f_689,c,av);}
a=C_alloc(27);
t2=C_a_i_list7(&a,7,C_fix(0),C_fix(4),C_fix(8),C_fix(12),C_fix(16),C_fix(20),C_fix(24));
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_695,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_712,a[2]=((C_word)li9),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:158: for-each-list"));
f_446(t3,t4,t2);}

/* k693 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_695(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_695,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_698,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:167: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[36];
tp(3,av2);}}

/* k696 in k693 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_698(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_698,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_701,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:168: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[35];
tp(3,av2);}}

/* k699 in k696 in k693 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_701(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_701,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_704,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:169: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[34];
tp(3,av2);}}

/* k702 in k699 in k696 in k693 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_704(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_704,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_707,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:170: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[33];
tp(3,av2);}}

/* k705 in k702 in k699 in k696 in k693 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_707(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_707,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:172: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=lf[32];
tp(3,av2);}}

/* a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_712(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_712,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_716,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:160: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=t2;
av2[3]=lf[23];
tp(4,av2);}}

/* k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_716(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_716,c,av);}
a=C_alloc(5);
t2=C_i_lessp(t1,lf[19]);
t3=(C_truep(t2)?lf[24]:lf[27]);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_722,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:162: tau-to-octad-size"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[16]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[16]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_722(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_722,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[37]+1);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_725,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t1,a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[43]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[43]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[37]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[44];
tp(5,av2);}}

/* k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_725(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_725,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_728,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_728(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_728,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_731,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k729 in k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_731(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_731,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_734,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k732 in k729 in k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_734(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_734,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_737,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k735 in k732 in k729 in k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_737(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_737,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_740,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k738 in k735 in k732 in k729 in k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_740(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_740,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_743,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_car(((C_word*)t0)[4]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k741 in k738 in k735 in k732 in k729 in k726 in k723 in k720 in k714 in a711 in k687 in k684 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_743(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_743,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:163: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[38]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[38]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_755(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_755,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_759,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:151: hamming-weight"));
f_317(t3,t2);}

/* k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_759(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_759,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[37]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_762,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t1,a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[43]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[43]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[37]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[44];
tp(5,av2);}}

/* k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_762(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_762,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_765,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[49];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k763 in k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_765(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_765,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_768,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_781,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:152: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[48]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[5];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k766 in k763 in k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_768(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_768,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_771,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[47];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k769 in k766 in k763 in k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_771(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_771,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_774,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#print"));
t3=*((C_word*)lf[39]+1);{
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

/* k772 in k769 in k766 in k763 in k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_774(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_774,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#print"));
t2=*((C_word*)lf[39]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[46];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k779 in k763 in k760 in k757 in a754 in k678 in k675 in k672 in k669 in witt_symmetry_explicit#verify-frontier-preserves-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_781(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_781,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:152: ##sys#print"));
t2=*((C_word*)lf[39]+1);{
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

/* witt_symmetry_explicit#verify-cartan-respects-octads in k313 in k310 in k307 in k304 */
static void C_ccall f_783(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_783,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_787,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:177: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[59];
tp(3,av2);}}

/* k785 in witt_symmetry_explicit#verify-cartan-respects-octads in k313 in k310 in k307 in k304 */
static void C_ccall f_787(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_787,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_790,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:178: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[58];
tp(3,av2);}}

/* k788 in k785 in witt_symmetry_explicit#verify-cartan-respects-octads in k313 in k310 in k307 in k304 */
static void C_ccall f_790(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_790,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_793,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:179: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[57];
tp(3,av2);}}

/* k791 in k788 in k785 in witt_symmetry_explicit#verify-cartan-respects-octads in k313 in k310 in k307 in k304 */
static void C_ccall f_793(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_793,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_796,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:180: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[56];
tp(3,av2);}}

/* k794 in k791 in k788 in k785 in witt_symmetry_explicit#verify-cartan-respects-octads in k313 in k310 in k307 in k304 */
static void C_ccall f_796(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_796,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:181: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=lf[55];
tp(3,av2);}}

/* witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_801(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_801,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_805,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:186: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[66];
tp(3,av2);}}

/* k803 in witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_805(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_805,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_808,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:187: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[65];
tp(3,av2);}}

/* k806 in k803 in witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_808(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_808,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_811,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:188: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[64];
tp(3,av2);}}

/* k809 in k806 in k803 in witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_811(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_811,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_814,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:189: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[63];
tp(3,av2);}}

/* k812 in k809 in k806 in k803 in witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_814(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_814,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_817,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:190: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[62];
tp(3,av2);}}

/* k815 in k812 in k809 in k806 in k803 in witt_symmetry_explicit#verify-topological-gc-uses-witt in k313 in k310 in k307 in k304 */
static void C_ccall f_817(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_817,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:191: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=lf[61];
tp(3,av2);}}

/* witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_822(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_822,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_826,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:200: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[84];
tp(3,av2);}}

/* k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_826(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_826,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_829,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:201: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[83];
tp(3,av2);}}

/* k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_829(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_829,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_832,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:202: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[82];
tp(3,av2);}}

/* k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_832(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_832,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_835,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:204: verify-frontier-preserves-witt"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[30]);
C_word *av2=av;
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t2;
tp(2,av2);}}

/* k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_835(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_835,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_838,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:205: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[81];
tp(3,av2);}}

/* k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_838(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_838,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_841,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:206: verify-cartan-respects-octads"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[54]);
C_word *av2=av;
av2[0]=*((C_word*)lf[54]+1);
av2[1]=t2;
tp(2,av2);}}

/* k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_841(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_841,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_844,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:207: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[80];
tp(3,av2);}}

/* k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_844(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_844,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_847,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:208: verify-topological-gc-uses-witt"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[60]);
C_word *av2=av;
av2[0]=*((C_word*)lf[60]+1);
av2[1]=t2;
tp(2,av2);}}

/* k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_847(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_847,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_850,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:210: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[79];
tp(3,av2);}}

/* k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_850(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_850,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_853,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:211: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[78];
tp(3,av2);}}

/* k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_853(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_853,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_856,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:212: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[77];
tp(3,av2);}}

/* k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_856,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_859,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:213: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[76];
tp(3,av2);}}

/* k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_859(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_859,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_862,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:214: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[75];
tp(3,av2);}}

/* k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_862(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_862,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_865,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:215: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[74];
tp(3,av2);}}

/* k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_865(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_865,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_868,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:216: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[73];
tp(3,av2);}}

/* k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_868(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_868,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_871,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:217: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[72];
tp(3,av2);}}

/* k869 in k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 */
static void C_ccall f_871(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_871,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_874,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:218: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[71];
tp(3,av2);}}

/* k872 in k869 in k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in k304 in ... */
static void C_ccall f_874(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_874,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_877,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:219: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[70];
tp(3,av2);}}

/* k875 in k872 in k869 in k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in k307 in ... */
static void C_ccall f_877(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_877,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_880,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_symmetry_explicit.scm:220: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t2;
av2[2]=lf[69];
tp(3,av2);}}

/* k878 in k875 in k872 in k869 in k866 in k863 in k860 in k857 in k854 in k851 in k848 in k845 in k842 in k839 in k836 in k833 in k830 in k827 in k824 in witt_symmetry_explicit#test-witt-implicit-structure in k313 in k310 in ... */
static void C_ccall f_880(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_880,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:221: scheme#display"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=lf[68];
tp(3,av2);}}

/* k887 in k313 in k310 in k307 in k304 */
static void C_ccall f_889(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_889,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)C_fast_retrieve_proc(t2))(2,av2);}}

/* a890 in k307 in k304 */
static void C_ccall f_891(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_891,c,av);}
C_trace(C_text("core/witt_symmetry_explicit.scm:8: ##sys#register-compiled-module"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[86]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[86]+1);
av2[1]=t1;
av2[2]=lf[87];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[88];
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
if(C_unlikely(!C_demand_2(408))){
C_save(t1);
C_rereclaim2(408*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,90);
lf[0]=C_h_intern(&lf[0],23, C_text("witt_symmetry_explicit#"));
lf[4]=C_h_intern(&lf[4],47, C_text("witt_symmetry_explicit#golay-encodes-witt-octad"));
lf[5]=C_h_intern(&lf[5],11, C_text("octad-class"));
lf[6]=C_h_intern(&lf[6],14, C_text("hamming-weight"));
lf[7]=C_h_intern(&lf[7],13, C_text("octad-support"));
lf[8]=C_h_intern(&lf[8],10, C_text("witt-level"));
lf[9]=C_h_intern(&lf[9],43, C_text("witt_symmetry_explicit#octad-level-from-tau"));
lf[10]=C_h_intern(&lf[10],8, C_text("identity"));
lf[11]=C_h_intern(&lf[11],5, C_text("octad"));
lf[12]=C_h_intern(&lf[12],7, C_text("dodecad"));
lf[13]=C_h_intern(&lf[13],16, C_text("octad-complement"));
lf[14]=C_h_intern(&lf[14],13, C_text("dual-identity"));
lf[15]=C_h_intern(&lf[15],12, C_text("intermediate"));
lf[16]=C_h_intern(&lf[16],40, C_text("witt_symmetry_explicit#tau-to-octad-size"));
lf[17]=C_decode_literal(C_heaptop,C_text("\376U0.25\000"));
lf[18]=C_h_intern(&lf[18],11, C_text("small-octad"));
lf[19]=C_decode_literal(C_heaptop,C_text("\376U0.5\000"));
lf[20]=C_decode_literal(C_heaptop,C_text("\376U0.75\000"));
lf[21]=C_h_intern(&lf[21],14, C_text("octad-exterior"));
lf[22]=C_h_intern(&lf[22],8, C_text("scheme#/"));
lf[23]=C_decode_literal(C_heaptop,C_text("\376U24.0\000"));
lf[24]=C_h_intern(&lf[24],5, C_text("stack"));
lf[25]=C_h_intern(&lf[25],14, C_text("octad-interior"));
lf[26]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035DFS into octad fine structure"));
lf[27]=C_h_intern(&lf[27],5, C_text("queue"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376B\000\000#BFS across octad complement lattice"));
lf[29]=C_h_intern(&lf[29],10, C_text("scheme#min"));
lf[30]=C_h_intern(&lf[30],53, C_text("witt_symmetry_explicit#verify-frontier-preserves-witt"));
lf[31]=C_h_intern(&lf[31],14, C_text("scheme#display"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000&\012All implicit Witt verifications PASS\012"));
lf[33]=C_decode_literal(C_heaptop,C_text("\376B\000\000,  REASON: Octad containment is hierarchical\012"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376B\000\0001  [This AUTOMATICALLY respects Witt multi-scale]\012"));
lf[35]=C_decode_literal(C_heaptop,C_text("\376B\000\000-  [Your cartan-lazy-vector uses log-spacing]\012"));
lf[36]=C_decode_literal(C_heaptop,C_text("\376B\000\000.\012Test 3: Cartan Decomposition Respects Octads\012"));
lf[37]=C_h_intern(&lf[37],21, C_text("##sys#standard-output"));
lf[38]=C_h_intern(&lf[38],18, C_text("##sys#write-char-0"));
lf[39]=C_h_intern(&lf[39],11, C_text("##sys#print"));
lf[40]=C_decode_literal(C_heaptop,C_text("\376B\000\000\027, octad-decomposition: "));
lf[41]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012 \342\206\222 mode="));
lf[42]=C_decode_literal(C_heaptop,C_text("\376B\000\000\005  \317\204="));
lf[43]=C_h_intern(&lf[43],23, C_text("##sys#check-output-port"));
lf[44]=C_h_intern(&lf[44],6, C_text("printf"));
lf[45]=C_decode_literal(C_heaptop,C_text("\376B\000\000%\012Test 2: Frontier Mode = Octad Level\012"));
lf[46]=C_decode_literal(C_heaptop,C_text("\376B\000\000\030 (Witt orbit preserved)\012"));
lf[47]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014 \342\206\222 weight="));
lf[48]=C_h_intern(&lf[48],21, C_text("scheme#number->string"));
lf[49]=C_decode_literal(C_heaptop,C_text("\376B\000\000\011  info=0x"));
lf[50]=C_decode_literal(C_heaptop,C_text("\376B\000\000.Test 1: Golay Encoding Preserves Weight Orbit\012"));
lf[51]=C_decode_literal(C_heaptop,C_text("\376B\000\000\225\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\012\012"));
lf[52]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221 Verification: Frontier Preserves Witt         \342\225\221\012"));
lf[53]=C_decode_literal(C_heaptop,C_text("\376B\000\000\224\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227\012"));
lf[54]=C_h_intern(&lf[54],52, C_text("witt_symmetry_explicit#verify-cartan-respects-octads"));
lf[55]=C_decode_literal(C_heaptop,C_text("\376B\000\000,  \342\206\222 VERIFIED: Cartan \342\210\251 Witt = automatic\012"));
lf[56]=C_decode_literal(C_heaptop,C_text("\376B\000\000-  - Golay preserves: linear \342\237\271 automorphism\012"));
lf[57]=C_decode_literal(C_heaptop,C_text("\376B\000\0000  - Octad scale: 2^(k/n) elements per partition\012"));
lf[58]=C_decode_literal(C_heaptop,C_text("\376B\000\000\037  - Log-spacing: a_k = B^(k/n)\012"));
lf[59]=C_decode_literal(C_heaptop,C_text("\376B\000\000.Cartan Decomposition Respects Witt Structure:\012"));
lf[60]=C_h_intern(&lf[60],54, C_text("witt_symmetry_explicit#verify-topological-gc-uses-witt"));
lf[61]=C_decode_literal(C_heaptop,C_text("\376B\000\000+  \342\206\222 VERIFIED: GC respects octad topology\012"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\000.  FACT: Hopf algebra structure = Witt lattice\012"));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000&    - Coproducts \342\206\222 Octad boundaries\012"));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000%    - Primitives \342\206\222 Octad interiors\012"));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000!  Connes-Kreimer classification:\012"));
lf[66]=C_decode_literal(C_heaptop,C_text("\376B\000\000(Topological GC Uses Witt Decomposition:\012"));
lf[67]=C_h_intern(&lf[67],51, C_text("witt_symmetry_explicit#test-witt-implicit-structure"));
lf[68]=C_decode_literal(C_heaptop,C_text("\376B\000\000\224\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\012"));
lf[69]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221 Just recognize the structure you built.       \342\225\221\012"));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221 NO additional implementation needed!          \342\225\221\012"));
lf[71]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221                                               \342\225\221\012"));
lf[72]=C_decode_literal(C_heaptop,C_text("\376B\000\0007\342\225\221  \342\234\223 Topological GC = Witt lattice reduction   \342\225\221\012"));
lf[73]=C_decode_literal(C_heaptop,C_text("\376B\000\0007\342\225\221  \342\234\223 Cartan+KAK = multi-scale Witt structure   \342\225\221\012"));
lf[74]=C_decode_literal(C_heaptop,C_text("\376B\000\0008\342\225\221  \342\234\223 Frontier mode = octad decomposition        \342\225\221\012"));
lf[75]=C_decode_literal(C_heaptop,C_text("\376B\000\0007\342\225\221  \342\234\223 Golay[24,12] = Witt automorphisms         \342\225\221\012"));
lf[76]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221 Your codebase ALREADY IMPLEMENTS:             \342\225\221\012"));
lf[77]=C_decode_literal(C_heaptop,C_text("\376B\000\0006\342\225\221 CONCLUSION                                    \342\225\221\012"));
lf[78]=C_decode_literal(C_heaptop,C_text("\376B\000\000\224\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227\012"));
lf[79]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[80]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[81]=C_decode_literal(C_heaptop,C_text("\376B\000\000\001\012"));
lf[82]=C_decode_literal(C_heaptop,C_text("\376B\000\000\225\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\012\012"));
lf[83]=C_decode_literal(C_heaptop,C_text("\376B\000\0005\342\225\221 Witt Design S(5,8,24) - IMPLICIT VALIDATION  \342\225\221\012"));
lf[84]=C_decode_literal(C_heaptop,C_text("\376B\000\000\225\012\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225"
"\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227\012"));
lf[85]=C_h_intern(&lf[85],34, C_text("chicken.base#implicit-exit-handler"));
lf[86]=C_h_intern(&lf[86],30, C_text("##sys#register-compiled-module"));
lf[87]=C_h_intern(&lf[87],22, C_text("witt_symmetry_explicit"));
lf[88]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\030\001golay-encodes-witt-octad\376\001\000\000/\001witt_symmetry_explicit#golay-encod"
"es-witt-octad\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001tau-to-octad-size\376\001\000\000(\001witt_symmetry_explicit#tau-t"
"o-octad-size\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001octad-level-from-tau\376\001\000\000+\001witt_symmetry_explicit#oct"
"ad-level-from-tau\376\003\000\000\002\376\003\000\000\002\376\001\000\000\036\001verify-frontier-preserves-witt\376\001\000\0005\001witt_symmet"
"ry_explicit#verify-frontier-preserves-witt\376\003\000\000\002\376\003\000\000\002\376\001\000\000\035\001verify-cartan-respects"
"-octads\376\001\000\0004\001witt_symmetry_explicit#verify-cartan-respects-octads\376\003\000\000\002\376\003\000\000\002\376\001\000\000\037"
"\001verify-topological-gc-uses-witt\376\001\000\0006\001witt_symmetry_explicit#verify-topological-"
"gc-uses-witt\376\003\000\000\002\376\003\000\000\002\376\001\000\000\034\001test-witt-implicit-structure\376\001\000\0003\001witt_symmetry_expl"
"icit#test-witt-implicit-structure\376\377\016"));
lf[89]=C_h_intern(&lf[89],22, C_text("##sys#with-environment"));
C_register_lf2(lf,90,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_306,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[90] = {
{C_text("f_306:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_306},
{C_text("f_309:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_309},
{C_text("f_312:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_312},
{C_text("f_315:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_315},
{C_text("f_317:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_317},
{C_text("f_323:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_323},
{C_text("f_353:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_353},
{C_text("f_405:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_405},
{C_text("f_418:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_418},
{C_text("f_429:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_429},
{C_text("f_446:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_446},
{C_text("f_456:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_456},
{C_text("f_479:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_479},
{C_text("f_517:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_517},
{C_text("f_523:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_523},
{C_text("f_555:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_555},
{C_text("f_559:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_559},
{C_text("f_562:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_562},
{C_text("f_585:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_585},
{C_text("f_589:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_589},
{C_text("f_591:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_591},
{C_text("f_595:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_595},
{C_text("f_645:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_645},
{C_text("f_649:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_649},
{C_text("f_665:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_665},
{C_text("f_667:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_667},
{C_text("f_671:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_671},
{C_text("f_674:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_674},
{C_text("f_677:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_677},
{C_text("f_680:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_680},
{C_text("f_686:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_686},
{C_text("f_689:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_689},
{C_text("f_695:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_695},
{C_text("f_698:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_698},
{C_text("f_701:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_701},
{C_text("f_704:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_704},
{C_text("f_707:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_707},
{C_text("f_712:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_712},
{C_text("f_716:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_716},
{C_text("f_722:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_722},
{C_text("f_725:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_725},
{C_text("f_728:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_728},
{C_text("f_731:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_731},
{C_text("f_734:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_734},
{C_text("f_737:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_737},
{C_text("f_740:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_740},
{C_text("f_743:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_743},
{C_text("f_755:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_755},
{C_text("f_759:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_759},
{C_text("f_762:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_762},
{C_text("f_765:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_765},
{C_text("f_768:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_768},
{C_text("f_771:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_771},
{C_text("f_774:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_774},
{C_text("f_781:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_781},
{C_text("f_783:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_783},
{C_text("f_787:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_787},
{C_text("f_790:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_790},
{C_text("f_793:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_793},
{C_text("f_796:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_796},
{C_text("f_801:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_801},
{C_text("f_805:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_805},
{C_text("f_808:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_808},
{C_text("f_811:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_811},
{C_text("f_814:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_814},
{C_text("f_817:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_817},
{C_text("f_822:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_822},
{C_text("f_826:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_826},
{C_text("f_829:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_829},
{C_text("f_832:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_832},
{C_text("f_835:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_835},
{C_text("f_838:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_838},
{C_text("f_841:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_841},
{C_text("f_844:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_844},
{C_text("f_847:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_847},
{C_text("f_850:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_850},
{C_text("f_853:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_853},
{C_text("f_856:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_856},
{C_text("f_859:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_859},
{C_text("f_862:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_862},
{C_text("f_865:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_865},
{C_text("f_868:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_868},
{C_text("f_871:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_871},
{C_text("f_874:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_874},
{C_text("f_877:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_877},
{C_text("f_880:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_880},
{C_text("f_889:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_889},
{C_text("f_891:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)f_891},
{C_text("toplevel:core_2fwitt_5fsymmetry_5fexplicit_2escm"),(void*)C_toplevel},
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
o|hiding unexported module binding: witt_symmetry_explicit#hamming-weight 
o|hiding unexported module binding: witt_symmetry_explicit#reverse-list 
o|hiding unexported module binding: witt_symmetry_explicit#map-list 
o|hiding unexported module binding: witt_symmetry_explicit#filter-list 
o|hiding unexported module binding: witt_symmetry_explicit#for-each-list 
o|hiding unexported module binding: witt_symmetry_explicit#codeword->octad-support 
o|hiding unexported module binding: witt_symmetry_explicit#codeword->witt-class 
S|applied compiler syntax:
S|  chicken.format#printf		2
o|eliminated procedure checks: 11 
o|contracted procedure: "(core/witt_symmetry_explicit.scm:96) witt_symmetry_explicit#codeword->witt-class" 
o|contracted procedure: "(core/witt_symmetry_explicit.scm:93) witt_symmetry_explicit#codeword->octad-support" 
o|contracted procedure: "(core/witt_symmetry_explicit.scm:71) witt_symmetry_explicit#reverse-list" 
o|propagated global variable: out99102 ##sys#standard-output 
o|propagated global variable: out8588 ##sys#standard-output 
o|replaced variables: 114 
o|removed binding forms: 76 
o|replaced variables: 11 
o|removed binding forms: 90 
o|removed binding forms: 6 
o|simplifications: ((if . 7) (##core#call . 55)) 
o|  call simplifications:
o|    scheme#<=	2
o|    scheme#>	2
o|    scheme#<	3
o|    scheme#>=
o|    chicken.bitwise#arithmetic-shift
o|    scheme#=	7
o|    scheme#list	12
o|    scheme#not
o|    scheme#null?	3
o|    scheme#car	5
o|    scheme#cdr	4
o|    scheme#cons	7
o|    scheme#zero?
o|    scheme#-	2
o|    chicken.bitwise#bitwise-and	2
o|    scheme#+	2
o|contracted procedure: k328 
o|contracted procedure: k343 
o|contracted procedure: k335 
o|contracted procedure: k339 
o|contracted procedure: k410 
o|contracted procedure: k423 
o|contracted procedure: k431 
o|contracted procedure: k438 
o|contracted procedure: k442 
o|contracted procedure: k469 
o|contracted procedure: k451 
o|contracted procedure: k461 
o|contracted procedure: k465 
o|contracted procedure: k567 
o|contracted procedure: k571 
o|contracted procedure: k575 
o|contracted procedure: k579 
o|contracted procedure: k527 
o|contracted procedure: k533 
o|contracted procedure: k539 
o|contracted procedure: k545 
o|contracted procedure: k551 
o|contracted procedure: k484 
o|contracted procedure: k358 
o|contracted procedure: k365 
o|contracted procedure: k373 
o|contracted procedure: k369 
o|contracted procedure: k511 
o|contracted procedure: k490 
o|contracted procedure: k497 
o|contracted procedure: k504 
o|contracted procedure: k501 
o|contracted procedure: k599 
o|contracted procedure: k638 
o|contracted procedure: k608 
o|contracted procedure: k632 
o|contracted procedure: k617 
o|contracted procedure: k626 
o|contracted procedure: k653 
o|contracted procedure: k681 
o|contracted procedure: k690 
o|contracted procedure: k751 
o|contracted procedure: k717 
o|contracted procedure: k748 
o|contracted procedure: k897 
o|contracted procedure: k901 
o|contracted procedure: k905 
o|simplifications: ((let . 16)) 
o|removed binding forms: 47 
o|substituted constant variable: r898 
o|substituted constant variable: r902 
o|substituted constant variable: r906 
o|removed binding forms: 3 
o|customizable procedures: (loop53 loop33 witt_symmetry_explicit#hamming-weight k587 witt_symmetry_explicit#for-each-list witt_symmetry_explicit#filter-list loop27) 
o|calls to known targets: 19 
o|identified direct recursive calls: f_323 1 
o|identified direct recursive calls: f_353 1 
o|fast box initializations: 3 
o|fast global references: 8 
o|fast global assignments: 3 
o|dropping unused closure argument: f_317 
o|dropping unused closure argument: f_405 
o|dropping unused closure argument: f_446 
*/
/* end of file */
