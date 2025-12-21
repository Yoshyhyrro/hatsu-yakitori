/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
   unit: topological_gc
   uses: chicken.format chicken.sort eval extras data-structures srfi-69 srfi-1 library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_chicken_2eformat_toplevel)
C_externimport void C_ccall C_chicken_2eformat_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_chicken_2esort_toplevel)
C_externimport void C_ccall C_chicken_2esort_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_extras_toplevel)
C_externimport void C_ccall C_extras_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_data_2dstructures_toplevel)
C_externimport void C_ccall C_data_2dstructures_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d69_toplevel)
C_externimport void C_ccall C_srfi_2d69_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_srfi_2d1_toplevel)
C_externimport void C_ccall C_srfi_2d1_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[74];
static double C_possibly_force_alignment;


C_noret_decl(f_1005)
static void C_ccall f_1005(C_word c,C_word *av) C_noret;
C_noret_decl(f_1011)
static void C_ccall f_1011(C_word c,C_word *av) C_noret;
C_noret_decl(f_1018)
static void C_ccall f_1018(C_word c,C_word *av) C_noret;
C_noret_decl(f_1021)
static void C_ccall f_1021(C_word c,C_word *av) C_noret;
C_noret_decl(f_1028)
static void C_ccall f_1028(C_word c,C_word *av) C_noret;
C_noret_decl(f_1030)
static void C_ccall f_1030(C_word c,C_word *av) C_noret;
C_noret_decl(f_1056)
static void C_ccall f_1056(C_word c,C_word *av) C_noret;
C_noret_decl(f_1062)
static void C_ccall f_1062(C_word c,C_word *av) C_noret;
C_noret_decl(f_1124)
static void C_ccall f_1124(C_word c,C_word *av) C_noret;
C_noret_decl(f_1129)
static void C_ccall f_1129(C_word c,C_word *av) C_noret;
C_noret_decl(f_1133)
static void C_ccall f_1133(C_word c,C_word *av) C_noret;
C_noret_decl(f_1149)
static void C_ccall f_1149(C_word c,C_word *av) C_noret;
C_noret_decl(f_1152)
static void C_ccall f_1152(C_word c,C_word *av) C_noret;
C_noret_decl(f_1158)
static void C_fcall f_1158(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1182)
static void C_ccall f_1182(C_word c,C_word *av) C_noret;
C_noret_decl(f_1185)
static void C_ccall f_1185(C_word c,C_word *av) C_noret;
C_noret_decl(f_1188)
static void C_ccall f_1188(C_word c,C_word *av) C_noret;
C_noret_decl(f_1191)
static void C_ccall f_1191(C_word c,C_word *av) C_noret;
C_noret_decl(f_1199)
static void C_fcall f_1199(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1215)
static void C_ccall f_1215(C_word c,C_word *av) C_noret;
C_noret_decl(f_1224)
static void C_ccall f_1224(C_word c,C_word *av) C_noret;
C_noret_decl(f_1226)
static void C_fcall f_1226(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1251)
static void C_ccall f_1251(C_word c,C_word *av) C_noret;
C_noret_decl(f_1264)
static void C_fcall f_1264(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1268)
static void C_ccall f_1268(C_word c,C_word *av) C_noret;
C_noret_decl(f_1273)
static void C_fcall f_1273(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(f_1290)
static void C_ccall f_1290(C_word c,C_word *av) C_noret;
C_noret_decl(f_1319)
static void C_ccall f_1319(C_word c,C_word *av) C_noret;
C_noret_decl(f_1334)
static void C_ccall f_1334(C_word c,C_word *av) C_noret;
C_noret_decl(f_1337)
static void C_ccall f_1337(C_word c,C_word *av) C_noret;
C_noret_decl(f_1340)
static void C_ccall f_1340(C_word c,C_word *av) C_noret;
C_noret_decl(f_1353)
static void C_ccall f_1353(C_word c,C_word *av) C_noret;
C_noret_decl(f_1359)
static void C_fcall f_1359(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1397)
static void C_ccall f_1397(C_word c,C_word *av) C_noret;
C_noret_decl(f_1406)
static void C_ccall f_1406(C_word c,C_word *av) C_noret;
C_noret_decl(f_1414)
static void C_ccall f_1414(C_word c,C_word *av) C_noret;
C_noret_decl(f_1416)
static void C_ccall f_1416(C_word c,C_word *av) C_noret;
C_noret_decl(f_1429)
static void C_ccall f_1429(C_word c,C_word *av) C_noret;
C_noret_decl(f_1504)
static void C_ccall f_1504(C_word c,C_word *av) C_noret;
C_noret_decl(f_1510)
static void C_ccall f_1510(C_word c,C_word *av) C_noret;
C_noret_decl(f_1514)
static void C_ccall f_1514(C_word c,C_word *av) C_noret;
C_noret_decl(f_1517)
static void C_ccall f_1517(C_word c,C_word *av) C_noret;
C_noret_decl(f_1526)
static void C_ccall f_1526(C_word c,C_word *av) C_noret;
C_noret_decl(f_1539)
static void C_ccall f_1539(C_word c,C_word *av) C_noret;
C_noret_decl(f_1549)
static void C_ccall f_1549(C_word c,C_word *av) C_noret;
C_noret_decl(f_1555)
static void C_fcall f_1555(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1589)
static void C_fcall f_1589(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1593)
static void C_ccall f_1593(C_word c,C_word *av) C_noret;
C_noret_decl(f_1595)
static void C_ccall f_1595(C_word c,C_word *av) C_noret;
C_noret_decl(f_1601)
static void C_fcall f_1601(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1611)
static void C_ccall f_1611(C_word c,C_word *av) C_noret;
C_noret_decl(f_1623)
static void C_fcall f_1623(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1633)
static void C_ccall f_1633(C_word c,C_word *av) C_noret;
C_noret_decl(f_1646)
static void C_ccall f_1646(C_word c,C_word *av) C_noret;
C_noret_decl(f_1662)
static void C_ccall f_1662(C_word c,C_word *av) C_noret;
C_noret_decl(f_1668)
static void C_ccall f_1668(C_word c,C_word *av) C_noret;
C_noret_decl(f_1671)
static void C_ccall f_1671(C_word c,C_word *av) C_noret;
C_noret_decl(f_1677)
static void C_ccall f_1677(C_word c,C_word *av) C_noret;
C_noret_decl(f_1680)
static void C_ccall f_1680(C_word c,C_word *av) C_noret;
C_noret_decl(f_1683)
static void C_ccall f_1683(C_word c,C_word *av) C_noret;
C_noret_decl(f_1686)
static void C_ccall f_1686(C_word c,C_word *av) C_noret;
C_noret_decl(f_1692)
static void C_ccall f_1692(C_word c,C_word *av) C_noret;
C_noret_decl(f_1695)
static void C_ccall f_1695(C_word c,C_word *av) C_noret;
C_noret_decl(f_1698)
static void C_ccall f_1698(C_word c,C_word *av) C_noret;
C_noret_decl(f_1727)
static void C_ccall f_1727(C_word c,C_word *av) C_noret;
C_noret_decl(f_1730)
static void C_ccall f_1730(C_word c,C_word *av) C_noret;
C_noret_decl(f_1736)
static void C_ccall f_1736(C_word c,C_word *av) C_noret;
C_noret_decl(f_1739)
static void C_ccall f_1739(C_word c,C_word *av) C_noret;
C_noret_decl(f_1754)
static void C_ccall f_1754(C_word c,C_word *av) C_noret;
C_noret_decl(f_1757)
static void C_ccall f_1757(C_word c,C_word *av) C_noret;
C_noret_decl(f_1763)
static void C_ccall f_1763(C_word c,C_word *av) C_noret;
C_noret_decl(f_1766)
static void C_ccall f_1766(C_word c,C_word *av) C_noret;
C_noret_decl(f_1775)
static void C_ccall f_1775(C_word c,C_word *av) C_noret;
C_noret_decl(f_1778)
static void C_ccall f_1778(C_word c,C_word *av) C_noret;
C_noret_decl(f_1789)
static void C_ccall f_1789(C_word c,C_word *av) C_noret;
C_noret_decl(f_1793)
static void C_ccall f_1793(C_word c,C_word *av) C_noret;
C_noret_decl(f_1802)
static void C_ccall f_1802(C_word c,C_word *av) C_noret;
C_noret_decl(f_1811)
static void C_ccall f_1811(C_word c,C_word *av) C_noret;
C_noret_decl(f_1820)
static void C_ccall f_1820(C_word c,C_word *av) C_noret;
C_noret_decl(f_1826)
static void C_ccall f_1826(C_word c,C_word *av) C_noret;
C_noret_decl(f_1829)
static void C_ccall f_1829(C_word c,C_word *av) C_noret;
C_noret_decl(f_1835)
static void C_ccall f_1835(C_word c,C_word *av) C_noret;
C_noret_decl(f_1838)
static void C_ccall f_1838(C_word c,C_word *av) C_noret;
C_noret_decl(f_1841)
static void C_ccall f_1841(C_word c,C_word *av) C_noret;
C_noret_decl(f_1847)
static void C_ccall f_1847(C_word c,C_word *av) C_noret;
C_noret_decl(f_1850)
static void C_ccall f_1850(C_word c,C_word *av) C_noret;
C_noret_decl(f_1853)
static void C_ccall f_1853(C_word c,C_word *av) C_noret;
C_noret_decl(f_1859)
static void C_ccall f_1859(C_word c,C_word *av) C_noret;
C_noret_decl(f_1862)
static void C_ccall f_1862(C_word c,C_word *av) C_noret;
C_noret_decl(f_1865)
static void C_ccall f_1865(C_word c,C_word *av) C_noret;
C_noret_decl(f_1871)
static void C_ccall f_1871(C_word c,C_word *av) C_noret;
C_noret_decl(f_1874)
static void C_ccall f_1874(C_word c,C_word *av) C_noret;
C_noret_decl(f_1877)
static void C_ccall f_1877(C_word c,C_word *av) C_noret;
C_noret_decl(f_1880)
static void C_ccall f_1880(C_word c,C_word *av) C_noret;
C_noret_decl(f_1886)
static void C_ccall f_1886(C_word c,C_word *av) C_noret;
C_noret_decl(f_1889)
static void C_ccall f_1889(C_word c,C_word *av) C_noret;
C_noret_decl(f_1898)
static void C_ccall f_1898(C_word c,C_word *av) C_noret;
C_noret_decl(f_1908)
static void C_ccall f_1908(C_word c,C_word *av) C_noret;
C_noret_decl(f_1916)
static void C_ccall f_1916(C_word c,C_word *av) C_noret;
C_noret_decl(f_1918)
static void C_fcall f_1918(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1952)
static void C_ccall f_1952(C_word c,C_word *av) C_noret;
C_noret_decl(f_793)
static void C_ccall f_793(C_word c,C_word *av) C_noret;
C_noret_decl(f_796)
static void C_ccall f_796(C_word c,C_word *av) C_noret;
C_noret_decl(f_799)
static void C_ccall f_799(C_word c,C_word *av) C_noret;
C_noret_decl(f_802)
static void C_ccall f_802(C_word c,C_word *av) C_noret;
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
C_noret_decl(f_824)
static void C_ccall f_824(C_word c,C_word *av) C_noret;
C_noret_decl(f_828)
static void C_ccall f_828(C_word c,C_word *av) C_noret;
C_noret_decl(f_865)
static void C_ccall f_865(C_word c,C_word *av) C_noret;
C_noret_decl(f_868)
static void C_ccall f_868(C_word c,C_word *av) C_noret;
C_noret_decl(f_871)
static void C_ccall f_871(C_word c,C_word *av) C_noret;
C_noret_decl(f_898)
static void C_ccall f_898(C_word c,C_word *av) C_noret;
C_noret_decl(f_908)
static void C_ccall f_908(C_word c,C_word *av) C_noret;
C_noret_decl(f_922)
static void C_fcall f_922(C_word t0,C_word t1) C_noret;
C_noret_decl(f_926)
static void C_ccall f_926(C_word c,C_word *av) C_noret;
C_noret_decl(f_928)
static void C_ccall f_928(C_word c,C_word *av) C_noret;
C_noret_decl(f_930)
static C_word C_fcall f_930(C_word *a,C_word t0,C_word t1);
C_noret_decl(f_943)
static void C_fcall f_943(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_970)
static void C_ccall f_970(C_word c,C_word *av) C_noret;
C_noret_decl(f_973)
static void C_ccall f_973(C_word c,C_word *av) C_noret;
C_noret_decl(f_982)
static void C_fcall f_982(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(C_topological_5fgc_toplevel)
C_externexport void C_ccall C_topological_5fgc_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_1158)
static void C_ccall trf_1158(C_word c,C_word *av) C_noret;
static void C_ccall trf_1158(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1158(t0,t1,t2);}

C_noret_decl(trf_1199)
static void C_ccall trf_1199(C_word c,C_word *av) C_noret;
static void C_ccall trf_1199(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1199(t0,t1,t2);}

C_noret_decl(trf_1226)
static void C_ccall trf_1226(C_word c,C_word *av) C_noret;
static void C_ccall trf_1226(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1226(t0,t1,t2);}

C_noret_decl(trf_1264)
static void C_ccall trf_1264(C_word c,C_word *av) C_noret;
static void C_ccall trf_1264(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1264(t0,t1);}

C_noret_decl(trf_1273)
static void C_ccall trf_1273(C_word c,C_word *av) C_noret;
static void C_ccall trf_1273(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_1273(t0,t1,t2,t3,t4);}

C_noret_decl(trf_1359)
static void C_ccall trf_1359(C_word c,C_word *av) C_noret;
static void C_ccall trf_1359(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1359(t0,t1,t2);}

C_noret_decl(trf_1555)
static void C_ccall trf_1555(C_word c,C_word *av) C_noret;
static void C_ccall trf_1555(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1555(t0,t1,t2);}

C_noret_decl(trf_1589)
static void C_ccall trf_1589(C_word c,C_word *av) C_noret;
static void C_ccall trf_1589(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1589(t0,t1);}

C_noret_decl(trf_1601)
static void C_ccall trf_1601(C_word c,C_word *av) C_noret;
static void C_ccall trf_1601(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1601(t0,t1,t2);}

C_noret_decl(trf_1623)
static void C_ccall trf_1623(C_word c,C_word *av) C_noret;
static void C_ccall trf_1623(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1623(t0,t1,t2);}

C_noret_decl(trf_1918)
static void C_ccall trf_1918(C_word c,C_word *av) C_noret;
static void C_ccall trf_1918(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1918(t0,t1,t2);}

C_noret_decl(trf_922)
static void C_ccall trf_922(C_word c,C_word *av) C_noret;
static void C_ccall trf_922(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_922(t0,t1);}

C_noret_decl(trf_943)
static void C_ccall trf_943(C_word c,C_word *av) C_noret;
static void C_ccall trf_943(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_943(t0,t1,t2);}

C_noret_decl(trf_982)
static void C_ccall trf_982(C_word c,C_word *av) C_noret;
static void C_ccall trf_982(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_982(t0,t1,t2);}

/* k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1005(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_1005,c,av);}
a=C_alloc(9);
if(C_truep(t1)){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:134: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_982(t2,((C_word*)t0)[3],((C_word*)t0)[4]);}
else{
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1011,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:137: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[32]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[9];
av2[3]=((C_word*)t0)[5];
av2[4]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k1009 in k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1011(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1011,c,av);}
a=C_alloc(9);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],((C_word*)((C_word*)t0)[3])[1]);
t3=C_mutate(((C_word *)((C_word*)t0)[3])+1,t2);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1018,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[6],a[5]=((C_word*)t0)[7],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:141: srfi-69#hash-table-ref/default */
t5=C_fast_retrieve(lf[18]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[8];
av2[3]=((C_word*)t0)[2];
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}

/* k1016 in k1009 in k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1018(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1018,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1021,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1028,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1030,a[2]=((C_word*)t0)[5],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:144: srfi-1#filter-map */
t5=C_fast_retrieve(lf[31]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k1019 in k1016 in k1009 in k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1021(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1021,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:151: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_982(t2,((C_word*)t0)[3],t1);}

/* k1026 in k1016 in k1009 in k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1028(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1028,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:143: scheme#append */
t2=*((C_word*)lf[29]+1);{
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

/* a1029 in k1016 in k1009 in k1003 in loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1030(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1030,c,av);}
t3=C_i_car(t2);
t4=C_u_i_cdr(t2);
t5=C_i_nullp(((C_word*)t0)[2]);
t6=(C_truep(t5)?C_i_greater_or_equalp(t4,lf[28]):C_i_greater_or_equalp(t4,lf[30]));
t7=t1;{
C_word *av2=av;
av2[0]=t7;
av2[1]=(C_truep(t6)?t3:C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t7+1)))(2,av2);}}

/* a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1056(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_1056,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_865,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:89: collect-all-edges */
f_922(t2,((C_word*)t0)[3]);}

/* a1061 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1062(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_1062,c,av);}
a=C_alloc(9);
t5=C_i_greaterp(t2,((C_word*)t0)[2]);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=(C_truep(t5)?C_a_i_list3(&a,3,lf[35],t3,lf[36]):C_a_i_list3(&a,3,lf[37],t4,lf[38]));
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k1122 in k1150 in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1124(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_1124,c,av);}
a=C_alloc(9);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_list3(&a,3,lf[39],((C_word*)((C_word*)t0)[3])[1],lf[38]);
f_1429(2,av2);}}

/* a1128 in k1150 in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1129(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1129,c,av);}
a=C_alloc(6);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1133,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:209: srfi-69#hash-table-ref/default */
t5=C_fast_retrieve(lf[18]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[4];
av2[3]=t2;
av2[4]=lf[28];
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}

/* k1131 in a1128 in k1150 in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1133(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_1133,c,av);}
a=C_alloc(3);
if(C_truep(C_i_greaterp(t1,((C_word*)t0)[2]))){
t2=C_a_i_cons(&a,2,((C_word*)t0)[3],((C_word*)((C_word*)t0)[4])[1]);
t3=C_mutate(((C_word *)((C_word*)t0)[4])+1,t2);
t4=((C_word*)t0)[5];{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[5];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1149(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1149,c,av);}
a=C_alloc(19);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1152,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
t3=C_a_i_cons(&a,2,((C_word*)t0)[5],lf[13]);
t4=C_a_i_list1(&a,1,t3);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1158,a[2]=t6,a[3]=((C_word*)t0)[4],a[4]=t1,tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_1158(t8,t2,t4);}

/* k1150 in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1152(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(11,c,4)))){
C_save_and_reclaim((void *)f_1152,c,av);}
a=C_alloc(11);
t2=C_SCHEME_END_OF_LIST;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1124,a[2]=((C_word*)t0)[2],a[3]=t3,tmp=(C_word)a,a+=4,tmp);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1129,a[2]=((C_word*)t0)[3],a[3]=t3,a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:207: srfi-69#hash-table-walk */
t6=C_fast_retrieve(lf[10]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1158(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,4)))){
C_save_and_reclaim_args((void *)trf_1158,3,t0,t1,t2);}
a=C_alloc(9);
if(C_truep(C_i_nullp(t2))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=C_i_car(t2);
t4=C_i_car(t3);
t5=C_u_i_cdr(t3);
t6=C_u_i_cdr(t2);
t7=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1182,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t5,a[5]=t6,a[6]=((C_word*)t0)[3],a[7]=t4,a[8]=((C_word*)t0)[4],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:228: srfi-69#hash-table-ref/default */
t8=C_fast_retrieve(lf[18]);{
C_word av2[5];
av2[0]=t8;
av2[1]=t7;
av2[2]=((C_word*)t0)[4];
av2[3]=t4;
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t8+1)))(5,av2);}}}

