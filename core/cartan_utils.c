/* Generated from /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.c -optimize-level 3 -debug-level 0 -include-path _build -include-path core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/tools/golay24-tool -include-path . -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/core -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/modules/sssp_geometry
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

static C_TLS C_word lf[101];
static double C_possibly_force_alignment;


C_noret_decl(f2122)
static void C_ccall f2122(C_word c,C_word *av) C_noret;
C_noret_decl(f2130)
static void C_ccall f2130(C_word c,C_word *av) C_noret;
C_noret_decl(f2135)
static void C_ccall f2135(C_word c,C_word *av) C_noret;
C_noret_decl(f2141)
static void C_ccall f2141(C_word c,C_word *av) C_noret;
C_noret_decl(f_1010)
static void C_ccall f_1010(C_word c,C_word *av) C_noret;
C_noret_decl(f_1021)
static void C_ccall f_1021(C_word c,C_word *av) C_noret;
C_noret_decl(f_1029)
static void C_ccall f_1029(C_word c,C_word *av) C_noret;
C_noret_decl(f_1037)
static void C_ccall f_1037(C_word c,C_word *av) C_noret;
C_noret_decl(f_1039)
static void C_fcall f_1039(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1056)
static void C_ccall f_1056(C_word c,C_word *av) C_noret;
C_noret_decl(f_1059)
static void C_ccall f_1059(C_word c,C_word *av) C_noret;
C_noret_decl(f_1064)
static void C_ccall f_1064(C_word c,C_word *av) C_noret;
C_noret_decl(f_1070)
static void C_fcall f_1070(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1088)
static void C_ccall f_1088(C_word c,C_word *av) C_noret;
C_noret_decl(f_1104)
static void C_ccall f_1104(C_word c,C_word *av) C_noret;
C_noret_decl(f_1113)
static void C_fcall f_1113(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1145)
static void C_ccall f_1145(C_word c,C_word *av) C_noret;
C_noret_decl(f_1155)
static void C_fcall f_1155(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1178)
static void C_ccall f_1178(C_word c,C_word *av) C_noret;
C_noret_decl(f_1181)
static void C_ccall f_1181(C_word c,C_word *av) C_noret;
C_noret_decl(f_1184)
static void C_ccall f_1184(C_word c,C_word *av) C_noret;
C_noret_decl(f_1187)
static void C_ccall f_1187(C_word c,C_word *av) C_noret;
C_noret_decl(f_1196)
static void C_ccall f_1196(C_word c,C_word *av) C_noret;
C_noret_decl(f_1203)
static void C_ccall f_1203(C_word c,C_word *av) C_noret;
C_noret_decl(f_1210)
static void C_ccall f_1210(C_word c,C_word *av) C_noret;
C_noret_decl(f_1217)
static void C_ccall f_1217(C_word c,C_word *av) C_noret;
C_noret_decl(f_1243)
static void C_ccall f_1243(C_word c,C_word *av) C_noret;
C_noret_decl(f_1251)
static void C_ccall f_1251(C_word c,C_word *av) C_noret;
C_noret_decl(f_1273)
static void C_ccall f_1273(C_word c,C_word *av) C_noret;
C_noret_decl(f_1277)
static void C_ccall f_1277(C_word c,C_word *av) C_noret;
C_noret_decl(f_1280)
static void C_ccall f_1280(C_word c,C_word *av) C_noret;
C_noret_decl(f_1284)
static void C_fcall f_1284(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1292)
static void C_ccall f_1292(C_word c,C_word *av) C_noret;
C_noret_decl(f_1300)
static void C_ccall f_1300(C_word c,C_word *av) C_noret;
C_noret_decl(f_1305)
static void C_fcall f_1305(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1330)
static void C_ccall f_1330(C_word c,C_word *av) C_noret;
C_noret_decl(f_1344)
static void C_ccall f_1344(C_word c,C_word *av) C_noret;
C_noret_decl(f_1353)
static void C_ccall f_1353(C_word c,C_word *av) C_noret;
C_noret_decl(f_1357)
static void C_ccall f_1357(C_word c,C_word *av) C_noret;
C_noret_decl(f_1360)
static void C_ccall f_1360(C_word c,C_word *av) C_noret;
C_noret_decl(f_1366)
static void C_ccall f_1366(C_word c,C_word *av) C_noret;
C_noret_decl(f_1369)
static void C_ccall f_1369(C_word c,C_word *av) C_noret;
C_noret_decl(f_1372)
static void C_ccall f_1372(C_word c,C_word *av) C_noret;
C_noret_decl(f_1375)
static void C_ccall f_1375(C_word c,C_word *av) C_noret;
C_noret_decl(f_1378)
static void C_ccall f_1378(C_word c,C_word *av) C_noret;
C_noret_decl(f_1381)
static void C_ccall f_1381(C_word c,C_word *av) C_noret;
C_noret_decl(f_1382)
static void C_fcall f_1382(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1386)
static void C_ccall f_1386(C_word c,C_word *av) C_noret;
C_noret_decl(f_1389)
static void C_ccall f_1389(C_word c,C_word *av) C_noret;
C_noret_decl(f_1395)
static void C_ccall f_1395(C_word c,C_word *av) C_noret;
C_noret_decl(f_1398)
static void C_ccall f_1398(C_word c,C_word *av) C_noret;
C_noret_decl(f_1401)
static void C_ccall f_1401(C_word c,C_word *av) C_noret;
C_noret_decl(f_1404)
static void C_ccall f_1404(C_word c,C_word *av) C_noret;
C_noret_decl(f_1407)
static void C_ccall f_1407(C_word c,C_word *av) C_noret;
C_noret_decl(f_1410)
static void C_ccall f_1410(C_word c,C_word *av) C_noret;
C_noret_decl(f_1413)
static void C_ccall f_1413(C_word c,C_word *av) C_noret;
C_noret_decl(f_1416)
static void C_ccall f_1416(C_word c,C_word *av) C_noret;
C_noret_decl(f_1419)
static void C_ccall f_1419(C_word c,C_word *av) C_noret;
C_noret_decl(f_1422)
static void C_ccall f_1422(C_word c,C_word *av) C_noret;
C_noret_decl(f_1425)
static void C_ccall f_1425(C_word c,C_word *av) C_noret;
C_noret_decl(f_1432)
static void C_ccall f_1432(C_word c,C_word *av) C_noret;
C_noret_decl(f_1436)
static void C_ccall f_1436(C_word c,C_word *av) C_noret;
C_noret_decl(f_1442)
static void C_ccall f_1442(C_word c,C_word *av) C_noret;
C_noret_decl(f_1448)
static void C_ccall f_1448(C_word c,C_word *av) C_noret;
C_noret_decl(f_1451)
static void C_ccall f_1451(C_word c,C_word *av) C_noret;
C_noret_decl(f_1454)
static void C_ccall f_1454(C_word c,C_word *av) C_noret;
C_noret_decl(f_1460)
static void C_ccall f_1460(C_word c,C_word *av) C_noret;
C_noret_decl(f_1463)
static void C_ccall f_1463(C_word c,C_word *av) C_noret;
C_noret_decl(f_1466)
static void C_ccall f_1466(C_word c,C_word *av) C_noret;
C_noret_decl(f_1472)
static void C_ccall f_1472(C_word c,C_word *av) C_noret;
C_noret_decl(f_1475)
static void C_ccall f_1475(C_word c,C_word *av) C_noret;
C_noret_decl(f_1478)
static void C_ccall f_1478(C_word c,C_word *av) C_noret;
C_noret_decl(f_1481)
static void C_ccall f_1481(C_word c,C_word *av) C_noret;
C_noret_decl(f_1484)
static void C_ccall f_1484(C_word c,C_word *av) C_noret;
C_noret_decl(f_1487)
static void C_ccall f_1487(C_word c,C_word *av) C_noret;
C_noret_decl(f_1493)
static void C_ccall f_1493(C_word c,C_word *av) C_noret;
C_noret_decl(f_1500)
static void C_ccall f_1500(C_word c,C_word *av) C_noret;
C_noret_decl(f_1504)
static void C_ccall f_1504(C_word c,C_word *av) C_noret;
C_noret_decl(f_1508)
static void C_ccall f_1508(C_word c,C_word *av) C_noret;
C_noret_decl(f_1516)
static void C_fcall f_1516(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1526)
static void C_ccall f_1526(C_word c,C_word *av) C_noret;
C_noret_decl(f_1558)
static void C_ccall f_1558(C_word c,C_word *av) C_noret;
C_noret_decl(f_1567)
static void C_ccall f_1567(C_word c,C_word *av) C_noret;
C_noret_decl(f_1573)
static void C_fcall f_1573(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1611)
static void C_ccall f_1611(C_word c,C_word *av) C_noret;
C_noret_decl(f_1629)
static void C_fcall f_1629(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(f_1642)
static void C_ccall f_1642(C_word c,C_word *av) C_noret;
C_noret_decl(f_1665)
static void C_ccall f_1665(C_word c,C_word *av) C_noret;
C_noret_decl(f_1672)
static void C_ccall f_1672(C_word c,C_word *av) C_noret;
C_noret_decl(f_1675)
static void C_ccall f_1675(C_word c,C_word *av) C_noret;
C_noret_decl(f_1678)
static void C_ccall f_1678(C_word c,C_word *av) C_noret;
C_noret_decl(f_1684)
static void C_ccall f_1684(C_word c,C_word *av) C_noret;
C_noret_decl(f_1687)
static void C_ccall f_1687(C_word c,C_word *av) C_noret;
C_noret_decl(f_1690)
static void C_ccall f_1690(C_word c,C_word *av) C_noret;
C_noret_decl(f_1696)
static void C_ccall f_1696(C_word c,C_word *av) C_noret;
C_noret_decl(f_1699)
static void C_ccall f_1699(C_word c,C_word *av) C_noret;
C_noret_decl(f_1702)
static void C_ccall f_1702(C_word c,C_word *av) C_noret;
C_noret_decl(f_1708)
static void C_ccall f_1708(C_word c,C_word *av) C_noret;
C_noret_decl(f_1711)
static void C_ccall f_1711(C_word c,C_word *av) C_noret;
C_noret_decl(f_1714)
static void C_ccall f_1714(C_word c,C_word *av) C_noret;
C_noret_decl(f_1717)
static void C_ccall f_1717(C_word c,C_word *av) C_noret;
C_noret_decl(f_1723)
static void C_ccall f_1723(C_word c,C_word *av) C_noret;
C_noret_decl(f_1726)
static void C_ccall f_1726(C_word c,C_word *av) C_noret;
C_noret_decl(f_1729)
static void C_ccall f_1729(C_word c,C_word *av) C_noret;
C_noret_decl(f_1732)
static void C_ccall f_1732(C_word c,C_word *av) C_noret;
C_noret_decl(f_1738)
static void C_ccall f_1738(C_word c,C_word *av) C_noret;
C_noret_decl(f_1741)
static void C_ccall f_1741(C_word c,C_word *av) C_noret;
C_noret_decl(f_1744)
static void C_ccall f_1744(C_word c,C_word *av) C_noret;
C_noret_decl(f_1747)
static void C_ccall f_1747(C_word c,C_word *av) C_noret;
C_noret_decl(f_1753)
static void C_ccall f_1753(C_word c,C_word *av) C_noret;
C_noret_decl(f_1756)
static void C_ccall f_1756(C_word c,C_word *av) C_noret;
C_noret_decl(f_1759)
static void C_ccall f_1759(C_word c,C_word *av) C_noret;
C_noret_decl(f_1762)
static void C_ccall f_1762(C_word c,C_word *av) C_noret;
C_noret_decl(f_1768)
static void C_ccall f_1768(C_word c,C_word *av) C_noret;
C_noret_decl(f_1771)
static void C_ccall f_1771(C_word c,C_word *av) C_noret;
C_noret_decl(f_1774)
static void C_ccall f_1774(C_word c,C_word *av) C_noret;
C_noret_decl(f_1777)
static void C_ccall f_1777(C_word c,C_word *av) C_noret;
C_noret_decl(f_1780)
static void C_ccall f_1780(C_word c,C_word *av) C_noret;
C_noret_decl(f_1786)
static void C_ccall f_1786(C_word c,C_word *av) C_noret;
C_noret_decl(f_1789)
static void C_ccall f_1789(C_word c,C_word *av) C_noret;
C_noret_decl(f_1792)
static void C_ccall f_1792(C_word c,C_word *av) C_noret;
C_noret_decl(f_1798)
static void C_ccall f_1798(C_word c,C_word *av) C_noret;
C_noret_decl(f_1801)
static void C_ccall f_1801(C_word c,C_word *av) C_noret;
C_noret_decl(f_1804)
static void C_ccall f_1804(C_word c,C_word *av) C_noret;
C_noret_decl(f_1807)
static void C_ccall f_1807(C_word c,C_word *av) C_noret;
C_noret_decl(f_1813)
static void C_ccall f_1813(C_word c,C_word *av) C_noret;
C_noret_decl(f_1836)
static void C_ccall f_1836(C_word c,C_word *av) C_noret;
C_noret_decl(f_1840)
static void C_ccall f_1840(C_word c,C_word *av) C_noret;
C_noret_decl(f_1844)
static void C_ccall f_1844(C_word c,C_word *av) C_noret;
C_noret_decl(f_1870)
static void C_ccall f_1870(C_word c,C_word *av) C_noret;
C_noret_decl(f_1889)
static void C_ccall f_1889(C_word c,C_word *av) C_noret;
C_noret_decl(f_1895)
static void C_ccall f_1895(C_word c,C_word *av) C_noret;
C_noret_decl(f_1897)
static void C_fcall f_1897(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1922)
static void C_ccall f_1922(C_word c,C_word *av) C_noret;
C_noret_decl(f_1941)
static void C_ccall f_1941(C_word c,C_word *av) C_noret;
C_noret_decl(f_1943)
static void C_fcall f_1943(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1968)
static void C_ccall f_1968(C_word c,C_word *av) C_noret;
C_noret_decl(f_1981)
static void C_ccall f_1981(C_word c,C_word *av) C_noret;
C_noret_decl(f_1983)
static void C_ccall f_1983(C_word c,C_word *av) C_noret;
C_noret_decl(f_2001)
static void C_ccall f_2001(C_word c,C_word *av) C_noret;
C_noret_decl(f_747)
static void C_ccall f_747(C_word c,C_word *av) C_noret;
C_noret_decl(f_750)
static void C_ccall f_750(C_word c,C_word *av) C_noret;
C_noret_decl(f_753)
static void C_ccall f_753(C_word c,C_word *av) C_noret;
C_noret_decl(f_756)
static void C_ccall f_756(C_word c,C_word *av) C_noret;
C_noret_decl(f_762)
static void C_ccall f_762(C_word c,C_word *av) C_noret;
C_noret_decl(f_773)
static void C_ccall f_773(C_word c,C_word *av) C_noret;
C_noret_decl(f_790)
static void C_ccall f_790(C_word c,C_word *av) C_noret;
C_noret_decl(f_802)
static void C_ccall f_802(C_word c,C_word *av) C_noret;
C_noret_decl(f_831)
static void C_ccall f_831(C_word c,C_word *av) C_noret;
C_noret_decl(f_839)
static void C_ccall f_839(C_word c,C_word *av) C_noret;
C_noret_decl(f_845)
static void C_ccall f_845(C_word c,C_word *av) C_noret;
C_noret_decl(f_856)
static void C_ccall f_856(C_word c,C_word *av) C_noret;
C_noret_decl(f_862)
static void C_ccall f_862(C_word c,C_word *av) C_noret;
C_noret_decl(f_866)
static void C_ccall f_866(C_word c,C_word *av) C_noret;
C_noret_decl(f_871)
static void C_ccall f_871(C_word c,C_word *av) C_noret;
C_noret_decl(f_884)
static void C_ccall f_884(C_word c,C_word *av) C_noret;
C_noret_decl(f_887)
static void C_ccall f_887(C_word c,C_word *av) C_noret;
C_noret_decl(f_911)
static void C_ccall f_911(C_word c,C_word *av) C_noret;
C_noret_decl(f_913)
static void C_fcall f_913(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_963)
static void C_ccall f_963(C_word c,C_word *av) C_noret;
C_noret_decl(f_970)
static void C_ccall f_970(C_word c,C_word *av) C_noret;
C_noret_decl(f_977)
static void C_ccall f_977(C_word c,C_word *av) C_noret;
C_noret_decl(f_985)
static void C_ccall f_985(C_word c,C_word *av) C_noret;
C_noret_decl(f_987)
static void C_ccall f_987(C_word c,C_word *av) C_noret;
C_noret_decl(f_993)
static void C_fcall f_993(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_1039)
static void C_ccall trf_1039(C_word c,C_word *av) C_noret;
static void C_ccall trf_1039(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1039(t0,t1,t2);}

C_noret_decl(trf_1070)
static void C_ccall trf_1070(C_word c,C_word *av) C_noret;
static void C_ccall trf_1070(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1070(t0,t1,t2,t3);}

C_noret_decl(trf_1113)
static void C_ccall trf_1113(C_word c,C_word *av) C_noret;
static void C_ccall trf_1113(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1113(t0,t1,t2,t3);}

C_noret_decl(trf_1155)
static void C_ccall trf_1155(C_word c,C_word *av) C_noret;
static void C_ccall trf_1155(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1155(t0,t1,t2,t3);}

C_noret_decl(trf_1284)
static void C_ccall trf_1284(C_word c,C_word *av) C_noret;
static void C_ccall trf_1284(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1284(t0,t1,t2);}

C_noret_decl(trf_1305)
static void C_ccall trf_1305(C_word c,C_word *av) C_noret;
static void C_ccall trf_1305(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1305(t0,t1,t2);}

C_noret_decl(trf_1382)
static void C_ccall trf_1382(C_word c,C_word *av) C_noret;
static void C_ccall trf_1382(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1382(t0,t1,t2,t3);}

C_noret_decl(trf_1516)
static void C_ccall trf_1516(C_word c,C_word *av) C_noret;
static void C_ccall trf_1516(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1516(t0,t1,t2,t3);}

C_noret_decl(trf_1573)
static void C_ccall trf_1573(C_word c,C_word *av) C_noret;
static void C_ccall trf_1573(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1573(t0,t1,t2,t3);}

C_noret_decl(trf_1629)
static void C_ccall trf_1629(C_word c,C_word *av) C_noret;
static void C_ccall trf_1629(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_1629(t0,t1,t2,t3,t4);}

C_noret_decl(trf_1897)
static void C_ccall trf_1897(C_word c,C_word *av) C_noret;
static void C_ccall trf_1897(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1897(t0,t1,t2);}

C_noret_decl(trf_1943)
static void C_ccall trf_1943(C_word c,C_word *av) C_noret;
static void C_ccall trf_1943(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1943(t0,t1,t2);}

C_noret_decl(trf_913)
static void C_ccall trf_913(C_word c,C_word *av) C_noret;
static void C_ccall trf_913(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_913(t0,t1,t2,t3);}

C_noret_decl(trf_993)
static void C_ccall trf_993(C_word c,C_word *av) C_noret;
static void C_ccall trf_993(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_993(t0,t1,t2,t3,t4);}

/* f2122 in loop in machine_constants#poly-mul in k754 in k751 in k748 in k745 */
static void C_ccall f2122(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f2122,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: scheme#append */
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* f2130 */
static void C_ccall f2130(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f2130,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: scheme#append */
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* f2135 */
static void C_ccall f2135(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(19,c,3)))){
C_save_and_reclaim((void *)f2135,c,av);}
a=C_alloc(19);
t2=C_u_i_length(t1);
t3=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
if(C_truep(C_i_integer_lessp(((C_word*)t0)[2],t3))){
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_u_i_integer_minus(&a,2,((C_word*)t0)[2],t3);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1056,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f2130,a[2]=t5,a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: srfi-1#make-list */
t7=C_fast_retrieve(lf[25]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=t4;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}}

