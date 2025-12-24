/* Generated from core/witt_foundation.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: core/witt_foundation.scm -output-file core/witt_foundation.c -debug 7
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

static C_TLS C_word lf[85];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,35),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,109,97,107,101,45,119,105,116,116,45,99,111,110,116,101,120,116,41,0,0,0,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,35),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,99,111,110,116,101,120,116,63,32,111,98,106,41,0,0,0,0,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,99,111,100,101,32,99,111,117,110,116,41,0,0,0,0,0,0,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,34),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,104,97,109,109,105,110,103,45,119,101,105,103,104,116,32,110,41,0,0,0,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,16),40,108,111,111,112,32,112,115,32,114,101,115,117,108,116,41};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,39),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,102,114,111,109,45,112,111,105,110,116,115,32,112,116,115,41,0};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,98,105,116,32,112,111,105,110,116,115,41,0,0,0,0,0,0,0};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,41),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,112,111,105,110,116,115,45,102,114,111,109,45,111,99,116,97,100,32,111,99,116,97,100,41,0,0,0,0,0,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,40),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,99,111,109,112,108,101,109,101,110,116,32,111,99,116,97,100,41};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,46),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,105,110,116,101,114,115,101,99,116,105,111,110,32,111,99,116,49,32,111,99,116,50,41,0,0};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,36),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,119,101,105,103,104,116,32,111,99,116,97,100,41,0,0,0,0};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,35),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,99,108,97,115,115,32,111,99,116,97,100,41,0,0,0,0,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,8),40,97,56,52,53,32,112,41};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,8),40,97,56,53,55,32,112,41};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,8),40,97,56,55,50,32,112,41};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,8),40,97,56,57,51,32,112,41};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,32),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,109,50,52,45,103,101,110,101,114,97,116,111,114,115,41};
static C_char C_TLS li17[] C_aligned={C_lihdr(0,0,37),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,103,101,110,101,114,97,116,111,114,115,45,109,50,52,41,0,0,0};
static C_char C_TLS li18[] C_aligned={C_lihdr(0,0,43),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,97,117,116,111,109,111,114,112,104,105,115,109,32,103,101,110,45,105,100,120,41,0,0,0,0,0};
static C_char C_TLS li19[] C_aligned={C_lihdr(0,0,17),40,108,111,111,112,32,98,105,116,32,114,101,115,117,108,116,41,0,0,0,0,0,0,0};
static C_char C_TLS li20[] C_aligned={C_lihdr(0,0,52),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,97,112,112,108,121,45,97,117,116,111,109,111,114,112,104,105,115,109,32,97,117,116,111,32,111,99,116,97,100,41,0,0,0,0};
static C_char C_TLS li21[] C_aligned={C_lihdr(0,0,22),40,108,111,111,112,45,103,101,110,32,103,105,32,110,101,119,45,111,99,116,115,41,0,0};
static C_char C_TLS li22[] C_aligned={C_lihdr(0,0,18),40,108,111,111,112,32,102,114,111,110,116,32,99,111,117,110,116,41,0,0,0,0,0,0};
static C_char C_TLS li23[] C_aligned={C_lihdr(0,0,41),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,111,114,98,105,116,32,111,99,116,97,100,32,46,32,114,101,115,116,41,0,0,0,0,0,0,0};
static C_char C_TLS li24[] C_aligned={C_lihdr(0,0,11),40,97,49,49,52,57,32,111,99,116,41,0,0,0,0,0};
static C_char C_TLS li25[] C_aligned={C_lihdr(0,0,15),40,108,111,111,112,32,107,32,108,101,118,101,108,115,41,0};
static C_char C_TLS li26[] C_aligned={C_lihdr(0,0,48),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,119,105,116,116,45,99,97,114,116,97,110,45,108,101,118,101,108,115,32,66,32,115,116,101,112,115,32,99,116,120,41};
static C_char C_TLS li27[] C_aligned={C_lihdr(0,0,46),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,111,99,116,97,100,45,97,116,45,108,101,118,101,108,32,99,116,120,32,108,101,118,101,108,45,105,100,120,41,0,0};
static C_char C_TLS li28[] C_aligned={C_lihdr(0,0,54),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,108,101,118,101,108,45,112,114,101,115,101,114,118,105,110,103,45,112,97,114,116,105,116,105,111,110,32,103,114,97,112,104,32,99,116,120,41,0,0};
static C_char C_TLS li29[] C_aligned={C_lihdr(0,0,48),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,103,114,97,112,104,45,114,101,115,112,101,99,116,115,45,119,105,116,116,63,32,103,114,97,112,104,32,99,116,120,41};
static C_char C_TLS li30[] C_aligned={C_lihdr(0,0,48),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,107,97,107,45,112,114,101,115,101,114,118,101,115,45,119,105,116,116,63,32,100,101,99,111,109,112,32,99,116,120,41};
static C_char C_TLS li31[] C_aligned={C_lihdr(0,0,56),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,103,99,45,114,101,115,112,101,99,116,115,45,119,105,116,116,45,116,111,112,111,108,111,103,121,63,32,103,99,45,112,108,97,110,32,99,116,120,41};
static C_char C_TLS li32[] C_aligned={C_lihdr(0,0,45),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,118,97,108,105,100,97,116,101,45,119,105,116,116,45,115,116,114,117,99,116,117,114,101,32,99,116,120,41,0,0,0};
static C_char C_TLS li33[] C_aligned={C_lihdr(0,0,8),40,103,49,55,48,32,115,41};
static C_char C_TLS li34[] C_aligned={C_lihdr(0,0,20),40,108,111,111,112,45,99,111,112,121,32,111,99,116,115,32,105,100,120,41,0,0,0,0};
static C_char C_TLS li35[] C_aligned={C_lihdr(0,0,22),40,108,111,111,112,32,114,101,109,97,105,110,105,110,103,32,99,111,117,110,116,41,0,0};
static C_char C_TLS li36[] C_aligned={C_lihdr(0,0,23),40,102,111,114,45,101,97,99,104,45,108,111,111,112,49,54,57,32,103,49,55,54,41,0};
static C_char C_TLS li37[] C_aligned={C_lihdr(0,0,37),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,103,101,110,101,114,97,116,101,45,97,108,108,45,111,99,116,97,100,115,41,0,0,0};
static C_char C_TLS li38[] C_aligned={C_lihdr(0,0,38),40,119,105,116,116,95,102,111,117,110,100,97,116,105,111,110,35,116,101,115,116,45,119,105,116,116,45,102,111,117,110,100,97,116,105,111,110,41,0,0};
static C_char C_TLS li39[] C_aligned={C_lihdr(0,0,7),40,97,49,54,55,54,41,0};
static C_char C_TLS li40[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_1002)
static void C_ccall f_1002(C_word c,C_word *av) C_noret;
C_noret_decl(f_1004)
static void C_ccall f_1004(C_word c,C_word *av) C_noret;
C_noret_decl(f_1011)
static void C_ccall f_1011(C_word c,C_word *av) C_noret;
C_noret_decl(f_1014)
static void C_ccall f_1014(C_word c,C_word *av) C_noret;
C_noret_decl(f_1022)
static void C_fcall f_1022(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1047)
static void C_ccall f_1047(C_word c,C_word *av) C_noret;
C_noret_decl(f_1053)
static void C_ccall f_1053(C_word c,C_word *av) C_noret;
C_noret_decl(f_1056)
static void C_ccall f_1056(C_word c,C_word *av) C_noret;
C_noret_decl(f_1065)
static void C_fcall f_1065(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1090)
static void C_ccall f_1090(C_word c,C_word *av) C_noret;
C_noret_decl(f_1105)
static void C_ccall f_1105(C_word c,C_word *av) C_noret;
C_noret_decl(f_1109)
static void C_ccall f_1109(C_word c,C_word *av) C_noret;
C_noret_decl(f_1114)
static void C_fcall f_1114(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1127)
static void C_ccall f_1127(C_word c,C_word *av) C_noret;
C_noret_decl(f_1130)
static void C_ccall f_1130(C_word c,C_word *av) C_noret;
C_noret_decl(f_1133)
static void C_ccall f_1133(C_word c,C_word *av) C_noret;
C_noret_decl(f_1150)
static void C_ccall f_1150(C_word c,C_word *av) C_noret;
C_noret_decl(f_1158)
static void C_ccall f_1158(C_word c,C_word *av) C_noret;
C_noret_decl(f_1162)
static void C_ccall f_1162(C_word c,C_word *av) C_noret;
C_noret_decl(f_1170)
static void C_ccall f_1170(C_word c,C_word *av) C_noret;
C_noret_decl(f_1176)
static void C_ccall f_1176(C_word c,C_word *av) C_noret;
C_noret_decl(f_1183)
static void C_ccall f_1183(C_word c,C_word *av) C_noret;
C_noret_decl(f_1197)
static void C_ccall f_1197(C_word c,C_word *av) C_noret;
C_noret_decl(f_1203)
static void C_ccall f_1203(C_word c,C_word *av) C_noret;
C_noret_decl(f_1206)
static void C_ccall f_1206(C_word c,C_word *av) C_noret;
C_noret_decl(f_1209)
static void C_ccall f_1209(C_word c,C_word *av) C_noret;
C_noret_decl(f_1212)
static void C_ccall f_1212(C_word c,C_word *av) C_noret;
C_noret_decl(f_1219)
static void C_ccall f_1219(C_word c,C_word *av) C_noret;
C_noret_decl(f_1231)
static void C_ccall f_1231(C_word c,C_word *av) C_noret;
C_noret_decl(f_1244)
static void C_fcall f_1244(C_word t0) C_noret;
C_noret_decl(f_1248)
static void C_ccall f_1248(C_word c,C_word *av) C_noret;
C_noret_decl(f_1249)
static void C_fcall f_1249(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1259)
static void C_ccall f_1259(C_word c,C_word *av) C_noret;
C_noret_decl(f_1268)
static void C_fcall f_1268(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1281)
static void C_ccall f_1281(C_word c,C_word *av) C_noret;
C_noret_decl(f_1284)
static void C_ccall f_1284(C_word c,C_word *av) C_noret;
C_noret_decl(f_1289)
static void C_fcall f_1289(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1321)
static void C_ccall f_1321(C_word c,C_word *av) C_noret;
C_noret_decl(f_1324)
static void C_ccall f_1324(C_word c,C_word *av) C_noret;
C_noret_decl(f_1327)
static void C_ccall f_1327(C_word c,C_word *av) C_noret;
C_noret_decl(f_1344)
static void C_ccall f_1344(C_word c,C_word *av) C_noret;
C_noret_decl(f_1356)
static void C_fcall f_1356(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1366)
static void C_ccall f_1366(C_word c,C_word *av) C_noret;
C_noret_decl(f_1379)
static void C_ccall f_1379(C_word c,C_word *av) C_noret;
C_noret_decl(f_1383)
static void C_ccall f_1383(C_word c,C_word *av) C_noret;
C_noret_decl(f_1386)
static void C_ccall f_1386(C_word c,C_word *av) C_noret;
C_noret_decl(f_1389)
static void C_ccall f_1389(C_word c,C_word *av) C_noret;
C_noret_decl(f_1392)
static void C_ccall f_1392(C_word c,C_word *av) C_noret;
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
C_noret_decl(f_1428)
static void C_ccall f_1428(C_word c,C_word *av) C_noret;
C_noret_decl(f_1431)
static void C_ccall f_1431(C_word c,C_word *av) C_noret;
C_noret_decl(f_1434)
static void C_ccall f_1434(C_word c,C_word *av) C_noret;
C_noret_decl(f_1437)
static void C_ccall f_1437(C_word c,C_word *av) C_noret;
C_noret_decl(f_1440)
static void C_ccall f_1440(C_word c,C_word *av) C_noret;
C_noret_decl(f_1443)
static void C_ccall f_1443(C_word c,C_word *av) C_noret;
C_noret_decl(f_1446)
static void C_ccall f_1446(C_word c,C_word *av) C_noret;
C_noret_decl(f_1449)
static void C_ccall f_1449(C_word c,C_word *av) C_noret;
C_noret_decl(f_1452)
static void C_ccall f_1452(C_word c,C_word *av) C_noret;
C_noret_decl(f_1455)
static void C_ccall f_1455(C_word c,C_word *av) C_noret;
C_noret_decl(f_1458)
static void C_ccall f_1458(C_word c,C_word *av) C_noret;
C_noret_decl(f_1461)
static void C_ccall f_1461(C_word c,C_word *av) C_noret;
C_noret_decl(f_1464)
static void C_ccall f_1464(C_word c,C_word *av) C_noret;
C_noret_decl(f_1467)
static void C_ccall f_1467(C_word c,C_word *av) C_noret;
C_noret_decl(f_1470)
static void C_ccall f_1470(C_word c,C_word *av) C_noret;
C_noret_decl(f_1473)
static void C_ccall f_1473(C_word c,C_word *av) C_noret;
C_noret_decl(f_1476)
static void C_ccall f_1476(C_word c,C_word *av) C_noret;
C_noret_decl(f_1479)
static void C_ccall f_1479(C_word c,C_word *av) C_noret;
C_noret_decl(f_1482)
static void C_ccall f_1482(C_word c,C_word *av) C_noret;
C_noret_decl(f_1485)
static void C_ccall f_1485(C_word c,C_word *av) C_noret;
C_noret_decl(f_1488)
static void C_ccall f_1488(C_word c,C_word *av) C_noret;
C_noret_decl(f_1491)
static void C_ccall f_1491(C_word c,C_word *av) C_noret;
C_noret_decl(f_1494)
static void C_ccall f_1494(C_word c,C_word *av) C_noret;
C_noret_decl(f_1497)
static void C_ccall f_1497(C_word c,C_word *av) C_noret;
C_noret_decl(f_1500)
static void C_ccall f_1500(C_word c,C_word *av) C_noret;
C_noret_decl(f_1503)
static void C_ccall f_1503(C_word c,C_word *av) C_noret;
C_noret_decl(f_1506)
static void C_ccall f_1506(C_word c,C_word *av) C_noret;
C_noret_decl(f_1509)
static void C_ccall f_1509(C_word c,C_word *av) C_noret;
C_noret_decl(f_1512)
static void C_ccall f_1512(C_word c,C_word *av) C_noret;
C_noret_decl(f_1515)
static void C_ccall f_1515(C_word c,C_word *av) C_noret;
C_noret_decl(f_1518)
static void C_ccall f_1518(C_word c,C_word *av) C_noret;
C_noret_decl(f_1521)
static void C_ccall f_1521(C_word c,C_word *av) C_noret;
C_noret_decl(f_1524)
static void C_ccall f_1524(C_word c,C_word *av) C_noret;
C_noret_decl(f_1527)
static void C_ccall f_1527(C_word c,C_word *av) C_noret;
C_noret_decl(f_1530)
static void C_ccall f_1530(C_word c,C_word *av) C_noret;
C_noret_decl(f_1533)
static void C_ccall f_1533(C_word c,C_word *av) C_noret;
C_noret_decl(f_1536)
static void C_ccall f_1536(C_word c,C_word *av) C_noret;
C_noret_decl(f_1539)
static void C_ccall f_1539(C_word c,C_word *av) C_noret;
C_noret_decl(f_1542)
static void C_ccall f_1542(C_word c,C_word *av) C_noret;
C_noret_decl(f_1545)
static void C_ccall f_1545(C_word c,C_word *av) C_noret;
C_noret_decl(f_1548)
static void C_ccall f_1548(C_word c,C_word *av) C_noret;
C_noret_decl(f_1551)
static void C_ccall f_1551(C_word c,C_word *av) C_noret;
C_noret_decl(f_1554)
static void C_ccall f_1554(C_word c,C_word *av) C_noret;
C_noret_decl(f_1557)
static void C_ccall f_1557(C_word c,C_word *av) C_noret;
C_noret_decl(f_1560)
static void C_ccall f_1560(C_word c,C_word *av) C_noret;
C_noret_decl(f_1563)
static void C_ccall f_1563(C_word c,C_word *av) C_noret;
C_noret_decl(f_1566)
static void C_ccall f_1566(C_word c,C_word *av) C_noret;
C_noret_decl(f_1569)
static void C_ccall f_1569(C_word c,C_word *av) C_noret;
C_noret_decl(f_1572)
static void C_ccall f_1572(C_word c,C_word *av) C_noret;
C_noret_decl(f_1575)
static void C_ccall f_1575(C_word c,C_word *av) C_noret;
C_noret_decl(f_1578)
static void C_ccall f_1578(C_word c,C_word *av) C_noret;
C_noret_decl(f_1581)
static void C_ccall f_1581(C_word c,C_word *av) C_noret;
C_noret_decl(f_1584)
static void C_ccall f_1584(C_word c,C_word *av) C_noret;
C_noret_decl(f_1587)
static void C_ccall f_1587(C_word c,C_word *av) C_noret;
C_noret_decl(f_1590)
static void C_ccall f_1590(C_word c,C_word *av) C_noret;
C_noret_decl(f_1593)
static void C_ccall f_1593(C_word c,C_word *av) C_noret;
C_noret_decl(f_1596)
static void C_ccall f_1596(C_word c,C_word *av) C_noret;
C_noret_decl(f_1599)
static void C_ccall f_1599(C_word c,C_word *av) C_noret;
C_noret_decl(f_1602)
static void C_ccall f_1602(C_word c,C_word *av) C_noret;
C_noret_decl(f_1605)
static void C_ccall f_1605(C_word c,C_word *av) C_noret;
C_noret_decl(f_1608)
static void C_ccall f_1608(C_word c,C_word *av) C_noret;
C_noret_decl(f_1611)
static void C_ccall f_1611(C_word c,C_word *av) C_noret;
C_noret_decl(f_1626)
static void C_ccall f_1626(C_word c,C_word *av) C_noret;
C_noret_decl(f_1630)
static void C_ccall f_1630(C_word c,C_word *av) C_noret;
C_noret_decl(f_1634)
static void C_ccall f_1634(C_word c,C_word *av) C_noret;
C_noret_decl(f_1638)
static void C_ccall f_1638(C_word c,C_word *av) C_noret;
C_noret_decl(f_1642)
static void C_ccall f_1642(C_word c,C_word *av) C_noret;
C_noret_decl(f_1646)
static void C_ccall f_1646(C_word c,C_word *av) C_noret;
C_noret_decl(f_1650)
static void C_ccall f_1650(C_word c,C_word *av) C_noret;
C_noret_decl(f_1654)
static void C_ccall f_1654(C_word c,C_word *av) C_noret;
C_noret_decl(f_1669)
static void C_ccall f_1669(C_word c,C_word *av) C_noret;
C_noret_decl(f_1675)
static void C_ccall f_1675(C_word c,C_word *av) C_noret;
C_noret_decl(f_1677)
static void C_ccall f_1677(C_word c,C_word *av) C_noret;
C_noret_decl(f_608)
static void C_ccall f_608(C_word c,C_word *av) C_noret;
C_noret_decl(f_611)
static void C_ccall f_611(C_word c,C_word *av) C_noret;
C_noret_decl(f_614)
static void C_ccall f_614(C_word c,C_word *av) C_noret;
C_noret_decl(f_617)
static void C_ccall f_617(C_word c,C_word *av) C_noret;
C_noret_decl(f_620)
static void C_ccall f_620(C_word c,C_word *av) C_noret;
C_noret_decl(f_623)
static void C_ccall f_623(C_word c,C_word *av) C_noret;
C_noret_decl(f_625)
static void C_ccall f_625(C_word c,C_word *av) C_noret;
C_noret_decl(f_629)
static void C_ccall f_629(C_word c,C_word *av) C_noret;
C_noret_decl(f_632)
static void C_ccall f_632(C_word c,C_word *av) C_noret;
C_noret_decl(f_635)
static void C_ccall f_635(C_word c,C_word *av) C_noret;
C_noret_decl(f_642)
static void C_ccall f_642(C_word c,C_word *av) C_noret;
C_noret_decl(f_644)
static void C_ccall f_644(C_word c,C_word *av) C_noret;
C_noret_decl(f_670)
static void C_fcall f_670(C_word t0,C_word t1) C_noret;
C_noret_decl(f_676)
static void C_fcall f_676(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_700)
static void C_ccall f_700(C_word c,C_word *av) C_noret;
C_noret_decl(f_706)
static void C_fcall f_706(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_733)
static void C_ccall f_733(C_word c,C_word *av) C_noret;
C_noret_decl(f_739)
static void C_fcall f_739(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_777)
static void C_ccall f_777(C_word c,C_word *av) C_noret;
C_noret_decl(f_779)
static void C_ccall f_779(C_word c,C_word *av) C_noret;
C_noret_decl(f_785)
static void C_ccall f_785(C_word c,C_word *av) C_noret;
C_noret_decl(f_796)
static void C_ccall f_796(C_word c,C_word *av) C_noret;
C_noret_decl(f_798)
static void C_ccall f_798(C_word c,C_word *av) C_noret;
C_noret_decl(f_804)
static void C_ccall f_804(C_word c,C_word *av) C_noret;
C_noret_decl(f_808)
static void C_ccall f_808(C_word c,C_word *av) C_noret;
C_noret_decl(f_840)
static void C_fcall f_840(C_word t0) C_noret;
C_noret_decl(f_846)
static void C_ccall f_846(C_word c,C_word *av) C_noret;
C_noret_decl(f_858)
static void C_ccall f_858(C_word c,C_word *av) C_noret;
C_noret_decl(f_873)
static void C_ccall f_873(C_word c,C_word *av) C_noret;
C_noret_decl(f_894)
static void C_ccall f_894(C_word c,C_word *av) C_noret;
C_noret_decl(f_921)
static void C_ccall f_921(C_word c,C_word *av) C_noret;
C_noret_decl(f_927)
static void C_ccall f_927(C_word c,C_word *av) C_noret;
C_noret_decl(f_931)
static void C_ccall f_931(C_word c,C_word *av) C_noret;
C_noret_decl(f_955)
static void C_ccall f_955(C_word c,C_word *av) C_noret;
C_noret_decl(f_961)
static void C_fcall f_961(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_974)
static void C_ccall f_974(C_word c,C_word *av) C_noret;
C_noret_decl(f_977)
static void C_fcall f_977(C_word t0,C_word t1) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_1022)
static void C_ccall trf_1022(C_word c,C_word *av) C_noret;
static void C_ccall trf_1022(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1022(t0,t1,t2,t3);}

C_noret_decl(trf_1065)
static void C_ccall trf_1065(C_word c,C_word *av) C_noret;
static void C_ccall trf_1065(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1065(t0,t1,t2,t3);}

C_noret_decl(trf_1114)
static void C_ccall trf_1114(C_word c,C_word *av) C_noret;
static void C_ccall trf_1114(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1114(t0,t1,t2,t3);}

C_noret_decl(trf_1244)
static void C_ccall trf_1244(C_word c,C_word *av) C_noret;
static void C_ccall trf_1244(C_word c,C_word *av){
C_word t0=av[0];
f_1244(t0);}

C_noret_decl(trf_1249)
static void C_ccall trf_1249(C_word c,C_word *av) C_noret;
static void C_ccall trf_1249(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1249(t0,t1,t2);}

C_noret_decl(trf_1268)
static void C_ccall trf_1268(C_word c,C_word *av) C_noret;
static void C_ccall trf_1268(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1268(t0,t1,t2,t3);}

C_noret_decl(trf_1289)
static void C_ccall trf_1289(C_word c,C_word *av) C_noret;
static void C_ccall trf_1289(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1289(t0,t1,t2,t3);}

C_noret_decl(trf_1356)
static void C_ccall trf_1356(C_word c,C_word *av) C_noret;
static void C_ccall trf_1356(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1356(t0,t1,t2);}

C_noret_decl(trf_670)
static void C_ccall trf_670(C_word c,C_word *av) C_noret;
static void C_ccall trf_670(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_670(t0,t1);}

C_noret_decl(trf_676)
static void C_ccall trf_676(C_word c,C_word *av) C_noret;
static void C_ccall trf_676(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_676(t0,t1,t2,t3);}

C_noret_decl(trf_706)
static void C_ccall trf_706(C_word c,C_word *av) C_noret;
static void C_ccall trf_706(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_706(t0,t1,t2,t3);}

C_noret_decl(trf_739)
static void C_ccall trf_739(C_word c,C_word *av) C_noret;
static void C_ccall trf_739(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_739(t0,t1,t2,t3);}

C_noret_decl(trf_840)
static void C_ccall trf_840(C_word c,C_word *av) C_noret;
static void C_ccall trf_840(C_word c,C_word *av){
C_word t0=av[0];
f_840(t0);}

C_noret_decl(trf_961)
static void C_ccall trf_961(C_word c,C_word *av) C_noret;
static void C_ccall trf_961(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_961(t0,t1,t2,t3);}

C_noret_decl(trf_977)
static void C_ccall trf_977(C_word c,C_word *av) C_noret;
static void C_ccall trf_977(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_977(t0,t1);}

/* k1000 in loop in witt_foundation#witt-apply-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1002(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(17,c,2)))){
C_save_and_reclaim((void *)f_1002,c,av);}
a=C_alloc(17);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,t2,C_fix(1));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_974,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=t3,a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_foundation.scm:228: auto"));
t5=((C_word*)t0)[7];{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[3];
((C_proc)C_fast_retrieve_proc(t5))(3,av2);}}

/* witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1004(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_1004,c,av);}
a=C_alloc(5);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(100):C_get_rest_arg(c,3,av,3,t0));
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1011,a[2]=t2,a[3]=t4,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:242: m24-generators"));
f_840(t5);}

/* k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1011(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_1011,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1014,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:243: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2=av;
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t2;
tp(2,av2);}}

/* k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1014(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1014,c,av);}
a=C_alloc(12);
t2=C_a_i_list1(&a,1,((C_word*)t0)[2]);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1022,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t4,a[5]=((C_word*)t0)[4],a[6]=((C_word)li22),tmp=(C_word)a,a+=7,tmp));
t6=((C_word*)t4)[1];
f_1022(t6,((C_word*)t0)[5],t2,C_fix(0));}

/* loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1022(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,4)))){
C_save_and_reclaim_args((void *)trf_1022,4,t0,t1,t2,t3);}
a=C_alloc(9);
t4=C_i_nullp(t2);
t5=(C_truep(t4)?t4:C_i_greater_or_equalp(t3,((C_word*)t0)[2]));
if(C_truep(t5)){
C_trace(C_text("core/witt_foundation.scm:248: srfi-69#hash-table-keys"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word av2[3];
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t1;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}
else{
t6=C_i_car(t2);
t7=C_i_cdr(t2);
t8=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_1047,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=t7,a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=t6,a[8]=((C_word*)t0)[3],tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("core/witt_foundation.scm:254: srfi-69#hash-table-ref/default"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word av2[5];
av2[0]=*((C_word*)lf[29]+1);
av2[1]=t8;
av2[2]=((C_word*)t0)[3];
av2[3]=t6;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}}

/* k1045 in loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1047(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1047,c,av);}
a=C_alloc(8);
if(C_truep(t1)){
C_trace(C_text("core/witt_foundation.scm:255: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_1022(t2,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5]);}
else{
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1053,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[7],a[7]=((C_word*)t0)[4],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/witt_foundation.scm:258: srfi-69#hash-table-set!"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[28]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[28]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[8];
av2[3]=((C_word*)t0)[7];
av2[4]=C_SCHEME_TRUE;
tp(5,av2);}}}

/* k1051 in k1045 in loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1053(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(13,c,4)))){
C_save_and_reclaim((void *)f_1053,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1056,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1065,a[2]=((C_word*)t0)[5],a[3]=t4,a[4]=((C_word*)t0)[6],a[5]=((C_word)li21),tmp=(C_word)a,a+=6,tmp));
t6=((C_word*)t4)[1];
f_1065(t6,t2,C_fix(0),((C_word*)t0)[7]);}

/* k1054 in k1051 in k1045 in loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1056(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,3)))){
C_save_and_reclaim((void *)f_1056,c,av);}
a=C_alloc(29);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
C_trace(C_text("core/witt_foundation.scm:269: loop"));
t3=((C_word*)((C_word*)t0)[3])[1];
f_1022(t3,((C_word*)t0)[4],t1,t2);}

/* loop-gen in k1051 in k1045 in loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1065(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(35,0,3)))){
C_save_and_reclaim_args((void *)trf_1065,4,t0,t1,t2,t3);}
a=C_alloc(35);
t4=C_i_vector_length(((C_word*)t0)[2]);
if(C_truep(C_i_lessp(t2,t4))){
t5=C_i_vector_ref(((C_word*)t0)[2],t2);
t6=C_s_a_i_plus(&a,2,t2,C_fix(1));
t7=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1090,a[2]=t3,a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t6,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:266: witt-apply-automorphism"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[25]);
C_word av2[4];
av2[0]=*((C_word*)lf[25]+1);
av2[1]=t7;
av2[2]=t5;
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}
else{
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* k1088 in loop-gen in k1051 in k1045 in loop in k1012 in k1009 in witt_foundation#witt-orbit in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1090(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1090,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,((C_word*)t0)[2]);
C_trace(C_text("core/witt_foundation.scm:265: loop-gen"));
t3=((C_word*)((C_word*)t0)[3])[1];
f_1065(t3,((C_word*)t0)[4],((C_word*)t0)[5],t2);}

/* witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1105(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1105,c,av);}
a=C_alloc(4);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1109,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:293: scheme#log"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[36]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t5;
av2[2]=t2;
tp(3,av2);}}

/* k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1109(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1109,c,av);}
a=C_alloc(8);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1114,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=t1,a[5]=((C_word)li25),tmp=(C_word)a,a+=6,tmp));
t5=((C_word*)t3)[1];
f_1114(t5,((C_word*)t0)[3],C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1114(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(42,0,3)))){
C_save_and_reclaim_args((void *)trf_1114,4,t0,t1,t2,t3);}
a=C_alloc(42);
if(C_truep(C_i_greaterp(t2,((C_word*)t0)[2]))){
C_trace(C_text("core/witt_foundation.scm:295: scheme#reverse"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[10]+1));
C_word av2[3];
av2[0]=*((C_word*)lf[10]+1);
av2[1]=t1;
av2[2]=t3;
tp(3,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1127,a[2]=t2,a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1170,a[2]=t4,tmp=(C_word)a,a+=3,tmp);
t6=C_s_a_i_times(&a,2,t2,((C_word*)t0)[4]);
C_trace(C_text("core/witt_foundation.scm:296: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[35]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[35]+1);
av2[1]=t5;
av2[2]=t6;
av2[3]=((C_word*)t0)[2];
tp(4,av2);}}}

/* k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1127(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(40,c,2)))){
C_save_and_reclaim((void *)f_1127,c,av);}
a=C_alloc(40);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1130,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t3=C_s_a_i_times(&a,2,lf[32],t1);
C_trace(C_text("core/witt_foundation.scm:297: scheme#round"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[33]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[33]+1);
av2[1]=t2;
av2[2]=t3;
tp(3,av2);}}

/* k1128 in k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1130(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,3)))){
C_save_and_reclaim((void *)f_1130,c,av);}
a=C_alloc(15);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1133,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1150,a[2]=t1,a[3]=((C_word)li24),tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1162,a[2]=t2,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:301: generate-all-octads"));
f_1244(t4);}

/* k1131 in k1128 in k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1133(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(35,c,3)))){
C_save_and_reclaim((void *)f_1133,c,av);}
a=C_alloc(35);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=C_a_i_cons(&a,2,((C_word*)t0)[3],t1);
t4=C_a_i_cons(&a,2,t3,((C_word*)t0)[4]);
C_trace(C_text("core/witt_foundation.scm:303: loop"));
t5=((C_word*)((C_word*)t0)[5])[1];
f_1114(t5,((C_word*)t0)[6],t2,t4);}

/* a1149 in k1128 in k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1150(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1150,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1158,a[2]=t1,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:300: octad-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[13]);
C_word *av2=av;
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k1156 in a1149 in k1128 in k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1158(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1158,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_i_less_or_equalp(t1,((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k1160 in k1128 in k1125 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1162(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1162,c,av);}
C_trace(C_text("core/witt_foundation.scm:299: srfi-1#filter"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[31]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
tp(4,av2);}}

/* k1168 in loop in k1107 in witt_foundation#witt-cartan-levels in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1170(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1170,c,av);}
C_trace(C_text("core/witt_foundation.scm:296: scheme#exp"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[34]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[34]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
tp(3,av2);}}

/* witt_foundation#octad-at-level in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1176(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1176,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1183,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
if(C_truep(C_i_vectorp(t2))){
C_trace(C_text("core/witt_foundation.scm:311: witt-context?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[6]);
C_word *av2=av;
av2[0]=*((C_word*)lf[6]+1);
av2[1]=t4;
av2[2]=t2;
tp(3,av2);}}
else{
t5=t4;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_SCHEME_FALSE;
f_1183(2,av2);}}}

/* k1181 in witt_foundation#octad-at-level in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1183(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1183,c,av);}
if(C_truep(t1)){
C_trace(C_text("core/witt_foundation.scm:313: srfi-69#hash-table-ref/default"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[29]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[29]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_i_vector_ref(((C_word*)t0)[3],C_fix(4));
av2[3]=((C_word*)t0)[4];
av2[4]=C_SCHEME_END_OF_LIST;
tp(5,av2);}}
else{
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* witt_foundation#level-preserving-partition in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1197(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1197,c,av);}
C_trace(C_text("core/witt_foundation.scm:323: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2=av;
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t1;
tp(2,av2);}}

/* witt_foundation#graph-respects-witt? in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1203(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1203,c,av);}
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* witt_foundation#kak-preserves-witt? in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1206(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1206,c,av);}
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* witt_foundation#gc-respects-witt-topology? in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1209(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1209,c,av);}
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* witt_foundation#validate-witt-structure in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1212(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1212,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1219,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:373: witt-context?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[6]);
C_word *av2=av;
av2[0]=*((C_word*)lf[6]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k1217 in witt_foundation#validate-witt-structure in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1219(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1219,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(1));
t3=C_i_vector_length(t2);
if(C_truep(C_i_nequalp(t3,C_fix(759)))){
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1231,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:375: graph-respects-witt?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[39]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[39]+1);
av2[1]=t4;
av2[2]=C_SCHEME_FALSE;
av2[3]=((C_word*)t0)[2];
tp(4,av2);}}
else{
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}
else{
t2=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* k1229 in k1217 in witt_foundation#validate-witt-structure in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1231(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1231,c,av);}
if(C_truep(t1)){
C_trace(C_text("core/witt_foundation.scm:376: kak-preserves-witt?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[40]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[40]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_SCHEME_FALSE;
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}
else{
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}}

/* witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1244(C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,0,2)))){
C_save_and_reclaim_args((void *)trf_1244,1,t1);}
a=C_alloc(4);
t2=lf[43];
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1248,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:392: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word av2[2];
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t3;
tp(2,av2);}}

/* k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1248(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(16,c,3)))){
C_save_and_reclaim((void *)f_1248,c,av);}
a=C_alloc(16);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1249,a[2]=t1,a[3]=((C_word)li33),tmp=(C_word)a,a+=4,tmp);
t3=C_i_check_list_2(((C_word*)t0)[2],lf[44]);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1259,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1356,a[2]=t6,a[3]=t2,a[4]=((C_word)li36),tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_1356(t8,t4,((C_word*)t0)[2]);}

/* g170 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1249(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_1249,3,t0,t1,t2);}
C_trace(C_text("core/witt_foundation.scm:395: srfi-69#hash-table-set!"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[28]);
C_word av2[5];
av2[0]=*((C_word*)lf[28]+1);
av2[1]=t1;
av2[2]=((C_word*)t0)[2];
av2[3]=t2;
av2[4]=C_SCHEME_TRUE;
tp(5,av2);}}

/* k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1259(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1259,c,av);}
a=C_alloc(7);
t2=C_i_length(((C_word*)t0)[2]);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1268,a[2]=((C_word*)t0)[3],a[3]=t4,a[4]=((C_word)li35),tmp=(C_word)a,a+=5,tmp));
t6=((C_word*)t4)[1];
f_1268(t6,((C_word*)t0)[4],C_fix(755),t2);}

/* loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1268(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_1268,4,t0,t1,t2,t3);}
a=C_alloc(7);
t4=C_i_less_or_equalp(t2,C_fix(0));
t5=(C_truep(t4)?t4:C_i_greater_or_equalp(t3,C_fix(759)));
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1281,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:401: srfi-69#hash-table-keys"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word av2[3];
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t6;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}
else{
t6=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1321,a[2]=t2,a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=((C_word*)t0)[2],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_foundation.scm:409: srfi-69#hash-table-keys"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[27]);
C_word av2[3];
av2[0]=*((C_word*)lf[27]+1);
av2[1]=t6;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}}

/* k1279 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1281(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1281,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1284,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:402: scheme#make-vector"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[45]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[45]+1);
av2[1]=t2;
av2[2]=C_i_length(t1);
tp(3,av2);}}

/* k1282 in k1279 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1284(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1284,c,av);}
a=C_alloc(7);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1289,a[2]=t1,a[3]=t3,a[4]=((C_word)li34),tmp=(C_word)a,a+=5,tmp));
t5=((C_word*)t3)[1];
f_1289(t5,((C_word*)t0)[2],((C_word*)t0)[3],C_fix(0));}

/* loop-copy in k1282 in k1279 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1289(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(29,0,3)))){
C_save_and_reclaim_args((void *)trf_1289,4,t0,t1,t2,t3);}
a=C_alloc(29);
if(C_truep(C_i_nullp(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_car(t2);
t5=C_i_vector_set(((C_word*)t0)[2],t3,t4);
t6=C_i_cdr(t2);
t7=C_s_a_i_plus(&a,2,t3,C_fix(1));
C_trace(C_text("core/witt_foundation.scm:406: loop-copy"));
t9=t1;
t10=t6;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}

/* k1319 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1321(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,2)))){
C_save_and_reclaim((void *)f_1321,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1324,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
if(C_truep(C_i_nullp(t1))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(0);
f_1324(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1344,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:411: witt-automorphism"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[22]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=C_fix(0);
tp(3,av2);}}}

/* k1322 in k1319 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1324(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1324,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1327,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:413: srfi-69#hash-table-set!"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[28]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[28]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=t1;
av2[4]=C_SCHEME_TRUE;
tp(5,av2);}}

/* k1325 in k1322 in k1319 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1327(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(58,c,3)))){
C_save_and_reclaim((void *)f_1327,c,av);}
a=C_alloc(58);
t2=C_s_a_i_minus(&a,2,((C_word*)t0)[2],C_fix(1));
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
C_trace(C_text("core/witt_foundation.scm:414: loop"));
t4=((C_word*)((C_word*)t0)[4])[1];
f_1268(t4,((C_word*)t0)[5],t2,t3);}

/* k1342 in k1319 in loop in k1257 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1344(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1344,c,av);}
C_trace(C_text("core/witt_foundation.scm:412: witt-apply-automorphism"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[25]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[25]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=C_i_car(((C_word*)t0)[3]);
tp(4,av2);}}

/* for-each-loop169 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_1356(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_1356,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1366,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:393: g170"));
t4=((C_word*)t0)[3];
f_1249(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k1364 in for-each-loop169 in k1246 in witt_foundation#generate-all-octads in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1366(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_1366,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_1356(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1379(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1379,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1383,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:423: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1383(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1383,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1386,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:423: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[76];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1386(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1386,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1389,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:423: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1389(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1389,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1392,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:424: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1392(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1392,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1395,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:424: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[75];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1395(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1395,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1398,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:424: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1398(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1398,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1401,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:425: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1401(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1401,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1404,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:425: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[74];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1404(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1404,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1407,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:425: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1407(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1407,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1410,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:425: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1410(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1410,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1413,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:428: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1413(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1413,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1416,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:428: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[73];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1416(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1416,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1419,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:428: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1419(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1419,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1422,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:429: make-witt-context"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[1]);
C_word *av2=av;
av2[0]=*((C_word*)lf[1]+1);
av2[1]=t2;
tp(2,av2);}}

/* k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1422(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1422,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1425,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:430: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in k606 in ... */
static void C_ccall f_1425(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1425,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1428,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:430: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in k609 in ... */
static void C_ccall f_1428(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_1428,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1431,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1669,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:430: witt-context?"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[6]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[6]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in ... */
static void C_ccall f_1431(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1431,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1434,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:430: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in ... */
static void C_ccall f_1434(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1434,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1437,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:431: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in ... */
static void C_ccall f_1437(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1437,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1440,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:431: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[69];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in ... */
static void C_ccall f_1440(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1440,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1443,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_i_vector_ref(((C_word*)t0)[4],C_fix(1));
C_trace(C_text("core/witt_foundation.scm:431: ##sys#print"));
t4=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=C_i_vector_length(t3);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}

/* k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in ... */
static void C_ccall f_1443(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1443,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1446,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:431: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in ... */
static void C_ccall f_1446(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1446,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1449,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:431: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in ... */
static void C_ccall f_1449(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1449,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1452,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:435: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in ... */
static void C_ccall f_1452(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1452,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1455,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:435: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in ... */
static void C_ccall f_1455(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1455,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1458,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:435: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in ... */
static void C_ccall f_1458(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1458,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1461,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:435: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in ... */
static void C_ccall f_1461(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1461,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1464,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:436: octad-from-points"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[8]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[8]+1);
av2[1]=t2;
av2[2]=lf[66];
tp(3,av2);}}

/* k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in ... */
static void C_ccall f_1464(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1464,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1467,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:437: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in ... */
static void C_ccall f_1467(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1467,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1470,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:437: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[65];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in ... */
static void C_ccall f_1470(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_1470,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1473,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1654,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:437: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[57]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[57]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in ... */
static void C_ccall f_1473(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1473,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1476,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:437: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in ... */
static void C_ccall f_1476(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1476,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1479,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:438: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in ... */
static void C_ccall f_1479(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1479,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1482,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:438: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[64];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in ... */
static void C_ccall f_1482(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_1482,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1485,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1650,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:438: points-from-octad"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[9]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[9]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in ... */
static void C_ccall f_1485(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1485,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1488,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:438: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in ... */
static void C_ccall f_1488(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1488,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1491,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:439: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in ... */
static void C_ccall f_1491(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1491,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1494,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:439: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in ... */
static void C_ccall f_1494(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_1494,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1497,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1646,a[2]=t2,a[3]=((C_word*)t0)[4],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:439: octad-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[13]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
tp(3,av2);}}

/* k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in ... */
static void C_ccall f_1497(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1497,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1500,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:439: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in ... */
static void C_ccall f_1500(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1500,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1503,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:440: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in ... */
static void C_ccall f_1503(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1503,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1506,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:440: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in ... */
static void C_ccall f_1506(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,2)))){
C_save_and_reclaim((void *)f_1506,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1509,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1642,a[2]=t2,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:440: octad-class"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
tp(3,av2);}}

/* k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in ... */
static void C_ccall f_1509(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1509,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1512,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:440: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in ... */
static void C_ccall f_1512(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1512,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1515,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:443: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in ... */
static void C_ccall f_1515(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1515,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1518,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:443: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in ... */
static void C_ccall f_1518(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1518,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1521,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:443: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[61];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in ... */
static void C_ccall f_1521(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1521,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1524,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:443: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in ... */
static void C_ccall f_1524(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1524,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1527,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:444: witt-automorphism"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[22]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t2;
av2[2]=C_fix(0);
tp(3,av2);}}

/* k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in ... */
static void C_ccall f_1527(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1527,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1530,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:445: octad-from-points"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[8]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[8]+1);
av2[1]=t2;
av2[2]=lf[60];
tp(3,av2);}}

/* k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in ... */
static void C_ccall f_1530(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1530,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1533,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:446: witt-apply-automorphism"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[25]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[25]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
tp(4,av2);}}

/* k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in ... */
static void C_ccall f_1533(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1533,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1536,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:447: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in ... */
static void C_ccall f_1536(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1536,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1539,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:447: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[59];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in ... */
static void C_ccall f_1539(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_1539,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1542,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1638,a[2]=t2,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:447: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[57]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[57]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in ... */
static void C_ccall f_1542(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1542,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1545,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:447: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in ... */
static void C_ccall f_1545(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1545,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1548,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:448: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in ... */
static void C_ccall f_1548(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1548,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1551,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:448: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[58];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in ... */
static void C_ccall f_1551(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,3)))){
C_save_and_reclaim((void *)f_1551,c,av);}
a=C_alloc(10);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1554,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1634,a[2]=t2,a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:448: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[57]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[57]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[3];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in ... */
static void C_ccall f_1554(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1554,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1557,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:448: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in ... */
static void C_ccall f_1557(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1557,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1560,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:449: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in ... */
static void C_ccall f_1560(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1560,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1563,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:449: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in ... */
static void C_ccall f_1563(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_1563,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1566,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1626,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:450: octad-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[13]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[5];
tp(3,av2);}}

/* k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in ... */
static void C_ccall f_1566(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1566,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1569,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:449: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in ... */
static void C_ccall f_1569(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1569,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1572,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:449: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in ... */
static void C_ccall f_1572(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1572,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1575,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:453: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in ... */
static void C_ccall f_1575(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1575,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1578,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:453: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in ... */
static void C_ccall f_1578(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1578,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1581,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:453: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in ... */
static void C_ccall f_1581(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1581,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1584,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:453: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in ... */
static void C_ccall f_1584(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1584,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1587,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:454: make-witt-context"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[1]);
C_word *av2=av;
av2[0]=*((C_word*)lf[1]+1);
av2[1]=t2;
tp(2,av2);}}

/* k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in ... */
static void C_ccall f_1587(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1587,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1590,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:455: witt-cartan-levels"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[30]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[30]+1);
av2[1]=t2;
av2[2]=C_fix(8);
av2[3]=C_fix(3);
av2[4]=t1;
tp(5,av2);}}

/* k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in ... */
static void C_ccall f_1590(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1590,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1593,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:456: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in ... */
static void C_ccall f_1593(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1593,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1596,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:456: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in ... */
static void C_ccall f_1596(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1596,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1599,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:456: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
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

/* k1597 in k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in ... */
static void C_ccall f_1599(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1599,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1602,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:456: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1600 in k1597 in k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in ... */
static void C_ccall f_1602(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1602,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[47]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1605,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:458: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[51]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[51]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[47]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[52];
tp(5,av2);}}

/* k1603 in k1600 in k1597 in k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in ... */
static void C_ccall f_1605(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1605,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1608,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:458: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1606 in k1603 in k1600 in k1597 in k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in ... */
static void C_ccall f_1608(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1608,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1611,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:458: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[50];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1609 in k1606 in k1603 in k1600 in k1597 in k1594 in k1591 in k1588 in k1585 in k1582 in k1579 in k1576 in k1573 in k1570 in k1567 in k1564 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in ... */
static void C_ccall f_1611(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1611,c,av);}
C_trace(C_text("core/witt_foundation.scm:458: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[48]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[48]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1624 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in ... */
static void C_ccall f_1626(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_1626,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1630,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:450: octad-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[13]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
tp(3,av2);}}

/* k1628 in k1624 in k1561 in k1558 in k1555 in k1552 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in ... */
static void C_ccall f_1630(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1630,c,av);}
C_trace(C_text("core/witt_foundation.scm:449: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=C_i_nequalp(((C_word*)t0)[3],t1);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k1632 in k1549 in k1546 in k1543 in k1540 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in ... */
static void C_ccall f_1634(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1634,c,av);}
C_trace(C_text("core/witt_foundation.scm:448: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1636 in k1537 in k1534 in k1531 in k1528 in k1525 in k1522 in k1519 in k1516 in k1513 in k1510 in k1507 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in ... */
static void C_ccall f_1638(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1638,c,av);}
C_trace(C_text("core/witt_foundation.scm:447: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1640 in k1504 in k1501 in k1498 in k1495 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in ... */
static void C_ccall f_1642(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1642,c,av);}
C_trace(C_text("core/witt_foundation.scm:440: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1644 in k1492 in k1489 in k1486 in k1483 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in ... */
static void C_ccall f_1646(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1646,c,av);}
C_trace(C_text("core/witt_foundation.scm:439: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1648 in k1480 in k1477 in k1474 in k1471 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in ... */
static void C_ccall f_1650(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1650,c,av);}
C_trace(C_text("core/witt_foundation.scm:438: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1652 in k1468 in k1465 in k1462 in k1459 in k1456 in k1453 in k1450 in k1447 in k1444 in k1441 in k1438 in k1435 in k1432 in k1429 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in ... */
static void C_ccall f_1654(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1654,c,av);}
C_trace(C_text("core/witt_foundation.scm:437: ##sys#print"));
t2=*((C_word*)lf[49]+1);{
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

/* k1667 in k1426 in k1423 in k1420 in k1417 in k1414 in k1411 in k1408 in k1405 in k1402 in k1399 in k1396 in k1393 in k1390 in k1387 in k1384 in k1381 in witt_foundation#test-witt-foundation in k621 in k618 in k615 in k612 in ... */
static void C_ccall f_1669(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1669,c,av);}
t2=(C_truep(t1)?lf[70]:lf[71]);
C_trace(C_text("core/witt_foundation.scm:430: ##sys#print"));
t3=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
av2[2]=t2;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1673 in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_1675(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1675,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)C_fast_retrieve_proc(t2))(2,av2);}}

/* a1676 in k609 in k606 */
static void C_ccall f_1677(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_1677,c,av);}
C_trace(C_text("core/witt_foundation.scm:11: ##sys#register-compiled-module"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[81]);
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=*((C_word*)lf[81]+1);
av2[1]=t1;
av2[2]=lf[82];
av2[3]=C_SCHEME_FALSE;
av2[4]=C_SCHEME_END_OF_LIST;
av2[5]=lf[83];
av2[6]=C_SCHEME_END_OF_LIST;
av2[7]=C_SCHEME_END_OF_LIST;
tp(8,av2);}}

/* k606 */
static void C_ccall f_608(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_608,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_611,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k609 in k606 */
static void C_ccall f_611(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_611,c,av);}
a=C_alloc(14);
t2=C_a_i_provide(&a,1,lf[0]);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_614,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1677,a[2]=((C_word)li39),tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:11: ##sys#with-environment"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[84]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[84]+1);
av2[1]=t3;
av2[2]=t4;
tp(3,av2);}}

/* k612 in k609 in k606 */
static void C_ccall f_614(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_614,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_617,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_extras_toplevel(2,av2);}}

/* k615 in k612 in k609 in k606 */
static void C_ccall f_617(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_617,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_620,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:45: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[78]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[78]+1);
av2[1]=t2;
av2[2]=lf[80];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_620(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_620,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_623,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:45: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[78]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[78]+1);
av2[1]=t2;
av2[2]=lf[79];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_623(C_word c,C_word *av){
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
C_word t22;
C_word t23;
C_word t24;
C_word t25;
C_word t26;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(72,c,5)))){
C_save_and_reclaim((void *)f_623,c,av);}
a=C_alloc(72);
t2=C_mutate((C_word*)lf[1]+1 /* (set! witt_foundation#make-witt-context ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_625,a[2]=((C_word)li0),tmp=(C_word)a,a+=3,tmp));
t3=C_mutate((C_word*)lf[6]+1 /* (set! witt_foundation#witt-context? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_644,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t4=C_mutate(&lf[7] /* (set! witt_foundation#hamming-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_670,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t5=C_mutate((C_word*)lf[8]+1 /* (set! witt_foundation#octad-from-points ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_700,a[2]=((C_word)li5),tmp=(C_word)a,a+=3,tmp));
t6=C_mutate((C_word*)lf[9]+1 /* (set! witt_foundation#points-from-octad ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_733,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[11]+1 /* (set! witt_foundation#octad-complement ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_779,a[2]=((C_word)li8),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[12]+1 /* (set! witt_foundation#octad-intersection ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_785,a[2]=((C_word)li9),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[13]+1 /* (set! witt_foundation#octad-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_798,a[2]=((C_word)li10),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[14]+1 /* (set! witt_foundation#octad-class ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_804,a[2]=((C_word)li11),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate(&lf[4] /* (set! witt_foundation#m24-generators ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_840,a[2]=((C_word)li16),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate((C_word*)lf[21]+1 /* (set! witt_foundation#witt-generators-m24 ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_921,a[2]=((C_word)li17),tmp=(C_word)a,a+=3,tmp));
t13=C_mutate((C_word*)lf[22]+1 /* (set! witt_foundation#witt-automorphism ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_927,a[2]=((C_word)li18),tmp=(C_word)a,a+=3,tmp));
t14=C_mutate((C_word*)lf[25]+1 /* (set! witt_foundation#witt-apply-automorphism ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_955,a[2]=((C_word)li20),tmp=(C_word)a,a+=3,tmp));
t15=C_mutate((C_word*)lf[26]+1 /* (set! witt_foundation#witt-orbit ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1004,a[2]=((C_word)li23),tmp=(C_word)a,a+=3,tmp));
t16=C_mutate((C_word*)lf[30]+1 /* (set! witt_foundation#witt-cartan-levels ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1105,a[2]=((C_word)li26),tmp=(C_word)a,a+=3,tmp));
t17=C_mutate((C_word*)lf[37]+1 /* (set! witt_foundation#octad-at-level ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1176,a[2]=((C_word)li27),tmp=(C_word)a,a+=3,tmp));
t18=C_mutate((C_word*)lf[38]+1 /* (set! witt_foundation#level-preserving-partition ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1197,a[2]=((C_word)li28),tmp=(C_word)a,a+=3,tmp));
t19=C_mutate((C_word*)lf[39]+1 /* (set! witt_foundation#graph-respects-witt? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1203,a[2]=((C_word)li29),tmp=(C_word)a,a+=3,tmp));
t20=C_mutate((C_word*)lf[40]+1 /* (set! witt_foundation#kak-preserves-witt? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1206,a[2]=((C_word)li30),tmp=(C_word)a,a+=3,tmp));
t21=C_mutate((C_word*)lf[41]+1 /* (set! witt_foundation#gc-respects-witt-topology? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1209,a[2]=((C_word)li31),tmp=(C_word)a,a+=3,tmp));
t22=C_mutate((C_word*)lf[42]+1 /* (set! witt_foundation#validate-witt-structure ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1212,a[2]=((C_word)li32),tmp=(C_word)a,a+=3,tmp));
t23=C_mutate(&lf[5] /* (set! witt_foundation#generate-all-octads ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1244,a[2]=((C_word)li37),tmp=(C_word)a,a+=3,tmp));
t24=C_mutate((C_word*)lf[46]+1 /* (set! witt_foundation#test-witt-foundation ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1379,a[2]=((C_word)li38),tmp=(C_word)a,a+=3,tmp));
t25=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1675,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("chicken.base#implicit-exit-handler"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[77]);
C_word *av2=av;
av2[0]=*((C_word*)lf[77]+1);
av2[1]=t25;
tp(2,av2);}}

/* witt_foundation#make-witt-context in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_625(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_625,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_629,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:71: generate-all-octads"));
f_1244(t2);}

/* k627 in witt_foundation#make-witt-context in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_629(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_629,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_632,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:72: m24-generators"));
f_840(t2);}

/* k630 in k627 in witt_foundation#make-witt-context in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_632(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_632,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_635,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("core/witt_foundation.scm:73: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2=av;
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t2;
tp(2,av2);}}

/* k633 in k630 in k627 in witt_foundation#make-witt-context in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_635(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_635,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_642,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("core/witt_foundation.scm:79: srfi-69#make-hash-table"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[3]);
C_word *av2=av;
av2[0]=*((C_word*)lf[3]+1);
av2[1]=t2;
tp(2,av2);}}

/* k640 in k633 in k630 in k627 in witt_foundation#make-witt-context in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_642(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_642,c,av);}
a=C_alloc(6);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector5(&a,5,lf[2],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* witt_foundation#witt-context? in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_644(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_644,c,av);}
if(C_truep(C_i_vectorp(t2))){
t3=C_i_vector_length(t2);
t4=C_i_nequalp(t3,C_fix(5));
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=(C_truep(t4)?C_eqp(C_i_vector_ref(t2,C_fix(0)),lf[2]):C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* witt_foundation#hamming-weight in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_670(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,4)))){
C_save_and_reclaim_args((void *)trf_670,2,t1,t2);}
a=C_alloc(6);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_676,a[2]=t4,a[3]=((C_word)li2),tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_676(t6,t1,t2,C_fix(0));}

/* loop in witt_foundation#hamming-weight in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_676(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_save_and_reclaim_args((void *)trf_676,4,t0,t1,t2,t3);}
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
C_trace(C_text("core/witt_foundation.scm:97: loop"));
t8=t1;
t9=t5;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* witt_foundation#octad-from-points in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_700(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_700,c,av);}
a=C_alloc(6);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_706,a[2]=t4,a[3]=((C_word)li4),tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_706(t6,t1,t2,C_fix(0));}

/* loop in witt_foundation#octad-from-points in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_706(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(10,0,3)))){
C_save_and_reclaim_args((void *)trf_706,4,t0,t1,t2,t3);}
a=C_alloc(10);
if(C_truep(C_i_nullp(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_i_car(t2);
t5=C_i_cdr(t2);
t6=C_s_a_i_arithmetic_shift(&a,2,C_fix(1),t4);
t7=C_s_a_i_bitwise_ior(&a,2,t3,t6);
C_trace(C_text("core/witt_foundation.scm:108: loop"));
t9=t1;
t10=t5;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}

/* witt_foundation#points-from-octad in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_733(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_733,c,av);}
a=C_alloc(7);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_739,a[2]=t2,a[3]=t4,a[4]=((C_word)li6),tmp=(C_word)a,a+=5,tmp));
t6=((C_word*)t4)[1];
f_739(t6,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in witt_foundation#points-from-octad in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_739(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_739,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,C_fix(24)))){
C_trace(C_text("core/witt_foundation.scm:118: scheme#reverse"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[10]+1));
C_word av2[3];
av2[0]=*((C_word*)lf[10]+1);
av2[1]=t1;
av2[2]=t3;
tp(3,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_777,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t3,a[5]=((C_word*)t0)[3],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("core/witt_foundation.scm:119: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k775 in loop in witt_foundation#points-from-octad in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_777(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_777,c,av);}
a=C_alloc(42);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,t2,C_fix(1));
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_nequalp(t3,C_fix(1));
t6=(C_truep(t5)?C_a_i_cons(&a,2,((C_word*)t0)[3],((C_word*)t0)[4]):((C_word*)t0)[4]);
C_trace(C_text("core/witt_foundation.scm:120: loop"));
t7=((C_word*)((C_word*)t0)[5])[1];
f_739(t7,((C_word*)t0)[6],t4,t6);}

/* witt_foundation#octad-complement in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_779(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_779,c,av);}
a=C_alloc(5);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_s_a_i_bitwise_xor(&a,2,t2,C_fix(16777215));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* witt_foundation#octad-intersection in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_785(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_785,c,av);}
a=C_alloc(9);
t4=C_s_a_i_bitwise_and(&a,2,t2,t3);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_796,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:137: hamming-weight"));
f_670(t5,t4);}

/* k794 in witt_foundation#octad-intersection in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_796(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_796,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,t1,((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* witt_foundation#octad-weight in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_798(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_798,c,av);}
C_trace(C_text("core/witt_foundation.scm:145: hamming-weight"));
f_670(t1,t2);}

/* witt_foundation#octad-class in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_804(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_804,c,av);}
a=C_alloc(3);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_808,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("core/witt_foundation.scm:157: octad-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[13]);
C_word *av2=av;
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k806 in witt_foundation#octad-class in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_808(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_808,c,av);}
if(C_truep(C_i_nequalp(t1,C_fix(0)))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[15];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t1,C_fix(8)))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[16];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t1,C_fix(12)))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[17];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t1,C_fix(16)))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=lf[18];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
t2=C_i_nequalp(t1,C_fix(24));
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=(C_truep(t2)?lf[19]:lf[20]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}}}}

/* witt_foundation#m24-generators in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_840(C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(17,0,3)))){
C_save_and_reclaim_args((void *)trf_840,1,t1);}
a=C_alloc(17);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_846,a[2]=((C_word)li12),tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_858,a[2]=((C_word)li13),tmp=(C_word)a,a+=3,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_873,a[2]=((C_word)li14),tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_894,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp);
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_a_i_vector4(&a,4,t2,t3,t4,t5);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* a845 in witt_foundation#m24-generators in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_846(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,1)))){
C_save_and_reclaim((void *)f_846,c,av);}
a=C_alloc(29);
t3=C_i_nequalp(t2,C_fix(23));
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=(C_truep(t3)?C_fix(0):C_s_a_i_plus(&a,2,t2,C_fix(1)));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* a857 in witt_foundation#m24-generators in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_858(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_858,c,av);}
if(C_truep(C_i_nequalp(t2,C_fix(0)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(1);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_i_nequalp(t2,C_fix(1));
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=(C_truep(t3)?C_fix(0):t2);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* a872 in witt_foundation#m24-generators in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_873(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_873,c,av);}
if(C_truep(C_i_nequalp(t2,C_fix(0)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(1);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t2,C_fix(1)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_i_nequalp(t2,C_fix(2));
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=(C_truep(t3)?C_fix(0):t2);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}}

/* a893 in witt_foundation#m24-generators in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_894(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_894,c,av);}
if(C_truep(C_i_nequalp(t2,C_fix(0)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(1);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t2,C_fix(1)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(0);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
if(C_truep(C_i_nequalp(t2,C_fix(2)))){
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fix(3);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_i_nequalp(t2,C_fix(3));
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=(C_truep(t3)?C_fix(2):t2);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}}}

/* witt_foundation#witt-generators-m24 in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_921(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_921,c,av);}
C_trace(C_text("core/witt_foundation.scm:203: m24-generators"));
f_840(t1);}

/* witt_foundation#witt-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_927(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_927,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_931,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("core/witt_foundation.scm:211: m24-generators"));
f_840(t3);}

/* k929 in witt_foundation#witt-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_931(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_931,c,av);}
t2=C_i_greater_or_equalp(((C_word*)t0)[2],C_fix(0));
t3=(C_truep(t2)?C_i_lessp(((C_word*)t0)[2],C_i_vector_length(t1)):C_SCHEME_FALSE);
if(C_truep(t3)){
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_vector_ref(t1,((C_word*)t0)[2]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
C_trace(C_text("core/witt_foundation.scm:214: chicken.base#error"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[23]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[23]+1);
av2[1]=((C_word*)t0)[3];
av2[2]=lf[24];
av2[3]=((C_word*)t0)[2];
tp(4,av2);}}}

/* witt_foundation#witt-apply-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_955(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_955,c,av);}
a=C_alloc(8);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_961,a[2]=t3,a[3]=t5,a[4]=t2,a[5]=((C_word)li19),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_961(t7,t1,C_fix(0),C_fix(0));}

/* loop in witt_foundation#witt-apply-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_961(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,2)))){
C_save_and_reclaim_args((void *)trf_961,4,t0,t1,t2,t3);}
a=C_alloc(8);
if(C_truep(C_i_nequalp(t2,C_fix(24)))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1002,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=t3,a[7]=((C_word*)t0)[4],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("core/witt_foundation.scm:227: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k972 in k1000 in loop in witt_foundation#witt-apply-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_ccall f_974(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,2)))){
C_save_and_reclaim((void *)f_974,c,av);}
a=C_alloc(15);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_977,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
if(C_truep(C_i_nequalp(((C_word*)t0)[5],C_fix(1)))){
t3=C_s_a_i_arithmetic_shift(&a,2,C_fix(1),t1);
t4=t2;
f_977(t4,C_s_a_i_bitwise_ior(&a,2,((C_word*)t0)[6],t3));}
else{
t3=t2;
f_977(t3,((C_word*)t0)[6]);}}

/* k975 in k972 in k1000 in loop in witt_foundation#witt-apply-automorphism in k621 in k618 in k615 in k612 in k609 in k606 */
static void C_fcall f_977(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,0,3)))){
C_save_and_reclaim_args((void *)trf_977,2,t0,t1);}
a=C_alloc(29);
t2=C_s_a_i_plus(&a,2,((C_word*)t0)[2],C_fix(1));
C_trace(C_text("core/witt_foundation.scm:233: loop"));
t3=((C_word*)((C_word*)t0)[3])[1];
f_961(t3,((C_word*)t0)[4],t2,t1);}

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
if(C_unlikely(!C_demand_2(844))){
C_save(t1);
C_rereclaim2(844*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,85);
lf[0]=C_h_intern(&lf[0],16, C_text("witt_foundation#"));
lf[1]=C_h_intern(&lf[1],33, C_text("witt_foundation#make-witt-context"));
lf[2]=C_h_intern(&lf[2],12, C_text("witt-context"));
lf[3]=C_h_intern(&lf[3],23, C_text("srfi-69#make-hash-table"));
lf[6]=C_h_intern(&lf[6],29, C_text("witt_foundation#witt-context\077"));
lf[8]=C_h_intern(&lf[8],33, C_text("witt_foundation#octad-from-points"));
lf[9]=C_h_intern(&lf[9],33, C_text("witt_foundation#points-from-octad"));
lf[10]=C_h_intern(&lf[10],14, C_text("scheme#reverse"));
lf[11]=C_h_intern(&lf[11],32, C_text("witt_foundation#octad-complement"));
lf[12]=C_h_intern(&lf[12],34, C_text("witt_foundation#octad-intersection"));
lf[13]=C_h_intern(&lf[13],28, C_text("witt_foundation#octad-weight"));
lf[14]=C_h_intern(&lf[14],27, C_text("witt_foundation#octad-class"));
lf[15]=C_h_intern(&lf[15],7, C_text("trivial"));
lf[16]=C_h_intern(&lf[16],5, C_text("octad"));
lf[17]=C_h_intern(&lf[17],7, C_text("dodecad"));
lf[18]=C_h_intern(&lf[18],11, C_text("octad-compl"));
lf[19]=C_h_intern(&lf[19],12, C_text("dual-trivial"));
lf[20]=C_h_intern(&lf[20],12, C_text("intermediate"));
lf[21]=C_h_intern(&lf[21],35, C_text("witt_foundation#witt-generators-m24"));
lf[22]=C_h_intern(&lf[22],33, C_text("witt_foundation#witt-automorphism"));
lf[23]=C_h_intern(&lf[23],18, C_text("chicken.base#error"));
lf[24]=C_decode_literal(C_heaptop,C_text("\376B\000\000\027Invalid generator index"));
lf[25]=C_h_intern(&lf[25],39, C_text("witt_foundation#witt-apply-automorphism"));
lf[26]=C_h_intern(&lf[26],26, C_text("witt_foundation#witt-orbit"));
lf[27]=C_h_intern(&lf[27],23, C_text("srfi-69#hash-table-keys"));
lf[28]=C_h_intern(&lf[28],23, C_text("srfi-69#hash-table-set!"));
lf[29]=C_h_intern(&lf[29],30, C_text("srfi-69#hash-table-ref/default"));
lf[30]=C_h_intern(&lf[30],34, C_text("witt_foundation#witt-cartan-levels"));
lf[31]=C_h_intern(&lf[31],13, C_text("srfi-1#filter"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376U24.0\000"));
lf[33]=C_h_intern(&lf[33],12, C_text("scheme#round"));
lf[34]=C_h_intern(&lf[34],10, C_text("scheme#exp"));
lf[35]=C_h_intern(&lf[35],8, C_text("scheme#/"));
lf[36]=C_h_intern(&lf[36],10, C_text("scheme#log"));
lf[37]=C_h_intern(&lf[37],30, C_text("witt_foundation#octad-at-level"));
lf[38]=C_h_intern(&lf[38],42, C_text("witt_foundation#level-preserving-partition"));
lf[39]=C_h_intern(&lf[39],36, C_text("witt_foundation#graph-respects-witt\077"));
lf[40]=C_h_intern(&lf[40],35, C_text("witt_foundation#kak-preserves-witt\077"));
lf[41]=C_h_intern(&lf[41],42, C_text("witt_foundation#gc-respects-witt-topology\077"));
lf[42]=C_h_intern(&lf[42],39, C_text("witt_foundation#validate-witt-structure"));
lf[43]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\377\376\003\000\000\002\376\377\001\000\000\377\000\376\003\000\000\002\376\377\001\000\377\000\000\376\003\000\000\002\376\302\000\000\010ff000000\376\377\016"));
lf[44]=C_h_intern(&lf[44],8, C_text("for-each"));
lf[45]=C_h_intern(&lf[45],18, C_text("scheme#make-vector"));
lf[46]=C_h_intern(&lf[46],36, C_text("witt_foundation#test-witt-foundation"));
lf[47]=C_h_intern(&lf[47],21, C_text("##sys#standard-output"));
lf[48]=C_h_intern(&lf[48],18, C_text("##sys#write-char-0"));
lf[49]=C_h_intern(&lf[49],11, C_text("##sys#print"));
lf[50]=C_decode_literal(C_heaptop,C_text("\376B\000\000&=== WITT FOUNDATION TESTS COMPLETE ==="));
lf[51]=C_h_intern(&lf[51],23, C_text("##sys#check-output-port"));
lf[52]=C_h_intern(&lf[52],6, C_text("printf"));
lf[53]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024  Number of scales: "));
lf[54]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035Test 4: Cartan \303\227 Witt Levels"));
lf[55]=C_decode_literal(C_heaptop,C_text("\376B\000\000\013 (Witt \342\234\223)"));
lf[56]=C_decode_literal(C_heaptop,C_text("\376B\000\000\024  Preserved weight: "));
lf[57]=C_h_intern(&lf[57],21, C_text("scheme#number->string"));
lf[58]=C_decode_literal(C_heaptop,C_text("\376B\000\000\021  Transformed: 0x"));
lf[59]=C_decode_literal(C_heaptop,C_text("\376B\000\000\021  Original:    0x"));
lf[60]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\003\000\000\002\376\377\001\000\000\000\001\376\003\000\000\002\376\377\001\000\000\000\002\376\003\000\000\002\376\377\001\000\000\000\003\376\003\000\000\002\376\377\001\000\000\000\004\376\003\000\000\002\376\377\001\000\000\000\005\376\003\000\000\002\376\377\001"
"\000\000\000\006\376\003\000\000\002\376\377\001\000\000\000\007\376\377\016"));
lf[61]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032Test 3: M_24 Automorphisms"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\000\011  Class: "));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Weight: "));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Points: "));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025  Oct from {0..7}: 0x"));
lf[66]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\000\000\376\003\000\000\002\376\377\001\000\000\000\001\376\003\000\000\002\376\377\001\000\000\000\002\376\003\000\000\002\376\377\001\000\000\000\003\376\003\000\000\002\376\377\001\000\000\000\004\376\003\000\000\002\376\377\001\000\000\000\005\376\003\000\000\002\376\377\001"
"\000\000\000\006\376\003\000\000\002\376\377\001\000\000\000\007\376\377\016"));
lf[67]=C_decode_literal(C_heaptop,C_text("\376B\000\000\030Test 2: Octad Primitives"));
lf[68]=C_decode_literal(C_heaptop,C_text("\376B\000\000\006 / 759"));
lf[69]=C_decode_literal(C_heaptop,C_text("\376B\000\000\012  Octads: "));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\000\011\342\234\223 valid"));
lf[71]=C_decode_literal(C_heaptop,C_text("\376B\000\000\013\342\234\227 invalid"));
lf[72]=C_decode_literal(C_heaptop,C_text("\376B\000\000\013  Created: "));
lf[73]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035Test 1: Witt Context Creation"));
lf[74]=C_decode_literal(C_heaptop,C_text("\376B\000\000\207\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201"
"\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201"));
lf[75]=C_decode_literal(C_heaptop,C_text("\376B\000\0000\342\225\221 WITT FOUNDATION - Core Tests             \342\225\221"));
lf[76]=C_decode_literal(C_heaptop,C_text("\376B\000\000\207\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201"
"\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201\342\224\201"));
lf[77]=C_h_intern(&lf[77],34, C_text("chicken.base#implicit-exit-handler"));
lf[78]=C_h_intern(&lf[78],27, C_text("chicken.load#load-extension"));
lf[79]=C_h_intern(&lf[79],7, C_text("srfi-69"));
lf[80]=C_h_intern(&lf[80],6, C_text("srfi-1"));
lf[81]=C_h_intern(&lf[81],30, C_text("##sys#register-compiled-module"));
lf[82]=C_h_intern(&lf[82],15, C_text("witt_foundation"));
lf[83]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001make-witt-context\376\001\000\000!\001witt_foundation#make-witt-context\376\003\000\000\002\376\003\000"
"\000\002\376\001\000\000\015\001witt-context\077\376\001\000\000\035\001witt_foundation#witt-context\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001octad-fr"
"om-points\376\001\000\000!\001witt_foundation#octad-from-points\376\003\000\000\002\376\003\000\000\002\376\001\000\000\021\001points-from-octa"
"d\376\001\000\000!\001witt_foundation#points-from-octad\376\003\000\000\002\376\003\000\000\002\376\001\000\000\020\001octad-complement\376\001\000\000 \001wi"
"tt_foundation#octad-complement\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001octad-intersection\376\001\000\000\042\001witt_found"
"ation#octad-intersection\376\003\000\000\002\376\003\000\000\002\376\001\000\000\014\001octad-weight\376\001\000\000\034\001witt_foundation#octad-"
"weight\376\003\000\000\002\376\003\000\000\002\376\001\000\000\013\001octad-class\376\001\000\000\033\001witt_foundation#octad-class\376\003\000\000\002\376\003\000\000\002\376\001\000\000"
"\021\001witt-automorphism\376\001\000\000!\001witt_foundation#witt-automorphism\376\003\000\000\002\376\003\000\000\002\376\001\000\000\027\001witt-a"
"pply-automorphism\376\001\000\000\047\001witt_foundation#witt-apply-automorphism\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001wi"
"tt-generators-m24\376\001\000\000#\001witt_foundation#witt-generators-m24\376\003\000\000\002\376\003\000\000\002\376\001\000\000\012\001witt-o"
"rbit\376\001\000\000\032\001witt_foundation#witt-orbit\376\003\000\000\002\376\003\000\000\002\376\001\000\000\022\001witt-cartan-levels\376\001\000\000\042\001witt"
"_foundation#witt-cartan-levels\376\003\000\000\002\376\003\000\000\002\376\001\000\000\016\001octad-at-level\376\001\000\000\036\001witt_foundatio"
"n#octad-at-level\376\003\000\000\002\376\003\000\000\002\376\001\000\000\032\001level-preserving-partition\376\001\000\000\052\001witt_foundation#"
"level-preserving-partition\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001graph-respects-witt\077\376\001\000\000$\001witt_foundat"
"ion#graph-respects-witt\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\023\001kak-preserves-witt\077\376\001\000\000#\001witt_foundation"
"#kak-preserves-witt\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\032\001gc-respects-witt-topology\077\376\001\000\000\052\001witt_foundat"
"ion#gc-respects-witt-topology\077\376\003\000\000\002\376\003\000\000\002\376\001\000\000\027\001validate-witt-structure\376\001\000\000\047\001witt_"
"foundation#validate-witt-structure\376\003\000\000\002\376\003\000\000\002\376\001\000\000\024\001test-witt-foundation\376\001\000\000$\001witt"
"_foundation#test-witt-foundation\376\377\016"));
lf[84]=C_h_intern(&lf[84],22, C_text("##sys#with-environment"));
C_register_lf2(lf,85,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_608,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[171] = {
{C_text("f_1002:core_2fwitt_5ffoundation_2escm"),(void*)f_1002},
{C_text("f_1004:core_2fwitt_5ffoundation_2escm"),(void*)f_1004},
{C_text("f_1011:core_2fwitt_5ffoundation_2escm"),(void*)f_1011},
{C_text("f_1014:core_2fwitt_5ffoundation_2escm"),(void*)f_1014},
{C_text("f_1022:core_2fwitt_5ffoundation_2escm"),(void*)f_1022},
{C_text("f_1047:core_2fwitt_5ffoundation_2escm"),(void*)f_1047},
{C_text("f_1053:core_2fwitt_5ffoundation_2escm"),(void*)f_1053},
{C_text("f_1056:core_2fwitt_5ffoundation_2escm"),(void*)f_1056},
{C_text("f_1065:core_2fwitt_5ffoundation_2escm"),(void*)f_1065},
{C_text("f_1090:core_2fwitt_5ffoundation_2escm"),(void*)f_1090},
{C_text("f_1105:core_2fwitt_5ffoundation_2escm"),(void*)f_1105},
{C_text("f_1109:core_2fwitt_5ffoundation_2escm"),(void*)f_1109},
{C_text("f_1114:core_2fwitt_5ffoundation_2escm"),(void*)f_1114},
{C_text("f_1127:core_2fwitt_5ffoundation_2escm"),(void*)f_1127},
{C_text("f_1130:core_2fwitt_5ffoundation_2escm"),(void*)f_1130},
{C_text("f_1133:core_2fwitt_5ffoundation_2escm"),(void*)f_1133},
{C_text("f_1150:core_2fwitt_5ffoundation_2escm"),(void*)f_1150},
{C_text("f_1158:core_2fwitt_5ffoundation_2escm"),(void*)f_1158},
{C_text("f_1162:core_2fwitt_5ffoundation_2escm"),(void*)f_1162},
{C_text("f_1170:core_2fwitt_5ffoundation_2escm"),(void*)f_1170},
{C_text("f_1176:core_2fwitt_5ffoundation_2escm"),(void*)f_1176},
{C_text("f_1183:core_2fwitt_5ffoundation_2escm"),(void*)f_1183},
{C_text("f_1197:core_2fwitt_5ffoundation_2escm"),(void*)f_1197},
{C_text("f_1203:core_2fwitt_5ffoundation_2escm"),(void*)f_1203},
{C_text("f_1206:core_2fwitt_5ffoundation_2escm"),(void*)f_1206},
{C_text("f_1209:core_2fwitt_5ffoundation_2escm"),(void*)f_1209},
{C_text("f_1212:core_2fwitt_5ffoundation_2escm"),(void*)f_1212},
{C_text("f_1219:core_2fwitt_5ffoundation_2escm"),(void*)f_1219},
{C_text("f_1231:core_2fwitt_5ffoundation_2escm"),(void*)f_1231},
{C_text("f_1244:core_2fwitt_5ffoundation_2escm"),(void*)f_1244},
{C_text("f_1248:core_2fwitt_5ffoundation_2escm"),(void*)f_1248},
{C_text("f_1249:core_2fwitt_5ffoundation_2escm"),(void*)f_1249},
{C_text("f_1259:core_2fwitt_5ffoundation_2escm"),(void*)f_1259},
{C_text("f_1268:core_2fwitt_5ffoundation_2escm"),(void*)f_1268},
{C_text("f_1281:core_2fwitt_5ffoundation_2escm"),(void*)f_1281},
{C_text("f_1284:core_2fwitt_5ffoundation_2escm"),(void*)f_1284},
{C_text("f_1289:core_2fwitt_5ffoundation_2escm"),(void*)f_1289},
{C_text("f_1321:core_2fwitt_5ffoundation_2escm"),(void*)f_1321},
{C_text("f_1324:core_2fwitt_5ffoundation_2escm"),(void*)f_1324},
{C_text("f_1327:core_2fwitt_5ffoundation_2escm"),(void*)f_1327},
{C_text("f_1344:core_2fwitt_5ffoundation_2escm"),(void*)f_1344},
{C_text("f_1356:core_2fwitt_5ffoundation_2escm"),(void*)f_1356},
{C_text("f_1366:core_2fwitt_5ffoundation_2escm"),(void*)f_1366},
{C_text("f_1379:core_2fwitt_5ffoundation_2escm"),(void*)f_1379},
{C_text("f_1383:core_2fwitt_5ffoundation_2escm"),(void*)f_1383},
{C_text("f_1386:core_2fwitt_5ffoundation_2escm"),(void*)f_1386},
{C_text("f_1389:core_2fwitt_5ffoundation_2escm"),(void*)f_1389},
{C_text("f_1392:core_2fwitt_5ffoundation_2escm"),(void*)f_1392},
{C_text("f_1395:core_2fwitt_5ffoundation_2escm"),(void*)f_1395},
{C_text("f_1398:core_2fwitt_5ffoundation_2escm"),(void*)f_1398},
{C_text("f_1401:core_2fwitt_5ffoundation_2escm"),(void*)f_1401},
{C_text("f_1404:core_2fwitt_5ffoundation_2escm"),(void*)f_1404},
{C_text("f_1407:core_2fwitt_5ffoundation_2escm"),(void*)f_1407},
{C_text("f_1410:core_2fwitt_5ffoundation_2escm"),(void*)f_1410},
{C_text("f_1413:core_2fwitt_5ffoundation_2escm"),(void*)f_1413},
{C_text("f_1416:core_2fwitt_5ffoundation_2escm"),(void*)f_1416},
{C_text("f_1419:core_2fwitt_5ffoundation_2escm"),(void*)f_1419},
{C_text("f_1422:core_2fwitt_5ffoundation_2escm"),(void*)f_1422},
{C_text("f_1425:core_2fwitt_5ffoundation_2escm"),(void*)f_1425},
{C_text("f_1428:core_2fwitt_5ffoundation_2escm"),(void*)f_1428},
{C_text("f_1431:core_2fwitt_5ffoundation_2escm"),(void*)f_1431},
{C_text("f_1434:core_2fwitt_5ffoundation_2escm"),(void*)f_1434},
{C_text("f_1437:core_2fwitt_5ffoundation_2escm"),(void*)f_1437},
{C_text("f_1440:core_2fwitt_5ffoundation_2escm"),(void*)f_1440},
{C_text("f_1443:core_2fwitt_5ffoundation_2escm"),(void*)f_1443},
{C_text("f_1446:core_2fwitt_5ffoundation_2escm"),(void*)f_1446},
{C_text("f_1449:core_2fwitt_5ffoundation_2escm"),(void*)f_1449},
{C_text("f_1452:core_2fwitt_5ffoundation_2escm"),(void*)f_1452},
{C_text("f_1455:core_2fwitt_5ffoundation_2escm"),(void*)f_1455},
{C_text("f_1458:core_2fwitt_5ffoundation_2escm"),(void*)f_1458},
{C_text("f_1461:core_2fwitt_5ffoundation_2escm"),(void*)f_1461},
{C_text("f_1464:core_2fwitt_5ffoundation_2escm"),(void*)f_1464},
{C_text("f_1467:core_2fwitt_5ffoundation_2escm"),(void*)f_1467},
{C_text("f_1470:core_2fwitt_5ffoundation_2escm"),(void*)f_1470},
{C_text("f_1473:core_2fwitt_5ffoundation_2escm"),(void*)f_1473},
{C_text("f_1476:core_2fwitt_5ffoundation_2escm"),(void*)f_1476},
{C_text("f_1479:core_2fwitt_5ffoundation_2escm"),(void*)f_1479},
{C_text("f_1482:core_2fwitt_5ffoundation_2escm"),(void*)f_1482},
{C_text("f_1485:core_2fwitt_5ffoundation_2escm"),(void*)f_1485},
{C_text("f_1488:core_2fwitt_5ffoundation_2escm"),(void*)f_1488},
{C_text("f_1491:core_2fwitt_5ffoundation_2escm"),(void*)f_1491},
{C_text("f_1494:core_2fwitt_5ffoundation_2escm"),(void*)f_1494},
{C_text("f_1497:core_2fwitt_5ffoundation_2escm"),(void*)f_1497},
{C_text("f_1500:core_2fwitt_5ffoundation_2escm"),(void*)f_1500},
{C_text("f_1503:core_2fwitt_5ffoundation_2escm"),(void*)f_1503},
{C_text("f_1506:core_2fwitt_5ffoundation_2escm"),(void*)f_1506},
{C_text("f_1509:core_2fwitt_5ffoundation_2escm"),(void*)f_1509},
{C_text("f_1512:core_2fwitt_5ffoundation_2escm"),(void*)f_1512},
{C_text("f_1515:core_2fwitt_5ffoundation_2escm"),(void*)f_1515},
{C_text("f_1518:core_2fwitt_5ffoundation_2escm"),(void*)f_1518},
{C_text("f_1521:core_2fwitt_5ffoundation_2escm"),(void*)f_1521},
{C_text("f_1524:core_2fwitt_5ffoundation_2escm"),(void*)f_1524},
{C_text("f_1527:core_2fwitt_5ffoundation_2escm"),(void*)f_1527},
{C_text("f_1530:core_2fwitt_5ffoundation_2escm"),(void*)f_1530},
{C_text("f_1533:core_2fwitt_5ffoundation_2escm"),(void*)f_1533},
{C_text("f_1536:core_2fwitt_5ffoundation_2escm"),(void*)f_1536},
{C_text("f_1539:core_2fwitt_5ffoundation_2escm"),(void*)f_1539},
{C_text("f_1542:core_2fwitt_5ffoundation_2escm"),(void*)f_1542},
{C_text("f_1545:core_2fwitt_5ffoundation_2escm"),(void*)f_1545},
{C_text("f_1548:core_2fwitt_5ffoundation_2escm"),(void*)f_1548},
{C_text("f_1551:core_2fwitt_5ffoundation_2escm"),(void*)f_1551},
{C_text("f_1554:core_2fwitt_5ffoundation_2escm"),(void*)f_1554},
{C_text("f_1557:core_2fwitt_5ffoundation_2escm"),(void*)f_1557},
{C_text("f_1560:core_2fwitt_5ffoundation_2escm"),(void*)f_1560},
{C_text("f_1563:core_2fwitt_5ffoundation_2escm"),(void*)f_1563},
{C_text("f_1566:core_2fwitt_5ffoundation_2escm"),(void*)f_1566},
{C_text("f_1569:core_2fwitt_5ffoundation_2escm"),(void*)f_1569},
{C_text("f_1572:core_2fwitt_5ffoundation_2escm"),(void*)f_1572},
{C_text("f_1575:core_2fwitt_5ffoundation_2escm"),(void*)f_1575},
{C_text("f_1578:core_2fwitt_5ffoundation_2escm"),(void*)f_1578},
{C_text("f_1581:core_2fwitt_5ffoundation_2escm"),(void*)f_1581},
{C_text("f_1584:core_2fwitt_5ffoundation_2escm"),(void*)f_1584},
{C_text("f_1587:core_2fwitt_5ffoundation_2escm"),(void*)f_1587},
{C_text("f_1590:core_2fwitt_5ffoundation_2escm"),(void*)f_1590},
{C_text("f_1593:core_2fwitt_5ffoundation_2escm"),(void*)f_1593},
{C_text("f_1596:core_2fwitt_5ffoundation_2escm"),(void*)f_1596},
{C_text("f_1599:core_2fwitt_5ffoundation_2escm"),(void*)f_1599},
{C_text("f_1602:core_2fwitt_5ffoundation_2escm"),(void*)f_1602},
{C_text("f_1605:core_2fwitt_5ffoundation_2escm"),(void*)f_1605},
{C_text("f_1608:core_2fwitt_5ffoundation_2escm"),(void*)f_1608},
{C_text("f_1611:core_2fwitt_5ffoundation_2escm"),(void*)f_1611},
{C_text("f_1626:core_2fwitt_5ffoundation_2escm"),(void*)f_1626},
{C_text("f_1630:core_2fwitt_5ffoundation_2escm"),(void*)f_1630},
{C_text("f_1634:core_2fwitt_5ffoundation_2escm"),(void*)f_1634},
{C_text("f_1638:core_2fwitt_5ffoundation_2escm"),(void*)f_1638},
{C_text("f_1642:core_2fwitt_5ffoundation_2escm"),(void*)f_1642},
{C_text("f_1646:core_2fwitt_5ffoundation_2escm"),(void*)f_1646},
{C_text("f_1650:core_2fwitt_5ffoundation_2escm"),(void*)f_1650},
{C_text("f_1654:core_2fwitt_5ffoundation_2escm"),(void*)f_1654},
{C_text("f_1669:core_2fwitt_5ffoundation_2escm"),(void*)f_1669},
{C_text("f_1675:core_2fwitt_5ffoundation_2escm"),(void*)f_1675},
{C_text("f_1677:core_2fwitt_5ffoundation_2escm"),(void*)f_1677},
{C_text("f_608:core_2fwitt_5ffoundation_2escm"),(void*)f_608},
{C_text("f_611:core_2fwitt_5ffoundation_2escm"),(void*)f_611},
{C_text("f_614:core_2fwitt_5ffoundation_2escm"),(void*)f_614},
{C_text("f_617:core_2fwitt_5ffoundation_2escm"),(void*)f_617},
{C_text("f_620:core_2fwitt_5ffoundation_2escm"),(void*)f_620},
{C_text("f_623:core_2fwitt_5ffoundation_2escm"),(void*)f_623},
{C_text("f_625:core_2fwitt_5ffoundation_2escm"),(void*)f_625},
{C_text("f_629:core_2fwitt_5ffoundation_2escm"),(void*)f_629},
{C_text("f_632:core_2fwitt_5ffoundation_2escm"),(void*)f_632},
{C_text("f_635:core_2fwitt_5ffoundation_2escm"),(void*)f_635},
{C_text("f_642:core_2fwitt_5ffoundation_2escm"),(void*)f_642},
{C_text("f_644:core_2fwitt_5ffoundation_2escm"),(void*)f_644},
{C_text("f_670:core_2fwitt_5ffoundation_2escm"),(void*)f_670},
{C_text("f_676:core_2fwitt_5ffoundation_2escm"),(void*)f_676},
{C_text("f_700:core_2fwitt_5ffoundation_2escm"),(void*)f_700},
{C_text("f_706:core_2fwitt_5ffoundation_2escm"),(void*)f_706},
{C_text("f_733:core_2fwitt_5ffoundation_2escm"),(void*)f_733},
{C_text("f_739:core_2fwitt_5ffoundation_2escm"),(void*)f_739},
{C_text("f_777:core_2fwitt_5ffoundation_2escm"),(void*)f_777},
{C_text("f_779:core_2fwitt_5ffoundation_2escm"),(void*)f_779},
{C_text("f_785:core_2fwitt_5ffoundation_2escm"),(void*)f_785},
{C_text("f_796:core_2fwitt_5ffoundation_2escm"),(void*)f_796},
{C_text("f_798:core_2fwitt_5ffoundation_2escm"),(void*)f_798},
{C_text("f_804:core_2fwitt_5ffoundation_2escm"),(void*)f_804},
{C_text("f_808:core_2fwitt_5ffoundation_2escm"),(void*)f_808},
{C_text("f_840:core_2fwitt_5ffoundation_2escm"),(void*)f_840},
{C_text("f_846:core_2fwitt_5ffoundation_2escm"),(void*)f_846},
{C_text("f_858:core_2fwitt_5ffoundation_2escm"),(void*)f_858},
{C_text("f_873:core_2fwitt_5ffoundation_2escm"),(void*)f_873},
{C_text("f_894:core_2fwitt_5ffoundation_2escm"),(void*)f_894},
{C_text("f_921:core_2fwitt_5ffoundation_2escm"),(void*)f_921},
{C_text("f_927:core_2fwitt_5ffoundation_2escm"),(void*)f_927},
{C_text("f_931:core_2fwitt_5ffoundation_2escm"),(void*)f_931},
{C_text("f_955:core_2fwitt_5ffoundation_2escm"),(void*)f_955},
{C_text("f_961:core_2fwitt_5ffoundation_2escm"),(void*)f_961},
{C_text("f_974:core_2fwitt_5ffoundation_2escm"),(void*)f_974},
{C_text("f_977:core_2fwitt_5ffoundation_2escm"),(void*)f_977},
{C_text("toplevel:core_2fwitt_5ffoundation_2escm"),(void*)C_toplevel},
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
o|hiding unexported module binding: witt_foundation#hamming-weight 
o|hiding unexported module binding: witt_foundation#m24-generators 
o|hiding unexported module binding: witt_foundation#generate-all-octads 
S|applied compiler syntax:
S|  chicken.format#printf		18
S|  scheme#for-each		1
o|eliminated procedure checks: 32 
o|propagated global variable: out226339 ##sys#standard-output 
o|propagated global variable: out332335 ##sys#standard-output 
o|propagated global variable: out223326 ##sys#standard-output 
o|propagated global variable: out308319 ##sys#standard-output 
o|propagated global variable: out305315 ##sys#standard-output 
o|propagated global variable: out302311 ##sys#standard-output 
o|propagated global variable: out220295 ##sys#standard-output 
o|propagated global variable: out273288 ##sys#standard-output 
o|propagated global variable: out270284 ##sys#standard-output 
o|propagated global variable: out267280 ##sys#standard-output 
o|propagated global variable: out264276 ##sys#standard-output 
o|propagated global variable: out217259 ##sys#standard-output 
o|propagated global variable: out246253 ##sys#standard-output 
o|propagated global variable: out243249 ##sys#standard-output 
o|propagated global variable: out214239 ##sys#standard-output 
o|propagated global variable: out211235 ##sys#standard-output 
o|propagated global variable: out208232 ##sys#standard-output 
o|propagated global variable: out205229 ##sys#standard-output 
o|replaced variables: 246 
o|removed binding forms: 118 
o|removed binding forms: 183 
o|replaced variables: 1 
o|removed binding forms: 1 
o|simplifications: ((if . 10) (##core#call . 103)) 
o|  call simplifications:
o|    ##sys#check-list
o|    scheme#pair?
o|    ##sys#slot	2
o|    scheme#length	3
o|    scheme#vector-set!
o|    scheme#>
o|    scheme#*	2
o|    scheme#<=	2
o|    scheme#list	4
o|    scheme#>=	3
o|    scheme#<	2
o|    chicken.bitwise#bitwise-xor
o|    scheme#cons	5
o|    scheme#null?	5
o|    scheme#car	5
o|    scheme#cdr	3
o|    chicken.bitwise#arithmetic-shift	4
o|    chicken.bitwise#bitwise-ior	2
o|    scheme#zero?
o|    scheme#-	4
o|    chicken.bitwise#bitwise-and	4
o|    scheme#+	9
o|    scheme#vector?	2
o|    scheme#vector-length	5
o|    scheme#=	22
o|    scheme#vector-ref	6
o|    scheme#eq?
o|    scheme#vector	2
o|contracted procedure: k649 
o|contracted procedure: k666 
o|contracted procedure: k655 
o|contracted procedure: k662 
o|contracted procedure: k681 
o|contracted procedure: k696 
o|contracted procedure: k688 
o|contracted procedure: k692 
o|contracted procedure: k711 
o|contracted procedure: k714 
o|contracted procedure: k721 
o|contracted procedure: k729 
o|contracted procedure: k725 
o|contracted procedure: k744 
o|contracted procedure: k771 
o|contracted procedure: k750 
o|contracted procedure: k757 
o|contracted procedure: k764 
o|contracted procedure: k761 
o|contracted procedure: k787 
o|contracted procedure: k812 
o|contracted procedure: k818 
o|contracted procedure: k824 
o|contracted procedure: k830 
o|contracted procedure: k836 
o|contracted procedure: k851 
o|contracted procedure: k863 
o|contracted procedure: k869 
o|contracted procedure: k878 
o|contracted procedure: k884 
o|contracted procedure: k890 
o|contracted procedure: k899 
o|contracted procedure: k905 
o|contracted procedure: k911 
o|contracted procedure: k917 
o|contracted procedure: k944 
o|contracted procedure: k951 
o|contracted procedure: k966 
o|contracted procedure: k996 
o|contracted procedure: k969 
o|contracted procedure: k982 
o|contracted procedure: k985 
o|contracted procedure: k992 
o|contracted procedure: k1098 
o|contracted procedure: k1006 
o|contracted procedure: k1015 
o|contracted procedure: k1027 
o|contracted procedure: k1030 
o|contracted procedure: k1036 
o|contracted procedure: k1039 
o|contracted procedure: k1061 
o|contracted procedure: k1092 
o|contracted procedure: k1070 
o|contracted procedure: k1073 
o|contracted procedure: k1080 
o|contracted procedure: k1084 
o|contracted procedure: k1119 
o|contracted procedure: k1138 
o|contracted procedure: k1146 
o|contracted procedure: k1142 
o|contracted procedure: k1164 
o|contracted procedure: k1172 
o|contracted procedure: k1184 
o|contracted procedure: k1190 
o|contracted procedure: k1240 
o|contracted procedure: k1236 
o|contracted procedure: k1223 
o|contracted procedure: k1254 
o|contracted procedure: k1264 
o|contracted procedure: k1273 
o|contracted procedure: k1276 
o|contracted procedure: k1294 
o|contracted procedure: k1312 
o|contracted procedure: k1297 
o|contracted procedure: k1304 
o|contracted procedure: k1308 
o|contracted procedure: k1316 
o|contracted procedure: k1332 
o|contracted procedure: k1336 
o|contracted procedure: k1339 
o|contracted procedure: k1349 
o|contracted procedure: k1361 
o|contracted procedure: k1371 
o|contracted procedure: k1375 
o|contracted procedure: k1616 
o|contracted procedure: k1620 
o|contracted procedure: k1660 
o|contracted procedure: k1656 
o|contracted procedure: k1664 
o|contracted procedure: k1683 
o|contracted procedure: k1687 
o|contracted procedure: k1691 
o|simplifications: ((if . 2) (let . 33)) 
o|removed binding forms: 92 
o|contracted procedure: k935 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest100102 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest100102 0 
o|substituted constant variable: r1684 
o|substituted constant variable: r1688 
o|substituted constant variable: r1692 
o|removed binding forms: 1 
o|removed binding forms: 3 
o|customizable procedures: (g170177 for-each-loop169180 loop185 loop-copy193 loop133 loop-gen121 loop111 k975 loop89 witt_foundation#hamming-weight loop44 loop37 loop31 witt_foundation#generate-all-octads witt_foundation#m24-generators) 
o|calls to known targets: 34 
o|identified direct recursive calls: f_676 1 
o|identified direct recursive calls: f_706 1 
o|unused rest argument: rest100102 f_1004 
o|identified direct recursive calls: f_1289 1 
o|fast box initializations: 10 
o|fast global references: 8 
o|fast global assignments: 3 
o|dropping unused closure argument: f_1244 
o|dropping unused closure argument: f_670 
o|dropping unused closure argument: f_840 
*/
/* end of file */