/* k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1182(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1182,c,av);}
a=C_alloc(8);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1185,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:229: srfi-69#hash-table-set! */
t3=C_fast_retrieve(lf[32]);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[8];
av2[3]=((C_word*)t0)[7];
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1185(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1185,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1188,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:232: srfi-69#hash-table-ref/default */
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
av2[3]=((C_word*)t0)[7];
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1188(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(24,c,3)))){
C_save_and_reclaim((void *)f_1188,c,av);}
a=C_alloc(24);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1191,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t4=t3;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=((C_word*)t5)[1];
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1199,a[2]=((C_word*)t0)[4],tmp=(C_word)a,a+=3,tmp);
t8=C_i_check_list_2(t1,lf[14]);
t9=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1224,a[2]=t2,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
t10=C_SCHEME_UNDEFINED;
t11=(*a=C_VECTOR_TYPE|1,a[1]=t10,tmp=(C_word)a,a+=2,tmp);
t12=C_set_block_item(t11,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1226,a[2]=t5,a[3]=t11,a[4]=t7,a[5]=t6,tmp=(C_word)a,a+=6,tmp));
t13=((C_word*)t11)[1];
f_1226(t13,t9,t1);}

/* k1189 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1191(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1191,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:238: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_1158(t2,((C_word*)t0)[3],t1);}

/* g156 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1199(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,3)))){
C_save_and_reclaim_args((void *)trf_1199,3,t0,t1,t2);}
a=C_alloc(5);
t3=C_i_car(t2);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1215,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[15]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[15]+1);
av2[1]=t4;
av2[2]=lf[30];
av2[3]=C_u_i_cdr(t2);
tp(4,av2);}}

/* k1213 in g156 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1215(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(32,c,1)))){
C_save_and_reclaim((void *)f_1215,c,av);}
a=C_alloc(32);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[4],t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k1222 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1224(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1224,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:234: scheme#append */
t2=*((C_word*)lf[29]+1);{
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

/* map-loop150 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1226(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_1226,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1251,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:235: g156 */
t4=((C_word*)t0)[4];
f_1199(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[5],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1249 in map-loop150 in k1186 in k1183 in k1180 in loop in k1147 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1251(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1251,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_1226(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1264(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,0,2)))){
C_save_and_reclaim_args((void *)trf_1264,2,t1,t2);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1268,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:252: collect-all-objects */
f_1589(t3,t2);}

/* k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1268(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,5)))){
C_save_and_reclaim((void *)f_1268,c,av);}
a=C_alloc(6);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1273,a[2]=t3,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp));
t5=((C_word*)t3)[1];
f_1273(t5,((C_word*)t0)[3],t1,C_SCHEME_END_OF_LIST,C_SCHEME_END_OF_LIST);}

/* loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1273(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,4)))){
C_save_and_reclaim_args((void *)trf_1273,5,t0,t1,t2,t3,t4);}
a=C_alloc(11);
if(C_truep(C_i_nullp(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_a_i_cons(&a,2,t3,t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=C_i_car(t2);
t6=C_u_i_cdr(t2);
t7=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1290,a[2]=t5,a[3]=t3,a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=t6,a[7]=t4,tmp=(C_word)a,a+=8,tmp);
t8=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1319,a[2]=t7,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:274: srfi-69#hash-table-ref/default */
t9=C_fast_retrieve(lf[18]);{
C_word av2[5];
av2[0]=t9;
av2[1]=t8;
av2[2]=((C_word*)t0)[3];
av2[3]=t5;
av2[4]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t9+1)))(5,av2);}}}