/* f2141 in loop in k1035 in machine_constants#poly-mod in k754 in k751 in k748 in k745 */
static void C_ccall f2141(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,2)))){
C_save_and_reclaim((void *)f2141,c,av);}
a=C_alloc(12);
t2=C_u_i_length(t1);
t3=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f2135,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:107: trim-leading-zeros */
t5=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
f_831(3,av2);}}

/* k1008 in loop in machine_constants#poly-mul in k754 in k751 in k748 in k745 */
static void C_ccall f_1010(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(35,c,3)))){
C_save_and_reclaim((void *)f_1010,c,av);}
a=C_alloc(35);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1021,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:139: poly-xor */
t4=C_fast_retrieve(lf[22]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[6];
av2[3]=t1;
f_871(4,av2);}}

/* k1019 in k1008 in loop in machine_constants#poly-mul in k754 in k751 in k748 in k745 */
static void C_ccall f_1021(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1021,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:139: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_993(t2,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1);}

/* machine_constants#poly-mod in k754 in k751 in k748 in k745 */
static void C_ccall f_1029(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1029,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1037,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:146: trim-leading-zeros */
t5=C_fast_retrieve(lf[17]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
f_831(3,av2);}}

/* k1035 in machine_constants#poly-mod in k754 in k751 in k748 in k745 */
static void C_ccall f_1037(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1037,c,av);}
a=C_alloc(6);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1039,a[2]=t3,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp));
t5=((C_word*)t3)[1];
f_1039(t5,((C_word*)t0)[3],t1);}

/* loop in k1035 in machine_constants#poly-mod in k754 in k751 in k748 in k745 */
static void C_fcall f_1039(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_1039,3,t0,t1,t2);}
a=C_alloc(6);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f2141,a[2]=t1,a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:107: trim-leading-zeros */
t4=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_831(3,av2);}}

/* k1054 */
static void C_ccall f_1056(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1056,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1059,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:151: poly-xor */
t3=C_fast_retrieve(lf[22]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=t1;
f_871(4,av2);}}

/* k1057 in k1054 */
static void C_ccall f_1059(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1059,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:152: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_1039(t2,((C_word*)t0)[3],t1);}

/* machine_constants#int->bits in k754 in k751 in k748 in k745 */
static void C_ccall f_1064(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1064,c,av);}
a=C_alloc(7);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1070,a[2]=t3,a[3]=t5,a[4]=t2,tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_1070(t7,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in machine_constants#int->bits in k754 in k751 in k748 in k745 */
static void C_fcall f_1070(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(76,0,3)))){
C_save_and_reclaim_args((void *)trf_1070,4,t0,t1,t2,t3);}
a=C_alloc(76);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_plus(&a,2,t2,C_fix(1));
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1088,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
t6=C_s_a_i_negate(&a,1,t2);
t7=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[4],t6);
t8=C_s_a_i_bitwise_and(&a,2,t7,C_fix(1));
t9=C_a_i_list1(&a,1,t8);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:166: scheme#append */
t10=*((C_word*)lf[24]+1);{
C_word av2[4];
av2[0]=t10;
av2[1]=t5;
av2[2]=t3;
av2[3]=t9;
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}}

