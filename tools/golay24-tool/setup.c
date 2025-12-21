/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   uses: eval library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[9];
static double C_possibly_force_alignment;


C_noret_decl(f_119)
static void C_ccall f_119(C_word c,C_word *av) C_noret;
C_noret_decl(f_122)
static void C_ccall f_122(C_word c,C_word *av) C_noret;
C_noret_decl(f_125)
static void C_ccall f_125(C_word c,C_word *av) C_noret;
C_noret_decl(f_128)
static void C_ccall f_128(C_word c,C_word *av) C_noret;
C_noret_decl(f_131)
static void C_ccall f_131(C_word c,C_word *av) C_noret;
C_noret_decl(f_137)
static void C_ccall f_137(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

/* k117 */
static void C_ccall f_119(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_119,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_122,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k120 in k117 */
static void C_ccall f_122(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_122,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_125,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.scm:2: use */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[7]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t2;
av2[2]=C_fast_retrieve(lf[8]);
tp(3,av2);}}

/* k123 in k120 in k117 */
static void C_ccall f_125(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_125,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_128,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.scm:4: compile-executable */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t2;
av2[2]=lf[4];
av2[3]=lf[5];
av2[4]=lf[6];
tp(5,av2);}}

/* k126 in k123 in k120 in k117 */
static void C_ccall f_128(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_128,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_131,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool/setup.scm:9: install-program */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[1]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[1]+1);
av2[1]=t2;
av2[2]=lf[2];
tp(3,av2);}}

/* k129 in k126 in k123 in k120 in k117 */
static void C_ccall f_131(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_131,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_137,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* chicken.base#implicit-exit-handler */
t3=C_fast_retrieve(lf[0]);{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k135 in k129 in k126 in k123 in k120 in k117 */
static void C_ccall f_137(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_137,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

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
if(C_unlikely(!C_demand_2(53))){
C_save(t1);
C_rereclaim2(53*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,9);
lf[0]=C_h_intern(&lf[0],34, C_text("chicken.base#implicit-exit-handler"));
lf[1]=C_h_intern(&lf[1],15, C_text("install-program"));
lf[2]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014golay24-tool"));
lf[3]=C_h_intern(&lf[3],18, C_text("compile-executable"));
lf[4]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376B\000\000\020golay24_main.scm\376\377\016"));
lf[5]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014golay24-tool"));
lf[6]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\016\000\000\002\376\377\001\000\000\000\000\376\377\001\377\377\377\377\376\003\000\000\002\376\001\000\000\006\001../../\376\377\016"));
lf[7]=C_h_intern(&lf[7],3, C_text("use"));
lf[8]=C_h_intern(&lf[8],9, C_text("setup-api"));
C_register_lf2(lf,9,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_119,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[8] = {
{C_text("f_119:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_119},
{C_text("f_122:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_122},
{C_text("f_125:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_125},
{C_text("f_128:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_128},
{C_text("f_131:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_131},
{C_text("f_137:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)f_137},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2ftools_2fgolay24_2dtool_2fsetup_2escm"),(void*)C_toplevel},
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
(o e)|safe calls: 2 
o|replaced variables: 1 
o|removed binding forms: 5 
o|removed binding forms: 1 
*/
/* end of file */