/* k1288 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1290(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1290,c,av);}
a=C_alloc(3);
if(C_truep(C_i_greaterp(t1,lf[12]))){
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],((C_word*)t0)[3]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:267: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_1273(t3,((C_word*)t0)[5],((C_word*)t0)[6],t2,((C_word*)t0)[7]);}
else{
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],((C_word*)t0)[7]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:268: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_1273(t3,((C_word*)t0)[5],((C_word*)t0)[6],((C_word*)t0)[3],t2);}}

/* k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1319(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(15,c,3)))){
C_save_and_reclaim((void *)f_1319,c,av);}
a=C_alloc(15);
if(C_truep(C_i_nullp(t1))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[13];
f_1290(2,av2);}}
else{
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=C_i_check_list_2(t1,lf[14]);
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1334,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1359,a[2]=t4,a[3]=t9,a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t11=((C_word*)t9)[1];
f_1359(t11,t7,t1);}}

/* k1332 in k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1334(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_1334,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1337,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1353,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t3;
av2[2]=*((C_word*)lf[17]+1);
av2[3]=t1;
C_apply(4,av2);}}

/* k1335 in k1332 in k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1337(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1337,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1340,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t2;
av2[2]=*((C_word*)lf[16]+1);
av2[3]=((C_word*)t0)[3];
C_apply(4,av2);}}

/* k1338 in k1335 in k1332 in k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1340(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1340,c,av);}
if(C_truep(C_i_zerop(t1))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[13];
f_1290(2,av2);}}
else{
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
tp(4,av2);}}}

/* k1351 in k1332 in k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1353(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1353,c,av);}
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
av2[3]=C_i_length(((C_word*)t0)[3]);
tp(4,av2);}}

/* map-loop197 in k1317 in loop in k1266 in topological-gc#connes-kreimer-decomposition in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1359(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_1359,3,t0,t1,t2);}
a=C_alloc(3);
if(C_truep(C_i_pairp(t2))){
t3=C_slot(t2,C_fix(0));
t4=C_i_cdr(t3);
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

/* k1395 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1397(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,1)))){
C_save_and_reclaim((void *)f_1397,c,av);}
a=C_alloc(9);
t2=C_i_cdr(t1);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_a_i_list3(&a,3,lf[40],t2,lf[38]);
f_1429(2,av2);}}

/* topological-gc#make-topological-frontier in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1406(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1406,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1414,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:309: srfi-69#make-hash-table */
t5=C_fast_retrieve(lf[22]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}

/* k1412 in topological-gc#make-topological-frontier in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1414(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_1414,c,av);}
a=C_alloc(6);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector5(&a,5,lf[21],((C_word*)t0)[3],((C_word*)t0)[4],C_retrieve2(lf[2],C_text("topological-gc#\052gc-strategy\052")),t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1416(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,5)))){
C_save_and_reclaim((void *)f_1416,c,av);}
a=C_alloc(12);
t3=C_i_vector_ref(t2,C_fix(1));
t4=C_i_vector_ref(t2,C_fix(2));
t5=C_i_vector_ref(t2,C_fix(3));
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1429,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t7=C_eqp(t5,lf[3]);
if(C_truep(t7)){
t8=C_retrieve2(lf[4],C_text("topological-gc#\052bottleneck-threshold\052"));
t9=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1056,a[2]=t4,a[3]=t3,a[4]=t8,tmp=(C_word)a,a+=5,tmp);
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1062,a[2]=t8,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:162: ##sys#call-with-values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t6;
av2[2]=t9;
av2[3]=t10;
C_call_with_values(4,av2);}}
else{
t8=C_eqp(t5,lf[39]);
if(C_truep(t8)){
t9=C_retrieve2(lf[4],C_text("topological-gc#\052bottleneck-threshold\052"));
t10=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1149,a[2]=t6,a[3]=t9,a[4]=t3,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:217: srfi-69#make-hash-table */
t11=C_fast_retrieve(lf[22]);{
C_word *av2=av;
av2[0]=t11;
av2[1]=t10;
((C_proc)(void*)(*((C_word*)t11+1)))(2,av2);}}
else{
t9=C_eqp(t5,lf[40]);
if(C_truep(t9)){
t10=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1397,a[2]=t6,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:292: connes-kreimer-decomposition */
f_1264(t10,t3);}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:329: chicken.base#error */
t10=*((C_word*)lf[41]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t10;
av2[1]=t6;
av2[2]=lf[42];
av2[3]=t5;
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}}}}