/* k1086 in loop in machine_constants#int->bits in k754 in k751 in k748 in k745 */
static void C_ccall f_1088(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1088,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:166: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_1070(t2,((C_word*)t0)[3],((C_word*)t0)[4],t1);}

/* machine_constants#bits->int in k754 in k751 in k748 in k745 */
static void C_ccall f_1104(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1104,c,av);}
a=C_alloc(7);
t3=C_i_length(t2);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1113,a[2]=t3,a[3]=t2,a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_1113(t7,t1,C_fix(0),C_fix(0));}

/* loop in machine_constants#bits->int in k754 in k751 in k748 in k745 */
static void C_fcall f_1113(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word t11;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,0,3)))){
C_save_and_reclaim_args((void *)trf_1113,4,t0,t1,t2,t3);}
a=C_alloc(15);
if(C_truep(C_i_greater_or_equalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_list_ref(((C_word*)t0)[3],t2);
t5=C_a_i_fixnum_plus(&a,2,t2,C_fix(1));
if(C_truep(C_i_nequalp(t4,C_fix(1)))){
t6=C_s_a_i_arithmetic_shift(&a,2,C_fix(1),t2);
t7=C_s_a_i_bitwise_ior(&a,2,t3,t6);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:177: loop */
t9=t1;
t10=t5;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:177: loop */
t9=t1;
t10=t5;
t11=t3;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}}

/* machine_constants#hamming-weight in k754 in k751 in k748 in k745 */
static void C_ccall f_1145(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,c,4)))){
C_save_and_reclaim((void *)f_1145,c,av);}
a=C_alloc(10);
t3=C_s_a_i_bitwise_and(&a,2,t2,lf[34]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1155,a[2]=t5,tmp=(C_word)a,a+=3,tmp));
t7=((C_word*)t5)[1];
f_1155(t7,t1,t3,C_fix(0));}

/* loop in machine_constants#hamming-weight in k754 in k751 in k748 in k745 */
static void C_fcall f_1155(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_1155,4,t0,t1,t2,t3);}
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
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:192: loop */
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1178(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1178,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1181,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1181(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1181,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1184,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:17: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[92]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[92]+1);
av2[1]=t2;
av2[2]=lf[94];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1184(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1184,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1187,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:17: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[92]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[92]+1);
av2[1]=t2;
av2[2]=lf[93];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1187(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,5)))){
C_save_and_reclaim((void *)f_1187,c,av);}
a=C_alloc(17);
t2=C_mutate(&lf[36] /* (set! cartan_utils#format-float ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1210,tmp=(C_word)a,a+=2,tmp));
t3=C_mutate((C_word*)lf[40]+1 /* (set! cartan_utils#validate-decomposition ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1251,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[41]+1 /* (set! cartan_utils#cartan-log-decompose ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1273,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[48]+1 /* (set! cartan_utils#pretty-print-decomposition ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1353,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[71]+1 /* (set! cartan_utils#cartan-inverse-lookup ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1567,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[72]+1 /* (set! cartan_utils#cartan-step-ratio ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1611,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[73]+1 /* (set! cartan_utils#test-cartan-decomposition ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1665,tmp=(C_word)a,a+=2,tmp));
t9=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1981,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* chicken.base#implicit-exit-handler */
t10=C_fast_retrieve(lf[91]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}

/* k1194 in k1430 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1196(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1196,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1203,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:32: scheme#make-string */
t3=*((C_word*)lf[59]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=t1;
av2[3]=C_make_character(32);
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}

/* k1201 in k1194 in k1430 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1203(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1203,c,av);}
/* ##sys#string-append */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[58]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[58]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* cartan_utils#format-float in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1210(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,2)))){
C_save_and_reclaim((void *)f_1210,c,av);}
a=C_alloc(7);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(6):C_get_rest_arg(c,3,av,3,t0));
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1217,a[2]=t4,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1243,a[2]=t5,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:37: scheme#exact->inexact */
t7=*((C_word*)lf[39]+1);{
C_word *av2=av;
av2[0]=t7;
av2[1]=t6;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t7+1)))(3,av2);}}

/* k1215 in cartan_utils#format-float in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1217(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(58,c,4)))){
C_save_and_reclaim((void *)f_1217,c,av);}
a=C_alloc(58);
t2=C_block_size(t1);
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(2));
if(C_truep(C_i_greaterp(t2,t3))){
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(2));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:39: scheme#substring */
t5=*((C_word*)lf[37]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=((C_word*)t0)[3];
av2[2]=t1;
av2[3]=C_fix(0);
av2[4]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}
else{
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k1241 in cartan_utils#format-float in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1243(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1243,c,av);}
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[38]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[38]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_fix(10);
tp(4,av2);}}

/* cartan_utils#validate-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1251(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1251,c,av);}
if(C_truep(C_i_numberp(t2))){
t4=C_i_greaterp(t2,C_fix(1));
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=(C_truep(t4)?(C_truep(C_i_integerp(t3))?C_i_greaterp(t3,C_fix(0)):C_SCHEME_FALSE):C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1273(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_1273,c,av);}
a=C_alloc(10);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1277,a[2]=t3,a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1344,a[2]=t4,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:69: validate-decomposition */
t6=C_fast_retrieve(lf[40]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
f_1251(4,av2);}}

/* k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1277(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1277,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1280,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:73: machine_constants#safe-log */
t3=C_fast_retrieve(lf[12]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
f_802(3,av2);}}

/* k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1280(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(44,c,3)))){
C_save_and_reclaim((void *)f_1280,c,av);}
a=C_alloc(44);
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1284,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t7=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1300,a[2]=t4,a[3]=t6,a[4]=t5,a[5]=((C_word*)t0)[3],tmp=(C_word)a,a+=6,tmp);
t8=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:78: srfi-1#iota */
t9=C_fast_retrieve(lf[44]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t9;
av2[1]=t7;
av2[2]=t8;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t9+1)))(4,av2);}}

/* g215 in k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1284(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(36,0,3)))){
C_save_and_reclaim_args((void *)trf_1284,3,t0,t1,t2);}
a=C_alloc(36);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1292,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t4=C_s_a_i_times(&a,2,t2,((C_word*)t0)[2]);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[43]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[43]+1);
av2[1]=t3;
av2[2]=t4;
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1290 in g215 in k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1292(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1292,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:77: scheme#exp */
t2=*((C_word*)lf[42]+1);{
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

/* k1298 in k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1300(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_1300,c,av);}
a=C_alloc(8);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1305,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp));
t5=((C_word*)t3)[1];
f_1305(t5,((C_word*)t0)[5],t1);}

/* map-loop209 in k1298 in k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1305(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_1305,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1330,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:75: g215 */
t4=((C_word*)t0)[4];
f_1284(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[5],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1328 in map-loop209 in k1298 in k1278 in k1275 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1330(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1330,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_1305(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k1342 in cartan_utils#cartan-log-decompose in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1344(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_1344,c,av);}
a=C_alloc(12);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
f_1277(2,av2);}}
else{
t2=C_a_i_list4(&a,4,lf[45],((C_word*)t0)[3],lf[46],((C_word*)t0)[4]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:70: chicken.base#error */
t3=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[47];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}}

/* cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1353(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_1353,c,av);}
a=C_alloc(10);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1357,a[2]=t3,a[3]=t2,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1558,a[2]=t4,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:86: validate-decomposition */
t6=C_fast_retrieve(lf[40]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
f_1251(4,av2);}}

/* k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1357(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1357,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1360,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:90: cartan-log-decompose */
t3=C_fast_retrieve(lf[41]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[2];
f_1273(4,av2);}}

/* k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1360(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1360,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1366,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],a[6]=t2,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[69];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1366(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1366,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1369,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1369(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1369,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1372,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[68];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1372(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1372,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1375,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[2];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1375(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1375,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1378,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[67];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1378(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1378,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1381,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:91: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[6];
tp(4,av2);}}

/* k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1381(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(38,c,4)))){
C_save_and_reclaim((void *)f_1381,c,av);}
a=C_alloc(38);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1382,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1436,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:104: srfi-1#iota */
t5=C_fast_retrieve(lf[44]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1382(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,3)))){
C_save_and_reclaim_args((void *)trf_1382,4,t0,t1,t2,t3);}
a=C_alloc(10);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1386,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t2,a[5]=((C_word*)t0)[3],a[6]=t3,tmp=(C_word)a,a+=7,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1432,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
/* ##sys#number->string */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[38]);
C_word av2[4];
av2[0]=*((C_word*)lf[38]+1);
av2[1]=t5;
av2[2]=t2;
av2[3]=C_fix(10);
tp(4,av2);}}

/* k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1386(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1386,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1389,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:96: format-float */
t3=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=C_fix(6);
f_1210(4,av2);}}