/* k1427 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1429(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(29,c,3)))){
C_save_and_reclaim((void *)f_1429,c,av);}
a=C_alloc(29);
t2=C_i_car(t1);
t3=C_i_cadr(t1);
t4=C_i_caddr(t1);
t5=C_i_length(t3);
t6=C_a_i_fixnum_times(&a,2,t5,C_fix(64));
t7=C_a_i_cons(&a,2,lf[24],t2);
t8=C_a_i_cons(&a,2,lf[25],t4);
t9=C_a_i_cons(&a,2,lf[26],t5);
t10=C_a_i_cons(&a,2,lf[27],t6);
t11=C_a_i_list4(&a,4,t7,t8,t9,t10);
t12=C_i_vector_set(((C_word*)t0)[2],C_fix(4),t11);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:346: scheme#values */{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=t3;
av2[3]=t6;
C_values(4,av2);}}

/* topological-gc#topological-gc-stats in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1504(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1504,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(4));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1510(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1510,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1514,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:364: collect-all-edges */
f_922(t3,t2);}

/* k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1514(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1514,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1517,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:365: collect-all-objects */
f_1589(t2,((C_word*)t0)[3]);}

/* k1515 in k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1517(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,3)))){
C_save_and_reclaim((void *)f_1517,c,av);}
a=C_alloc(17);
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=C_i_check_list_2(((C_word*)t0)[2],lf[14]);
t7=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1526,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1555,a[2]=t4,a[3]=t9,a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t11=((C_word*)t9)[1];
f_1555(t11,t7,((C_word*)t0)[2]);}

/* k1524 in k1515 in k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1526(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1526,c,av);}
a=C_alloc(9);
t2=C_i_length(((C_word*)t0)[2]);
t3=C_u_i_length(((C_word*)t0)[3]);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1539,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
if(C_truep(C_i_nullp(t1))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:368: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[4];
av2[2]=t2;
av2[3]=t3;
av2[4]=lf[13];
C_values(5,av2);}}
else{
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1549,a[2]=t4,a[3]=t1,tmp=(C_word)a,a+=4,tmp);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t5;
av2[2]=*((C_word*)lf[17]+1);
av2[3]=t1;
C_apply(4,av2);}}}

/* k1537 in k1524 in k1515 in k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1539(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1539,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:368: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=t1;
C_values(5,av2);}}

/* k1547 in k1524 in k1515 in k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1549(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1549,c,av);}
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
av2[3]=C_i_length(((C_word*)t0)[3]);
tp(4,av2);}}

/* map-loop256 in k1515 in k1512 in topological-gc#estimate-heap-topology in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1555(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_1555,3,t0,t1,t2);}
a=C_alloc(3);
if(C_truep(C_i_pairp(t2))){
t3=C_slot(t2,C_fix(0));
t4=C_i_cdr(t3);
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

/* topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1589(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,4)))){
C_save_and_reclaim_args((void *)trf_1589,2,t1,t2);}
a=C_alloc(9);
t3=C_SCHEME_END_OF_LIST;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1593,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp);
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1595,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:378: srfi-69#hash-table-walk */
t7=C_fast_retrieve(lf[10]);{
C_word av2[4];
av2[0]=t7;
av2[1]=t5;
av2[2]=t2;
av2[3]=t6;
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}

/* k1591 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1593(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1593,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)((C_word*)t0)[3])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a1594 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1595(C_word c,C_word *av){
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
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_1595,c,av);}
a=C_alloc(12);
t4=C_a_i_cons(&a,2,t2,((C_word*)((C_word*)t0)[2])[1]);
t5=C_mutate(((C_word *)((C_word*)t0)[2])+1,t4);
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1601,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t7=C_i_check_list_2(t3,lf[9]);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1623,a[2]=t9,a[3]=t6,tmp=(C_word)a,a+=4,tmp));
t11=((C_word*)t9)[1];
f_1623(t11,t1,t3);}

/* g288 in a1594 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1601(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,3)))){
C_save_and_reclaim_args((void *)trf_1601,3,t0,t1,t2);}
a=C_alloc(5);
t3=C_i_car(t2);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1611,a[2]=t1,a[3]=t3,a[4]=((C_word*)t0)[2],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:384: srfi-1#member */
t5=C_fast_retrieve(lf[45]);{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
av2[3]=((C_word*)((C_word*)t0)[2])[1];
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k1609 in g288 in a1594 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1611(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_1611,c,av);}
a=C_alloc(3);
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t2=C_a_i_cons(&a,2,((C_word*)t0)[3],((C_word*)((C_word*)t0)[4])[1]);
t3=C_mutate(((C_word *)((C_word*)t0)[4])+1,t2);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* for-each-loop287 in a1594 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1623(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_1623,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1633,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:381: g288 */
t4=((C_word*)t0)[3];
f_1601(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k1631 in for-each-loop287 in a1594 in topological-gc#collect-all-objects in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1633(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1633,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_1623(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1646(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1646,c,av);}
a=C_alloc(5);
t3=C_i_vector_ref(t2,C_fix(1));
t4=C_i_vector_ref(t2,C_fix(3));
t5=C_eqp(t4,lf[40]);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1662,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:399: connes-kreimer-decomposition */
f_1264(t6,t3);}
else{
t6=C_eqp(t4,lf[3]);
if(C_truep(t6)){
t7=*((C_word*)lf[47]+1);
t8=*((C_word*)lf[47]+1);
t9=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t10=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1727,a[2]=t1,a[3]=t7,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:405: ##sys#print */
t11=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t11;
av2[1]=t10;
av2[2]=lf[57];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t11+1)))(5,av2);}}
else{
t7=C_eqp(t4,lf[39]);
if(C_truep(t7)){
t8=*((C_word*)lf[47]+1);
t9=*((C_word*)lf[47]+1);
t10=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t11=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1754,a[2]=t1,a[3]=t8,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:409: ##sys#print */
t12=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t12;
av2[1]=t11;
av2[2]=lf[59];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t12+1)))(5,av2);}}
else{
t8=*((C_word*)lf[47]+1);
t9=*((C_word*)lf[47]+1);
t10=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t11=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1775,a[2]=t1,a[3]=t8,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:413: ##sys#print */
t12=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t12;
av2[1]=t11;
av2[2]=lf[60];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t12+1)))(5,av2);}}}}}