/* k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1389(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1389,c,av);}
a=C_alloc(9);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1395,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=t1,a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[57];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1395(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1395,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1398,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[8];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 in ... */
static void C_ccall f_1398(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1398,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1401,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[56];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in ... */
static void C_ccall f_1401(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1401,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1404,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in ... */
static void C_ccall f_1404(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1404,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1407,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[55];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in ... */
static void C_ccall f_1407(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1407,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1410,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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

/* k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in ... */
static void C_ccall f_1410(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1410,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1413,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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

/* k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in ... */
static void C_ccall f_1413(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1413,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1416,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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

/* k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in ... */
static void C_ccall f_1416(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1416,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1419,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(47);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in ... */
static void C_ccall f_1419(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1419,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1422,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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

/* k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in ... */
static void C_ccall f_1422(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1422,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1425,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1387 in k1384 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in ... */
static void C_ccall f_1425(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1425,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:98: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1430 in g245 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1432(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,3)))){
C_save_and_reclaim((void *)f_1432,c,av);}
a=C_alloc(33);
t2=C_i_string_length(t1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1196,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t4=C_s_a_i_minus(&a,2,C_fix(2),t2);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:31: scheme#max */
t5=*((C_word*)lf[10]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=C_fix(0);
av2[3]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1436(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,c,4)))){
C_save_and_reclaim((void *)f_1436,c,av);}
a=C_alloc(10);
t2=C_i_check_list_2(((C_word*)t0)[2],lf[60]);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1442,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1516,a[2]=t5,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_1516(t7,t3,t1,((C_word*)t0)[2]);}

/* k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1442(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1442,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1448,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:108: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t5;
av2[2]=C_make_character(10);
av2[3]=*((C_word*)lf[49]+1);
tp(4,av2);}}

/* k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1448(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1448,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1451,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:108: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1451(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1451,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1454,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:108: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 in ... */
static void C_ccall f_1454(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1454,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1460,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:109: ##sys#print */
t6=*((C_word*)lf[52]+1);{
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
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in ... */
static void C_ccall f_1460(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1460,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1463,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:109: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in ... */
static void C_ccall f_1463(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1463,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1466,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:109: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in ... */
static void C_ccall f_1466(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1466,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1472,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#print */
t6=*((C_word*)lf[52]+1);{
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
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in ... */
static void C_ccall f_1472(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_1472,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1475,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1508,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:111: format-float */
t4=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=C_i_car(((C_word*)t0)[4]);
f_1210(3,av2);}}

/* k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in ... */
static void C_ccall f_1475(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1475,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1478,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[63];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in ... */
static void C_ccall f_1478(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,2)))){
C_save_and_reclaim((void *)f_1478,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1481,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1500,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1504,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:112: srfi-1#last */
t5=C_fast_retrieve(lf[62]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k1479 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in ... */
static void C_ccall f_1481(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1481,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1484,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(93);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1482 in k1479 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in ... */
static void C_ccall f_1484(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1484,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1487,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1485 in k1482 in k1479 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in ... */
static void C_ccall f_1487(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1487,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1493,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:113: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[61];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1491 in k1485 in k1482 in k1479 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in ... */
static void C_ccall f_1493(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1493,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:113: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1498 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in ... */
static void C_ccall f_1500(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1500,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#print */
t2=*((C_word*)lf[52]+1);{
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

/* k1502 in k1476 in k1473 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in ... */
static void C_ccall f_1504(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1504,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:112: format-float */
t2=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
f_1210(3,av2);}}

/* k1506 in k1470 in k1464 in k1461 in k1458 in k1452 in k1449 in k1446 in k1440 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in ... */
static void C_ccall f_1508(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1508,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:110: ##sys#print */
t2=*((C_word*)lf[52]+1);{
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

/* for-each-loop244 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1516(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_1516,4,t0,t1,t2,t3);}
a=C_alloc(6);
t4=C_i_pairp(t2);
t5=(C_truep(t4)?C_i_pairp(t3):C_SCHEME_FALSE);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1526,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,a[5]=t3,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:93: g245 */
t7=((C_word*)t0)[3];
f_1382(t7,t6,C_slot(t2,C_fix(0)),C_slot(t3,C_fix(0)));}
else{
t6=C_SCHEME_UNDEFINED;
t7=t1;{
C_word av2[2];
av2[0]=t7;
av2[1]=t6;
((C_proc)(void*)(*((C_word*)t7+1)))(2,av2);}}}

/* k1524 in for-each-loop244 in k1434 in k1379 in k1376 in k1373 in k1370 in k1367 in k1364 in k1358 in k1355 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1526(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1526,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_1516(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)),C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k1556 in cartan_utils#pretty-print-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1558(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_1558,c,av);}
a=C_alloc(12);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
f_1357(2,av2);}}
else{
t2=C_a_i_list4(&a,4,lf[45],((C_word*)t0)[3],lf[46],((C_word*)t0)[4]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:87: chicken.base#error */
t3=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[70];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}}

/* cartan_utils#cartan-inverse-lookup in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1567(C_word c,C_word *av){
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
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1567,c,av);}
a=C_alloc(7);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1573,a[2]=t3,a[3]=t4,a[4]=t6,tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_1573(t8,t1,t2,C_fix(0));}

/* loop in cartan_utils#cartan-inverse-lookup in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1573(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
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
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(65,0,3)))){
C_save_and_reclaim_args((void *)trf_1573,4,t0,t1,t2,t3);}
a=C_alloc(65);
if(C_truep(C_i_nullp(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_car(t2);
t5=C_s_a_i_minus(&a,2,t4,((C_word*)t0)[2]);
t6=C_s_a_i_abs(&a,1,t5);
if(C_truep(C_i_lessp(t6,((C_word*)t0)[3]))){
t7=C_u_i_car(t2);
t8=t1;{
C_word av2[2];
av2[0]=t8;
av2[1]=C_a_i_cons(&a,2,t3,t7);
((C_proc)(void*)(*((C_word*)t8+1)))(2,av2);}}
else{
t7=C_u_i_cdr(t2);
t8=C_s_a_i_plus(&a,2,t3,C_fix(1));
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:128: loop */
t10=t1;
t11=t7;
t12=t8;
t1=t10;
t2=t11;
t3=t12;
goto loop;}}}

/* cartan_utils#cartan-step-ratio in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1611(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,5)))){
C_save_and_reclaim((void *)f_1611,c,av);}
a=C_alloc(5);
t3=C_i_length(t2);
if(C_truep(C_fixnum_lessp(t3,C_fix(2)))){
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_cdr(t2);
t5=C_u_i_car(t2);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1629,a[2]=t7,tmp=(C_word)a,a+=3,tmp));
t9=((C_word*)t7)[1];
f_1629(t9,t1,t4,t5,C_SCHEME_END_OF_LIST);}}

/* loop in cartan_utils#cartan-step-ratio in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1629(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_1629,5,t0,t1,t2,t3,t4);}
a=C_alloc(6);
if(C_truep(C_i_nullp(t2))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:139: scheme#reverse */
t5=*((C_word*)lf[19]+1);{
C_word av2[3];
av2[0]=t5;
av2[1]=t1;
av2[2]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}
else{
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1642,a[2]=t2,a[3]=t4,a[4]=((C_word*)t0)[2],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[43]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[43]+1);
av2[1]=t5;
av2[2]=C_i_car(t2);
av2[3]=t3;
tp(4,av2);}}}

/* k1640 in loop in cartan_utils#cartan-step-ratio in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1642(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1642,c,av);}
a=C_alloc(3);
t2=C_u_i_cdr(((C_word*)t0)[2]);
t3=C_u_i_car(((C_word*)t0)[2]);
t4=C_a_i_cons(&a,2,t1,((C_word*)t0)[3]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:141: loop */
t5=((C_word*)((C_word*)t0)[4])[1];
f_1629(t5,((C_word*)t0)[5],t2,t3,t4);}

/* cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1665(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1665,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1672,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:151: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[90];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1672(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1672,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1675,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:151: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1675(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1675,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1678,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:151: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1678(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1678,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1684,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:154: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[89];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1684(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1684,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1687,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:154: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1687(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1687,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1690,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:155: cartan-log-decompose */
t3=C_fast_retrieve(lf[41]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(8);
av2[3]=C_fix(3);
f_1273(4,av2);}}

/* k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1690(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1690,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1696,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:156: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[88];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1696(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(21,c,3)))){
C_save_and_reclaim((void *)f_1696,c,av);}
a=C_alloc(21);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1699,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t4=t3;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=((C_word*)t5)[1];
t7=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));
t8=C_i_check_list_2(((C_word*)t0)[3],lf[23]);
t9=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1941,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
t10=C_SCHEME_UNDEFINED;
t11=(*a=C_VECTOR_TYPE|1,a[1]=t10,tmp=(C_word)a,a+=2,tmp);
t12=C_set_block_item(t11,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1943,a[2]=t5,a[3]=t11,a[4]=t6,tmp=(C_word)a,a+=5,tmp));
t13=((C_word*)t11)[1];
f_1943(t13,t9,((C_word*)t0)[3]);}

/* k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1699(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1699,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1702,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:156: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1702(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1702,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1708,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:157: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[87];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1708(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1708,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1711,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:157: ##sys#print */
t3=*((C_word*)lf[52]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1711(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1711,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1714,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:157: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[86];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1714(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1714,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1717,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:157: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 in ... */
static void C_ccall f_1717(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1717,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1723,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:158: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[85];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in ... */
static void C_ccall f_1723(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(16,c,2)))){
C_save_and_reclaim((void *)f_1723,c,av);}
a=C_alloc(16);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1726,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t4=t3;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=((C_word*)t5)[1];
t7=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));
t8=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1889,a[2]=t2,a[3]=((C_word*)t0)[4],a[4]=t5,a[5]=t6,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:159: cartan-step-ratio */
t9=C_fast_retrieve(lf[72]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t9;
av2[1]=t8;
av2[2]=((C_word*)t0)[3];
f_1611(3,av2);}}

/* k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in ... */
static void C_ccall f_1726(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1726,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1729,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:158: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[84];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in ... */
static void C_ccall f_1729(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1729,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1732,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:158: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in ... */
static void C_ccall f_1732(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1732,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1738,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[83];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in ... */
static void C_ccall f_1738(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(44,c,4)))){
C_save_and_reclaim((void *)f_1738,c,av);}
a=C_alloc(44);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1741,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_eqp(C_u_i_length(((C_word*)t0)[4]),C_fix(4));
if(C_truep(t3)){
t4=C_i_car(((C_word*)t0)[4]);
t5=C_s_a_i_minus(&a,2,t4,lf[11]);
t6=C_s_a_i_abs(&a,1,t5);
if(C_truep(C_i_lessp(t6,lf[4]))){
t7=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1870,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:163: srfi-1#last */
t8=C_fast_retrieve(lf[62]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t8;
av2[1]=t7;
av2[2]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t8+1)))(3,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#print */
t7=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t7;
av2[1]=t2;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t7+1)))(5,av2);}}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#print */
t4=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}}

/* k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in ... */
static void C_ccall f_1741(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1741,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1744,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in ... */
static void C_ccall f_1744(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1744,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1747,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in ... */
static void C_ccall f_1747(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1747,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1753,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:166: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[81];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in ... */
static void C_ccall f_1753(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1753,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1756,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:166: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in ... */
static void C_ccall f_1756(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1756,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1759,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:167: cartan-log-decompose */
t3=C_fast_retrieve(lf[41]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_fix(100);
av2[3]=C_fix(5);
f_1273(4,av2);}}

/* k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in ... */
static void C_ccall f_1759(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1759,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1762,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1840,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1844,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:168: machine_constants#safe-log */
t5=C_fast_retrieve(lf[12]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=C_fix(100);
f_802(3,av2);}}

/* k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in ... */
static void C_ccall f_1762(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1762,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1768,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:169: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[80];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in ... */
static void C_ccall f_1768(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,2)))){
C_save_and_reclaim((void *)f_1768,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1771,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1836,a[2]=t2,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:169: format-float */
t4=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
f_1210(3,av2);}}

/* k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in ... */
static void C_ccall f_1771(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1771,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1774,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:169: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[79];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in ... */
static void C_ccall f_1774(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1774,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1777,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:169: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in ... */
static void C_ccall f_1777(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1777,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1780,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:170: cartan-inverse-lookup */
t3=C_fast_retrieve(lf[71]);{
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
av2[4]=lf[76];
f_1567(5,av2);}}

/* k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in ... */
static void C_ccall f_1780(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1780,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1786,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:171: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[78];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in ... */
static void C_ccall f_1786(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1786,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1789,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:171: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in ... */
static void C_ccall f_1789(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1789,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1792,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:171: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in ... */
static void C_ccall f_1792(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1792,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1798,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:172: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[77];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1796 in k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in ... */
static void C_ccall f_1798(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(40,c,4)))){
C_save_and_reclaim((void *)f_1798,c,av);}
a=C_alloc(40);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1801,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
if(C_truep(((C_word*)t0)[4])){
t3=C_i_cdr(((C_word*)t0)[4]);
t4=C_s_a_i_minus(&a,2,t3,lf[75]);
t5=C_s_a_i_abs(&a,1,t4);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:172: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t2;
av2[2]=C_i_lessp(t5,lf[76]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:172: ##sys#print */
t3=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k1799 in k1796 in k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in ... */
static void C_ccall f_1801(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1801,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1804,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:172: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1802 in k1799 in k1796 in k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in ... */
static void C_ccall f_1804(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1804,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1807,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:172: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1805 in k1802 in k1799 in k1796 in k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in ... */
static void C_ccall f_1807(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1807,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[49]+1);
t3=*((C_word*)lf[49]+1);
t4=C_i_check_port_2(*((C_word*)lf[49]+1),C_fix(2),C_SCHEME_TRUE,lf[50]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1813,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:174: ##sys#print */
t6=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=lf[74];
av2[3]=C_SCHEME_FALSE;
av2[4]=*((C_word*)lf[49]+1);
((C_proc)(void*)(*((C_word*)t6+1)))(5,av2);}}

/* k1811 in k1805 in k1802 in k1799 in k1796 in k1790 in k1787 in k1784 in k1778 in k1775 in k1772 in k1769 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in ... */
static void C_ccall f_1813(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1813,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:174: ##sys#write-char-0 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[51]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1834 in k1766 in k1760 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in ... */
static void C_ccall f_1836(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1836,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:169: ##sys#print */
t2=*((C_word*)lf[52]+1);{
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

/* k1838 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in ... */
static void C_ccall f_1840(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1840,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:168: scheme#exp */
t2=*((C_word*)lf[42]+1);{
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

/* k1842 in k1757 in k1754 in k1751 in k1745 in k1742 in k1739 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in ... */
static void C_ccall f_1844(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1844,c,av);}
/* ##sys#/-2 */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[43]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[43]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_fix(2);
tp(4,av2);}}

/* k1868 in k1736 in k1730 in k1727 in k1724 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in ... */
static void C_ccall f_1870(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(36,c,4)))){
C_save_and_reclaim((void *)f_1870,c,av);}
a=C_alloc(36);
t2=C_s_a_i_minus(&a,2,t1,lf[82]);
t3=C_s_a_i_abs(&a,1,t2);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:160: ##sys#print */
t4=*((C_word*)lf[52]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
av2[2]=C_i_lessp(t3,lf[4]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k1887 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in ... */
static void C_ccall f_1889(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1889,c,av);}
a=C_alloc(11);
t2=C_i_check_list_2(t1,lf[23]);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1895,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1897,a[2]=((C_word*)t0)[4],a[3]=t5,a[4]=((C_word*)t0)[5],tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_1897(t7,t3,t1);}

/* k1893 in k1887 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in ... */
static void C_ccall f_1895(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1895,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:158: ##sys#print */
t2=*((C_word*)lf[52]+1);{
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

/* map-loop418 in k1887 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in ... */
static void C_fcall f_1897(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_1897,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1922,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:159: g424 */
t4=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=C_slot(t2,C_fix(0));
f_1210(3,av2);}}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[4],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1920 in map-loop418 in k1887 in k1721 in k1715 in k1712 in k1709 in k1706 in k1700 in k1697 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in ... */
static void C_ccall f_1922(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1922,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_1897(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k1939 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1941(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1941,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:156: ##sys#print */
t2=*((C_word*)lf[52]+1);{
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

/* map-loop383 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_fcall f_1943(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_1943,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1968,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:156: g389 */
t4=C_retrieve2(lf[36],C_text("cartan_utils#format-float"));{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=C_slot(t2,C_fix(0));
f_1210(3,av2);}}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[4],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1966 in map-loop383 in k1694 in k1688 in k1685 in k1682 in k1676 in k1673 in k1670 in cartan_utils#test-cartan-decomposition in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1968(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1968,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_1943(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k1979 in k1185 in k1182 in k1179 in k1176 in k754 in k751 in k748 in k745 */
static void C_ccall f_1981(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1981,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a1982 in k754 in k751 in k748 in k745 */
static void C_ccall f_1983(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_1983,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:8: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[95]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[95]+1);
av2[1]=t1;
av2[2]=lf[96];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[97];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* a2000 in k748 in k745 */
static void C_ccall f_2001(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_2001,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:6: ##sys#register-compiled-module */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[95]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[95]+1);
av2[1]=t1;
av2[2]=lf[99];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[100];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* k745 */
static void C_ccall f_747(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_747,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_750,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k748 in k745 */
static void C_ccall f_750(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_750,c,av);}
a=C_alloc(13);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_753,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2001,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:6: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[98]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[98]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k751 in k748 in k745 */
static void C_ccall f_753(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_753,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_756,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:30: chicken.load#load-extension */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[92]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[92]+1);
av2[1]=t2;
av2[2]=lf[94];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k754 in k751 in k748 in k745 */
static void C_ccall f_756(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(35,c,4)))){
C_save_and_reclaim((void *)f_756,c,av);}
a=C_alloc(35);
t2=C_mutate((C_word*)lf[1]+1 /* (set! machine_constants#machine-epsilon ...) */,lf[2]);
t3=C_mutate((C_word*)lf[3]+1 /* (set! machine_constants#default-tolerance ...) */,lf[4]);
t4=C_mutate((C_word*)lf[5]+1 /* (set! machine_constants#e ...) */,lf[6]);
t5=C_mutate((C_word*)lf[7]+1 /* (set! machine_constants#pi ...) */,lf[8]);
t6=C_mutate((C_word*)lf[9]+1 /* (set! machine_constants#approx-equal? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_762,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[12]+1 /* (set! machine_constants#safe-log ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_802,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[17]+1 /* (set! machine_constants#trim-leading-zeros ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_831,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[21]+1 /* (set! machine_constants#degree ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_862,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[22]+1 /* (set! machine_constants#poly-xor ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_871,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate((C_word*)lf[26]+1 /* (set! machine_constants#poly-shift ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_977,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[27]+1 /* (set! machine_constants#poly-mul ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_987,tmp=(C_word)a,a+=2,tmp));
t13=C_mutate((C_word*)lf[30]+1 /* (set! machine_constants#poly-mod ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1029,tmp=(C_word)a,a+=2,tmp));
t14=C_mutate((C_word*)lf[31]+1 /* (set! machine_constants#int->bits ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1064,tmp=(C_word)a,a+=2,tmp));
t15=C_mutate((C_word*)lf[32]+1 /* (set! machine_constants#bits->int ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1104,tmp=(C_word)a,a+=2,tmp));
t16=C_mutate((C_word*)lf[33]+1 /* (set! machine_constants#hamming-weight ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1145,tmp=(C_word)a,a+=2,tmp));
t17=C_a_i_provide(&a,1,lf[35]);
t18=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1178,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t19=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1983,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:8: ##sys#with-environment */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[98]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[98]+1);
av2[1]=t18;
av2[2]=t19;
tp(3,av2);}}

/* machine_constants#approx-equal? in k754 in k751 in k748 in k745 */
static void C_ccall f_762(C_word c,C_word *av){
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
if(c<4) C_bad_min_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(58,c,3)))){
C_save_and_reclaim((void *)f_762,c,av);}
a=C_alloc(58);
t4=C_rest_nullp(c,4);
t5=(C_truep(t4)?C_fast_retrieve(lf[3]):C_get_rest_arg(c,4,av,4,t0));
t6=C_s_a_i_minus(&a,2,t2,t3);
t7=C_s_a_i_abs(&a,1,t6);
t8=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_773,a[2]=t7,a[3]=t5,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
t9=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_790,a[2]=t8,tmp=(C_word)a,a+=3,tmp);
t10=C_s_a_i_abs(&a,1,t2);
t11=C_s_a_i_abs(&a,1,t3);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:72: scheme#max */
t12=*((C_word*)lf[10]+1);{
C_word *av2=av;
av2[0]=t12;
av2[1]=t9;
av2[2]=t10;
av2[3]=t11;
((C_proc)(void*)(*((C_word*)t12+1)))(4,av2);}}

/* k771 in machine_constants#approx-equal? in k754 in k751 in k748 in k745 */
static void C_ccall f_773(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,1)))){
C_save_and_reclaim((void *)f_773,c,av);}
a=C_alloc(33);
t2=C_i_lessp(((C_word*)t0)[2],((C_word*)t0)[3]);
if(C_truep(t2)){
t3=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_s_a_i_times(&a,2,((C_word*)t0)[3],t1);
t4=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_lessp(((C_word*)t0)[2],t3);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k788 in machine_constants#approx-equal? in k754 in k751 in k748 in k745 */
static void C_ccall f_790(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_790,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:72: scheme#max */
t2=*((C_word*)lf[10]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[11];
av2[3]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* machine_constants#safe-log in k754 in k751 in k748 in k745 */
static void C_ccall f_802(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_802,c,av);}
t3=C_i_numberp(t2);
if(C_truep(C_i_not(t3))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:84: chicken.base#error */
t4=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[14];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}
else{
if(C_truep(C_i_less_or_equalp(t2,C_fix(0)))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:86: chicken.base#error */
t4=*((C_word*)lf[13]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=lf[15];
av2[3]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}
else{
/* ##sys#log-1 */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[16]);
C_word *av2=av;
av2[0]=*((C_word*)lf[16]+1);
av2[1]=t1;
av2[2]=t2;
tp(3,av2);}}}}

/* machine_constants#trim-leading-zeros in k754 in k751 in k748 in k745 */
static void C_ccall f_831(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_831,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_839,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:98: scheme#reverse */
t4=*((C_word*)lf[19]+1);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}

/* k837 in machine_constants#trim-leading-zeros in k754 in k751 in k748 in k745 */
static void C_ccall f_839(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_839,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_845,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_856,tmp=(C_word)a,a+=2,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:99: srfi-1#drop-while */
t4=C_fast_retrieve(lf[20]);{
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

/* k843 in k837 in machine_constants#trim-leading-zeros in k754 in k751 in k748 in k745 */
static void C_ccall f_845(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_845,c,av);}
if(C_truep(C_i_nullp(t1))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[18];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:100: scheme#reverse */
t2=*((C_word*)lf[19]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(3,av2);}}}

/* a855 in k837 in machine_constants#trim-leading-zeros in k754 in k751 in k748 in k745 */
static void C_ccall f_856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_856,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_nequalp(t2,C_fix(0));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* machine_constants#degree in k754 in k751 in k748 in k745 */
static void C_ccall f_862(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_862,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_866,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:107: trim-leading-zeros */
t4=C_fast_retrieve(lf[17]);{
C_word *av2=av;
av2[0]=t4;
av2[1]=t3;
av2[2]=t2;
f_831(3,av2);}}

/* k864 in machine_constants#degree in k754 in k751 in k748 in k745 */
static void C_ccall f_866(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_866,c,av);}
a=C_alloc(5);
t2=C_u_i_length(t1);
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_a_i_fixnum_difference(&a,2,t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_871(C_word c,C_word *av){
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
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,3)))){
C_save_and_reclaim((void *)f_871,c,av);}
a=C_alloc(15);
t4=C_i_length(t2);
t5=C_i_length(t3);
t6=C_i_fixnum_max(t4,t5);
t7=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_884,a[2]=t1,a[3]=t3,a[4]=t6,a[5]=t5,tmp=(C_word)a,a+=6,tmp);
t8=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_970,a[2]=t7,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
t9=C_a_i_fixnum_difference(&a,2,t6,t4);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:116: srfi-1#make-list */
t10=C_fast_retrieve(lf[25]);{
C_word *av2=av;
av2[0]=t10;
av2[1]=t8;
av2[2]=t9;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}

/* k882 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_884(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_884,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_887,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_963,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t4=C_a_i_fixnum_difference(&a,2,((C_word*)t0)[4],((C_word*)t0)[5]);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:117: srfi-1#make-list */
t5=C_fast_retrieve(lf[25]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k885 in k882 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_887(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(15,c,4)))){
C_save_and_reclaim((void *)f_887,c,av);}
a=C_alloc(15);
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=C_i_check_list_2(((C_word*)t0)[2],lf[23]);
t7=C_i_check_list_2(t1,lf[23]);
t8=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_911,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
t9=C_SCHEME_UNDEFINED;
t10=(*a=C_VECTOR_TYPE|1,a[1]=t9,tmp=(C_word)a,a+=2,tmp);
t11=C_set_block_item(t10,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_913,a[2]=t4,a[3]=t10,a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t12=((C_word*)t10)[1];
f_913(t12,t8,((C_word*)t0)[2],t1);}

/* k909 in k885 in k882 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_911(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_911,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:118: trim-leading-zeros */
t2=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
f_831(3,av2);}}