/* k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1662(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1662,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1668,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:400: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[55];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1668(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1668,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1671,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:400: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1671(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1671,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1677,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:401: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[54];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1677(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1677,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1680,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_i_car(((C_word*)t0)[3]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:401: ##sys#print */
t4=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=C_i_length(t3);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1680(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1680,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1683,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:401: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[53];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1681 in k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1683(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1683,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1686,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:401: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1684 in k1681 in k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1686(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1686,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1692,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:402: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[52];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1690 in k1684 in k1681 in k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1692(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1692,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1695,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:402: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_length(C_u_i_cdr(((C_word*)t0)[4]));
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1693 in k1690 in k1684 in k1681 in k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1695(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1695,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1698,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:402: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[51];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1696 in k1693 in k1690 in k1684 in k1681 in k1678 in k1675 in k1669 in k1666 in k1660 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1698(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1698,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:402: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1725 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1727(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1727,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1730,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:405: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1728 in k1725 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1730(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1730,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1736,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:406: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[56];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1734 in k1728 in k1725 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1736(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1736,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1739,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:406: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_retrieve2(lf[4],C_text("topological-gc#\052bottleneck-threshold\052"));
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1737 in k1734 in k1728 in k1725 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1739(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1739,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:406: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1752 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1754(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1754,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1757,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:409: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1755 in k1752 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1757(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1757,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1763,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:410: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[58];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1761 in k1755 in k1752 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1763(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1763,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1766,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:410: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_retrieve2(lf[4],C_text("topological-gc#\052bottleneck-threshold\052"));
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1764 in k1761 in k1755 in k1752 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1766(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1766,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:410: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1773 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1775(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1775,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1778,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:413: ##sys#print */
t3=*((C_word*)lf[50]+1);{
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

/* k1776 in k1773 in topological-gc#report-gc-regions in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1778(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1778,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:413: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1789(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1789,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1793,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:420: collect-all-edges */
f_922(t3,t2);}

/* k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1793(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(15,c,3)))){
C_save_and_reclaim((void *)f_1793,c,av);}
a=C_alloc(15);
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=C_i_check_list_2(t1,lf[14]);
t7=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1802,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t8=C_SCHEME_UNDEFINED;
t9=(*a=C_VECTOR_TYPE|1,a[1]=t8,tmp=(C_word)a,a+=2,tmp);
t10=C_set_block_item(t9,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1918,a[2]=t4,a[3]=t9,a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t11=((C_word*)t9)[1];
f_1918(t11,t7,t1);}

/* k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1802(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1802,c,av);}
a=C_alloc(4);
if(C_truep(C_i_nullp(t1))){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1811,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:424: chicken.sort#sort */
t3=C_fast_retrieve(lf[34]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=t1;
av2[3]=*((C_word*)lf[69]+1);
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}}

/* k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1811(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_1811,c,av);}
a=C_alloc(5);
t2=C_i_car(t1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1916,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:426: scheme#reverse */
t4=*((C_word*)lf[68]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=t1;
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}

/* k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1820(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1820,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1826,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:429: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[67];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1826(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1826,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1829,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:429: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1829(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1829,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1835,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:430: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[66];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1835(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1835,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1838,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:430: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_u_i_length(((C_word*)t0)[3]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1838(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1838,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1841,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:430: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1841(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1841,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1847,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t2,a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:431: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[65];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1847(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1847,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1850,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:431: ##sys#print */
t3=*((C_word*)lf[50]+1);{
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
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 in ... */
static void C_ccall f_1850(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1850,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1853,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:431: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[6];
tp(4,av2);}}

/* k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in ... */
static void C_ccall f_1853(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1853,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1859,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t2,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:432: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[64];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in ... */
static void C_ccall f_1859(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1859,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1862,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:432: ##sys#print */
t3=*((C_word*)lf[50]+1);{
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

/* k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in ... */
static void C_ccall f_1862(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1862,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1865,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:432: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in ... */
static void C_ccall f_1865(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1865,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1871,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:433: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[63];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in ... */
static void C_ccall f_1871(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1871,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1874,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:433: ##sys#print */
t3=*((C_word*)lf[50]+1);{
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

/* k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in ... */
static void C_ccall f_1874(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1874,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1877,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:433: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1875 in k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in ... */
static void C_ccall f_1877(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1877,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1880,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1898,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:436: srfi-1#filter */
t4=C_fast_retrieve(lf[33]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=t3;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k1878 in k1875 in k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in ... */
static void C_ccall f_1880(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1880,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=*((C_word*)lf[47]+1);
t4=C_i_check_port_2(*((C_word*)lf[47]+1),C_fix(2),C_SCHEME_TRUE,lf[48]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1886,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:438: ##sys#print */
t6=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[62];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[47]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1884 in k1878 in k1875 in k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in ... */
static void C_ccall f_1886(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1886,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1889,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:438: ##sys#print */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_length(((C_word*)t0)[4]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1887 in k1884 in k1878 in k1875 in k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in ... */
static void C_ccall f_1889(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1889,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:438: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[49]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[49]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* a1897 in k1875 in k1872 in k1869 in k1863 in k1860 in k1857 in k1851 in k1848 in k1845 in k1839 in k1836 in k1833 in k1827 in k1824 in k1818 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in ... */
static void C_ccall f_1898(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1898,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_lessp(t2,C_retrieve2(lf[4],C_text("topological-gc#\052bottleneck-threshold\052")));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k1906 in k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1908(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1908,c,av);}
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
av2[3]=C_i_length(((C_word*)t0)[3]);
tp(4,av2);}}

/* k1914 in k1809 in k1800 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1916(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_1916,c,av);}
a=C_alloc(10);
t2=C_i_car(t1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1820,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1908,a[2]=t3,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t4;
av2[2]=*((C_word*)lf[17]+1);
av2[3]=((C_word*)t0)[3];
C_apply(4,av2);}}

/* map-loop382 in k1791 in topological-gc#report-connectivity in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_1918(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_1918,3,t0,t1,t2);}
a=C_alloc(3);
if(C_truep(C_i_pairp(t2))){
t3=C_slot(t2,C_fix(0));
t4=C_i_cdr(t3);
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

/* a1951 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_1952(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_1952,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:15: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[70]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[70]+1);
av2[1]=t1;
av2[2]=lf[71];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[72];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* k791 */
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_796,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k794 in k791 */
static void C_ccall f_796(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_796,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_799,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d1_toplevel(2,av2);}}

/* k797 in k794 in k791 */
static void C_ccall f_799(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_799,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_802,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_srfi_2d69_toplevel(2,av2);}}

/* k800 in k797 in k794 in k791 */
static void C_ccall f_802(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_802,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_805,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_chicken_2esort_toplevel(2,av2);}}

/* k803 in k800 in k797 in k794 in k791 */
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_808,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_chicken_2eformat_toplevel(2,av2);}}

/* k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_808(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_808,c,av);}
a=C_alloc(21);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_811,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1952,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:15: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[73]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[73]+1);
av2[1]=t4;
av2[2]=t5;
tp(3,av2);}}

/* k809 in k806 in k803 in k800 in k797 in k794 in k791 */
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_814,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_data_2dstructures_toplevel(2,av2);}}

/* k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
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
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_817,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_817(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(22,c,4)))){
C_save_and_reclaim((void *)f_817,c,av);}
a=C_alloc(22);
t2=C_mutate(&lf[2] /* (set! topological-gc#*gc-strategy* ...) */,lf[3]);
t3=C_mutate(&lf[4] /* (set! topological-gc#*bottleneck-threshold* ...) */,lf[5]);
t4=C_mutate((C_word*)lf[6]+1 /* (set! topological-gc#set-gc-strategy! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_824,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[7]+1 /* (set! topological-gc#set-bottleneck-threshold! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_828,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate(&lf[8] /* (set! topological-gc#collect-all-edges ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_922,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate(&lf[11] /* (set! topological-gc#connes-kreimer-decomposition ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1264,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[20]+1 /* (set! topological-gc#make-topological-frontier ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1406,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[23]+1 /* (set! topological-gc#topological-gc-collect ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1416,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[43]+1 /* (set! topological-gc#topological-gc-stats ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1504,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[44]+1 /* (set! topological-gc#estimate-heap-topology ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1510,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate(&lf[19] /* (set! topological-gc#collect-all-objects ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1589,tmp=(C_word)a,a+=2,tmp));
t13=C_mutate((C_word*)lf[46]+1 /* (set! topological-gc#report-gc-regions ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1646,tmp=(C_word)a,a+=2,tmp));
t14=C_mutate((C_word*)lf[61]+1 /* (set! topological-gc#report-connectivity ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1789,tmp=(C_word)a,a+=2,tmp));
t15=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t15;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t15+1)))(2,av2);}}

/* topological-gc#set-gc-strategy! in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_824(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_824,c,av);}
t3=C_mutate(&lf[2] /* (set! topological-gc#*gc-strategy* ...) */,t2);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* topological-gc#set-bottleneck-threshold! in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_828(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_828,c,av);}
t3=C_mutate(&lf[4] /* (set! topological-gc#*bottleneck-threshold* ...) */,t2);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_865(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_865,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_868,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_908,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:90: chicken.sort#sort */
t4=C_fast_retrieve(lf[34]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=t1;
av2[3]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_868(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_868,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_871,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_898,a[2]=((C_word*)t0)[5],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:93: srfi-1#filter */
t4=C_fast_retrieve(lf[33]);{
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

/* k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_871(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,2)))){
C_save_and_reclaim((void *)f_871,c,av);}
a=C_alloc(7);
t2=C_i_nullp(t1);
t3=(C_truep(t2)?lf[28]:C_i_cdr(C_i_car(t1)));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_970,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:120: srfi-69#make-hash-table */
t5=C_fast_retrieve(lf[22]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}

/* a897 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_898(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_898,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_lessp(C_i_cdr(t2),((C_word*)t0)[2]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* a907 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_908(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_908,c,av);}
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_lessp(C_i_cdr(t2),C_i_cdr(t3));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* topological-gc#collect-all-edges in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_922(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,4)))){
C_save_and_reclaim_args((void *)trf_922,2,t1,t2);}
a=C_alloc(9);
t3=C_SCHEME_END_OF_LIST;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_926,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp);
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_928,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:108: srfi-69#hash-table-walk */
t7=C_fast_retrieve(lf[10]);{
C_word av2[4];
av2[0]=t7;
av2[1]=t5;
av2[2]=t2;
av2[3]=t6;
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}

/* k924 in topological-gc#collect-all-edges in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_926(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_926,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)((C_word*)t0)[3])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a927 in topological-gc#collect-all-edges in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_928(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_928,c,av);}
a=C_alloc(9);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_930,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=C_i_check_list_2(t3,lf[9]);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_943,a[2]=t4,a[3]=t7,tmp=(C_word)a,a+=4,tmp));
t9=((C_word*)t7)[1];
f_943(t9,t1,t3);}

/* g57 in a927 in topological-gc#collect-all-edges in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static C_word C_fcall f_930(C_word *a,C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_stack_overflow_check;{}
t2=C_a_i_cons(&a,2,t1,((C_word*)((C_word*)t0)[2])[1]);
t3=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
return(t3);}

/* for-each-loop56 in a927 in topological-gc#collect-all-edges in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_943(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_943,3,t0,t1,t2);}
a=C_alloc(3);
if(C_truep(C_i_pairp(t2))){
t3=(
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:110: g57 */
  f_930(C_a_i(&a,3),((C_word*)t0)[2],C_slot(t2,C_fix(0)))
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

/* k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_970(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(21,c,3)))){
C_save_and_reclaim((void *)f_970,c,av);}
a=C_alloc(21);
t2=C_SCHEME_END_OF_LIST;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_SCHEME_END_OF_LIST;
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_973,a[2]=t3,a[3]=t4,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
t6=C_a_i_list1(&a,1,((C_word*)t0)[4]);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_982,a[2]=t3,a[3]=t4,a[4]=t8,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t1,tmp=(C_word)a,a+=8,tmp));
t10=((C_word*)t8)[1];
f_982(t10,t5,t6);}

/* k971 in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_ccall f_973(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_973,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,((C_word*)((C_word*)t0)[2])[1],((C_word*)t0)[3]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:103: scheme#values */{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=0;
av2[1]=((C_word*)t0)[4];
av2[2]=((C_word*)t0)[5];
av2[3]=C_i_car(t2);
av2[4]=C_u_i_cdr(t2);
C_values(5,av2);}}

/* loop in k968 in k869 in k866 in k863 in a1055 in topological-gc#topological-gc-collect in k815 in k812 in k809 in k806 in k803 in k800 in k797 in k794 in k791 */
static void C_fcall f_982(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,4)))){
C_save_and_reclaim_args((void *)trf_982,3,t0,t1,t2);}
a=C_alloc(10);
if(C_truep(C_i_nullp(t2))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_a_i_cons(&a,2,((C_word*)((C_word*)t0)[2])[1],((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_i_car(t2);
t4=C_u_i_cdr(t2);
t5=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_1005,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=t4,a[5]=t3,a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[5],a[8]=((C_word*)t0)[6],a[9]=((C_word*)t0)[7],tmp=(C_word)a,a+=10,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:133: srfi-69#hash-table-ref/default */
t6=C_fast_retrieve(lf[18]);{
C_word av2[5];
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[7];
av2[3]=t3;
av2[4]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}}

/* toplevel */
static C_TLS int toplevel_initialized=0;

void C_ccall C_topological_5fgc_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("topological_gc"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_topological_5fgc_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(502))){
C_save(t1);
C_rereclaim2(502*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,74);
lf[0]=C_h_intern(&lf[0],14, C_text("topological_gc"));
lf[1]=C_h_intern(&lf[1],15, C_text("topological-gc#"));
lf[3]=C_h_intern(&lf[3],9, C_text("gomory-hu"));
lf[5]=C_decode_literal(C_heaptop,C_text("\376U0.5\000"));
lf[6]=C_h_intern(&lf[6],31, C_text("topological-gc#set-gc-strategy!"));
lf[7]=C_h_intern(&lf[7],40, C_text("topological-gc#set-bottleneck-threshold!"));
lf[9]=C_h_intern(&lf[9],8, C_text("for-each"));
lf[10]=C_h_intern(&lf[10],23, C_text("srfi-69#hash-table-walk"));
lf[12]=C_decode_literal(C_heaptop,C_text("\376U0.8000000000000000444089209850062616169452667236328125\000"));
lf[13]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[14]=C_h_intern(&lf[14],3, C_text("map"));
lf[15]=C_h_intern(&lf[15],9, C_text("##sys#/-2"));
lf[16]=C_h_intern(&lf[16],10, C_text("scheme#max"));
lf[17]=C_h_intern(&lf[17],8, C_text("scheme#+"));
lf[18]=C_h_intern(&lf[18],30, C_text("srfi-69#hash-table-ref/default"));
lf[20]=C_h_intern(&lf[20],40, C_text("topological-gc#make-topological-frontier"));
lf[21]=C_h_intern(&lf[21],20, C_text("topological-frontier"));
lf[22]=C_h_intern(&lf[22],23, C_text("srfi-69#make-hash-table"));
lf[23]=C_h_intern(&lf[23],37, C_text("topological-gc#topological-gc-collect"));
lf[24]=C_h_intern(&lf[24],8, C_text("strategy"));
lf[25]=C_h_intern(&lf[25],6, C_text("action"));
lf[26]=C_h_intern(&lf[26],11, C_text("freed-count"));
lf[27]=C_h_intern(&lf[27],11, C_text("freed-bytes"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376U999999999999999967336168804116691273849533185806555472917961779471295845921727"
"862608739868455469056.0\000"));
lf[29]=C_h_intern(&lf[29],13, C_text("scheme#append"));
lf[30]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[31]=C_h_intern(&lf[31],17, C_text("srfi-1#filter-map"));
lf[32]=C_h_intern(&lf[32],23, C_text("srfi-69#hash-table-set!"));
lf[33]=C_h_intern(&lf[33],13, C_text("srfi-1#filter"));
lf[34]=C_h_intern(&lf[34],17, C_text("chicken.sort#sort"));
lf[35]=C_h_intern(&lf[35],9, C_text("primitive"));
lf[36]=C_h_intern(&lf[36],4, C_text("keep"));
lf[37]=C_h_intern(&lf[37],9, C_text("coproduct"));
lf[38]=C_h_intern(&lf[38],7, C_text("collect"));
lf[39]=C_h_intern(&lf[39],11, C_text("ultrametric"));
lf[40]=C_h_intern(&lf[40],14, C_text("connes-kreimer"));
lf[41]=C_h_intern(&lf[41],18, C_text("chicken.base#error"));
lf[42]=C_decode_literal(C_heaptop,C_text("\376B\000\000\023Unknown GC strategy"));
lf[43]=C_h_intern(&lf[43],35, C_text("topological-gc#topological-gc-stats"));
lf[44]=C_h_intern(&lf[44],37, C_text("topological-gc#estimate-heap-topology"));
lf[45]=C_h_intern(&lf[45],13, C_text("srfi-1#member"));
lf[46]=C_h_intern(&lf[46],32, C_text("topological-gc#report-gc-regions"));
lf[47]=C_h_intern(&lf[47],21, C_text("##sys#standard-output"));
lf[48]=C_h_intern(&lf[48],6, C_text("printf"));
lf[49]=C_h_intern(&lf[49],18, C_text("##sys#write-char-0"));
lf[50]=C_h_intern(&lf[50],11, C_text("##sys#print"));
lf[51]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010 objects"));
lf[52]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024Coproducts (free):  "));
lf[53]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010 objects"));
lf[54]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024Primitives (keep):  "));
lf[55]=C_decode_literal(C_heaptop,C_text("\376B\000\000$=== Connes-Kreimer Decomposition ==="));
lf[56]=C_decode_literal(C_heaptop,C_text("\376B\000\000\026Bottleneck threshold: "));
lf[57]=C_decode_literal(C_heaptop,C_text("\376B\000\000\042=== Gomory-Hu Min-Cut Analysis ==="));
lf[58]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024Distance tolerance: "));
lf[59]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033=== Ultrametric Pruning ==="));
lf[60]=C_decode_literal(C_heaptop,C_text("\376B\000\000\022Unknown strategy: "));
lf[61]=C_h_intern(&lf[61],34, C_text("topological-gc#report-connectivity"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017Bottlenecks:   "));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017Avg capacity:  "));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017Max capacity:  "));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017Min capacity:  "));
lf[66]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017Total edges:   "));
lf[67]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035=== Connectivity Analysis ==="));
lf[68]=C_h_intern(&lf[68],14, C_text("scheme#reverse"));
lf[69]=C_h_intern(&lf[69],8, C_text("scheme#<"));
lf[70]=C_h_intern(&lf[70],30, C_text("##sys#register-compiled-module"));
lf[71]=C_h_intern(&lf[71],14, C_text("topological-gc"));
lf[72]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\031\001make-topological-frontier\376\001\000\000(\001topological-gc#make-topological-f"
"rontier\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001topological-gc-collect\376\001\000\000%\001topological-gc#topological-gc"
"-collect\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001topological-gc-stats\376\001\000\000#\001topological-gc#topological-gc-"
"stats\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001set-gc-strategy!\376\001\000\000\037\001topological-gc#set-gc-strategy!\376\003\000\000\002\376"
"\003\000\000\002\376\001\000\000\031\001set-bottleneck-threshold!\376\001\000\000(\001topological-gc#set-bottleneck-threshold"
"!\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001estimate-heap-topology\376\001\000\000%\001topological-gc#estimate-heap-topolo"
"gy\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001report-gc-regions\376\001\000\000 \001topological-gc#report-gc-regions\376\003\000\000\002\376\003"
"\000\000\002\376\001\000\000\023\001report-connectivity\376\001\000\000\042\001topological-gc#report-connectivity\376\377\016"));
lf[73]=C_h_intern(&lf[73],22, C_text("##sys#with-environment"));
C_register_lf2(lf,74,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_793,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[127] = {
{C_text("f_1005:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1005},
{C_text("f_1011:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1011},
{C_text("f_1018:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1018},
{C_text("f_1021:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1021},
{C_text("f_1028:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1028},
{C_text("f_1030:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1030},
{C_text("f_1056:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1056},
{C_text("f_1062:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1062},
{C_text("f_1124:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1124},
{C_text("f_1129:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1129},
{C_text("f_1133:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1133},
{C_text("f_1149:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1149},
{C_text("f_1152:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1152},
{C_text("f_1158:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1158},
{C_text("f_1182:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1182},
{C_text("f_1185:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1185},
{C_text("f_1188:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1188},
{C_text("f_1191:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1191},
{C_text("f_1199:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1199},
{C_text("f_1215:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1215},
{C_text("f_1224:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1224},
{C_text("f_1226:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1226},
{C_text("f_1251:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1251},
{C_text("f_1264:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1264},
{C_text("f_1268:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1268},
{C_text("f_1273:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1273},
{C_text("f_1290:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1290},
{C_text("f_1319:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1319},
{C_text("f_1334:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1334},
{C_text("f_1337:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1337},
{C_text("f_1340:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1340},
{C_text("f_1353:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1353},
{C_text("f_1359:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1359},
{C_text("f_1397:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1397},
{C_text("f_1406:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1406},
{C_text("f_1414:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1414},
{C_text("f_1416:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1416},
{C_text("f_1429:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1429},
{C_text("f_1504:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1504},
{C_text("f_1510:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1510},
{C_text("f_1514:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1514},
{C_text("f_1517:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1517},
{C_text("f_1526:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1526},
{C_text("f_1539:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1539},
{C_text("f_1549:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1549},
{C_text("f_1555:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1555},
{C_text("f_1589:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1589},
{C_text("f_1593:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1593},
{C_text("f_1595:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1595},
{C_text("f_1601:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1601},
{C_text("f_1611:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1611},
{C_text("f_1623:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1623},
{C_text("f_1633:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1633},
{C_text("f_1646:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1646},
{C_text("f_1662:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1662},
{C_text("f_1668:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1668},
{C_text("f_1671:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1671},
{C_text("f_1677:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1677},
{C_text("f_1680:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1680},
{C_text("f_1683:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1683},
{C_text("f_1686:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1686},
{C_text("f_1692:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1692},
{C_text("f_1695:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1695},
{C_text("f_1698:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1698},
{C_text("f_1727:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1727},
{C_text("f_1730:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1730},
{C_text("f_1736:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1736},
{C_text("f_1739:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1739},
{C_text("f_1754:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1754},
{C_text("f_1757:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1757},
{C_text("f_1763:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1763},
{C_text("f_1766:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1766},
{C_text("f_1775:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1775},
{C_text("f_1778:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1778},
{C_text("f_1789:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1789},
{C_text("f_1793:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1793},
{C_text("f_1802:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1802},
{C_text("f_1811:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1811},
{C_text("f_1820:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1820},
{C_text("f_1826:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1826},
{C_text("f_1829:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1829},
{C_text("f_1835:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1835},
{C_text("f_1838:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1838},
{C_text("f_1841:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1841},
{C_text("f_1847:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1847},
{C_text("f_1850:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1850},
{C_text("f_1853:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1853},
{C_text("f_1859:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1859},
{C_text("f_1862:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1862},
{C_text("f_1865:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1865},
{C_text("f_1871:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1871},
{C_text("f_1874:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1874},
{C_text("f_1877:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1877},
{C_text("f_1880:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1880},
{C_text("f_1886:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1886},
{C_text("f_1889:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1889},
{C_text("f_1898:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1898},
{C_text("f_1908:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1908},
{C_text("f_1916:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1916},
{C_text("f_1918:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1918},
{C_text("f_1952:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_1952},
{C_text("f_793:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_793},
{C_text("f_796:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_796},
{C_text("f_799:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_799},
{C_text("f_802:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_802},
{C_text("f_805:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_805},
{C_text("f_808:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_808},
{C_text("f_811:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_811},
{C_text("f_814:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_814},
{C_text("f_817:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_817},
{C_text("f_824:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_824},
{C_text("f_828:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_828},
{C_text("f_865:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_865},
{C_text("f_868:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_868},
{C_text("f_871:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_871},
{C_text("f_898:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_898},
{C_text("f_908:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_908},
{C_text("f_922:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_922},
{C_text("f_926:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_926},
{C_text("f_928:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_928},
{C_text("f_930:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_930},
{C_text("f_943:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_943},
{C_text("f_970:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_970},
{C_text("f_973:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_973},
{C_text("f_982:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)f_982},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fmodules_2ftopological_2dgc_2escm"),(void*)C_topological_5fgc_toplevel},
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
o|hiding unexported module binding: topological-gc#+INF+ 
o|hiding unexported module binding: topological-gc#default-bottleneck-threshold 
o|hiding unexported module binding: topological-gc#default-gc-strategy 
o|hiding unexported module binding: topological-gc#*gc-strategy* 
o|hiding unexported module binding: topological-gc#*bottleneck-threshold* 
o|hiding unexported module binding: topological-gc#make-reachability-graph 
o|hiding unexported module binding: topological-gc#add-reachability-edge! 
o|hiding unexported module binding: topological-gc#object->key 
o|hiding unexported module binding: topological-gc#gomory-hu-cut 
o|hiding unexported module binding: topological-gc#collect-all-edges 
o|hiding unexported module binding: topological-gc#partition-by-cut 
o|hiding unexported module binding: topological-gc#gomory-hu-gc-strategy 
o|hiding unexported module binding: topological-gc#ultrametric-distance 
o|hiding unexported module binding: topological-gc#ultrametric-gc-strategy 
o|hiding unexported module binding: topological-gc#compute-connectivity 
o|hiding unexported module binding: topological-gc#connes-kreimer-decomposition 
o|hiding unexported module binding: topological-gc#estimate-local-connectivity 
o|hiding unexported module binding: topological-gc#connes-kreimer-gc-strategy 
o|hiding unexported module binding: topological-gc#collect-all-objects 
S|applied compiler syntax:
S|  chicken.format#printf		14
S|  scheme#map		4
S|  scheme#for-each		2
o|eliminated procedure checks: 47 
o|specializations:
o|  14 (##sys#check-output-port * * *)
o|  2 (scheme#length list)
o|  1 (scheme#* fixnum fixnum)
o|  6 (scheme#eqv? * (or eof null fixnum char boolean symbol keyword))
o|  1 (scheme#zero? *)
o|  5 (scheme#/ * *)
o|  8 (scheme#cdr pair)
(o e)|safe calls: 189 
o|substituted constant variable: topological-gc#default-gc-strategy 
o|substituted constant variable: topological-gc#default-bottleneck-threshold 
o|removed side-effect free assignment to unused variable: topological-gc#make-reachability-graph 
o|removed side-effect free assignment to unused variable: topological-gc#add-reachability-edge! 
o|inlining procedure: k945 
o|inlining procedure: k945 
o|removed side-effect free assignment to unused variable: topological-gc#ultrametric-distance 
o|inlining procedure: k1275 
o|inlining procedure: k1275 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:264) topological-gc#estimate-local-connectivity" 
o|inlining procedure: k1320 
o|inlining procedure: k1320 
o|inlining procedure: k1361 
o|inlining procedure: k1361 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:273) topological-gc#object->key" 
o|substituted constant variable: a1443 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:323) topological-gc#gomory-hu-gc-strategy" 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:163) topological-gc#gomory-hu-cut" 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:101) topological-gc#partition-by-cut" 
o|inlining procedure: k984 
o|inlining procedure: k984 
o|inlining procedure: k1036 
o|inlining procedure: k1036 
o|inlining procedure: k1043 
o|substituted constant variable: topological-gc#+INF+ 
o|propagated global variable: r10441983 topological-gc#+INF+ 
o|inlining procedure: k1043 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:131) topological-gc#object->key" 
o|substituted constant variable: topological-gc#+INF+ 
o|inlining procedure: k1064 
o|inlining procedure: k1064 
o|inlining procedure: k1476 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:325) topological-gc#ultrametric-gc-strategy" 
o|inlining procedure: k1134 
o|inlining procedure: k1134 
o|substituted constant variable: topological-gc#+INF+ 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:204) topological-gc#compute-connectivity" 
o|inlining procedure: k1160 
o|inlining procedure: k1160 
o|substituted constant variable: a1216 
o|inlining procedure: k1228 
o|inlining procedure: k1228 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:225) topological-gc#object->key" 
o|inlining procedure: k1476 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:327) topological-gc#connes-kreimer-gc-strategy" 
o|substituted constant variable: a1498 
o|substituted constant variable: a1500 
o|substituted constant variable: a1502 
o|inlining procedure: k1537 
o|inlining procedure: k1537 
o|inlining procedure: k1557 
o|inlining procedure: k1557 
o|inlining procedure: k1606 
o|inlining procedure: k1606 
o|inlining procedure: k1625 
o|inlining procedure: k1625 
o|propagated global variable: out317326 ##sys#standard-output 
o|substituted constant variable: a1664 
o|substituted constant variable: a1665 
o|propagated global variable: out320329 ##sys#standard-output 
o|substituted constant variable: a1673 
o|substituted constant variable: a1674 
o|propagated global variable: out323334 ##sys#standard-output 
o|substituted constant variable: a1688 
o|substituted constant variable: a1689 
o|inlining procedure: k1654 
o|propagated global variable: out323334 ##sys#standard-output 
o|propagated global variable: out320329 ##sys#standard-output 
o|propagated global variable: out317326 ##sys#standard-output 
o|inlining procedure: k1654 
o|propagated global variable: out341344 ##sys#standard-output 
o|substituted constant variable: a1723 
o|substituted constant variable: a1724 
o|propagated global variable: out347350 ##sys#standard-output 
o|substituted constant variable: a1732 
o|substituted constant variable: a1733 
o|propagated global variable: out347350 ##sys#standard-output 
o|propagated global variable: out341344 ##sys#standard-output 
o|propagated global variable: out355358 ##sys#standard-output 
o|substituted constant variable: a1750 
o|substituted constant variable: a1751 
o|propagated global variable: out361364 ##sys#standard-output 
o|substituted constant variable: a1759 
o|substituted constant variable: a1760 
o|inlining procedure: k1743 
o|propagated global variable: out361364 ##sys#standard-output 
o|propagated global variable: out355358 ##sys#standard-output 
o|propagated global variable: out369372 ##sys#standard-output 
o|substituted constant variable: a1771 
o|substituted constant variable: a1772 
o|inlining procedure: k1743 
o|propagated global variable: out369372 ##sys#standard-output 
o|substituted constant variable: a1783 
o|substituted constant variable: a1785 
o|substituted constant variable: a1787 
o|inlining procedure: k1803 
o|propagated global variable: out410425 ##sys#standard-output 
o|substituted constant variable: a1822 
o|substituted constant variable: a1823 
o|propagated global variable: out413428 ##sys#standard-output 
o|substituted constant variable: a1831 
o|substituted constant variable: a1832 
o|propagated global variable: out416432 ##sys#standard-output 
o|substituted constant variable: a1843 
o|substituted constant variable: a1844 
o|propagated global variable: out419436 ##sys#standard-output 
o|substituted constant variable: a1855 
o|substituted constant variable: a1856 
o|propagated global variable: out422440 ##sys#standard-output 
o|substituted constant variable: a1867 
o|substituted constant variable: a1868 
o|propagated global variable: out446449 ##sys#standard-output 
o|substituted constant variable: a1882 
o|substituted constant variable: a1883 
o|inlining procedure: k1803 
o|propagated global variable: out446449 ##sys#standard-output 
o|propagated global variable: out422440 ##sys#standard-output 
o|propagated global variable: out419436 ##sys#standard-output 
o|propagated global variable: out416432 ##sys#standard-output 
o|propagated global variable: out413428 ##sys#standard-output 
o|propagated global variable: out410425 ##sys#standard-output 
o|inlining procedure: k1920 
o|inlining procedure: k1920 
o|replaced variables: 273 
o|removed binding forms: 110 
o|removed side-effect free assignment to unused variable: topological-gc#default-bottleneck-threshold 
o|removed side-effect free assignment to unused variable: topological-gc#default-gc-strategy 
o|removed side-effect free assignment to unused variable: topological-gc#object->key 
o|substituted constant variable: r13211973 
o|substituted constant variable: r10371982 
o|substituted constant variable: topological-gc#+INF+ 
o|substituted constant variable: topological-gc#+INF+ 
o|substituted constant variable: r10441985 
o|substituted constant variable: r10441985 
o|substituted constant variable: r15382001 
o|substituted constant variable: r15382001 
o|propagated global variable: out317326 ##sys#standard-output 
o|propagated global variable: out320329 ##sys#standard-output 
o|propagated global variable: out323334 ##sys#standard-output 
o|propagated global variable: out341344 ##sys#standard-output 
o|propagated global variable: out347350 ##sys#standard-output 
o|propagated global variable: out355358 ##sys#standard-output 
o|propagated global variable: out361364 ##sys#standard-output 
o|propagated global variable: out369372 ##sys#standard-output 
o|propagated global variable: out410425 ##sys#standard-output 
o|propagated global variable: out413428 ##sys#standard-output 
o|propagated global variable: out416432 ##sys#standard-output 
o|propagated global variable: out419436 ##sys#standard-output 
o|propagated global variable: out422440 ##sys#standard-output 
o|propagated global variable: out446449 ##sys#standard-output 
o|replaced variables: 35 
o|removed binding forms: 263 
o|removed side-effect free assignment to unused variable: topological-gc#+INF+ 
o|removed binding forms: 41 
o|contracted procedure: k1314 
o|contracted procedure: k997 
o|contracted procedure: k1119 
o|contracted procedure: k1173 
o|removed binding forms: 5 
o|replaced variables: 8 
o|removed binding forms: 4 
o|simplifications: ((if . 3) (let . 4) (##core#call . 137)) 
o|  call simplifications:
o|    scheme#vector-ref	6
o|    scheme#eq?	6
o|    scheme#+
o|    ##sys#call-with-values
o|    scheme#<	3
o|    scheme#>=	2
o|    scheme#cadr
o|    scheme#caddr
o|    scheme#list	10
o|    scheme#vector-set!
o|    scheme#values	4
o|    scheme#vector
o|    scheme#car	13
o|    scheme#null?	8
o|    scheme#cdr	8
o|    ##sys#setslot	4
o|    scheme#length	8
o|    scheme#apply	4
o|    scheme#>	3
o|    ##sys#check-list	6
o|    scheme#pair?	6
o|    ##sys#slot	16
o|    scheme#cons	24
o|contracted procedure: k933 
o|contracted procedure: k936 
o|contracted procedure: k948 
o|contracted procedure: k958 
o|contracted procedure: k962 
o|contracted procedure: k1278 
o|contracted procedure: k1284 
o|contracted procedure: k1294 
o|contracted procedure: k1301 
o|contracted procedure: k1308 
o|contracted procedure: k1323 
o|contracted procedure: k1326 
o|contracted procedure: k1329 
o|contracted procedure: k1355 
o|contracted procedure: k1364 
o|contracted procedure: k1386 
o|contracted procedure: k1382 
o|contracted procedure: k1367 
o|contracted procedure: k1370 
o|contracted procedure: k1378 
o|contracted procedure: k1418 
o|contracted procedure: k1421 
o|contracted procedure: k1424 
o|contracted procedure: k1430 
o|contracted procedure: k1433 
o|contracted procedure: k1436 
o|contracted procedure: k1439 
o|contracted procedure: k1455 
o|contracted procedure: k1459 
o|contracted procedure: k1463 
o|contracted procedure: k1467 
o|contracted procedure: k1451 
o|contracted procedure: k1444 
o|contracted procedure: k1470 
o|contracted procedure: k875 
o|contracted procedure: k882 
o|contracted procedure: k978 
o|contracted procedure: k987 
o|contracted procedure: k993 
o|contracted procedure: k1013 
o|contracted procedure: k1032 
o|contracted procedure: k1046 
o|contracted procedure: k1039 
o|contracted procedure: k887 
o|contracted procedure: k894 
o|contracted procedure: k904 
o|contracted procedure: k914 
o|contracted procedure: k918 
o|contracted procedure: k1067 
o|contracted procedure: k1479 
o|contracted procedure: k1137 
o|contracted procedure: k1141 
o|contracted procedure: k1260 
o|contracted procedure: k1154 
o|contracted procedure: k1163 
o|contracted procedure: k1166 
o|contracted procedure: k1169 
o|contracted procedure: k1196 
o|contracted procedure: k1205 
o|contracted procedure: k1209 
o|contracted procedure: k1219 
o|contracted procedure: k1231 
o|contracted procedure: k1234 
o|contracted procedure: k1237 
o|contracted procedure: k1245 
o|contracted procedure: k1253 
o|contracted procedure: k1488 
o|contracted procedure: k1402 
o|contracted procedure: k1518 
o|contracted procedure: k1521 
o|contracted procedure: k1531 
o|contracted procedure: k1540 
o|contracted procedure: k1551 
o|contracted procedure: k1560 
o|contracted procedure: k1582 
o|contracted procedure: k1578 
o|contracted procedure: k1563 
o|contracted procedure: k1566 
o|contracted procedure: k1574 
o|contracted procedure: k1598 
o|contracted procedure: k1603 
o|contracted procedure: k1613 
o|contracted procedure: k1616 
o|contracted procedure: k1628 
o|contracted procedure: k1638 
o|contracted procedure: k1642 
o|contracted procedure: k1648 
o|contracted procedure: k1651 
o|contracted procedure: k1657 
o|contracted procedure: k1703 
o|contracted procedure: k1713 
o|contracted procedure: k1709 
o|contracted procedure: k1719 
o|contracted procedure: k1746 
o|contracted procedure: k1794 
o|contracted procedure: k1797 
o|contracted procedure: k1806 
o|contracted procedure: k1812 
o|contracted procedure: k1815 
o|contracted procedure: k1894 
o|contracted procedure: k1910 
o|contracted procedure: k1923 
o|contracted procedure: k1945 
o|contracted procedure: k1941 
o|contracted procedure: k1926 
o|contracted procedure: k1929 
o|contracted procedure: k1937 
o|contracted procedure: k1958 
o|contracted procedure: k1962 
o|contracted procedure: k1966 
o|simplifications: ((if . 1) (let . 34)) 
o|removed binding forms: 110 
o|contracted procedure: k872 
o|substituted constant variable: r1959 
o|substituted constant variable: r1963 
o|substituted constant variable: r1967 
o|removed binding forms: 1 
o|removed binding forms: 3 
o|direct leaf routine/allocation: g5764 3 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/modules/topological-gc.scm:110) k951" 
o|removed binding forms: 1 
o|customizable procedures: (map-loop382399 g288295 for-each-loop287299 map-loop256273 topological-gc#connes-kreimer-decomposition g156165 map-loop150168 loop139 topological-gc#collect-all-edges loop80 topological-gc#collect-all-objects map-loop197214 loop181 for-each-loop5667) 
o|calls to known targets: 33 
o|identified direct recursive calls: f_943 1 
o|identified direct recursive calls: f_1359 1 
o|identified direct recursive calls: f_1555 1 
o|identified direct recursive calls: f_1918 1 
o|fast box initializations: 9 
o|fast global references: 13 
o|fast global assignments: 7 
o|dropping unused closure argument: f_1264 
o|dropping unused closure argument: f_1589 
o|dropping unused closure argument: f_922 
*/
/* end of file */