/* map-loop68 in k885 in k882 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_fcall f_913(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
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
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,0,3)))){
C_save_and_reclaim_args((void *)trf_913,4,t0,t1,t2,t3);}
a=C_alloc(3);
t4=C_i_pairp(t2);
t5=(C_truep(t4)?C_i_pairp(t3):C_SCHEME_FALSE);
if(C_truep(t5)){
t6=C_slot(t2,C_fix(0));
t7=C_slot(t3,C_fix(0));
t8=C_i_nequalp(t6,t7);
t9=(C_truep(t8)?C_a_i_cons(&a,2,C_fix(0),C_SCHEME_END_OF_LIST):C_a_i_cons(&a,2,C_fix(1),C_SCHEME_END_OF_LIST));
t10=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t9);
t11=C_mutate(((C_word *)((C_word*)t0)[2])+1,t9);
t13=t1;
t14=C_slot(t2,C_fix(1));
t15=C_slot(t3,C_fix(1));
t1=t13;
t2=t14;
t3=t15;
goto loop;}
else{
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_slot(((C_word*)t0)[4],C_fix(1));
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}

/* k961 in k882 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_963(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_963,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:117: scheme#append */
t2=*((C_word*)lf[24]+1);{
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

/* k968 in machine_constants#poly-xor in k754 in k751 in k748 in k745 */
static void C_ccall f_970(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_970,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:116: scheme#append */
t2=*((C_word*)lf[24]+1);{
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

/* machine_constants#poly-shift in k754 in k751 in k748 in k745 */
static void C_ccall f_977(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_977,c,av);}
a=C_alloc(4);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_985,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: srfi-1#make-list */
t5=C_fast_retrieve(lf[25]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k983 in machine_constants#poly-shift in k754 in k751 in k748 in k745 */
static void C_ccall f_985(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_985,c,av);}
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: scheme#append */
t2=*((C_word*)lf[24]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(4,av2);}}

/* machine_constants#poly-mul in k754 in k751 in k748 in k745 */
static void C_ccall f_987(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,5)))){
C_save_and_reclaim((void *)f_987,c,av);}
a=C_alloc(6);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_993,a[2]=t5,a[3]=t2,tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_993(t7,t1,t3,C_fix(0),lf[29]);}

/* loop in machine_constants#poly-mul in k754 in k751 in k748 in k745 */
static void C_fcall f_993(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,3)))){
C_save_and_reclaim_args((void *)trf_993,5,t0,t1,t2,t3,t4);}
a=C_alloc(11);
if(C_truep(C_i_nullp(t2))){
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:135: trim-leading-zeros */
t5=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t5;
av2[1]=t1;
av2[2]=t4;
f_831(3,av2);}}
else{
t5=C_i_car(t2);
t6=C_u_i_cdr(t2);
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1010,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=t1,a[5]=t6,a[6]=t4,tmp=(C_word)a,a+=7,tmp);
if(C_truep(C_i_nequalp(t5,C_fix(1)))){
t8=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f2122,a[2]=t7,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* /mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:126: srfi-1#make-list */
t9=C_fast_retrieve(lf[25]);{
C_word av2[4];
av2[0]=t9;
av2[1]=t8;
av2[2]=t3;
av2[3]=C_fix(0);
((C_proc)(void*)(*((C_word*)t9+1)))(4,av2);}}
else{
t8=t7;{
C_word av2[2];
av2[0]=t8;
av2[1]=lf[28];
f_1010(2,av2);}}}}

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
if(C_unlikely(!C_demand_2(848))){
C_save(t1);
C_rereclaim2(848*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,101);
lf[0]=C_h_intern(&lf[0],18, C_text("machine_constants#"));
lf[1]=C_h_intern(&lf[1],33, C_text("machine_constants#machine-epsilon"));
lf[2]=C_decode_literal(C_heaptop,C_text("\376U2.220446049250313080847263336181640625e-16\000"));
lf[3]=C_h_intern(&lf[3],35, C_text("machine_constants#default-tolerance"));
lf[4]=C_decode_literal(C_heaptop,C_text("\376U1.0000000000000000364321973154977415791655470655996396089904010295867919921875"
"e-10\000"));
lf[5]=C_h_intern(&lf[5],19, C_text("machine_constants#e"));
lf[6]=C_decode_literal(C_heaptop,C_text("\376U2.718281828459045090795598298427648842334747314453125\000"));
lf[7]=C_h_intern(&lf[7],20, C_text("machine_constants#pi"));
lf[8]=C_decode_literal(C_heaptop,C_text("\376U3.141592653589793115997963468544185161590576171875\000"));
lf[9]=C_h_intern(&lf[9],31, C_text("machine_constants#approx-equal\077"));
lf[10]=C_h_intern(&lf[10],10, C_text("scheme#max"));
lf[11]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[12]=C_h_intern(&lf[12],26, C_text("machine_constants#safe-log"));
lf[13]=C_h_intern(&lf[13],18, C_text("chicken.base#error"));
lf[14]=C_decode_literal(C_heaptop,C_text("\376B\000\000#safe-log: argument must be a number"));
lf[15]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036safe-log: argument must be > 0"));
lf[16]=C_h_intern(&lf[16],11, C_text("##sys#log-1"));
lf[17]=C_h_intern(&lf[17],36, C_text("machine_constants#trim-leading-zeros"));
lf[18]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[19]=C_h_intern(&lf[19],14, C_text("scheme#reverse"));
lf[20]=C_h_intern(&lf[20],17, C_text("srfi-1#drop-while"));
lf[21]=C_h_intern(&lf[21],24, C_text("machine_constants#degree"));
lf[22]=C_h_intern(&lf[22],26, C_text("machine_constants#poly-xor"));
lf[23]=C_h_intern(&lf[23],3, C_text("map"));
lf[24]=C_h_intern(&lf[24],13, C_text("scheme#append"));
lf[25]=C_h_intern(&lf[25],16, C_text("srfi-1#make-list"));
lf[26]=C_h_intern(&lf[26],28, C_text("machine_constants#poly-shift"));
lf[27]=C_h_intern(&lf[27],26, C_text("machine_constants#poly-mul"));
lf[28]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[29]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\377\016"));
lf[30]=C_h_intern(&lf[30],26, C_text("machine_constants#poly-mod"));
lf[31]=C_h_intern(&lf[31],27, C_text("machine_constants#int->bits"));
lf[32]=C_h_intern(&lf[32],27, C_text("machine_constants#bits->int"));
lf[33]=C_h_intern(&lf[33],32, C_text("machine_constants#hamming-weight"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376\302\000\000\020ffffffffffffffff"));
lf[35]=C_h_intern(&lf[35],13, C_text("cartan_utils#"));
lf[37]=C_h_intern(&lf[37],16, C_text("scheme#substring"));
lf[38]=C_h_intern(&lf[38],20, C_text("##sys#number->string"));
lf[39]=C_h_intern(&lf[39],21, C_text("scheme#exact->inexact"));
lf[40]=C_h_intern(&lf[40],35, C_text("cartan_utils#validate-decomposition"));
lf[41]=C_h_intern(&lf[41],33, C_text("cartan_utils#cartan-log-decompose"));
lf[42]=C_h_intern(&lf[42],10, C_text("scheme#exp"));
lf[43]=C_h_intern(&lf[43],9, C_text("##sys#/-2"));
lf[44]=C_h_intern(&lf[44],11, C_text("srfi-1#iota"));
lf[45]=C_h_intern(&lf[45],1, C_text("B"));
lf[46]=C_h_intern(&lf[46],5, C_text("steps"));
lf[47]=C_decode_literal(C_heaptop,C_text("\376B\000\000(cartan-log-decompose: invalid parameters"));
lf[48]=C_h_intern(&lf[48],39, C_text("cartan_utils#pretty-print-decomposition"));
lf[49]=C_h_intern(&lf[49],21, C_text("##sys#standard-output"));
lf[50]=C_h_intern(&lf[50],6, C_text("printf"));
lf[51]=C_h_intern(&lf[51],18, C_text("##sys#write-char-0"));
lf[52]=C_h_intern(&lf[52],11, C_text("##sys#print"));
lf[53]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002))"));
lf[54]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002^("));
lf[55]=C_decode_literal(C_heaptop,C_text("\376B\000\000\005  (= "));
lf[56]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002: "));
lf[57]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010  Level "));
lf[58]=C_h_intern(&lf[58],19, C_text("##sys#string-append"));
lf[59]=C_h_intern(&lf[59],18, C_text("scheme#make-string"));
lf[60]=C_h_intern(&lf[60],8, C_text("for-each"));
lf[61]=C_decode_literal(C_heaptop,C_text("\376B\000\000   Hausdorff scaling: logarithmic"));
lf[62]=C_h_intern(&lf[62],11, C_text("srfi-1#last"));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002, "));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Range: ["));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000\020  Total levels: "));
lf[66]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010Summary:"));
lf[67]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002):"));
lf[68]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010, steps="));
lf[69]=C_decode_literal(C_heaptop,C_text("\376B\000\000\030Cartan decomposition (B="));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\000.pretty-print-decomposition: invalid parameters"));
lf[71]=C_h_intern(&lf[71],34, C_text("cartan_utils#cartan-inverse-lookup"));
lf[72]=C_h_intern(&lf[72],30, C_text("cartan_utils#cartan-step-ratio"));
lf[73]=C_h_intern(&lf[73],38, C_text("cartan_utils#test-cartan-decomposition"));
lf[74]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033=== All tests completed ==="));
lf[75]=C_decode_literal(C_heaptop,C_text("\376U10.0\000"));
lf[76]=C_decode_literal(C_heaptop,C_text("\376U0.1000000000000000055511151231257827021181583404541015625\000"));
lf[77]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010  Pass: "));
lf[78]=C_decode_literal(C_heaptop,C_text("\376B\000\000\011  Found: "));
lf[79]=C_decode_literal(C_heaptop,C_text("\376B\000\000\021 in decomposition"));
lf[80]=C_decode_literal(C_heaptop,C_text("\376B\000\000\016  Looking for "));
lf[81]=C_decode_literal(C_heaptop,C_text("\376B\000\000\026Test 2: Inverse lookup"));
lf[82]=C_decode_literal(C_heaptop,C_text("\376U8.0\000"));
lf[83]=C_decode_literal(C_heaptop,C_text("\376B\000\000\010  Pass: "));
lf[84]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025 (should be constant)"));
lf[85]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Ratios: "));
lf[86]=C_decode_literal(C_heaptop,C_text("\376B\000\000\016 (expected: 4)"));
lf[87]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Length: "));
lf[88]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Result: "));
lf[89]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024Test 1: B=8, steps=3"));
lf[90]=C_decode_literal(C_heaptop,C_text("\376B\000\000&=== Cartan Decomposition Self-Test ==="));
lf[91]=C_h_intern(&lf[91],34, C_text("chicken.base#implicit-exit-handler"));
lf[92]=C_h_intern(&lf[92],27, C_text("chicken.load#load-extension"));
lf[93]=C_h_intern(&lf[93],7, C_text("srfi-69"));
lf[94]=C_h_intern(&lf[94],6, C_text("srfi-1"));
lf[95]=C_h_intern(&lf[95],30, C_text("##sys#register-compiled-module"));
lf[96]=C_h_intern(&lf[96],12, C_text("cartan_utils"));
lf[97]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\032\001pretty-print-decomposition\376\001\000\000\047\001cartan_utils#pretty-print-decomp"
"osition\376\003\000\000\002\376\003\000\000\002\376\001\000\000\026\001validate-decomposition\376\001\000\000#\001cartan_utils#validate-decompo"
"sition\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001cartan-log-decompose\376\001\000\000!\001cartan_utils#cartan-log-decompos"
"e\376\003\000\000\002\376\003\000\000\002\376\001\000\000\025\001cartan-inverse-lookup\376\001\000\000\042\001cartan_utils#cartan-inverse-lookup\376\003"
"\000\000\002\376\003\000\000\002\376\001\000\000\021\001cartan-step-ratio\376\001\000\000\036\001cartan_utils#cartan-step-ratio\376\003\000\000\002\376\003\000\000\002\376\001\000"
"\000\031\001test-cartan-decomposition\376\001\000\000&\001cartan_utils#test-cartan-decomposition\376\377\016"));
lf[98]=C_h_intern(&lf[98],22, C_text("##sys#with-environment"));
lf[99]=C_h_intern(&lf[99],17, C_text("machine_constants"));
lf[100]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\017\001machine-epsilon\376\001\000\000!\001machine_constants#machine-epsilon\376\003\000\000\002\376\003\000\000\002"
"\376\001\000\000\021\001default-tolerance\376\001\000\000#\001machine_constants#default-tolerance\376\003\000\000\002\376\003\000\000\002\376\001\000\000\001\001"
"e\376\001\000\000\023\001machine_constants#e\376\003\000\000\002\376\003\000\000\002\376\001\000\000\002\001pi\376\001\000\000\024\001machine_constants#pi\376\003\000\000\002\376\003\000\000\002"
"\376\001\000\000\015\001approx-equal\077\376\001\000\000\037\001machine_constants#approx-equal\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001safe-log"
"\376\001\000\000\032\001machine_constants#safe-log\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001trim-leading-zeros\376\001\000\000$\001machine_"
"constants#trim-leading-zeros\376\003\000\000\002\376\003\000\000\002\376\001\000\000\006\001degree\376\001\000\000\030\001machine_constants#degree"
"\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-xor\376\001\000\000\032\001machine_constants#poly-xor\376\003\000\000\002\376\003\000\000\002\376\001\000\000\012\001poly-shi"
"ft\376\001\000\000\034\001machine_constants#poly-shift\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-mul\376\001\000\000\032\001machine_consta"
"nts#poly-mul\376\003\000\000\002\376\003\000\000\002\376\001\000\000\010\001poly-mod\376\001\000\000\032\001machine_constants#poly-mod\376\003\000\000\002\376\003\000\000\002\376\001"
"\000\000\011\001int->bits\376\001\000\000\033\001machine_constants#int->bits\376\003\000\000\002\376\003\000\000\002\376\001\000\000\011\001bits->int\376\001\000\000\033\001mac"
"hine_constants#bits->int\376\003\000\000\002\376\003\000\000\002\376\001\000\000\016\001hamming-weight\376\001\000\000 \001machine_constants#ha"
"mming-weight\376\377\016"));
C_register_lf2(lf,101,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_747,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[167] = {
{C_text("f2122:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f2122},
{C_text("f2130:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f2130},
{C_text("f2135:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f2135},
{C_text("f2141:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f2141},
{C_text("f_1010:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1010},
{C_text("f_1021:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1021},
{C_text("f_1029:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1029},
{C_text("f_1037:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1037},
{C_text("f_1039:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1039},
{C_text("f_1056:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1056},
{C_text("f_1059:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1059},
{C_text("f_1064:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1064},
{C_text("f_1070:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1070},
{C_text("f_1088:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1088},
{C_text("f_1104:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1104},
{C_text("f_1113:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1113},
{C_text("f_1145:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1145},
{C_text("f_1155:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1155},
{C_text("f_1178:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1178},
{C_text("f_1181:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1181},
{C_text("f_1184:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1184},
{C_text("f_1187:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1187},
{C_text("f_1196:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1196},
{C_text("f_1203:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1203},
{C_text("f_1210:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1210},
{C_text("f_1217:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1217},
{C_text("f_1243:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1243},
{C_text("f_1251:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1251},
{C_text("f_1273:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1273},
{C_text("f_1277:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1277},
{C_text("f_1280:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1280},
{C_text("f_1284:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1284},
{C_text("f_1292:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1292},
{C_text("f_1300:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1300},
{C_text("f_1305:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1305},
{C_text("f_1330:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1330},
{C_text("f_1344:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1344},
{C_text("f_1353:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1353},
{C_text("f_1357:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1357},
{C_text("f_1360:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1360},
{C_text("f_1366:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1366},
{C_text("f_1369:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1369},
{C_text("f_1372:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1372},
{C_text("f_1375:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1375},
{C_text("f_1378:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1378},
{C_text("f_1381:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1381},
{C_text("f_1382:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1382},
{C_text("f_1386:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1386},
{C_text("f_1389:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1389},
{C_text("f_1395:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1395},
{C_text("f_1398:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1398},
{C_text("f_1401:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1401},
{C_text("f_1404:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1404},
{C_text("f_1407:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1407},
{C_text("f_1410:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1410},
{C_text("f_1413:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1413},
{C_text("f_1416:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1416},
{C_text("f_1419:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1419},
{C_text("f_1422:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1422},
{C_text("f_1425:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1425},
{C_text("f_1432:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1432},
{C_text("f_1436:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1436},
{C_text("f_1442:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1442},
{C_text("f_1448:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1448},
{C_text("f_1451:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1451},
{C_text("f_1454:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1454},
{C_text("f_1460:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1460},
{C_text("f_1463:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1463},
{C_text("f_1466:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1466},
{C_text("f_1472:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1472},
{C_text("f_1475:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1475},
{C_text("f_1478:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1478},
{C_text("f_1481:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1481},
{C_text("f_1484:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1484},
{C_text("f_1487:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1487},
{C_text("f_1493:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1493},
{C_text("f_1500:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1500},
{C_text("f_1504:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1504},
{C_text("f_1508:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1508},
{C_text("f_1516:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1516},
{C_text("f_1526:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1526},
{C_text("f_1558:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1558},
{C_text("f_1567:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1567},
{C_text("f_1573:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1573},
{C_text("f_1611:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1611},
{C_text("f_1629:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1629},
{C_text("f_1642:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1642},
{C_text("f_1665:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1665},
{C_text("f_1672:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1672},
{C_text("f_1675:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1675},
{C_text("f_1678:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1678},
{C_text("f_1684:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1684},
{C_text("f_1687:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1687},
{C_text("f_1690:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1690},
{C_text("f_1696:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1696},
{C_text("f_1699:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1699},
{C_text("f_1702:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1702},
{C_text("f_1708:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1708},
{C_text("f_1711:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1711},
{C_text("f_1714:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1714},
{C_text("f_1717:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1717},
{C_text("f_1723:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1723},
{C_text("f_1726:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1726},
{C_text("f_1729:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1729},
{C_text("f_1732:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1732},
{C_text("f_1738:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1738},
{C_text("f_1741:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1741},
{C_text("f_1744:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1744},
{C_text("f_1747:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1747},
{C_text("f_1753:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1753},
{C_text("f_1756:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1756},
{C_text("f_1759:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1759},
{C_text("f_1762:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1762},
{C_text("f_1768:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1768},
{C_text("f_1771:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1771},
{C_text("f_1774:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1774},
{C_text("f_1777:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1777},
{C_text("f_1780:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1780},
{C_text("f_1786:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1786},
{C_text("f_1789:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1789},
{C_text("f_1792:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1792},
{C_text("f_1798:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1798},
{C_text("f_1801:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1801},
{C_text("f_1804:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1804},
{C_text("f_1807:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1807},
{C_text("f_1813:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1813},
{C_text("f_1836:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1836},
{C_text("f_1840:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1840},
{C_text("f_1844:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1844},
{C_text("f_1870:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1870},
{C_text("f_1889:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1889},
{C_text("f_1895:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1895},
{C_text("f_1897:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1897},
{C_text("f_1922:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1922},
{C_text("f_1941:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1941},
{C_text("f_1943:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1943},
{C_text("f_1968:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1968},
{C_text("f_1981:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1981},
{C_text("f_1983:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_1983},
{C_text("f_2001:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_2001},
{C_text("f_747:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_747},
{C_text("f_750:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_750},
{C_text("f_753:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_753},
{C_text("f_756:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_756},
{C_text("f_762:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_762},
{C_text("f_773:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_773},
{C_text("f_790:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_790},
{C_text("f_802:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_802},
{C_text("f_831:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_831},
{C_text("f_839:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_839},
{C_text("f_845:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_845},
{C_text("f_856:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_856},
{C_text("f_862:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_862},
{C_text("f_866:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_866},
{C_text("f_871:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_871},
{C_text("f_884:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_884},
{C_text("f_887:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_887},
{C_text("f_911:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_911},
{C_text("f_913:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_913},
{C_text("f_963:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_963},
{C_text("f_970:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_970},
{C_text("f_977:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_977},
{C_text("f_985:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_985},
{C_text("f_987:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_987},
{C_text("f_993:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)f_993},
{C_text("toplevel:_2fmnt_2fc_2fUsers_2ftyuuw_2fhatsu_2dyakitori_2fcore_2fcartan_5futils_2escm"),(void*)C_toplevel},
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
o|hiding unexported module binding: cartan_utils#pad-left 
o|hiding unexported module binding: cartan_utils#format-float 
S|applied compiler syntax:
S|  scheme#for-each		1
S|  chicken.format#printf		17
S|  scheme#map		4
o|eliminated procedure checks: 66 
o|folded constant expression: (scheme#expt (quote 2.0) (quote -52)) 
o|folded constant expression: (scheme#exp (quote 1.0)) 
o|folded constant expression: (scheme#acos (quote -1.0)) 
o|specializations:
o|  1 (scheme#= fixnum fixnum)
o|  1 (scheme#< fixnum fixnum)
o|  3 (scheme#car pair)
o|  17 (##sys#check-output-port * * *)
o|  2 (##sys#check-list (or pair list) *)
o|  3 (scheme#/ * *)
o|  1 (scheme#integer? *)
o|  1 (scheme#string-length string)
o|  2 (scheme#number->string *)
o|  1 (scheme#string-append string string)
o|  1 (scheme#zero? *)
o|  1 (scheme#+ fixnum fixnum)
o|  1 (scheme#- *)
o|  1 (scheme#- integer integer)
o|  1 (scheme#< integer integer)
o|  3 (scheme#cdr pair)
o|  1 (scheme#max fixnum fixnum)
o|  3 (scheme#- fixnum fixnum)
o|  4 (scheme#length list)
o|  1 (scheme#log *)
o|  7 (scheme#abs *)
(o e)|safe calls: 179 
o|inlining procedure: k777 
o|inlining procedure: k777 
o|inlining procedure: k804 
o|inlining procedure: k804 
o|contracted procedure: loop50 
o|inlining procedure: k846 
o|inlining procedure: k846 
o|substituted constant variable: a869 
o|inlining procedure: k915 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:118) g7484" 
o|inlining procedure: k897 
o|inlining procedure: k897 
o|inlining procedure: k915 
o|inlining procedure: k995 
o|inlining procedure: k995 
o|inlining procedure: k1047 
o|inlining procedure: k1047 
o|inlining procedure: k1072 
o|inlining procedure: k1072 
o|inlining procedure: k1115 
o|inlining procedure: k1115 
o|substituted constant variable: a1129 
o|inlining procedure: k1131 
o|inlining procedure: k1131 
o|inlining procedure: k1157 
o|inlining procedure: k1157 
o|inlining procedure: k1218 
o|inlining procedure: k1218 
o|inlining procedure: k1253 
o|inlining procedure: k1265 
o|inlining procedure: k1265 
o|inlining procedure: k1253 
o|inlining procedure: k1307 
o|inlining procedure: k1307 
o|propagated global variable: out239265 ##sys#standard-output 
o|substituted constant variable: a1362 
o|substituted constant variable: a1363 
o|propagated global variable: out279282 ##sys#standard-output 
o|substituted constant variable: a1391 
o|substituted constant variable: a1392 
o|propagated global variable: out279282 ##sys#standard-output 
o|contracted procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/cartan_utils.scm:95) cartan_utils#pad-left" 
o|propagated global variable: out253303 ##sys#standard-output 
o|substituted constant variable: a1444 
o|substituted constant variable: a1445 
o|propagated global variable: out256307 ##sys#standard-output 
o|substituted constant variable: a1456 
o|substituted constant variable: a1457 
o|propagated global variable: out259311 ##sys#standard-output 
o|substituted constant variable: a1468 
o|substituted constant variable: a1469 
o|propagated global variable: out262318 ##sys#standard-output 
o|substituted constant variable: a1489 
o|substituted constant variable: a1490 
o|propagated global variable: out262318 ##sys#standard-output 
o|propagated global variable: out259311 ##sys#standard-output 
o|propagated global variable: out256307 ##sys#standard-output 
o|propagated global variable: out253303 ##sys#standard-output 
o|inlining procedure: k1518 
o|inlining procedure: k1518 
o|propagated global variable: out239265 ##sys#standard-output 
o|inlining procedure: k1575 
o|inlining procedure: k1575 
o|inlining procedure: k1613 
o|inlining procedure: k1613 
o|inlining procedure: k1631 
o|inlining procedure: k1631 
o|substituted constant variable: a1663 
o|propagated global variable: out348360 ##sys#standard-output 
o|substituted constant variable: a1668 
o|substituted constant variable: a1669 
o|propagated global variable: out351364 ##sys#standard-output 
o|substituted constant variable: a1680 
o|substituted constant variable: a1681 
o|propagated global variable: out368380 ##sys#standard-output 
o|substituted constant variable: a1692 
o|substituted constant variable: a1693 
o|propagated global variable: out371410 ##sys#standard-output 
o|substituted constant variable: a1704 
o|substituted constant variable: a1705 
o|propagated global variable: out374415 ##sys#standard-output 
o|substituted constant variable: a1719 
o|substituted constant variable: a1720 
o|propagated global variable: out377446 ##sys#standard-output 
o|substituted constant variable: a1734 
o|substituted constant variable: a1735 
o|propagated global variable: out354456 ##sys#standard-output 
o|substituted constant variable: a1749 
o|substituted constant variable: a1750 
o|propagated global variable: out461464 ##sys#standard-output 
o|substituted constant variable: a1764 
o|substituted constant variable: a1765 
o|propagated global variable: out470476 ##sys#standard-output 
o|substituted constant variable: a1782 
o|substituted constant variable: a1783 
o|propagated global variable: out473480 ##sys#standard-output 
o|substituted constant variable: a1794 
o|substituted constant variable: a1795 
o|propagated global variable: out357488 ##sys#standard-output 
o|substituted constant variable: a1809 
o|substituted constant variable: a1810 
o|propagated global variable: out357488 ##sys#standard-output 
o|inlining procedure: k1818 
o|inlining procedure: k1818 
o|propagated global variable: out473480 ##sys#standard-output 
o|propagated global variable: out470476 ##sys#standard-output 
o|propagated global variable: out461464 ##sys#standard-output 
o|substituted constant variable: a1845 
o|propagated global variable: out354456 ##sys#standard-output 
o|inlining procedure: k1847 
o|inlining procedure: k1847 
o|substituted constant variable: a1882 
o|propagated global variable: out377446 ##sys#standard-output 
o|inlining procedure: k1899 
o|inlining procedure: k1899 
o|propagated global variable: out374415 ##sys#standard-output 
o|propagated global variable: out371410 ##sys#standard-output 
o|inlining procedure: k1945 
o|inlining procedure: k1945 
o|propagated global variable: out368380 ##sys#standard-output 
o|propagated global variable: out351364 ##sys#standard-output 
o|propagated global variable: out348360 ##sys#standard-output 
o|replaced variables: 280 
o|removed binding forms: 137 
o|substituted constant variable: r8472022 
o|substituted constant variable: r8982025 
o|substituted constant variable: r8982026 
o|substituted constant variable: r12662046 
o|substituted constant variable: r12542047 
o|propagated global variable: out239265 ##sys#standard-output 
o|propagated global variable: out279282 ##sys#standard-output 
o|substituted constant variable: pad-char181 
o|substituted constant variable: width180 
o|propagated global variable: out253303 ##sys#standard-output 
o|propagated global variable: out256307 ##sys#standard-output 
o|propagated global variable: out259311 ##sys#standard-output 
o|propagated global variable: out262318 ##sys#standard-output 
o|substituted constant variable: r15762052 
o|substituted constant variable: r16142054 
o|propagated global variable: out348360 ##sys#standard-output 
o|propagated global variable: out351364 ##sys#standard-output 
o|propagated global variable: out368380 ##sys#standard-output 
o|propagated global variable: out371410 ##sys#standard-output 
o|propagated global variable: out374415 ##sys#standard-output 
o|propagated global variable: out377446 ##sys#standard-output 
o|propagated global variable: out354456 ##sys#standard-output 
o|propagated global variable: out461464 ##sys#standard-output 
o|propagated global variable: out470476 ##sys#standard-output 
o|propagated global variable: out473480 ##sys#standard-output 
o|propagated global variable: out357488 ##sys#standard-output 
o|substituted constant variable: r18192060 
o|substituted constant variable: r18192060 
o|inlining procedure: k1847 
o|substituted constant variable: r18482064 
o|substituted constant variable: r18482064 
o|replaced variables: 18 
o|removed binding forms: 281 
o|inlining procedure: k940 
o|inlining procedure: k940 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:138) machine_constants#poly-shift" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:150) machine_constants#poly-shift" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:147) machine_constants#degree" 
o|inlining procedure: "(/mnt/c/Users/tyuuw/hatsu-yakitori/core/machine_constants.scm:147) machine_constants#degree" 
o|substituted constant variable: r18482108 
o|removed binding forms: 29 
o|substituted constant variable: r9412114 
o|substituted constant variable: r9412115 
o|replaced variables: 10 
o|removed binding forms: 2 
o|removed binding forms: 12 
o|contracted procedure: k1041 
o|contracted procedure: k1044 
o|removed binding forms: 2 
o|simplifications: ((let . 3) (if . 7) (##core#call . 121)) 
o|  call simplifications:
o|    scheme#eq?
o|    chicken.fixnum#fx<
o|    scheme#cdr	2
o|    scheme#string-length
o|    ##sys#size
o|    scheme#>	3
o|    scheme#>=
o|    scheme#list-ref
o|    chicken.bitwise#bitwise-ior
o|    chicken.bitwise#arithmetic-shift	2
o|    chicken.bitwise#bitwise-and	3
o|    scheme#list	9
o|    scheme#+	8
o|    scheme#length	4
o|    chicken.fixnum#fxmax
o|    ##sys#check-list	5
o|    scheme#pair?	7
o|    scheme#cons	11
o|    ##sys#setslot	4
o|    ##sys#slot	18
o|    scheme#=	5
o|    scheme#number?	2
o|    scheme#not
o|    scheme#<=
o|    scheme#null?	6
o|    scheme#car	7
o|    scheme#-	7
o|    scheme#*	2
o|    scheme#<	6
o|contracted procedure: k795 
o|contracted procedure: k764 
o|contracted procedure: k768 
o|contracted procedure: k774 
o|contracted procedure: k784 
o|contracted procedure: k827 
o|contracted procedure: k807 
o|contracted procedure: k816 
o|contracted procedure: k849 
o|contracted procedure: k873 
o|contracted procedure: k876 
o|contracted procedure: k879 
o|contracted procedure: k892 
o|contracted procedure: k903 
o|contracted procedure: k906 
o|contracted procedure: k954 
o|contracted procedure: k918 
o|contracted procedure: k944 
o|contracted procedure: k948 
o|contracted procedure: k900 
o|contracted procedure: k921 
o|contracted procedure: k924 
o|contracted procedure: k932 
o|contracted procedure: k936 
o|contracted procedure: k998 
o|contracted procedure: k1004 
o|contracted procedure: k1015 
o|contracted procedure: k1022 
o|contracted procedure: k1075 
o|contracted procedure: k1082 
o|contracted procedure: k1098 
o|contracted procedure: k1094 
o|contracted procedure: k1090 
o|contracted procedure: k1106 
o|contracted procedure: k1118 
o|contracted procedure: k1121 
o|contracted procedure: k1134 
o|contracted procedure: k1141 
o|contracted procedure: k1131 
o|contracted procedure: k1151 
o|contracted procedure: k1173 
o|contracted procedure: k1165 
o|contracted procedure: k1169 
o|contracted procedure: k1244 
o|contracted procedure: k1212 
o|contracted procedure: k1232 
o|contracted procedure: k1236 
o|contracted procedure: k1221 
o|contracted procedure: k1228 
o|contracted procedure: k1256 
o|contracted procedure: k1262 
o|contracted procedure: k1281 
o|contracted procedure: k1294 
o|contracted procedure: k1310 
o|contracted procedure: k1313 
o|contracted procedure: k1316 
o|contracted procedure: k1324 
o|contracted procedure: k1332 
o|contracted procedure: k1339 
o|contracted procedure: k1349 
o|contracted procedure: k1191 
o|contracted procedure: k1206 
o|contracted procedure: k1437 
o|contracted procedure: k1510 
o|contracted procedure: k1546 
o|contracted procedure: k1521 
o|contracted procedure: k1531 
o|contracted procedure: k1535 
o|contracted procedure: k1539 
o|contracted procedure: k1543 
o|contracted procedure: k1553 
o|contracted procedure: k1563 
o|contracted procedure: k1578 
o|contracted procedure: k1607 
o|contracted procedure: k1603 
o|contracted procedure: k1584 
o|contracted procedure: k1598 
o|contracted procedure: k1660 
o|contracted procedure: k1616 
o|contracted procedure: k1623 
o|contracted procedure: k1634 
o|contracted procedure: k1651 
o|contracted procedure: k1655 
o|contracted procedure: k1830 
o|contracted procedure: k1826 
o|contracted procedure: k1818 
o|contracted procedure: k1850 
o|contracted procedure: k1877 
o|contracted procedure: k1873 
o|contracted procedure: k1856 
o|contracted procedure: k1864 
o|contracted procedure: k1847 
o|contracted procedure: k1884 
o|contracted procedure: k1890 
o|contracted procedure: k1902 
o|contracted procedure: k1905 
o|contracted procedure: k1908 
o|contracted procedure: k1916 
o|contracted procedure: k1924 
o|contracted procedure: k1933 
o|contracted procedure: k1936 
o|contracted procedure: k1948 
o|contracted procedure: k1951 
o|contracted procedure: k1954 
o|contracted procedure: k1962 
o|contracted procedure: k1970 
o|contracted procedure: k1989 
o|contracted procedure: k1993 
o|contracted procedure: k1997 
o|contracted procedure: k2007 
o|contracted procedure: k2011 
o|contracted procedure: k2015 
o|simplifications: ((let . 34)) 
o|removed binding forms: 112 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest2831 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest2831 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest188190 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest188190 0 
o|substituted constant variable: r1990 
o|substituted constant variable: r1994 
o|substituted constant variable: r1998 
o|substituted constant variable: r2008 
o|substituted constant variable: r2012 
o|substituted constant variable: r2016 
o|removed binding forms: 6 
o|customizable procedures: (map-loop383400 map-loop418435 loop341 loop331 g245272 for-each-loop244295 g215224 map-loop209227 loop141 loop134 loop127 loop116 loop105 map-loop6889) 
o|calls to known targets: 53 
o|unused rest argument: rest2831 f_762 
o|identified direct recursive calls: f_913 1 
o|identified direct recursive calls: f_1113 2 
o|identified direct recursive calls: f_1155 1 
o|unused rest argument: rest188190 f_1210 
o|identified direct recursive calls: f_1573 1 
o|fast box initializations: 12 
o|fast global references: 8 
o|fast global assignments: 1 
*/
/* end of file */
