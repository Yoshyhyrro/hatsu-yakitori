/* Generated from modules/fmm/fmm_on_goppa_grid.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: modules/fmm/fmm_on_goppa_grid.scm -output-file dist/unit_00000000000000072d4f33202d6430/fmm_on_goppa_grid.c -emit-all-import-libraries -unit fmm_on_goppa_grid
   unit: fmm_on_goppa_grid
   uses: eval data-structures extras library
*/
#include "chicken.h"

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_data_2dstructures_toplevel)
C_externimport void C_ccall C_data_2dstructures_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_extras_toplevel)
C_externimport void C_ccall C_extras_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[79];
static double C_possibly_force_alignment;
static C_char C_TLS li0[] C_aligned={C_lihdr(0,0,14),40,108,111,111,112,32,110,32,99,111,117,110,116,41,0,0};
static C_char C_TLS li1[] C_aligned={C_lihdr(0,0,31),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,103,111,108,97,121,45,119,101,105,103,104,116,32,110,41,0};
static C_char C_TLS li2[] C_aligned={C_lihdr(0,0,15),40,108,111,111,112,32,105,32,112,97,114,105,116,121,41,0};
static C_char C_TLS li3[] C_aligned={C_lihdr(0,0,41),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,101,110,99,111,100,101,45,103,111,108,97,121,50,52,32,105,110,102,111,45,98,105,116,115,41,0,0,0,0,0,0,0};
static C_char C_TLS li4[] C_aligned={C_lihdr(0,0,15),40,108,111,111,112,32,105,32,112,97,114,105,116,121,41,0};
static C_char C_TLS li5[] C_aligned={C_lihdr(0,0,40),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,100,101,99,111,100,101,45,103,111,108,97,121,50,52,32,99,111,100,101,119,111,114,100,41};
static C_char C_TLS li6[] C_aligned={C_lihdr(0,0,46),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,109,97,107,101,45,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,32,46,32,114,101,115,116,41,0,0};
static C_char C_TLS li7[] C_aligned={C_lihdr(0,0,46),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,109,111,100,101,32,99,111,110,102,105,103,41,0,0};
static C_char C_TLS li8[] C_aligned={C_lihdr(0,0,45),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,116,97,117,32,99,111,110,102,105,103,41,0,0,0};
static C_char C_TLS li9[] C_aligned={C_lihdr(0,0,50),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,97,100,97,112,116,105,118,101,45,102,114,111,110,116,105,101,114,45,99,111,100,101,119,111,114,100,32,99,111,110,102,105,103,41,0,0,0,0,0,0};
static C_char C_TLS li10[] C_aligned={C_lihdr(0,0,40),40,103,111,108,97,121,95,102,114,111,110,116,105,101,114,35,112,114,105,110,116,45,103,111,108,97,121,45,105,110,102,111,32,99,111,110,102,105,103,41};
static C_char C_TLS li11[] C_aligned={C_lihdr(0,0,14),40,115,99,104,101,109,101,35,115,105,110,32,120,41,0,0};
static C_char C_TLS li12[] C_aligned={C_lihdr(0,0,14),40,115,99,104,101,109,101,35,99,111,115,32,120,41,0,0};
static C_char C_TLS li13[] C_aligned={C_lihdr(0,0,15),40,115,99,104,101,109,101,35,115,113,114,116,32,120,41,0};
static C_char C_TLS li14[] C_aligned={C_lihdr(0,0,15),40,115,99,104,101,109,101,35,97,99,111,115,32,120,41,0};
static C_char C_TLS li15[] C_aligned={C_lihdr(0,0,32),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,45,97,100,100,32,97,32,98,41};
static C_char C_TLS li16[] C_aligned={C_lihdr(0,0,32),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,45,115,117,98,32,97,32,98,41};
static C_char C_TLS li17[] C_aligned={C_lihdr(0,0,32),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,45,109,117,108,32,97,32,98,41};
static C_char C_TLS li18[] C_aligned={C_lihdr(0,0,32),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,45,100,105,118,32,97,32,98,41};
static C_char C_TLS li19[] C_aligned={C_lihdr(0,0,12),40,108,111,111,112,32,105,32,97,99,99,41,0,0,0,0};
static C_char C_TLS li20[] C_aligned={C_lihdr(0,0,32),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,45,112,111,119,32,122,32,110,41};
static C_char C_TLS li21[] C_aligned={C_lihdr(0,0,29),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,102,97,99,116,32,110,41,0,0,0};
static C_char C_TLS li22[] C_aligned={C_lihdr(0,0,17),40,100,111,108,111,111,112,50,55,51,32,107,32,97,99,99,41,0,0,0,0,0,0,0};
static C_char C_TLS li23[] C_aligned={C_lihdr(0,0,53),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,109,97,107,101,45,103,111,112,112,97,45,103,114,105,100,32,113,32,109,32,110,117,109,45,112,111,105,110,116,115,41,0,0,0};
static C_char C_TLS li24[] C_aligned={C_lihdr(0,0,45),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,108,111,99,97,108,45,112,97,114,97,109,101,116,101,114,32,103,114,105,100,32,105,41,0,0,0};
static C_char C_TLS li25[] C_aligned={C_lihdr(0,0,10),40,103,50,57,50,32,105,100,120,41,0,0,0,0,0,0};
static C_char C_TLS li26[] C_aligned={C_lihdr(0,0,23),40,102,111,114,45,101,97,99,104,45,108,111,111,112,50,57,49,32,103,50,57,56,41,0};
static C_char C_TLS li27[] C_aligned={C_lihdr(0,0,62),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,97,108,99,117,108,97,116,101,45,103,101,111,109,101,116,114,105,99,45,99,101,110,116,101,114,32,103,114,105,100,32,105,110,100,105,99,101,115,41,0,0};
static C_char C_TLS li28[] C_aligned={C_lihdr(0,0,7),40,97,49,56,53,50,41,0};
static C_char C_TLS li29[] C_aligned={C_lihdr(0,0,27),40,97,49,56,53,56,32,105,116,101,109,50,52,56,32,110,101,119,45,100,97,116,97,50,53,48,41,0,0,0,0,0};
static C_char C_TLS li30[] C_aligned={C_lihdr(0,0,7),40,97,49,56,55,48,41,0};
static C_char C_TLS li31[] C_aligned={C_lihdr(0,0,27),40,97,49,56,55,54,32,105,116,101,109,50,53,55,32,110,101,119,45,100,97,116,97,50,53,57,41,0,0,0,0,0};
static C_char C_TLS li32[] C_aligned={C_lihdr(0,0,7),40,97,50,50,54,53,41,0};
static C_char C_TLS li33[] C_aligned={C_lihdr(0,0,14),40,103,52,49,50,32,115,114,99,45,105,100,120,41,0,0};
static C_char C_TLS li34[] C_aligned={C_lihdr(0,0,23),40,102,111,114,45,101,97,99,104,45,108,111,111,112,52,49,49,32,103,52,49,56,41,0};
static C_char C_TLS li35[] C_aligned={C_lihdr(0,0,8),40,103,52,52,48,32,120,41};
static C_char C_TLS li36[] C_aligned={C_lihdr(0,0,13),40,100,111,108,111,111,112,51,51,51,32,107,41,0,0,0};
static C_char C_TLS li37[] C_aligned={C_lihdr(0,0,12),40,103,51,49,56,32,105,100,120,32,113,41,0,0,0,0};
static C_char C_TLS li38[] C_aligned={C_lihdr(0,0,8),40,118,97,50,55,55,48,41};
static C_char C_TLS li39[] C_aligned={C_lihdr(0,0,13),40,100,111,108,111,111,112,51,54,49,32,107,41,0,0,0};
static C_char C_TLS li40[] C_aligned={C_lihdr(0,0,13),40,100,111,108,111,111,112,51,53,55,32,106,41,0,0,0};
static C_char C_TLS li41[] C_aligned={C_lihdr(0,0,28),40,102,111,114,45,101,97,99,104,45,108,111,111,112,51,49,55,32,103,51,50,52,32,103,51,50,53,41,0,0,0,0};
static C_char C_TLS li42[] C_aligned={C_lihdr(0,0,18),40,109,97,112,45,108,111,111,112,52,51,52,32,103,52,52,54,41,0,0,0,0,0,0};
static C_char C_TLS li43[] C_aligned={C_lihdr(0,0,40),40,97,50,50,55,49,32,108,101,118,101,108,45,105,100,120,51,57,52,32,117,112,100,97,116,101,100,45,102,114,111,110,116,105,101,114,51,57,54,41};
static C_char C_TLS li44[] C_aligned={C_lihdr(0,0,6),40,108,111,111,112,41,0,0};
static C_char C_TLS li45[] C_aligned={C_lihdr(0,0,13),40,100,111,108,111,111,112,51,56,56,32,105,41,0,0,0};
static C_char C_TLS li46[] C_aligned={C_lihdr(0,0,112),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,99,97,114,116,97,110,45,102,109,109,45,101,118,97,108,117,97,116,101,45,103,111,108,97,121,32,103,114,105,100,32,104,105,101,114,97,114,99,104,121,32,115,111,117,114,99,101,115,32,99,104,97,114,103,101,115,32,116,97,114,103,101,116,45,105,100,120,32,111,114,100,101,114,32,103,111,108,97,121,45,105,110,102,111,45,98,105,116,115,41};
static C_char C_TLS li47[] C_aligned={C_lihdr(0,0,40),40,109,111,100,117,108,101,46,102,109,109,46,102,109,109,45,103,111,112,112,97,35,100,101,109,111,45,99,97,114,116,97,110,45,103,111,108,97,121,41};
static C_char C_TLS li48[] C_aligned={C_lihdr(0,0,10),40,116,111,112,108,101,118,101,108,41,0,0,0,0,0,0};


C_noret_decl(f_1042)
static void C_ccall f_1042(C_word c,C_word *av) C_noret;
C_noret_decl(f_1044)
static void C_ccall f_1044(C_word c,C_word *av) C_noret;
C_noret_decl(f_1054)
static void C_ccall f_1054(C_word c,C_word *av) C_noret;
C_noret_decl(f_1081)
static void C_ccall f_1081(C_word c,C_word *av) C_noret;
C_noret_decl(f_1091)
static void C_ccall f_1091(C_word c,C_word *av) C_noret;
C_noret_decl(f_1093)
static void C_ccall f_1093(C_word c,C_word *av) C_noret;
C_noret_decl(f_1100)
static void C_ccall f_1100(C_word c,C_word *av) C_noret;
C_noret_decl(f_1103)
static void C_ccall f_1103(C_word c,C_word *av) C_noret;
C_noret_decl(f_1113)
static void C_ccall f_1113(C_word c,C_word *av) C_noret;
C_noret_decl(f_1121)
static void C_ccall f_1121(C_word c,C_word *av) C_noret;
C_noret_decl(f_1127)
static void C_ccall f_1127(C_word c,C_word *av) C_noret;
C_noret_decl(f_1133)
static void C_ccall f_1133(C_word c,C_word *av) C_noret;
C_noret_decl(f_1145)
static void C_ccall f_1145(C_word c,C_word *av) C_noret;
C_noret_decl(f_1149)
static void C_ccall f_1149(C_word c,C_word *av) C_noret;
C_noret_decl(f_1152)
static void C_ccall f_1152(C_word c,C_word *av) C_noret;
C_noret_decl(f_1158)
static void C_ccall f_1158(C_word c,C_word *av) C_noret;
C_noret_decl(f_1161)
static void C_ccall f_1161(C_word c,C_word *av) C_noret;
C_noret_decl(f_1164)
static void C_ccall f_1164(C_word c,C_word *av) C_noret;
C_noret_decl(f_1167)
static void C_ccall f_1167(C_word c,C_word *av) C_noret;
C_noret_decl(f_1170)
static void C_ccall f_1170(C_word c,C_word *av) C_noret;
C_noret_decl(f_1173)
static void C_ccall f_1173(C_word c,C_word *av) C_noret;
C_noret_decl(f_1176)
static void C_ccall f_1176(C_word c,C_word *av) C_noret;
C_noret_decl(f_1179)
static void C_ccall f_1179(C_word c,C_word *av) C_noret;
C_noret_decl(f_1182)
static void C_ccall f_1182(C_word c,C_word *av) C_noret;
C_noret_decl(f_1185)
static void C_ccall f_1185(C_word c,C_word *av) C_noret;
C_noret_decl(f_1188)
static void C_ccall f_1188(C_word c,C_word *av) C_noret;
C_noret_decl(f_1191)
static void C_ccall f_1191(C_word c,C_word *av) C_noret;
C_noret_decl(f_1194)
static void C_ccall f_1194(C_word c,C_word *av) C_noret;
C_noret_decl(f_1197)
static void C_ccall f_1197(C_word c,C_word *av) C_noret;
C_noret_decl(f_1200)
static void C_ccall f_1200(C_word c,C_word *av) C_noret;
C_noret_decl(f_1203)
static void C_ccall f_1203(C_word c,C_word *av) C_noret;
C_noret_decl(f_1206)
static void C_ccall f_1206(C_word c,C_word *av) C_noret;
C_noret_decl(f_1209)
static void C_ccall f_1209(C_word c,C_word *av) C_noret;
C_noret_decl(f_1212)
static void C_ccall f_1212(C_word c,C_word *av) C_noret;
C_noret_decl(f_1215)
static void C_ccall f_1215(C_word c,C_word *av) C_noret;
C_noret_decl(f_1218)
static void C_ccall f_1218(C_word c,C_word *av) C_noret;
C_noret_decl(f_1221)
static void C_ccall f_1221(C_word c,C_word *av) C_noret;
C_noret_decl(f_1224)
static void C_ccall f_1224(C_word c,C_word *av) C_noret;
C_noret_decl(f_1227)
static void C_ccall f_1227(C_word c,C_word *av) C_noret;
C_noret_decl(f_1230)
static void C_ccall f_1230(C_word c,C_word *av) C_noret;
C_noret_decl(f_1233)
static void C_ccall f_1233(C_word c,C_word *av) C_noret;
C_noret_decl(f_1236)
static void C_ccall f_1236(C_word c,C_word *av) C_noret;
C_noret_decl(f_1239)
static void C_ccall f_1239(C_word c,C_word *av) C_noret;
C_noret_decl(f_1242)
static void C_ccall f_1242(C_word c,C_word *av) C_noret;
C_noret_decl(f_1245)
static void C_ccall f_1245(C_word c,C_word *av) C_noret;
C_noret_decl(f_1248)
static void C_ccall f_1248(C_word c,C_word *av) C_noret;
C_noret_decl(f_1251)
static void C_ccall f_1251(C_word c,C_word *av) C_noret;
C_noret_decl(f_1254)
static void C_ccall f_1254(C_word c,C_word *av) C_noret;
C_noret_decl(f_1268)
static void C_ccall f_1268(C_word c,C_word *av) C_noret;
C_noret_decl(f_1271)
static void C_ccall f_1271(C_word c,C_word *av) C_noret;
C_noret_decl(f_1274)
static void C_ccall f_1274(C_word c,C_word *av) C_noret;
C_noret_decl(f_1277)
static void C_ccall f_1277(C_word c,C_word *av) C_noret;
C_noret_decl(f_1280)
static void C_ccall f_1280(C_word c,C_word *av) C_noret;
C_noret_decl(f_1283)
static void C_ccall f_1283(C_word c,C_word *av) C_noret;
C_noret_decl(f_1286)
static void C_ccall f_1286(C_word c,C_word *av) C_noret;
C_noret_decl(f_1289)
static void C_ccall f_1289(C_word c,C_word *av) C_noret;
C_noret_decl(f_1292)
static void C_ccall f_1292(C_word c,C_word *av) C_noret;
C_noret_decl(f_1295)
static void C_ccall f_1295(C_word c,C_word *av) C_noret;
C_noret_decl(f_1298)
static void C_fcall f_1298(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1328)
static void C_fcall f_1328(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1358)
static void C_fcall f_1358(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1420)
static void C_fcall f_1420(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1440)
static void C_ccall f_1440(C_word c,C_word *av) C_noret;
C_noret_decl(f_1444)
static void C_ccall f_1444(C_word c,C_word *av) C_noret;
C_noret_decl(f_1560)
static void C_fcall f_1560(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1570)
static void C_fcall f_1570(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1588)
static void C_ccall f_1588(C_word c,C_word *av) C_noret;
C_noret_decl(f_1652)
static void C_fcall f_1652(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1666)
static void C_ccall f_1666(C_word c,C_word *av) C_noret;
C_noret_decl(f_1680)
static void C_ccall f_1680(C_word c,C_word *av) C_noret;
C_noret_decl(f_1688)
static void C_ccall f_1688(C_word c,C_word *av) C_noret;
C_noret_decl(f_1692)
static void C_ccall f_1692(C_word c,C_word *av) C_noret;
C_noret_decl(f_1743)
static void C_fcall f_1743(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1814)
static void C_ccall f_1814(C_word c,C_word *av) C_noret;
C_noret_decl(f_1824)
static void C_fcall f_1824(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1839)
static void C_ccall f_1839(C_word c,C_word *av) C_noret;
C_noret_decl(f_1853)
static void C_ccall f_1853(C_word c,C_word *av) C_noret;
C_noret_decl(f_1859)
static void C_ccall f_1859(C_word c,C_word *av) C_noret;
C_noret_decl(f_1871)
static void C_ccall f_1871(C_word c,C_word *av) C_noret;
C_noret_decl(f_1877)
static void C_ccall f_1877(C_word c,C_word *av) C_noret;
C_noret_decl(f_1887)
static void C_ccall f_1887(C_word c,C_word *av) C_noret;
C_noret_decl(f_1895)
static void C_ccall f_1895(C_word c,C_word *av) C_noret;
C_noret_decl(f_1897)
static void C_fcall f_1897(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_1924)
static void C_ccall f_1924(C_word c,C_word *av) C_noret;
C_noret_decl(f_1928)
static void C_ccall f_1928(C_word c,C_word *av) C_noret;
C_noret_decl(f_1932)
static void C_ccall f_1932(C_word c,C_word *av) C_noret;
C_noret_decl(f_1936)
static void C_ccall f_1936(C_word c,C_word *av) C_noret;
C_noret_decl(f_1938)
static void C_ccall f_1938(C_word c,C_word *av) C_noret;
C_noret_decl(f_1952)
static void C_ccall f_1952(C_word c,C_word *av) C_noret;
C_noret_decl(f_1969)
static void C_fcall f_1969(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_1974)
static void C_ccall f_1974(C_word c,C_word *av) C_noret;
C_noret_decl(f_1978)
static void C_ccall f_1978(C_word c,C_word *av) C_noret;
C_noret_decl(f_1984)
static void C_ccall f_1984(C_word c,C_word *av) C_noret;
C_noret_decl(f_1991)
static void C_ccall f_1991(C_word c,C_word *av) C_noret;
C_noret_decl(f_1995)
static void C_ccall f_1995(C_word c,C_word *av) C_noret;
C_noret_decl(f_2005)
static void C_fcall f_2005(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2015)
static void C_ccall f_2015(C_word c,C_word *av) C_noret;
C_noret_decl(f_2032)
static void C_ccall f_2032(C_word c,C_word *av) C_noret;
C_noret_decl(f_2033)
static void C_fcall f_2033(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_2037)
static void C_ccall f_2037(C_word c,C_word *av) C_noret;
C_noret_decl(f_2040)
static void C_ccall f_2040(C_word c,C_word *av) C_noret;
C_noret_decl(f_2045)
static void C_fcall f_2045(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2055)
static void C_ccall f_2055(C_word c,C_word *av) C_noret;
C_noret_decl(f_2061)
static void C_ccall f_2061(C_word c,C_word *av) C_noret;
C_noret_decl(f_2075)
static void C_ccall f_2075(C_word c,C_word *av) C_noret;
C_noret_decl(f_2088)
static void C_ccall f_2088(C_word c,C_word *av) C_noret;
C_noret_decl(f_2090)
static void C_fcall f_2090(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_2100)
static void C_ccall f_2100(C_word c,C_word *av) C_noret;
C_noret_decl(f_2135)
static void C_ccall f_2135(C_word c,C_word *av) C_noret;
C_noret_decl(f_2138)
static void C_ccall f_2138(C_word c,C_word *av) C_noret;
C_noret_decl(f_2143)
static void C_fcall f_2143(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2156)
static void C_ccall f_2156(C_word c,C_word *av) C_noret;
C_noret_decl(f_2168)
static void C_fcall f_2168(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2178)
static void C_ccall f_2178(C_word c,C_word *av) C_noret;
C_noret_decl(f_2184)
static void C_ccall f_2184(C_word c,C_word *av) C_noret;
C_noret_decl(f_2190)
static void C_ccall f_2190(C_word c,C_word *av) C_noret;
C_noret_decl(f_2193)
static void C_ccall f_2193(C_word c,C_word *av) C_noret;
C_noret_decl(f_2197)
static void C_ccall f_2197(C_word c,C_word *av) C_noret;
C_noret_decl(f_2223)
static void C_ccall f_2223(C_word c,C_word *av) C_noret;
C_noret_decl(f_2233)
static void C_ccall f_2233(C_word c,C_word *av) C_noret;
C_noret_decl(f_2237)
static void C_ccall f_2237(C_word c,C_word *av) C_noret;
C_noret_decl(f_2240)
static void C_ccall f_2240(C_word c,C_word *av) C_noret;
C_noret_decl(f_2243)
static void C_ccall f_2243(C_word c,C_word *av) C_noret;
C_noret_decl(f_2249)
static void C_ccall f_2249(C_word c,C_word *av) C_noret;
C_noret_decl(f_2255)
static void C_ccall f_2255(C_word c,C_word *av) C_noret;
C_noret_decl(f_2258)
static void C_ccall f_2258(C_word c,C_word *av) C_noret;
C_noret_decl(f_2260)
static void C_fcall f_2260(C_word t0,C_word t1) C_noret;
C_noret_decl(f_2266)
static void C_ccall f_2266(C_word c,C_word *av) C_noret;
C_noret_decl(f_2272)
static void C_ccall f_2272(C_word c,C_word *av) C_noret;
C_noret_decl(f_2283)
static void C_ccall f_2283(C_word c,C_word *av) C_noret;
C_noret_decl(f_2292)
static void C_ccall f_2292(C_word c,C_word *av) C_noret;
C_noret_decl(f_2295)
static void C_ccall f_2295(C_word c,C_word *av) C_noret;
C_noret_decl(f_2302)
static void C_fcall f_2302(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2312)
static void C_ccall f_2312(C_word c,C_word *av) C_noret;
C_noret_decl(f_2315)
static void C_ccall f_2315(C_word c,C_word *av) C_noret;
C_noret_decl(f_2321)
static void C_ccall f_2321(C_word c,C_word *av) C_noret;
C_noret_decl(f_2325)
static void C_ccall f_2325(C_word c,C_word *av) C_noret;
C_noret_decl(f_2337)
static void C_fcall f_2337(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2347)
static void C_ccall f_2347(C_word c,C_word *av) C_noret;
C_noret_decl(f_2364)
static void C_ccall f_2364(C_word c,C_word *av) C_noret;
C_noret_decl(f_2368)
static void C_ccall f_2368(C_word c,C_word *av) C_noret;
C_noret_decl(f_2377)
static void C_fcall f_2377(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2387)
static void C_ccall f_2387(C_word c,C_word *av) C_noret;
C_noret_decl(f_2389)
static void C_fcall f_2389(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2414)
static void C_ccall f_2414(C_word c,C_word *av) C_noret;
C_noret_decl(f_2425)
static void C_ccall f_2425(C_word c,C_word *av) C_noret;
C_noret_decl(f_2427)
static void C_fcall f_2427(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2455)
static void C_ccall f_2455(C_word c,C_word *av) C_noret;
C_noret_decl(f_2459)
static void C_ccall f_2459(C_word c,C_word *av) C_noret;
C_noret_decl(f_2462)
static void C_ccall f_2462(C_word c,C_word *av) C_noret;
C_noret_decl(f_2465)
static void C_ccall f_2465(C_word c,C_word *av) C_noret;
C_noret_decl(f_2468)
static void C_ccall f_2468(C_word c,C_word *av) C_noret;
C_noret_decl(f_2471)
static void C_ccall f_2471(C_word c,C_word *av) C_noret;
C_noret_decl(f_2477)
static void C_ccall f_2477(C_word c,C_word *av) C_noret;
C_noret_decl(f_2480)
static void C_ccall f_2480(C_word c,C_word *av) C_noret;
C_noret_decl(f_2483)
static void C_ccall f_2483(C_word c,C_word *av) C_noret;
C_noret_decl(f_2486)
static void C_ccall f_2486(C_word c,C_word *av) C_noret;
C_noret_decl(f_2489)
static void C_ccall f_2489(C_word c,C_word *av) C_noret;
C_noret_decl(f_2492)
static void C_ccall f_2492(C_word c,C_word *av) C_noret;
C_noret_decl(f_2495)
static void C_ccall f_2495(C_word c,C_word *av) C_noret;
C_noret_decl(f_2498)
static void C_ccall f_2498(C_word c,C_word *av) C_noret;
C_noret_decl(f_2501)
static void C_ccall f_2501(C_word c,C_word *av) C_noret;
C_noret_decl(f_2504)
static void C_ccall f_2504(C_word c,C_word *av) C_noret;
C_noret_decl(f_2507)
static void C_ccall f_2507(C_word c,C_word *av) C_noret;
C_noret_decl(f_2510)
static void C_ccall f_2510(C_word c,C_word *av) C_noret;
C_noret_decl(f_2513)
static void C_ccall f_2513(C_word c,C_word *av) C_noret;
C_noret_decl(f_2516)
static void C_ccall f_2516(C_word c,C_word *av) C_noret;
C_noret_decl(f_2519)
static void C_ccall f_2519(C_word c,C_word *av) C_noret;
C_noret_decl(f_2522)
static void C_ccall f_2522(C_word c,C_word *av) C_noret;
C_noret_decl(f_2525)
static void C_ccall f_2525(C_word c,C_word *av) C_noret;
C_noret_decl(f_2528)
static void C_ccall f_2528(C_word c,C_word *av) C_noret;
C_noret_decl(f_2531)
static void C_ccall f_2531(C_word c,C_word *av) C_noret;
C_noret_decl(f_2554)
static void C_ccall f_2554(C_word c,C_word *av) C_noret;
C_noret_decl(f_2558)
static void C_ccall f_2558(C_word c,C_word *av) C_noret;
C_noret_decl(f_2562)
static void C_ccall f_2562(C_word c,C_word *av) C_noret;
C_noret_decl(f_2566)
static void C_ccall f_2566(C_word c,C_word *av) C_noret;
C_noret_decl(f_870)
static void C_ccall f_870(C_word c,C_word *av) C_noret;
C_noret_decl(f_873)
static void C_ccall f_873(C_word c,C_word *av) C_noret;
C_noret_decl(f_876)
static void C_ccall f_876(C_word c,C_word *av) C_noret;
C_noret_decl(f_879)
static void C_ccall f_879(C_word c,C_word *av) C_noret;
C_noret_decl(f_889)
static void C_ccall f_889(C_word c,C_word *av) C_noret;
C_noret_decl(f_895)
static void C_fcall f_895(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_919)
static void C_ccall f_919(C_word c,C_word *av) C_noret;
C_noret_decl(f_925)
static void C_fcall f_925(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_978)
static void C_ccall f_978(C_word c,C_word *av) C_noret;
C_noret_decl(f_987)
static void C_ccall f_987(C_word c,C_word *av) C_noret;
C_noret_decl(f_996)
static void C_fcall f_996(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(C_fmm_5fon_5fgoppa_5fgrid_toplevel)
C_externexport void C_ccall C_fmm_5fon_5fgoppa_5fgrid_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(va2770)
static void C_fcall va2770(C_word t0,C_word t1) C_noret;

C_noret_decl(trf_1298)
static void C_ccall trf_1298(C_word c,C_word *av) C_noret;
static void C_ccall trf_1298(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1298(t0,t1,t2);}

C_noret_decl(trf_1328)
static void C_ccall trf_1328(C_word c,C_word *av) C_noret;
static void C_ccall trf_1328(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1328(t0,t1,t2);}

C_noret_decl(trf_1358)
static void C_ccall trf_1358(C_word c,C_word *av) C_noret;
static void C_ccall trf_1358(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1358(t0,t1,t2);}

C_noret_decl(trf_1420)
static void C_ccall trf_1420(C_word c,C_word *av) C_noret;
static void C_ccall trf_1420(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1420(t0,t1,t2);}

C_noret_decl(trf_1560)
static void C_ccall trf_1560(C_word c,C_word *av) C_noret;
static void C_ccall trf_1560(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1560(t0,t1,t2);}

C_noret_decl(trf_1570)
static void C_ccall trf_1570(C_word c,C_word *av) C_noret;
static void C_ccall trf_1570(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1570(t0,t1,t2,t3);}

C_noret_decl(trf_1652)
static void C_ccall trf_1652(C_word c,C_word *av) C_noret;
static void C_ccall trf_1652(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1652(t0,t1);}

C_noret_decl(trf_1743)
static void C_ccall trf_1743(C_word c,C_word *av) C_noret;
static void C_ccall trf_1743(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1743(t0,t1);}

C_noret_decl(trf_1824)
static void C_ccall trf_1824(C_word c,C_word *av) C_noret;
static void C_ccall trf_1824(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1824(t0,t1);}

C_noret_decl(trf_1897)
static void C_ccall trf_1897(C_word c,C_word *av) C_noret;
static void C_ccall trf_1897(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_1897(t0,t1,t2,t3);}

C_noret_decl(trf_1969)
static void C_ccall trf_1969(C_word c,C_word *av) C_noret;
static void C_ccall trf_1969(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_1969(t0,t1,t2);}

C_noret_decl(trf_2005)
static void C_ccall trf_2005(C_word c,C_word *av) C_noret;
static void C_ccall trf_2005(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2005(t0,t1,t2);}

C_noret_decl(trf_2033)
static void C_ccall trf_2033(C_word c,C_word *av) C_noret;
static void C_ccall trf_2033(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_2033(t0,t1,t2,t3);}

C_noret_decl(trf_2045)
static void C_ccall trf_2045(C_word c,C_word *av) C_noret;
static void C_ccall trf_2045(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2045(t0,t1,t2);}

C_noret_decl(trf_2090)
static void C_ccall trf_2090(C_word c,C_word *av) C_noret;
static void C_ccall trf_2090(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_2090(t0,t1,t2,t3);}

C_noret_decl(trf_2143)
static void C_ccall trf_2143(C_word c,C_word *av) C_noret;
static void C_ccall trf_2143(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2143(t0,t1,t2);}

C_noret_decl(trf_2168)
static void C_ccall trf_2168(C_word c,C_word *av) C_noret;
static void C_ccall trf_2168(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2168(t0,t1,t2);}

C_noret_decl(trf_2260)
static void C_ccall trf_2260(C_word c,C_word *av) C_noret;
static void C_ccall trf_2260(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_2260(t0,t1);}

C_noret_decl(trf_2302)
static void C_ccall trf_2302(C_word c,C_word *av) C_noret;
static void C_ccall trf_2302(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2302(t0,t1,t2);}

C_noret_decl(trf_2337)
static void C_ccall trf_2337(C_word c,C_word *av) C_noret;
static void C_ccall trf_2337(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2337(t0,t1,t2);}

C_noret_decl(trf_2377)
static void C_ccall trf_2377(C_word c,C_word *av) C_noret;
static void C_ccall trf_2377(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2377(t0,t1,t2);}

C_noret_decl(trf_2389)
static void C_ccall trf_2389(C_word c,C_word *av) C_noret;
static void C_ccall trf_2389(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2389(t0,t1,t2);}

C_noret_decl(trf_2427)
static void C_ccall trf_2427(C_word c,C_word *av) C_noret;
static void C_ccall trf_2427(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2427(t0,t1,t2);}

C_noret_decl(trf_895)
static void C_ccall trf_895(C_word c,C_word *av) C_noret;
static void C_ccall trf_895(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_895(t0,t1,t2,t3);}

C_noret_decl(trf_925)
static void C_ccall trf_925(C_word c,C_word *av) C_noret;
static void C_ccall trf_925(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_925(t0,t1,t2,t3);}

C_noret_decl(trf_996)
static void C_ccall trf_996(C_word c,C_word *av) C_noret;
static void C_ccall trf_996(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_996(t0,t1,t2,t3);}

C_noret_decl(trva2770)
static void C_ccall trva2770(C_word c,C_word *av) C_noret;
static void C_ccall trva2770(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
va2770(t0,t1);}

/* k1040 in loop in golay_frontier#decode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_1042(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(44,c,3)))){
C_save_and_reclaim((void *)f_1042,c,av);}
a=C_alloc(44);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,C_fix(1),t2);
if(C_truep(C_i_zerop(t3))){
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:70: loop"));
t5=((C_word*)((C_word*)t0)[4])[1];
f_996(t5,((C_word*)t0)[5],t4,((C_word*)t0)[6]);}
else{
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_vector_ref(C_fast_retrieve(lf[2]),((C_word*)t0)[3]);
t6=C_s_a_i_bitwise_xor(&a,2,((C_word*)t0)[6],t5);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:71: loop"));
t7=((C_word*)((C_word*)t0)[4])[1];
f_996(t7,((C_word*)t0)[5],t4,t6);}}

/* golay_frontier#decode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_1044(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(22,c,4)))){
C_save_and_reclaim((void *)f_1044,c,av);}
a=C_alloc(22);
t3=C_fast_retrieve(lf[2]);
t4=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t5=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-12));
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_987,a[2]=t2,a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_996,a[2]=t5,a[3]=t8,a[4]=((C_word)li4),tmp=(C_word)a,a+=5,tmp));
t10=((C_word*)t8)[1];
f_996(t10,t6,C_fix(0),C_fix(0));}

/* k1052 in k985 in golay_frontier#decode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_1054(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1054,c,av);}
if(C_truep(C_i_zerop(((C_word*)t0)[2]))){
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:81: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=C_fix(0);
C_values(4,av2);}}
else{
if(C_truep(C_i_less_or_equalp(t1,C_fix(3)))){
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:83: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}
else{
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:87: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}}}

/* k1079 in k1101 in k1098 in golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1081(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1081,c,av);}
a=C_alloc(6);
t2=C_i_lessp(t1,lf[8]);
t3=(C_truep(t2)?lf[9]:lf[10]);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1113,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:108: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[3];
av2[3]=lf[12];
tp(4,av2);}}

/* k1089 in k1101 in k1098 in golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1091(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1091,c,av);}
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:94: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
av2[3]=lf[12];
tp(4,av2);}}

/* golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1093(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1093,c,av);}
a=C_alloc(3);
t2=C_rest_nullp(c,2);
t3=(C_truep(t2)?C_fix(0):C_get_rest_arg(c,2,av,2,t0));
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1100,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:101: encode-golay24"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[3];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t4;
av2[2]=t3;
tp(3,av2);}}

/* k1098 in golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1100(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_1100,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1103,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:102: golay-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t2;
av2[2]=t1;
tp(3,av2);}}

/* k1101 in k1098 in golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1103(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_1103,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1081,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1091,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:94: scheme#min"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[13]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[13]+1);
av2[1]=t3;
av2[2]=t1;
av2[3]=C_fix(24);
tp(4,av2);}}

/* k1111 in k1079 in k1101 in k1098 in golay_frontier#make-adaptive-frontier in k877 in k874 in k871 in k868 */
static void C_ccall f_1113(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_1113,c,av);}
a=C_alloc(5);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_vector4(&a,4,((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-mode in k877 in k874 in k871 in k868 */
static void C_ccall f_1121(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1121,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(0));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-tau in k877 in k874 in k871 in k868 */
static void C_ccall f_1127(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1127,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#adaptive-frontier-codeword in k877 in k874 in k871 in k868 */
static void C_ccall f_1133(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1133,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_vector_ref(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1145(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1145,c,av);}
a=C_alloc(4);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1149,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:122: golay_frontier#adaptive-frontier-mode"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word *av2=av;
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1149(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,2)))){
C_save_and_reclaim((void *)f_1149,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1152,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:123: adaptive-frontier-tau"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[15]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[15]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1152(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_1152,c,av);}
a=C_alloc(6);
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(3));
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1158,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t2,a[5]=t1,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:125: adaptive-frontier-codeword"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[16]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[16]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}

/* k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1158(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1158,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1161,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:126: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1161(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1161,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1164,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:126: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[35];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1164(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1164,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1167,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:126: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1167(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1167,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1170,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:127: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1170(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1170,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1173,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:127: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[34];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1173(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1173,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1176,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:127: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1176(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1176,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1179,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:128: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1179(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1179,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1182,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:128: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[33];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1182(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1182,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1185,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:128: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[7];
tp(4,av2);}}

/* k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1185(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1185,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1188,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t2,a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:129: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1188(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_1188,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_1191,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:129: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[6];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1191(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_1191,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1194,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1268,a[2]=t2,a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:129: scheme#number->string"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[31]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[31]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[7];
av2[3]=C_fix(16);
tp(4,av2);}}

/* k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1194(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1194,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1197,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:129: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[6];
tp(4,av2);}}

/* k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1197(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1197,c,av);}
a=C_alloc(7);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1200,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t2,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:130: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 in ... */
static void C_ccall f_1200(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_1200,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1203,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:130: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[30];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in ... */
static void C_ccall f_1203(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1203,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1206,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:130: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in ... */
static void C_ccall f_1206(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1206,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1209,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:130: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[29];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in ... */
static void C_ccall f_1209(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1209,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1212,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:130: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in ... */
static void C_ccall f_1212(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1212,c,av);}
a=C_alloc(6);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1215,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:131: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in ... */
static void C_ccall f_1215(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_1215,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1218,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:131: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[28];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in ... */
static void C_ccall f_1218(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1218,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1221,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:131: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in ... */
static void C_ccall f_1221(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1221,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1224,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:131: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in ... */
static void C_ccall f_1224(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1224,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1227,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:132: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in ... */
static void C_ccall f_1227(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1227,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1230,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:132: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in ... */
static void C_ccall f_1230(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1230,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1233,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:132: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in ... */
static void C_ccall f_1233(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1233,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1236,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:132: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in ... */
static void C_ccall f_1236(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1236,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1239,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:133: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in ... */
static void C_ccall f_1239(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_1239,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1242,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:133: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[26];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1240 in k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in k1177 in ... */
static void C_ccall f_1242(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1242,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1245,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_eqp(((C_word*)t0)[4],lf[9]);
t4=(C_truep(t3)?lf[24]:lf[25]);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:133: ##sys#print"));
t5=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=t2;
av2[2]=t4;
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}

/* k1243 in k1240 in k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in k1180 in ... */
static void C_ccall f_1245(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_1245,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1248,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:133: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=t2;
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1246 in k1243 in k1240 in k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in k1183 in ... */
static void C_ccall f_1248(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1248,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1251,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:137: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k1249 in k1246 in k1243 in k1240 in k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in k1186 in ... */
static void C_ccall f_1251(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_1251,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1254,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:137: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[21];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k1252 in k1249 in k1246 in k1243 in k1240 in k1237 in k1234 in k1231 in k1228 in k1225 in k1222 in k1219 in k1216 in k1213 in k1210 in k1207 in k1204 in k1201 in k1198 in k1195 in k1192 in k1189 in ... */
static void C_ccall f_1254(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1254,c,av);}
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:137: ##sys#write-char-0"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[19]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[19]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=C_make_character(10);
av2[3]=((C_word*)t0)[3];
tp(4,av2);}}

/* k1266 in k1189 in k1186 in k1183 in k1180 in k1177 in k1174 in k1171 in k1168 in k1165 in k1162 in k1159 in k1156 in k1150 in k1147 in golay_frontier#print-golay-info in k877 in k874 in k871 in k868 */
static void C_ccall f_1268(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_1268,c,av);}
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:129: ##sys#print"));
t2=*((C_word*)lf[20]+1);{
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

/* k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1271(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1271,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1274,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:11: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[74]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[74]+1);
av2[1]=t2;
av2[2]=lf[78];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1274(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1274,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1277,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:11: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[74]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[74]+1);
av2[1]=t2;
av2[2]=lf[77];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1277(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1277,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1280,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:11: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[74]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[74]+1);
av2[1]=t2;
av2[2]=lf[76];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1280(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_1280,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1283,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:11: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[74]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[74]+1);
av2[1]=t2;
av2[2]=lf[0];
av2[3]=lf[75];
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1283(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(45,c,9)))){
C_save_and_reclaim((void *)f_1283,c,av);}
a=C_alloc(45);
t2=C_mutate((C_word*)lf[37]+1 /* (set! scheme#sin ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1286,a[2]=((C_word)li11),tmp=(C_word)a,a+=3,tmp));
t3=C_mutate((C_word*)lf[38]+1 /* (set! scheme#cos ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1289,a[2]=((C_word)li12),tmp=(C_word)a,a+=3,tmp));
t4=C_mutate((C_word*)lf[39]+1 /* (set! scheme#sqrt ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1292,a[2]=((C_word)li13),tmp=(C_word)a,a+=3,tmp));
t5=C_mutate((C_word*)lf[40]+1 /* (set! scheme#acos ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1295,a[2]=((C_word)li14),tmp=(C_word)a,a+=3,tmp));
t6=C_mutate(&lf[41] /* (set! module.fmm.fmm-goppa#c-add ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1298,a[2]=((C_word)li15),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate(&lf[42] /* (set! module.fmm.fmm-goppa#c-sub ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1328,a[2]=((C_word)li16),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate(&lf[43] /* (set! module.fmm.fmm-goppa#c-mul ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1358,a[2]=((C_word)li17),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate(&lf[44] /* (set! module.fmm.fmm-goppa#c-div ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1420,a[2]=((C_word)li18),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate(&lf[46] /* (set! module.fmm.fmm-goppa#c-pow ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1560,a[2]=((C_word)li20),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate(&lf[48] /* (set! module.fmm.fmm-goppa#fact ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1652,a[2]=((C_word)li21),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate(&lf[49] /* (set! module.fmm.fmm-goppa#print-frontier-info ...) */,C_fast_retrieve(lf[17]));
t13=C_mutate((C_word*)lf[50]+1 /* (set! module.fmm.fmm-goppa#make-goppa-grid ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1887,a[2]=((C_word)li23),tmp=(C_word)a,a+=3,tmp));
t14=C_mutate((C_word*)lf[54]+1 /* (set! module.fmm.fmm-goppa#local-parameter ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1938,a[2]=((C_word)li24),tmp=(C_word)a,a+=3,tmp));
t15=C_mutate((C_word*)lf[55]+1 /* (set! module.fmm.fmm-goppa#calculate-geometric-center ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1952,a[2]=((C_word)li27),tmp=(C_word)a,a+=3,tmp));
t16=C_mutate((C_word*)lf[57]+1 /* (set! module.fmm.fmm-goppa#cartan-fmm-evaluate-golay ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2233,a[2]=((C_word)li46),tmp=(C_word)a,a+=3,tmp));
t17=C_mutate((C_word*)lf[61]+1 /* (set! module.fmm.fmm-goppa#demo-cartan-golay ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2455,a[2]=((C_word)li47),tmp=(C_word)a,a+=3,tmp));
t18=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t18;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t18+1)))(2,av2);}}

/* scheme#sin in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1286(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,1)))){
C_save_and_reclaim((void *)f_1286,c,av);}
a=C_alloc(4);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_sin(&a,1,t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* scheme#cos in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1289(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,1)))){
C_save_and_reclaim((void *)f_1289,c,av);}
a=C_alloc(4);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_cos(&a,1,t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* scheme#sqrt in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1292(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,1)))){
C_save_and_reclaim((void *)f_1292,c,av);}
a=C_alloc(4);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_sqrt(&a,1,t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* scheme#acos in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1295(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,1)))){
C_save_and_reclaim((void *)f_1295,c,av);}
a=C_alloc(4);
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_acos(&a,1,t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* module.fmm.fmm-goppa#c-add in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1298(C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(61,0,1)))){
C_save_and_reclaim_args((void *)trf_1298,3,t1,t2,t3);}
a=C_alloc(61);
t4=C_i_car(t2);
t5=C_i_car(t3);
t6=C_s_a_i_plus(&a,2,t4,t5);
t7=C_i_cdr(t2);
t8=C_i_cdr(t3);
t9=C_s_a_i_plus(&a,2,t7,t8);
t10=t1;{
C_word av2[2];
av2[0]=t10;
av2[1]=C_a_i_cons(&a,2,t6,t9);
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}

/* module.fmm.fmm-goppa#c-sub in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1328(C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(61,0,1)))){
C_save_and_reclaim_args((void *)trf_1328,3,t1,t2,t3);}
a=C_alloc(61);
t4=C_i_car(t2);
t5=C_i_car(t3);
t6=C_s_a_i_minus(&a,2,t4,t5);
t7=C_i_cdr(t2);
t8=C_i_cdr(t3);
t9=C_s_a_i_minus(&a,2,t7,t8);
t10=t1;{
C_word av2[2];
av2[0]=t10;
av2[1]=C_a_i_cons(&a,2,t6,t9);
((C_proc)(void*)(*((C_word*)t10+1)))(2,av2);}}

/* module.fmm.fmm-goppa#c-mul in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1358(C_word t1,C_word t2,C_word t3){
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
C_word t16;
C_word t17;
C_word t18;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(193,0,1)))){
C_save_and_reclaim_args((void *)trf_1358,3,t1,t2,t3);}
a=C_alloc(193);
t4=C_i_car(t2);
t5=C_i_car(t3);
t6=C_s_a_i_times(&a,2,t4,t5);
t7=C_i_cdr(t2);
t8=C_i_cdr(t3);
t9=C_s_a_i_times(&a,2,t7,t8);
t10=C_s_a_i_minus(&a,2,t6,t9);
t11=C_i_car(t2);
t12=C_i_cdr(t3);
t13=C_s_a_i_times(&a,2,t11,t12);
t14=C_i_cdr(t2);
t15=C_i_car(t3);
t16=C_s_a_i_times(&a,2,t14,t15);
t17=C_s_a_i_plus(&a,2,t13,t16);
t18=t1;{
C_word av2[2];
av2[0]=t18;
av2[1]=C_a_i_cons(&a,2,t10,t17);
((C_proc)(void*)(*((C_word*)t18+1)))(2,av2);}}

/* module.fmm.fmm-goppa#c-div in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1420(C_word t1,C_word t2,C_word t3){
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
C_word t16;
C_word t17;
C_word t18;
C_word t19;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(196,0,3)))){
C_save_and_reclaim_args((void *)trf_1420,3,t1,t2,t3);}
a=C_alloc(196);
t4=C_i_car(t3);
t5=C_i_car(t3);
t6=C_s_a_i_times(&a,2,t4,t5);
t7=C_i_cdr(t3);
t8=C_i_cdr(t3);
t9=C_s_a_i_times(&a,2,t7,t8);
t10=C_s_a_i_plus(&a,2,t6,t9);
if(C_truep(C_i_zerop(t10))){
t11=t1;{
C_word av2[2];
av2[0]=t11;
av2[1]=C_a_i_cons(&a,2,lf[45],lf[45]);
((C_proc)(void*)(*((C_word*)t11+1)))(2,av2);}}
else{
t11=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1440,a[2]=t1,a[3]=t2,a[4]=t3,a[5]=t10,tmp=(C_word)a,a+=6,tmp);
t12=C_i_car(t2);
t13=C_i_car(t3);
t14=C_s_a_i_times(&a,2,t12,t13);
t15=C_i_cdr(t2);
t16=C_i_cdr(t3);
t17=C_s_a_i_times(&a,2,t15,t16);
t18=C_s_a_i_plus(&a,2,t14,t17);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:40: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word av2[4];
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t11;
av2[2]=t18;
av2[3]=t10;
tp(4,av2);}}}

/* k1438 in module.fmm.fmm-goppa#c-div in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1440(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(99,c,3)))){
C_save_and_reclaim((void *)f_1440,c,av);}
a=C_alloc(99);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1444,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t3=C_i_cdr(((C_word*)t0)[3]);
t4=C_i_car(((C_word*)t0)[4]);
t5=C_s_a_i_times(&a,2,t3,t4);
t6=C_i_car(((C_word*)t0)[3]);
t7=C_i_cdr(((C_word*)t0)[4]);
t8=C_s_a_i_times(&a,2,t6,t7);
t9=C_s_a_i_minus(&a,2,t5,t8);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:41: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t2;
av2[2]=t9;
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}

/* k1442 in k1438 in module.fmm.fmm-goppa#c-div in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1444(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_1444,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* module.fmm.fmm-goppa#c-pow in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1560(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,4)))){
C_save_and_reclaim_args((void *)trf_1560,3,t1,t2,t3);}
a=C_alloc(11);
t4=C_a_i_cons(&a,2,lf[47],lf[45]);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1570,a[2]=t3,a[3]=t6,a[4]=t2,a[5]=((C_word)li19),tmp=(C_word)a,a+=6,tmp));
t8=((C_word*)t6)[1];
f_1570(t8,t1,C_fix(0),t4);}

/* loop in module.fmm.fmm-goppa#c-pow in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1570(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(34,0,3)))){
C_save_and_reclaim_args((void *)trf_1570,4,t0,t1,t2,t3);}
a=C_alloc(34);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_plus(&a,2,t2,C_fix(1));
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1588,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t4,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:47: c-mul"));
f_1358(t5,t3,((C_word*)t0)[4]);}}

/* k1586 in loop in module.fmm.fmm-goppa#c-pow in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1588(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1588,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:47: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_1570(t2,((C_word*)t0)[3],((C_word*)t0)[4],t1);}

/* module.fmm.fmm-goppa#fact in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1652(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,0,2)))){
C_save_and_reclaim_args((void *)trf_1652,2,t1,t2);}
a=C_alloc(33);
if(C_truep(C_i_less_or_equalp(t2,C_fix(1)))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_fix(1);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1666,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
t4=C_s_a_i_minus(&a,2,t2,C_fix(1));
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:57: fact"));
t6=t3;
t7=t4;
t1=t6;
t2=t7;
goto loop;}}

/* k1664 in module.fmm.fmm-goppa#fact in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1666(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,1)))){
C_save_and_reclaim((void *)f_1666,c,av);}
a=C_alloc(33);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_s_a_i_times(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k1678 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in ... */
static void C_ccall f_1680(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_1680,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1688,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:60: fact"));
f_1652(t2,((C_word*)t0)[4]);}

/* k1686 in k1678 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in ... */
static void C_ccall f_1688(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(34,c,2)))){
C_save_and_reclaim((void *)f_1688,c,av);}
a=C_alloc(34);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1692,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],tmp=(C_word)a,a+=5,tmp);
t3=C_s_a_i_minus(&a,2,((C_word*)t0)[4],((C_word*)t0)[5]);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:60: fact"));
f_1652(t2,t3);}

/* k1690 in k1686 in k1678 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in ... */
static void C_ccall f_1692(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(33,c,3)))){
C_save_and_reclaim((void *)f_1692,c,av);}
a=C_alloc(33);
t2=C_s_a_i_times(&a,2,((C_word*)t0)[2],t1);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:60: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=((C_word*)t0)[3];
av2[2]=((C_word*)t0)[4];
av2[3]=t2;
tp(4,av2);}}

/* k1741 in k1812 in doloop388 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1743(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,1)))){
C_save_and_reclaim_args((void *)trf_1743,2,t0,t1);}
t2=((C_word*)t0)[2];
f_1824(t2,((C_word*)t0)[3]);}

/* k1812 in doloop388 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1814(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(14,c,2)))){
C_save_and_reclaim((void *)f_1814,c,av);}
a=C_alloc(14);
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(4));
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1824,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t4=C_eqp(t1,lf[9]);
if(C_truep(t4)){
t5=t3;
f_1824(t5,C_a_i_cons(&a,2,((C_word*)t0)[4],t2));}
else{
t5=C_a_i_list1(&a,1,((C_word*)t0)[4]);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1743,a[2]=t3,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
t7=C_i_car(t2);
if(C_truep(C_i_nullp(t7))){
t8=C_i_set_car(t2,t5);
t9=t6;
f_1743(t9,C_i_set_cdr(t2,t5));}
else{
t8=C_i_cdr(t2);
t9=C_i_set_cdr(t8,t5);
t10=t6;
f_1743(t10,C_i_set_cdr(t2,t5));}}}

/* k1822 in k1812 in doloop388 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1824(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,0,2)))){
C_save_and_reclaim_args((void *)trf_1824,2,t0,t1);}
a=C_alloc(29);
t2=C_i_vector_set(((C_word*)t0)[2],C_fix(4),t1);
t3=C_mutate(((C_word *)((C_word*)t0)[3])+1,((C_word*)t0)[2]);
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[4],C_fix(1));
t5=((C_word*)((C_word*)t0)[5])[1];
f_2427(t5,((C_word*)t0)[6],t4);}

/* k1837 in a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1839(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1839,c,av);}
a=C_alloc(8);
t2=C_i_vector_ref(((C_word*)t0)[2],C_fix(4));
t3=C_eqp(t1,lf[9]);
if(C_truep(t3)){
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1853,a[2]=t2,a[3]=((C_word)li28),tmp=(C_word)a,a+=4,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1859,a[2]=((C_word*)t0)[2],a[3]=((C_word)li29),tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:106: ##sys#call-with-values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=t4;
av2[3]=t5;
C_call_with_values(4,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1871,a[2]=t2,a[3]=((C_word)li30),tmp=(C_word)a,a+=4,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1877,a[2]=((C_word*)t0)[2],a[3]=((C_word)li31),tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:109: ##sys#call-with-values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=((C_word*)t0)[3];
av2[2]=t4;
av2[3]=t5;
C_call_with_values(4,av2);}}}

/* a1852 in k1837 in a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1853(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1853,c,av);}
if(C_truep(C_i_nullp(((C_word*)t0)[2]))){
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:69: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_FALSE;
av2[3]=C_SCHEME_END_OF_LIST;
C_values(4,av2);}}
else{
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:70: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_i_car(((C_word*)t0)[2]);
av2[3]=C_i_cdr(((C_word*)t0)[2]);
C_values(4,av2);}}}

/* a1858 in k1837 in a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1859(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1859,c,av);}
t4=C_i_vector_set(((C_word*)t0)[2],C_fix(4),t3);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:108: scheme#values"));{
C_word *av2=av;
av2[0]=0;
av2[1]=t1;
av2[2]=t2;
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}

/* a1870 in k1837 in a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1871(C_word c,C_word *av){
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
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1871,c,av);}
t2=C_i_car(((C_word*)t0)[2]);
if(C_truep(C_i_nullp(t2))){
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:85: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=C_SCHEME_FALSE;
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}
else{
t3=C_i_caar(((C_word*)t0)[2]);
t4=C_i_cdar(((C_word*)t0)[2]);
t5=C_i_set_car(((C_word*)t0)[2],t4);
t6=C_i_car(((C_word*)t0)[2]);
t7=C_i_nullp(t6);
t8=(C_truep(t7)?C_i_set_cdr(((C_word*)t0)[2],C_SCHEME_END_OF_LIST):C_SCHEME_UNDEFINED);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:90: scheme#values"));{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t1;
av2[2]=t3;
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}}

/* a1876 in k1837 in a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1877(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1877,c,av);}
t4=C_i_vector_set(((C_word*)t0)[2],C_fix(4),t3);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:111: scheme#values"));{
C_word *av2=av;
av2[0]=0;
av2[1]=t1;
av2[2]=t2;
av2[3]=((C_word*)t0)[2];
C_values(4,av2);}}

/* module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1887(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1887,c,av);}
a=C_alloc(4);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1895,a[2]=t4,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:122: scheme#make-vector"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[53]+1));
C_word *av2=av;
av2[0]=*((C_word*)lf[53]+1);
av2[1]=t5;
av2[2]=t4;
av2[3]=C_SCHEME_END_OF_LIST;
tp(4,av2);}}

/* k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1895(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1895,c,av);}
a=C_alloc(7);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1897,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word)li22),tmp=(C_word)a,a+=5,tmp));
t5=((C_word*)t3)[1];
f_1897(t5,((C_word*)t0)[3],C_fix(0),t1);}

/* doloop273 in k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1897(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,2)))){
C_save_and_reclaim_args((void *)trf_1897,4,t0,t1,t2,t3);}
a=C_alloc(10);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1932,a[2]=t3,a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1936,a[2]=t4,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:124: scheme#exact->inexact"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[52]+1));
C_word av2[3];
av2[0]=*((C_word*)lf[52]+1);
av2[1]=t5;
av2[2]=((C_word*)t0)[2];
tp(3,av2);}}}

/* k1922 in k1930 in doloop273 in k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1924(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,2)))){
C_save_and_reclaim((void *)f_1924,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1928,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:125: scheme#sin"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[37]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[37]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
tp(3,av2);}}

/* k1926 in k1922 in k1930 in doloop273 in k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1928(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(32,c,3)))){
C_save_and_reclaim((void *)f_1928,c,av);}
a=C_alloc(32);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_i_vector_set(((C_word*)t0)[3],((C_word*)t0)[4],t2);
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[4],C_fix(1));
t5=((C_word*)((C_word*)t0)[5])[1];
f_1897(t5,((C_word*)t0)[6],t4,((C_word*)t0)[3]);}

/* k1930 in doloop273 in k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1932(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(40,c,2)))){
C_save_and_reclaim((void *)f_1932,c,av);}
a=C_alloc(40);
t2=C_s_a_i_times(&a,2,lf[51],t1);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1924,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t2,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:125: scheme#cos"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[38]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[38]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* k1934 in doloop273 in k1893 in module.fmm.fmm-goppa#make-goppa-grid in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1936(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1936,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:124: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=t1;
tp(4,av2);}}

/* module.fmm.fmm-goppa#local-parameter in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1938(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,1)))){
C_save_and_reclaim((void *)f_1938,c,av);}
a=C_alloc(5);
t4=C_i_vector_length(t2);
t5=C_s_a_i_modulo(&a,2,t3,t4);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_i_vector_ref(t2,t5);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1952(C_word c,C_word *av){
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
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(22,c,3)))){
C_save_and_reclaim((void *)f_1952,c,av);}
a=C_alloc(22);
if(C_truep(C_i_nullp(t3))){
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_a_i_cons(&a,2,lf[45],lf[45]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_a_i_cons(&a,2,lf[45],lf[45]);
t5=t4;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_i_length(t3);
t8=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1969,a[2]=t6,a[3]=t2,a[4]=((C_word)li25),tmp=(C_word)a,a+=5,tmp);
t9=C_i_check_list_2(t3,lf[56]);
t10=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1984,a[2]=t1,a[3]=t6,a[4]=t7,tmp=(C_word)a,a+=5,tmp);
t11=C_SCHEME_UNDEFINED;
t12=(*a=C_VECTOR_TYPE|1,a[1]=t11,tmp=(C_word)a,a+=2,tmp);
t13=C_set_block_item(t12,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2005,a[2]=t12,a[3]=t8,a[4]=((C_word)li26),tmp=(C_word)a,a+=5,tmp));
t14=((C_word*)t12)[1];
f_2005(t14,t10,t3);}}

/* g292 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_1969(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,3)))){
C_save_and_reclaim_args((void *)trf_1969,3,t0,t1,t2);}
a=C_alloc(8);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1974,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1978,a[2]=t3,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:137: local-parameter"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[54]);
C_word av2[4];
av2[0]=*((C_word*)lf[54]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[3];
av2[3]=t2;
tp(4,av2);}}

/* k1972 in g292 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1974(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1974,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k1976 in g292 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1978(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_1978,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:137: c-add"));
f_1298(((C_word*)t0)[2],((C_word*)((C_word*)t0)[3])[1],t1);}

/* k1982 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1984(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_1984,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1991,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:139: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t2;
av2[2]=C_i_car(((C_word*)((C_word*)t0)[3])[1]);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1989 in k1982 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1991(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1991,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1995,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:139: scheme#/"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[11]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[11]+1);
av2[1]=t2;
av2[2]=C_i_cdr(((C_word*)((C_word*)t0)[3])[1]);
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k1993 in k1989 in k1982 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_1995(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_1995,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* for-each-loop291 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2005(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_2005,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2015,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:136: g292"));
t4=((C_word*)t0)[3];
f_1969(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k2013 in for-each-loop291 in module.fmm.fmm-goppa#calculate-geometric-center in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2015(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_2015,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_2005(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2032(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(22,c,4)))){
C_save_and_reclaim((void *)f_2032,c,av);}
a=C_alloc(22);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2033,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word)li37),tmp=(C_word)a,a+=7,tmp);
t3=C_i_check_list_2(((C_word*)t0)[5],lf[56]);
t4=C_i_check_list_2(((C_word*)t0)[6],lf[56]);
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2088,a[2]=((C_word*)t0)[7],a[3]=((C_word*)t0)[8],a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=((C_word*)t0)[9],a[7]=((C_word*)t0)[3],tmp=(C_word)a,a+=8,tmp);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2090,a[2]=t7,a[3]=t2,a[4]=((C_word)li41),tmp=(C_word)a,a+=5,tmp));
t9=((C_word*)t7)[1];
f_2090(t9,t5,((C_word*)t0)[5],((C_word*)t0)[6]);}

/* g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 in ... */
static void C_fcall f_2033(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,3)))){
C_save_and_reclaim_args((void *)trf_2033,4,t0,t1,t2,t3);}
a=C_alloc(7);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2037,a[2]=((C_word*)t0)[2],a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:147: local-parameter"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[54]);
C_word av2[4];
av2[0]=*((C_word*)lf[54]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=t2;
tp(4,av2);}}

/* k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2037(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2037,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2040,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:148: c-sub"));
f_1328(t2,t1,((C_word*)t0)[6]);}

/* k2038 in k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in ... */
static void C_ccall f_2040(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2040,c,av);}
a=C_alloc(10);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2045,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=t1,a[7]=((C_word)li36),tmp=(C_word)a,a+=8,tmp));
t5=((C_word*)t3)[1];
f_2045(t5,((C_word*)t0)[5],C_fix(0));}

/* doloop333 in k2038 in k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in ... */
static void C_fcall f_2045(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,3)))){
C_save_and_reclaim_args((void *)trf_2045,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2055,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t2,a[5]=((C_word*)t0)[5],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:150: c-pow"));
f_1560(t3,((C_word*)t0)[6],t2);}}

/* k2053 in doloop333 in k2038 in k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in ... */
static void C_ccall f_2055(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_2055,c,av);}
a=C_alloc(9);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],lf[45]);
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2061,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[6],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:152: c-mul"));
f_1358(t3,t2,t1);}

/* k2059 in k2053 in doloop333 in k2038 in k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in ... */
static void C_ccall f_2061(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2061,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2075,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:153: c-add"));
f_1298(t2,C_i_vector_ref(((C_word*)t0)[2],((C_word*)t0)[3]),t1);}

/* k2073 in k2059 in k2053 in doloop333 in k2038 in k2035 in g318 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in ... */
static void C_ccall f_2075(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,2)))){
C_save_and_reclaim((void *)f_2075,c,av);}
a=C_alloc(29);
t2=C_i_vector_set(((C_word*)t0)[2],((C_word*)t0)[3],t1);
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t4=((C_word*)((C_word*)t0)[4])[1];
f_2045(t4,((C_word*)t0)[5],t3);}

/* k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 in ... */
static void C_ccall f_2088(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,c,3)))){
C_save_and_reclaim((void *)f_2088,c,av);}
a=C_alloc(14);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2364,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2135,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=t2,a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[7],tmp=(C_word)a,a+=7,tmp);
t4=C_a_i_cons(&a,2,lf[45],lf[45]);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:158: scheme#make-vector"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[53]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[53]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
av2[3]=t4;
tp(4,av2);}}

/* for-each-loop317 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 in ... */
static void C_fcall f_2090(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_2090,4,t0,t1,t2,t3);}
a=C_alloc(6);
t4=C_i_pairp(t2);
t5=(C_truep(t4)?C_i_pairp(t3):C_SCHEME_FALSE);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2100,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,a[5]=t3,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:146: g318"));
t7=((C_word*)t0)[3];
f_2033(t7,t6,C_slot(t2,C_fix(0)),C_slot(t3,C_fix(0)));}
else{
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}

/* k2098 in for-each-loop317 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2100(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_2100,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_2090(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)),C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2135(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2135,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2138,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:159: c-sub"));
f_1328(t2,((C_word*)t0)[5],((C_word*)t0)[6]);}

/* k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in ... */
static void C_ccall f_2138(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2138,c,av);}
a=C_alloc(10);
t2=C_SCHEME_UNDEFINED;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=C_set_block_item(t3,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2143,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=t1,a[7]=((C_word)li40),tmp=(C_word)a,a+=8,tmp));
t5=((C_word*)t3)[1];
f_2143(t5,((C_word*)t0)[5],C_fix(0));}

/* doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in ... */
static void C_fcall f_2143(C_word t0,C_word t1,C_word t2){
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
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(23,0,3)))){
C_save_and_reclaim_args((void *)trf_2143,3,t0,t1,t2);}
a=C_alloc(23);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_a_i_cons(&a,2,lf[45],lf[45]);
t4=t3;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2156,a[2]=((C_word*)t0)[3],a[3]=t2,a[4]=t5,a[5]=((C_word*)t0)[4],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2168,a[2]=((C_word*)t0)[2],a[3]=t5,a[4]=t8,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,a[8]=((C_word)li39),tmp=(C_word)a,a+=9,tmp));
t10=((C_word*)t8)[1];
f_2168(t10,t6,C_fix(0));}}

/* k2154 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in ... */
static void C_ccall f_2156(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,2)))){
C_save_and_reclaim((void *)f_2156,c,av);}
a=C_alloc(29);
t2=C_i_vector_set(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)((C_word*)t0)[4])[1]);
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t4=((C_word*)((C_word*)t0)[5])[1];
f_2143(t4,((C_word*)t0)[6],t3);}

/* doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in ... */
static void C_fcall f_2168(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(46,0,2)))){
C_save_and_reclaim_args((void *)trf_2168,3,t0,t1,t2);}
a=C_alloc(46);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2178,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],tmp=(C_word)a,a+=9,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2223,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=C_s_a_i_plus(&a,2,((C_word*)t0)[7],t2);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1680,a[2]=t4,a[3]=t5,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:60: fact"));
f_1652(t6,t5);}}

/* k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in ... */
static void C_ccall f_2178(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(43,c,2)))){
C_save_and_reclaim((void *)f_2178,c,av);}
a=C_alloc(43);
t2=C_i_oddp(((C_word*)t0)[2]);
t3=(C_truep(t2)?lf[59]:lf[47]);
t4=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2184,a[2]=t3,a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[2],a[6]=((C_word*)t0)[4],a[7]=((C_word*)t0)[5],a[8]=((C_word*)t0)[6],tmp=(C_word)a,a+=9,tmp);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)va2770,a[2]=t4,a[3]=((C_word*)t0)[7],a[4]=((C_word)li38),tmp=(C_word)a,a+=5,tmp);
t6=t5;
va2770(t6,C_s_a_i_plus(&a,2,((C_word*)t0)[8],((C_word*)t0)[2]));}

/* k2182 in k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in ... */
static void C_ccall f_2184(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(43,c,3)))){
C_save_and_reclaim((void *)f_2184,c,av);}
a=C_alloc(43);
t2=C_s_a_i_times(&a,2,((C_word*)t0)[2],((C_word*)t0)[3]);
t3=C_a_i_cons(&a,2,t2,lf[45]);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2190,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=((C_word*)t0)[6],a[5]=((C_word*)t0)[7],a[6]=((C_word*)t0)[8],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:168: c-div"));
f_1420(t4,t3,t1);}

/* k2188 in k2182 in k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in ... */
static void C_ccall f_2190(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2190,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2193,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:169: c-mul"));
f_1358(t2,C_i_vector_ref(((C_word*)t0)[6],((C_word*)t0)[3]),t1);}

/* k2191 in k2188 in k2182 in k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in ... */
static void C_ccall f_2193(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2193,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2197,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:170: c-add"));
f_1298(t2,((C_word*)((C_word*)t0)[2])[1],t1);}

/* k2195 in k2191 in k2188 in k2182 in k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in ... */
static void C_ccall f_2197(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,c,2)))){
C_save_and_reclaim((void *)f_2197,c,av);}
a=C_alloc(29);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t4=((C_word*)((C_word*)t0)[4])[1];
f_2168(t4,((C_word*)t0)[5],t3);}

/* k2221 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in ... */
static void C_ccall f_2223(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_2223,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:164: scheme#exact->inexact"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[52]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[52]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t1;
tp(3,av2);}}

/* module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2233(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,2)))){
C_save_and_reclaim((void *)f_2233,c,av);}
a=C_alloc(8);
t9=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2237,a[2]=t3,a[3]=t1,a[4]=t6,a[5]=t5,a[6]=t2,a[7]=t7,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:180: golay_frontier#make-adaptive-frontier"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[7]);
C_word *av2=av;
av2[0]=*((C_word*)lf[7]+1);
av2[1]=t9;
av2[2]=t8;
tp(3,av2);}}

/* k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2237(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_2237,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2240,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,tmp=(C_word)a,a+=9,tmp);
t3=C_a_i_vector1(&a,1,C_SCHEME_END_OF_LIST);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:181: srfi-133#vector-append"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[60]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[60]+1);
av2[1]=t2;
av2[2]=t1;
av2[3]=t3;
tp(4,av2);}}

/* k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2240(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_2240,c,av);}
a=C_alloc(12);
t2=t1;
t3=(*a=C_VECTOR_TYPE|1,a[1]=t2,tmp=(C_word)a,a+=2,tmp);
t4=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_2243,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],tmp=(C_word)a,a+=10,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:182: local-parameter"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[54]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[54]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[6];
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}

/* k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2243(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(16,c,2)))){
C_save_and_reclaim((void *)f_2243,c,av);}
a=C_alloc(16);
t2=C_a_i_cons(&a,2,lf[45],lf[45]);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_2249,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t4,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=t1,a[9]=((C_word*)t0)[7],a[10]=((C_word*)t0)[8],tmp=(C_word)a,a+=11,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:185: print-frontier-info"));
{C_proc tp=(C_proc)C_retrieve2_symbol_proc(lf[49],C_text("module.fmm.fmm-goppa#print-frontier-info"));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=lf[49];
av2[1]=t5;
av2[2]=((C_word*)t0)[9];
tp(3,av2);}}

/* k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2249(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2249,c,av);}
a=C_alloc(19);
t2=C_i_vector_length(((C_word*)t0)[2]);
t3=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_2255,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[2],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],tmp=(C_word)a,a+=11,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2427,a[2]=t2,a[3]=((C_word*)t0)[5],a[4]=t5,a[5]=((C_word)li45),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_2427(t7,t3,C_fix(0));}

/* k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2255(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(18,c,2)))){
C_save_and_reclaim((void *)f_2255,c,av);}
a=C_alloc(18);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2258,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|11,a[1]=(C_word)f_2260,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],a[4]=t4,a[5]=((C_word*)t0)[6],a[6]=((C_word*)t0)[7],a[7]=((C_word*)t0)[3],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],a[11]=((C_word)li44),tmp=(C_word)a,a+=12,tmp));
t6=((C_word*)t4)[1];
f_2260(t6,t2);}

/* k2256 in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2258(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2258,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)((C_word*)t0)[3])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2260(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(16,0,4)))){
C_save_and_reclaim_args((void *)trf_2260,2,t0,t1);}
a=C_alloc(16);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2266,a[2]=((C_word*)t0)[2],a[3]=((C_word)li32),tmp=(C_word)a,a+=4,tmp);
t3=(*a=C_CLOSURE_TYPE|11,a[1]=(C_word)f_2272,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],a[11]=((C_word)li43),tmp=(C_word)a,a+=12,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:194: ##sys#call-with-values"));{
C_word av2[4];
av2[0]=0;
av2[1]=t1;
av2[2]=t2;
av2[3]=t3;
C_call_with_values(4,av2);}}

/* a2265 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2266(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_2266,c,av);}
a=C_alloc(4);
t2=((C_word*)((C_word*)t0)[2])[1];
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1839,a[2]=t2,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:103: golay_frontier#adaptive-frontier-mode"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t3;
av2[2]=t2;
tp(3,av2);}}

/* a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2272(C_word c,C_word *av){
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
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,c,3)))){
C_save_and_reclaim((void *)f_2272,c,av);}
a=C_alloc(14);
if(C_truep(t2)){
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t3);
t5=C_i_vector_ref(((C_word*)t0)[3],t2);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2283,a[2]=((C_word*)t0)[4],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
if(C_truep(C_i_nullp(t5))){
t7=t6;{
C_word *av2=av;
av2[0]=t7;
av2[1]=C_SCHEME_UNDEFINED;
f_2283(2,av2);}}
else{
t7=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_2292,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[7],a[5]=((C_word*)t0)[8],a[6]=((C_word*)t0)[9],a[7]=t5,a[8]=t6,a[9]=((C_word*)t0)[10],tmp=(C_word)a,a+=10,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:200: calculate-geometric-center"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[55]);
C_word *av2=av;
av2[0]=*((C_word*)lf[55]+1);
av2[1]=t7;
av2[2]=((C_word*)t0)[9];
av2[3]=t5;
tp(4,av2);}}}
else{
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k2281 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2283(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2283,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:225: loop"));
t2=((C_word*)((C_word*)t0)[2])[1];
f_2260(t2,((C_word*)t0)[3]);}

/* k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2292(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,c,3)))){
C_save_and_reclaim((void *)f_2292,c,av);}
a=C_alloc(14);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_2295,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=t1,tmp=(C_word)a,a+=11,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2425,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:201: c-sub"));
f_1328(t3,((C_word*)t0)[5],t1);}

/* k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2295(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(27,c,3)))){
C_save_and_reclaim((void *)f_2295,c,av);}
a=C_alloc(27);
if(C_truep(C_i_lessp(t1,lf[8]))){
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2302,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word)li33),tmp=(C_word)a,a+=8,tmp);
t3=C_i_check_list_2(((C_word*)t0)[7],lf[56]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2337,a[2]=t5,a[3]=t2,a[4]=((C_word)li34),tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_2337(t7,((C_word*)t0)[8],((C_word*)t0)[7]);}
else{
t2=C_a_i_cons(&a,2,C_SCHEME_UNDEFINED,C_SCHEME_END_OF_LIST);
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=((C_word*)t4)[1];
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2377,a[2]=((C_word*)t0)[3],a[3]=((C_word)li35),tmp=(C_word)a,a+=4,tmp);
t7=C_i_check_list_2(((C_word*)t0)[7],lf[58]);
t8=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2387,a[2]=((C_word*)t0)[9],a[3]=((C_word*)t0)[10],a[4]=((C_word*)t0)[6],a[5]=((C_word*)t0)[7],a[6]=((C_word*)t0)[4],a[7]=((C_word*)t0)[8],a[8]=((C_word*)t0)[5],tmp=(C_word)a,a+=9,tmp);
t9=C_SCHEME_UNDEFINED;
t10=(*a=C_VECTOR_TYPE|1,a[1]=t9,tmp=(C_word)a,a+=2,tmp);
t11=C_set_block_item(t10,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2389,a[2]=t4,a[3]=t10,a[4]=t6,a[5]=t5,a[6]=((C_word)li42),tmp=(C_word)a,a+=7,tmp));
t12=((C_word*)t10)[1];
f_2389(t12,t8,((C_word*)t0)[7]);}}

/* g412 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2302(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,3)))){
C_save_and_reclaim_args((void *)trf_2302,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2312,a[2]=((C_word*)t0)[3],a[3]=t2,a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:210: local-parameter"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[54]);
C_word av2[4];
av2[0]=*((C_word*)lf[54]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[6];
av2[3]=t2;
tp(4,av2);}}}

/* k2310 in g412 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2312(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2312,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2315,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:211: c-sub"));
f_1328(t2,((C_word*)t0)[6],t1);}

/* k2313 in k2310 in g412 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 in ... */
static void C_ccall f_2315(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_2315,c,av);}
a=C_alloc(7);
t2=C_i_list_ref(((C_word*)t0)[2],((C_word*)t0)[3]);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2321,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[5],tmp=(C_word)a,a+=4,tmp);
t4=C_a_i_cons(&a,2,t2,lf[45]);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:213: c-div"));
f_1420(t3,t4,t1);}

/* k2319 in k2313 in k2310 in g412 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2321(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_2321,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2325,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:214: c-add"));
f_1298(t2,((C_word*)((C_word*)t0)[2])[1],t1);}

/* k2323 in k2319 in k2313 in k2310 in g412 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in ... */
static void C_ccall f_2325(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2325,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* for-each-loop411 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2337(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_2337,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2347,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:207: g412"));
t4=((C_word*)t0)[3];
f_2302(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k2345 in for-each-loop411 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2347(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_2347,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_2337(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* k2362 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2364(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_2364,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2368,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:223: c-add"));
f_1298(t2,((C_word*)((C_word*)t0)[2])[1],C_i_vector_ref(t1,C_fix(0)));}

/* k2366 in k2362 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in ... */
static void C_ccall f_2368(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2368,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
f_2283(2,av2);}}

/* g440 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2377(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,1)))){
C_save_and_reclaim_args((void *)trf_2377,3,t0,t1,t2);}
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_i_list_ref(((C_word*)t0)[2],t2);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2387(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_2387,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_2032,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],tmp=(C_word)a,a+=10,tmp);
t3=C_a_i_cons(&a,2,lf[45],lf[45]);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:145: scheme#make-vector"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[53]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[53]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[2];
av2[3]=t3;
tp(4,av2);}}

/* map-loop434 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2389(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_2389,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2414,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t2,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:220: g440"));
t4=((C_word*)t0)[4];
f_2377(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_slot(((C_word*)t0)[5],C_fix(1));
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k2412 in map-loop434 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2414(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2414,c,av);}
a=C_alloc(3);
t2=C_a_i_cons(&a,2,t1,C_SCHEME_END_OF_LIST);
t3=C_i_setslot(((C_word*)((C_word*)t0)[2])[1],C_fix(1),t2);
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,t2);
t5=((C_word*)((C_word*)t0)[3])[1];
f_2389(t5,((C_word*)t0)[4],C_slot(((C_word*)t0)[5],C_fix(1)));}

/* k2423 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2425(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(95,c,2)))){
C_save_and_reclaim((void *)f_2425,c,av);}
a=C_alloc(95);
t2=C_i_car(t1);
t3=C_i_car(t1);
t4=C_s_a_i_times(&a,2,t2,t3);
t5=C_i_cdr(t1);
t6=C_i_cdr(t1);
t7=C_s_a_i_times(&a,2,t5,t6);
t8=C_s_a_i_plus(&a,2,t4,t7);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:43: scheme#sqrt"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[39]+1));
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[39]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=t8;
tp(3,av2);}}

/* doloop388 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_fcall f_2427(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_2427,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=((C_word*)((C_word*)t0)[3])[1];
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1814,a[2]=t3,a[3]=((C_word*)t0)[3],a[4]=t2,a[5]=((C_word*)t0)[4],a[6]=t1,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:94: golay_frontier#adaptive-frontier-mode"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[14]);
C_word av2[3];
av2[0]=*((C_word*)lf[14]+1);
av2[1]=t4;
av2[2]=t3;
tp(3,av2);}}}

/* module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2455(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2455,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2459,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:233: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2459(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_2459,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2462,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:233: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2462(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_2462,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2465,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:236: make-goppa-grid"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[50]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[50]+1);
av2[1]=t2;
av2[2]=C_fix(2);
av2[3]=C_fix(5);
av2[4]=C_fix(64);
tp(5,av2);}}

/* k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2465(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_2465,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2468,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:237: srfi-1#iota"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[71]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[71]+1);
av2[1]=t2;
av2[2]=C_fix(64);
tp(3,av2);}}

/* k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2468(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_2468,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2471,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:238: srfi-1#make-list"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[72]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[72]+1);
av2[1]=t2;
av2[2]=C_fix(64);
av2[3]=lf[47];
tp(4,av2);}}

/* k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2471(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2471,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2554,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:242: srfi-1#iota"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[71]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[71]+1);
av2[1]=t2;
av2[2]=C_fix(8);
av2[3]=C_fix(1);
tp(4,av2);}}

/* k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2477(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_2477,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2480,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:247: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[70];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2480(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,8)))){
C_save_and_reclaim((void *)f_2480,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2483,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:248: cartan-fmm-evaluate-golay"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[57]);
C_word *av2;
if(c >= 9) {
  av2=av;
} else {
  av2=C_alloc(9);
}
av2[0]=*((C_word*)lf[57]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
av2[5]=((C_word*)t0)[6];
av2[6]=C_fix(0);
av2[7]=C_fix(8);
av2[8]=C_fix(0);
tp(9,av2);}}

/* k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 in ... */
static void C_ccall f_2483(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_2483,c,av);}
a=C_alloc(9);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2486,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,a[8]=t1,tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in ... */
static void C_ccall f_2486(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_2486,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2489,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in ... */
static void C_ccall f_2489(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_2489,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2492,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_car(((C_word*)t0)[8]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in ... */
static void C_ccall f_2492(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,4)))){
C_save_and_reclaim((void *)f_2492,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2495,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in ... */
static void C_ccall f_2495(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_2495,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2498,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_cdr(((C_word*)t0)[8]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in ... */
static void C_ccall f_2498(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_2498,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2501,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:250: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in ... */
static void C_ccall f_2501(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_2501,c,av);}
a=C_alloc(8);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2504,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=t2,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:252: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in ... */
static void C_ccall f_2504(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_2504,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2507,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:252: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[7];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in ... */
static void C_ccall f_2507(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,8)))){
C_save_and_reclaim((void *)f_2507,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2510,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:253: cartan-fmm-evaluate-golay"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[57]);
C_word *av2;
if(c >= 9) {
  av2=av;
} else {
  av2=C_alloc(9);
}
av2[0]=*((C_word*)lf[57]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
av2[5]=((C_word*)t0)[6];
av2[6]=C_fix(0);
av2[7]=C_fix(8);
av2[8]=C_fix(4095);
tp(9,av2);}}

/* k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in ... */
static void C_ccall f_2510(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_2510,c,av);}
a=C_alloc(5);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2513,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in ... */
static void C_ccall f_2513(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_2513,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2516,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in ... */
static void C_ccall f_2516(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_2516,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2519,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k2517 in k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in ... */
static void C_ccall f_2519(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_2519,c,av);}
a=C_alloc(5);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2522,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2520 in k2517 in k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in ... */
static void C_ccall f_2522(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_2522,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2525,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_i_cdr(((C_word*)t0)[4]);
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k2523 in k2520 in k2517 in k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in k2469 in ... */
static void C_ccall f_2525(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_2525,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2528,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:255: ##sys#print"));
t3=*((C_word*)lf[20]+1);{
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

/* k2526 in k2523 in k2520 in k2517 in k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in k2552 in ... */
static void C_ccall f_2528(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_2528,c,av);}
a=C_alloc(4);
t2=*((C_word*)lf[18]+1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2531,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:257: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t3;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k2529 in k2526 in k2523 in k2520 in k2517 in k2514 in k2511 in k2508 in k2505 in k2502 in k2499 in k2496 in k2493 in k2490 in k2487 in k2484 in k2481 in k2478 in k2475 in k2564 in k2560 in k2556 in ... */
static void C_ccall f_2531(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_2531,c,av);}
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:257: ##sys#print"));
t2=*((C_word*)lf[20]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[62];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2554(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_2554,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2558,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:243: srfi-1#iota"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[71]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[71]+1);
av2[1]=t2;
av2[2]=C_fix(8);
av2[3]=C_fix(9);
tp(4,av2);}}

/* k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2558(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_2558,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2562,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:244: srfi-1#iota"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[71]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[71]+1);
av2[1]=t2;
av2[2]=C_fix(16);
av2[3]=C_fix(17);
tp(4,av2);}}

/* k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2562(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,3)))){
C_save_and_reclaim((void *)f_2562,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_2566,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],tmp=(C_word)a,a+=9,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:245: srfi-1#iota"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[71]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[71]+1);
av2[1]=t2;
av2[2]=C_fix(31);
av2[3]=C_fix(33);
tp(4,av2);}}

/* k2564 in k2560 in k2556 in k2552 in k2469 in k2466 in k2463 in k2460 in k2457 in module.fmm.fmm-goppa#demo-cartan-golay in k1281 in k1278 in k1275 in k1272 in k1269 in k877 in k874 in k871 in k868 */
static void C_ccall f_2566(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,4)))){
C_save_and_reclaim((void *)f_2566,c,av);}
a=C_alloc(13);
t2=C_a_i_vector4(&a,4,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4],t1);
t3=*((C_word*)lf[18]+1);
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2477,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=t2,a[5]=((C_word*)t0)[7],a[6]=((C_word*)t0)[8],a[7]=t3,tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:247: ##sys#check-output-port"));
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[22]+1));
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[22]+1);
av2[1]=t4;
av2[2]=*((C_word*)lf[18]+1);
av2[3]=C_SCHEME_TRUE;
av2[4]=lf[23];
tp(5,av2);}}

/* k868 */
static void C_ccall f_870(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_870,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_873,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k871 in k868 */
static void C_ccall f_873(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,c,2)))){
C_save_and_reclaim((void *)f_873,c,av);}
a=C_alloc(19);
t2=C_a_i_provide(&a,1,lf[0]);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_876,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t4;
C_extras_toplevel(2,av2);}}

/* k874 in k871 in k868 */
static void C_ccall f_876(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,4)))){
C_save_and_reclaim((void *)f_876,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_879,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:25: chicken.load#load-extension"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[74]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[74]+1);
av2[1]=t2;
av2[2]=lf[78];
av2[3]=C_SCHEME_TRUE;
av2[4]=C_SCHEME_FALSE;
tp(5,av2);}}

/* k877 in k874 in k871 in k868 */
static void C_ccall f_879(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(61,c,3)))){
C_save_and_reclaim((void *)f_879,c,av);}
a=C_alloc(61);
t2=C_a_i_vector(&a,12,C_fix(3189),C_fix(1595),C_fix(3944),C_fix(1972),C_fix(986),C_fix(3481),C_fix(1741),C_fix(871),C_fix(3526),C_fix(2711),C_fix(2366),C_fix(2283));
t3=C_mutate((C_word*)lf[2]+1 /* (set! golay_frontier#golay24-generator ...) */,t2);
t4=C_a_i_vector(&a,12,C_fix(2254),C_fix(3175),C_fix(2269),C_fix(1207),C_fix(475),C_fix(3809),C_fix(3103),C_fix(3215),C_fix(1395),C_fix(2553),C_fix(2869),C_fix(2762));
t5=C_mutate((C_word*)lf[3]+1 /* (set! golay_frontier#golay24-parity-check ...) */,t4);
t6=C_mutate((C_word*)lf[4]+1 /* (set! golay_frontier#golay-weight ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_889,a[2]=((C_word)li1),tmp=(C_word)a,a+=3,tmp));
t7=C_mutate((C_word*)lf[5]+1 /* (set! golay_frontier#encode-golay24 ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_919,a[2]=((C_word)li3),tmp=(C_word)a,a+=3,tmp));
t8=C_mutate((C_word*)lf[6]+1 /* (set! golay_frontier#decode-golay24 ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1044,a[2]=((C_word)li5),tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[7]+1 /* (set! golay_frontier#make-adaptive-frontier ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1093,a[2]=((C_word)li6),tmp=(C_word)a,a+=3,tmp));
t10=C_mutate((C_word*)lf[14]+1 /* (set! golay_frontier#adaptive-frontier-mode ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1121,a[2]=((C_word)li7),tmp=(C_word)a,a+=3,tmp));
t11=C_mutate((C_word*)lf[15]+1 /* (set! golay_frontier#adaptive-frontier-tau ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1127,a[2]=((C_word)li8),tmp=(C_word)a,a+=3,tmp));
t12=C_mutate((C_word*)lf[16]+1 /* (set! golay_frontier#adaptive-frontier-codeword ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1133,a[2]=((C_word)li9),tmp=(C_word)a,a+=3,tmp));
t13=C_mutate((C_word*)lf[17]+1 /* (set! golay_frontier#print-golay-info ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1145,a[2]=((C_word)li10),tmp=(C_word)a,a+=3,tmp));
t14=C_a_i_provide(&a,1,lf[36]);
t15=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1271,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t15;
C_data_2dstructures_toplevel(2,av2);}}

/* golay_frontier#golay-weight in k877 in k874 in k871 in k868 */
static void C_ccall f_889(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_889,c,av);}
a=C_alloc(6);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_895,a[2]=t4,a[3]=((C_word)li0),tmp=(C_word)a,a+=4,tmp));
t6=((C_word*)t4)[1];
f_895(t6,t1,t2,C_fix(0));}

/* loop in golay_frontier#golay-weight in k877 in k874 in k871 in k868 */
static void C_fcall f_895(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(39,0,3)))){
C_save_and_reclaim_args((void *)trf_895,4,t0,t1,t2,t3);}
a=C_alloc(39);
if(C_truep(C_i_zerop(t2))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_s_a_i_arithmetic_shift(&a,2,t2,C_fix(-1));
t5=C_s_a_i_bitwise_and(&a,2,t2,C_fix(1));
t6=C_s_a_i_plus(&a,2,t3,t5);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:47: loop"));
t8=t1;
t9=t4;
t10=t6;
t1=t8;
t2=t9;
t3=t10;
goto loop;}}

/* golay_frontier#encode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_919(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,4)))){
C_save_and_reclaim((void *)f_919,c,av);}
a=C_alloc(8);
t3=C_fast_retrieve(lf[2]);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_925,a[2]=t2,a[3]=t5,a[4]=t3,a[5]=((C_word)li2),tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_925(t7,t1,C_fix(0),C_fix(0));}

/* loop in golay_frontier#encode-golay24 in k877 in k874 in k871 in k868 */
static void C_fcall f_925(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,2)))){
C_save_and_reclaim_args((void *)trf_925,4,t0,t1,t2,t3);}
a=C_alloc(10);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],C_fix(12));
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_s_a_i_bitwise_ior(&a,2,t4,t3);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_978,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=t3,a[7]=((C_word*)t0)[4],tmp=(C_word)a,a+=8,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:56: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* k976 in loop in golay_frontier#encode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_978(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(44,c,3)))){
C_save_and_reclaim((void *)f_978,c,av);}
a=C_alloc(44);
t2=C_s_a_i_arithmetic_shift(&a,2,((C_word*)t0)[2],t1);
t3=C_s_a_i_bitwise_and(&a,2,C_fix(1),t2);
if(C_truep(C_i_zerop(t3))){
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:58: loop"));
t5=((C_word*)((C_word*)t0)[4])[1];
f_925(t5,((C_word*)t0)[5],t4,((C_word*)t0)[6]);}
else{
t4=C_s_a_i_plus(&a,2,((C_word*)t0)[3],C_fix(1));
t5=C_i_vector_ref(((C_word*)t0)[7],((C_word*)t0)[3]);
t6=C_s_a_i_bitwise_xor(&a,2,((C_word*)t0)[6],t5);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:59: loop"));
t7=((C_word*)((C_word*)t0)[4])[1];
f_925(t7,((C_word*)t0)[5],t4,t6);}}

/* k985 in golay_frontier#decode-golay24 in k877 in k874 in k871 in k868 */
static void C_ccall f_987(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(15,c,2)))){
C_save_and_reclaim((void *)f_987,c,av);}
a=C_alloc(15);
t2=C_s_a_i_bitwise_and(&a,2,((C_word*)t0)[2],C_fix(4095));
t3=C_s_a_i_bitwise_xor(&a,2,t2,t1);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_1054,a[2]=t3,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:78: golay-weight"));
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[4]);
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=*((C_word*)lf[4]+1);
av2[1]=t4;
av2[2]=t3;
tp(3,av2);}}

/* loop in golay_frontier#decode-golay24 in k877 in k874 in k871 in k868 */
static void C_fcall f_996(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_996,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_i_nequalp(t2,C_fix(12)))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_1042,a[2]=((C_word*)t0)[2],a[3]=t2,a[4]=((C_word*)t0)[3],a[5]=t1,a[6]=t3,tmp=(C_word)a,a+=7,tmp);
C_trace(C_text("modules/fmm/../../core/golay_frontier.scm:68: scheme#-"));{
C_word av2[3];
av2[0]=0;
av2[1]=t4;
av2[2]=t2;
C_minus(3,av2);}}}

/* toplevel */
static C_TLS int toplevel_initialized=0;

void C_ccall C_fmm_5fon_5fgoppa_5fgrid_toplevel(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
if(toplevel_initialized) {C_kontinue(t1,C_SCHEME_UNDEFINED);}
else C_toplevel_entry(C_text("fmm_on_goppa_grid"));
C_check_nursery_minimum(C_calculate_demand(3,c,2));
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void*)C_fmm_5fon_5fgoppa_5fgrid_toplevel,c,av);}
toplevel_initialized=1;
if(C_unlikely(!C_demand_2(332))){
C_save(t1);
C_rereclaim2(332*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,79);
lf[0]=C_h_intern(&lf[0],17, C_text("fmm_on_goppa_grid"));
lf[1]=C_h_intern(&lf[1],15, C_text("golay_frontier#"));
lf[2]=C_h_intern(&lf[2],32, C_text("golay_frontier#golay24-generator"));
lf[3]=C_h_intern(&lf[3],35, C_text("golay_frontier#golay24-parity-check"));
lf[4]=C_h_intern(&lf[4],27, C_text("golay_frontier#golay-weight"));
lf[5]=C_h_intern(&lf[5],29, C_text("golay_frontier#encode-golay24"));
lf[6]=C_h_intern(&lf[6],29, C_text("golay_frontier#decode-golay24"));
lf[7]=C_h_intern(&lf[7],37, C_text("golay_frontier#make-adaptive-frontier"));
lf[8]=C_decode_literal(C_heaptop,C_text("\376U0.5\000"));
lf[9]=C_h_intern(&lf[9],5, C_text("stack"));
lf[10]=C_h_intern(&lf[10],5, C_text("queue"));
lf[11]=C_h_intern(&lf[11],8, C_text("scheme#/"));
lf[12]=C_decode_literal(C_heaptop,C_text("\376U24.0\000"));
lf[13]=C_h_intern(&lf[13],10, C_text("scheme#min"));
lf[14]=C_h_intern(&lf[14],37, C_text("golay_frontier#adaptive-frontier-mode"));
lf[15]=C_h_intern(&lf[15],36, C_text("golay_frontier#adaptive-frontier-tau"));
lf[16]=C_h_intern(&lf[16],41, C_text("golay_frontier#adaptive-frontier-codeword"));
lf[17]=C_h_intern(&lf[17],31, C_text("golay_frontier#print-golay-info"));
lf[18]=C_h_intern(&lf[18],21, C_text("##sys#standard-output"));
lf[19]=C_h_intern(&lf[19],18, C_text("##sys#write-char-0"));
lf[20]=C_h_intern(&lf[20],11, C_text("##sys#print"));
lf[21]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235"));
lf[22]=C_h_intern(&lf[22],23, C_text("##sys#check-output-port"));
lf[23]=C_h_intern(&lf[23],6, C_text("printf"));
lf[24]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031DFS (Deep / Exploitation)"));
lf[25]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031BFS (Broad / Exploration)"));
lf[26]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Strategy:            "));
lf[27]=C_decode_literal(C_heaptop,C_text("\376B\000\000\031\342\225\221 Decided Mode:        "));
lf[28]=C_decode_literal(C_heaptop,C_text("\376B\000\000\034\342\225\221 Normalized \317\204\314\202:        "));
lf[29]=C_decode_literal(C_heaptop,C_text("\376B\000\000\005 / 24"));
lf[30]=C_decode_literal(C_heaptop,C_text("\376B\000\000\032\342\225\221 Hamming Weight (\317\204):  "));
lf[31]=C_h_intern(&lf[31],21, C_text("scheme#number->string"));
lf[32]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033\342\225\221 Codeword:            0x"));
lf[33]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\240\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\243"));
lf[34]=C_decode_literal(C_heaptop,C_text("\376B\000\000-\342\225\221 Golay Control Configuration           \342\225\221"));
lf[35]=C_decode_literal(C_heaptop,C_text("\376B\000\000{\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220"
"\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\227"));
lf[36]=C_h_intern(&lf[36],21, C_text("module.fmm.fmm-goppa#"));
lf[37]=C_h_intern(&lf[37],10, C_text("scheme#sin"));
lf[38]=C_h_intern(&lf[38],10, C_text("scheme#cos"));
lf[39]=C_h_intern(&lf[39],11, C_text("scheme#sqrt"));
lf[40]=C_h_intern(&lf[40],11, C_text("scheme#acos"));
lf[45]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[47]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[50]=C_h_intern(&lf[50],36, C_text("module.fmm.fmm-goppa#make-goppa-grid"));
lf[51]=C_decode_literal(C_heaptop,C_text("\376U6.28318530717958623199592693708837032318115234375\000"));
lf[52]=C_h_intern(&lf[52],21, C_text("scheme#exact->inexact"));
lf[53]=C_h_intern(&lf[53],18, C_text("scheme#make-vector"));
lf[54]=C_h_intern(&lf[54],36, C_text("module.fmm.fmm-goppa#local-parameter"));
lf[55]=C_h_intern(&lf[55],47, C_text("module.fmm.fmm-goppa#calculate-geometric-center"));
lf[56]=C_h_intern(&lf[56],8, C_text("for-each"));
lf[57]=C_h_intern(&lf[57],46, C_text("module.fmm.fmm-goppa#cartan-fmm-evaluate-golay"));
lf[58]=C_h_intern(&lf[58],3, C_text("map"));
lf[59]=C_decode_literal(C_heaptop,C_text("\376U-1.0\000"));
lf[60]=C_h_intern(&lf[60],22, C_text("srfi-133#vector-append"));
lf[61]=C_h_intern(&lf[61],38, C_text("module.fmm.fmm-goppa#demo-cartan-golay"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\0002\012(Processing order differs based on Golay weight)\012"));
lf[63]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002i\012"));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\003 + "));
lf[65]=C_decode_literal(C_heaptop,C_text("\376B\000\000\022Result Potential: "));
lf[66]=C_decode_literal(C_heaptop,C_text("\376B\000\000)\012--- Run 2: High Entropy (Queue/BFS) ---\012"));
lf[67]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002i\012"));
lf[68]=C_decode_literal(C_heaptop,C_text("\376B\000\000\003 + "));
lf[69]=C_decode_literal(C_heaptop,C_text("\376B\000\000\022Result Potential: "));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\000(\012--- Run 1: Low Entropy (Stack/DFS) ---\012"));
lf[71]=C_h_intern(&lf[71],11, C_text("srfi-1#iota"));
lf[72]=C_h_intern(&lf[72],16, C_text("srfi-1#make-list"));
lf[73]=C_decode_literal(C_heaptop,C_text("\376B\000\000\047=== Cartan-FMM with Golay Frontier ===\012"));
lf[74]=C_h_intern(&lf[74],27, C_text("chicken.load#load-extension"));
lf[75]=C_h_intern(&lf[75],14, C_text("golay_frontier"));
lf[76]=C_h_intern(&lf[76],8, C_text("srfi-133"));
lf[77]=C_h_intern(&lf[77],7, C_text("srfi-69"));
lf[78]=C_h_intern(&lf[78],6, C_text("srfi-1"));
C_register_lf2(lf,79,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_870,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

/* va2770 in k2176 in doloop361 in doloop357 in k2136 in k2133 in k2086 in k2030 in k2385 in k2293 in k2290 in a2271 in loop in k2253 in k2247 in k2241 in k2238 in k2235 in module.fmm.fmm-goppa#cartan-fmm-evaluate-golay in k1281 in k1278 in k1275 in ... */
static void C_fcall va2770(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(29,0,3)))){
C_save_and_reclaim_args((void *)trva2770,2,t0,t1);}
a=C_alloc(29);
t2=C_s_a_i_plus(&a,2,t1,C_fix(1));
C_trace(C_text("modules/fmm/fmm_on_goppa_grid.scm:166: c-pow"));
f_1560(((C_word*)t0)[2],((C_word*)t0)[3],t2);}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[190] = {
{C_text("f_1042:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1042},
{C_text("f_1044:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1044},
{C_text("f_1054:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1054},
{C_text("f_1081:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1081},
{C_text("f_1091:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1091},
{C_text("f_1093:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1093},
{C_text("f_1100:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1100},
{C_text("f_1103:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1103},
{C_text("f_1113:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1113},
{C_text("f_1121:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1121},
{C_text("f_1127:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1127},
{C_text("f_1133:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1133},
{C_text("f_1145:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1145},
{C_text("f_1149:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1149},
{C_text("f_1152:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1152},
{C_text("f_1158:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1158},
{C_text("f_1161:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1161},
{C_text("f_1164:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1164},
{C_text("f_1167:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1167},
{C_text("f_1170:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1170},
{C_text("f_1173:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1173},
{C_text("f_1176:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1176},
{C_text("f_1179:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1179},
{C_text("f_1182:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1182},
{C_text("f_1185:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1185},
{C_text("f_1188:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1188},
{C_text("f_1191:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1191},
{C_text("f_1194:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1194},
{C_text("f_1197:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1197},
{C_text("f_1200:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1200},
{C_text("f_1203:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1203},
{C_text("f_1206:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1206},
{C_text("f_1209:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1209},
{C_text("f_1212:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1212},
{C_text("f_1215:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1215},
{C_text("f_1218:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1218},
{C_text("f_1221:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1221},
{C_text("f_1224:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1224},
{C_text("f_1227:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1227},
{C_text("f_1230:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1230},
{C_text("f_1233:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1233},
{C_text("f_1236:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1236},
{C_text("f_1239:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1239},
{C_text("f_1242:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1242},
{C_text("f_1245:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1245},
{C_text("f_1248:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1248},
{C_text("f_1251:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1251},
{C_text("f_1254:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1254},
{C_text("f_1268:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1268},
{C_text("f_1271:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1271},
{C_text("f_1274:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1274},
{C_text("f_1277:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1277},
{C_text("f_1280:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1280},
{C_text("f_1283:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1283},
{C_text("f_1286:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1286},
{C_text("f_1289:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1289},
{C_text("f_1292:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1292},
{C_text("f_1295:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1295},
{C_text("f_1298:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1298},
{C_text("f_1328:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1328},
{C_text("f_1358:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1358},
{C_text("f_1420:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1420},
{C_text("f_1440:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1440},
{C_text("f_1444:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1444},
{C_text("f_1560:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1560},
{C_text("f_1570:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1570},
{C_text("f_1588:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1588},
{C_text("f_1652:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1652},
{C_text("f_1666:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1666},
{C_text("f_1680:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1680},
{C_text("f_1688:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1688},
{C_text("f_1692:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1692},
{C_text("f_1743:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1743},
{C_text("f_1814:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1814},
{C_text("f_1824:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1824},
{C_text("f_1839:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1839},
{C_text("f_1853:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1853},
{C_text("f_1859:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1859},
{C_text("f_1871:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1871},
{C_text("f_1877:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1877},
{C_text("f_1887:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1887},
{C_text("f_1895:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1895},
{C_text("f_1897:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1897},
{C_text("f_1924:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1924},
{C_text("f_1928:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1928},
{C_text("f_1932:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1932},
{C_text("f_1936:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1936},
{C_text("f_1938:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1938},
{C_text("f_1952:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1952},
{C_text("f_1969:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1969},
{C_text("f_1974:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1974},
{C_text("f_1978:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1978},
{C_text("f_1984:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1984},
{C_text("f_1991:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1991},
{C_text("f_1995:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_1995},
{C_text("f_2005:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2005},
{C_text("f_2015:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2015},
{C_text("f_2032:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2032},
{C_text("f_2033:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2033},
{C_text("f_2037:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2037},
{C_text("f_2040:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2040},
{C_text("f_2045:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2045},
{C_text("f_2055:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2055},
{C_text("f_2061:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2061},
{C_text("f_2075:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2075},
{C_text("f_2088:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2088},
{C_text("f_2090:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2090},
{C_text("f_2100:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2100},
{C_text("f_2135:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2135},
{C_text("f_2138:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2138},
{C_text("f_2143:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2143},
{C_text("f_2156:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2156},
{C_text("f_2168:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2168},
{C_text("f_2178:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2178},
{C_text("f_2184:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2184},
{C_text("f_2190:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2190},
{C_text("f_2193:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2193},
{C_text("f_2197:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2197},
{C_text("f_2223:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2223},
{C_text("f_2233:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2233},
{C_text("f_2237:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2237},
{C_text("f_2240:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2240},
{C_text("f_2243:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2243},
{C_text("f_2249:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2249},
{C_text("f_2255:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2255},
{C_text("f_2258:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2258},
{C_text("f_2260:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2260},
{C_text("f_2266:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2266},
{C_text("f_2272:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2272},
{C_text("f_2283:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2283},
{C_text("f_2292:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2292},
{C_text("f_2295:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2295},
{C_text("f_2302:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2302},
{C_text("f_2312:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2312},
{C_text("f_2315:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2315},
{C_text("f_2321:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2321},
{C_text("f_2325:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2325},
{C_text("f_2337:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2337},
{C_text("f_2347:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2347},
{C_text("f_2364:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2364},
{C_text("f_2368:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2368},
{C_text("f_2377:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2377},
{C_text("f_2387:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2387},
{C_text("f_2389:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2389},
{C_text("f_2414:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2414},
{C_text("f_2425:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2425},
{C_text("f_2427:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2427},
{C_text("f_2455:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2455},
{C_text("f_2459:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2459},
{C_text("f_2462:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2462},
{C_text("f_2465:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2465},
{C_text("f_2468:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2468},
{C_text("f_2471:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2471},
{C_text("f_2477:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2477},
{C_text("f_2480:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2480},
{C_text("f_2483:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2483},
{C_text("f_2486:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2486},
{C_text("f_2489:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2489},
{C_text("f_2492:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2492},
{C_text("f_2495:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2495},
{C_text("f_2498:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2498},
{C_text("f_2501:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2501},
{C_text("f_2504:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2504},
{C_text("f_2507:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2507},
{C_text("f_2510:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2510},
{C_text("f_2513:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2513},
{C_text("f_2516:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2516},
{C_text("f_2519:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2519},
{C_text("f_2522:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2522},
{C_text("f_2525:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2525},
{C_text("f_2528:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2528},
{C_text("f_2531:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2531},
{C_text("f_2554:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2554},
{C_text("f_2558:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2558},
{C_text("f_2562:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2562},
{C_text("f_2566:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_2566},
{C_text("f_870:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_870},
{C_text("f_873:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_873},
{C_text("f_876:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_876},
{C_text("f_879:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_879},
{C_text("f_889:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_889},
{C_text("f_895:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_895},
{C_text("f_919:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_919},
{C_text("f_925:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_925},
{C_text("f_978:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_978},
{C_text("f_987:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_987},
{C_text("f_996:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)f_996},
{C_text("toplevel:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)C_fmm_5fon_5fgoppa_5fgrid_toplevel},
{C_text("va2770:modules_2ffmm_2ffmm_5fon_5fgoppa_5fgrid_2escm"),(void*)va2770},
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
o|hiding unexported module binding: golay_frontier#calculate-syndrome 
o|hiding unexported module binding: golay_frontier#decide-mode-from-tau 
o|hiding unexported module binding: golay_frontier#adaptive-frontier-tau-norm 
o|hiding unexported module binding: module.fmm.fmm-goppa#pi 
o|hiding unexported module binding: module.fmm.fmm-goppa#sin 
o|hiding unexported module binding: module.fmm.fmm-goppa#cos 
o|hiding unexported module binding: module.fmm.fmm-goppa#sqrt 
o|hiding unexported module binding: module.fmm.fmm-goppa#acos 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-add 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-sub 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-mul 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-div 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-abs 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-pow 
o|hiding unexported module binding: module.fmm.fmm-goppa#c-inv 
o|hiding unexported module binding: module.fmm.fmm-goppa#fact 
o|hiding unexported module binding: module.fmm.fmm-goppa#nCk 
o|hiding unexported module binding: module.fmm.fmm-goppa#make-stack 
o|hiding unexported module binding: module.fmm.fmm-goppa#stack-push 
o|hiding unexported module binding: module.fmm.fmm-goppa#stack-pop 
o|hiding unexported module binding: module.fmm.fmm-goppa#make-queue 
o|hiding unexported module binding: module.fmm.fmm-goppa#queue-push 
o|hiding unexported module binding: module.fmm.fmm-goppa#queue-pop 
o|hiding unexported module binding: module.fmm.fmm-goppa#adaptive-frontier-push 
o|hiding unexported module binding: module.fmm.fmm-goppa#adaptive-frontier-pop 
o|hiding unexported module binding: module.fmm.fmm-goppa#print-frontier-info 
o|hiding unexported module binding: module.fmm.fmm-goppa#p2m-kernel 
o|hiding unexported module binding: module.fmm.fmm-goppa#m2l-translation 
S|applied compiler syntax:
S|  scheme#map		1
S|  scheme#for-each		3
S|  chicken.format#printf		15
o|eliminated procedure checks: 44 
o|folded constant expression: (scheme#atan (quote 1)) 
o|folded constant expression: (scheme#* (quote 4) (quote 0.785398163397448)) 
o|folded constant expression: (scheme#acos (quote -1.0)) 
o|folded constant expression: (scheme#* (quote 2.0) (quote 3.14159265358979)) 
o|contracted procedure: "(modules/fmm/../../core/golay_frontier.scm:77) golay_frontier#calculate-syndrome" 
o|contracted procedure: "(modules/fmm/../../core/golay_frontier.scm:103) golay_frontier#decide-mode-from-tau" 
o|propagated global variable: out110143 ##sys#standard-output 
o|propagated global variable: out107139 ##sys#standard-output 
o|propagated global variable: out104135 ##sys#standard-output 
o|propagated global variable: out101131 ##sys#standard-output 
o|propagated global variable: out98126 ##sys#standard-output 
o|propagated global variable: out95122 ##sys#standard-output 
o|propagated global variable: out92119 ##sys#standard-output 
o|propagated global variable: out89116 ##sys#standard-output 
o|propagated global variable: out86113 ##sys#standard-output 
o|contracted procedure: "(modules/fmm/../../core/golay_frontier.scm:124) golay_frontier#adaptive-frontier-tau-norm" 
o|removed side-effect free assignment to unused variable: module.fmm.fmm-goppa#pi 
o|removed side-effect free assignment to unused variable: module.fmm.fmm-goppa#c-inv 
o|removed side-effect free assignment to unused variable: module.fmm.fmm-goppa#make-queue 
o|substituted constant variable: two-pi272 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:194) module.fmm.fmm-goppa#adaptive-frontier-pop" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:106) module.fmm.fmm-goppa#stack-pop" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:109) module.fmm.fmm-goppa#queue-pop" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:222) module.fmm.fmm-goppa#m2l-translation" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:164) module.fmm.fmm-goppa#nCk" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:219) module.fmm.fmm-goppa#p2m-kernel" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:201) module.fmm.fmm-goppa#c-abs" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:190) module.fmm.fmm-goppa#adaptive-frontier-push" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:98) module.fmm.fmm-goppa#stack-push" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:99) module.fmm.fmm-goppa#queue-push" 
o|contracted procedure: "(modules/fmm/fmm_on_goppa_grid.scm:181) module.fmm.fmm-goppa#make-stack" 
o|propagated global variable: out485512 ##sys#standard-output 
o|propagated global variable: out503506 ##sys#standard-output 
o|substituted constant variable: target-idx476 
o|substituted constant variable: order477 
o|propagated global variable: out482500 ##sys#standard-output 
o|propagated global variable: out491494 ##sys#standard-output 
o|substituted constant variable: target-idx476 
o|substituted constant variable: order477 
o|propagated global variable: out479488 ##sys#standard-output 
o|substituted constant variable: num-points472 
o|substituted constant variable: num-points472 
o|substituted constant variable: num-points472 
o|propagated global variable: out467470 ##sys#standard-output 
o|replaced variables: 386 
o|removed binding forms: 154 
o|replaced variables: 66 
o|removed binding forms: 334 
o|removed binding forms: 36 
o|contracted procedure: k2359 
o|contracted procedure: k2436 
o|contracted procedure: k2451 
o|removed binding forms: 3 
o|substituted constant variable: r2452 
o|replaced variables: 2 
o|removed binding forms: 3 
o|simplifications: ((if . 6) (##core#call . 224)) 
o|  call simplifications:
o|    scheme#list
o|    ##sys#setslot
o|    scheme#odd?
o|    scheme#list-ref	2
o|    scheme#caar
o|    scheme#cdar
o|    scheme#set-car!	2
o|    scheme#set-cdr!	4
o|    ##sys#call-with-values	3
o|    scheme#length
o|    ##sys#check-list	5
o|    scheme#pair?	5
o|    ##sys#slot	11
o|    scheme#vector-length	2
o|    scheme#modulo
o|    scheme#vector-set!	6
o|    scheme#*	16
o|    scheme#cdr	21
o|    scheme#cons	20
o|    scheme#eq?	3
o|    scheme#null?	7
o|    scheme#car	24
o|    scheme#<	2
o|    scheme#vector	5
o|    scheme#<=	2
o|    scheme#values	9
o|    scheme#=	9
o|    scheme#-	8
o|    scheme#vector-ref	13
o|    chicken.bitwise#bitwise-xor	3
o|    chicken.bitwise#bitwise-ior
o|    scheme#zero?	5
o|    chicken.bitwise#arithmetic-shift	6
o|    chicken.bitwise#bitwise-and	4
o|    scheme#+	19
o|contracted procedure: k881 
o|contracted procedure: k885 
o|contracted procedure: k900 
o|contracted procedure: k907 
o|contracted procedure: k915 
o|contracted procedure: k911 
o|contracted procedure: k930 
o|contracted procedure: k937 
o|contracted procedure: k972 
o|contracted procedure: k940 
o|contracted procedure: k946 
o|contracted procedure: k953 
o|contracted procedure: k960 
o|contracted procedure: k968 
o|contracted procedure: k964 
o|contracted procedure: k1046 
o|contracted procedure: k982 
o|contracted procedure: k992 
o|contracted procedure: k1049 
o|contracted procedure: k1058 
o|contracted procedure: k1067 
o|contracted procedure: k1001 
o|contracted procedure: k1036 
o|contracted procedure: k1004 
o|contracted procedure: k1010 
o|contracted procedure: k1017 
o|contracted procedure: k1024 
o|contracted procedure: k1032 
o|contracted procedure: k1028 
o|contracted procedure: k1114 
o|contracted procedure: k1095 
o|contracted procedure: k1085 
o|contracted procedure: k1104 
o|contracted procedure: k1153 
o|contracted procedure: k1262 
o|contracted procedure: k1259 
o|contracted procedure: k1320 
o|contracted procedure: k1324 
o|contracted procedure: k1304 
o|contracted procedure: k1312 
o|contracted procedure: k1316 
o|contracted procedure: k1308 
o|contracted procedure: k1350 
o|contracted procedure: k1354 
o|contracted procedure: k1334 
o|contracted procedure: k1342 
o|contracted procedure: k1346 
o|contracted procedure: k1338 
o|contracted procedure: k1412 
o|contracted procedure: k1416 
o|contracted procedure: k1396 
o|contracted procedure: k1404 
o|contracted procedure: k1408 
o|contracted procedure: k1400 
o|contracted procedure: k1364 
o|contracted procedure: k1388 
o|contracted procedure: k1392 
o|contracted procedure: k1372 
o|contracted procedure: k1380 
o|contracted procedure: k1384 
o|contracted procedure: k1376 
o|contracted procedure: k1368 
o|contracted procedure: k1518 
o|contracted procedure: k1522 
o|contracted procedure: k1502 
o|contracted procedure: k1510 
o|contracted procedure: k1514 
o|contracted procedure: k1506 
o|contracted procedure: k1422 
o|contracted procedure: k1428 
o|contracted procedure: k1466 
o|contracted procedure: k1470 
o|contracted procedure: k1450 
o|contracted procedure: k1458 
o|contracted procedure: k1462 
o|contracted procedure: k1454 
o|contracted procedure: k1446 
o|contracted procedure: k1494 
o|contracted procedure: k1498 
o|contracted procedure: k1478 
o|contracted procedure: k1486 
o|contracted procedure: k1490 
o|contracted procedure: k1482 
o|contracted procedure: k1474 
o|contracted procedure: k1566 
o|contracted procedure: k1575 
o|contracted procedure: k1582 
o|contracted procedure: k1657 
o|contracted procedure: k1668 
o|contracted procedure: k1902 
o|contracted procedure: k1905 
o|contracted procedure: k1908 
o|contracted procedure: k1911 
o|contracted procedure: k1918 
o|contracted procedure: k1948 
o|contracted procedure: k1944 
o|contracted procedure: k1957 
o|contracted procedure: k1963 
o|contracted procedure: k1966 
o|contracted procedure: k1979 
o|contracted procedure: k1997 
o|contracted procedure: k2001 
o|contracted procedure: k2010 
o|contracted procedure: k2020 
o|contracted procedure: k2024 
o|contracted procedure: k2244 
o|contracted procedure: k2250 
o|contracted procedure: k1840 
o|contracted procedure: k1846 
o|contracted procedure: k1712 
o|contracted procedure: k1722 
o|contracted procedure: k1726 
o|contracted procedure: k1861 
o|contracted procedure: k1806 
o|contracted procedure: k1773 
o|contracted procedure: k1779 
o|contracted procedure: k1802 
o|contracted procedure: k1782 
o|contracted procedure: k1798 
o|contracted procedure: k1791 
o|contracted procedure: k1785 
o|contracted procedure: k1879 
o|contracted procedure: k2278 
o|contracted procedure: k2287 
o|contracted procedure: k2296 
o|contracted procedure: k2307 
o|contracted procedure: k2316 
o|contracted procedure: k2327 
o|contracted procedure: k2330 
o|contracted procedure: k2342 
o|contracted procedure: k2352 
o|contracted procedure: k2356 
o|contracted procedure: k2374 
o|contracted procedure: k2382 
o|contracted procedure: k2050 
o|contracted procedure: k2056 
o|contracted procedure: k2062 
o|contracted procedure: k2069 
o|contracted procedure: k2077 
o|contracted procedure: k2080 
o|contracted procedure: k2083 
o|contracted procedure: k2370 
o|contracted procedure: k2148 
o|contracted procedure: k2151 
o|contracted procedure: k2157 
o|contracted procedure: k2164 
o|contracted procedure: k2173 
o|contracted procedure: k2217 
o|contracted procedure: k2179 
o|contracted procedure: k2210 
o|contracted procedure: k2185 
o|contracted procedure: k2202 
o|contracted procedure: k2206 
o|contracted procedure: k2225 
o|contracted procedure: k1682 
o|contracted procedure: k1694 
o|contracted procedure: k2229 
o|contracted procedure: k2120 
o|contracted procedure: k2095 
o|contracted procedure: k2105 
o|contracted procedure: k2109 
o|contracted procedure: k2113 
o|contracted procedure: k2117 
o|contracted procedure: k2127 
o|contracted procedure: k2394 
o|contracted procedure: k2397 
o|contracted procedure: k2400 
o|contracted procedure: k2408 
o|contracted procedure: k2416 
o|contracted procedure: k1552 
o|contracted procedure: k1556 
o|contracted procedure: k1536 
o|contracted procedure: k1544 
o|contracted procedure: k1548 
o|contracted procedure: k1540 
o|contracted procedure: k1532 
o|contracted procedure: k2432 
o|contracted procedure: k1815 
o|contracted procedure: k1818 
o|contracted procedure: k2443 
o|contracted procedure: k1825 
o|contracted procedure: k1738 
o|contracted procedure: k1764 
o|contracted procedure: k1744 
o|contracted procedure: k1747 
o|contracted procedure: k1760 
o|contracted procedure: k1753 
o|contracted procedure: k2447 
o|contracted procedure: k2472 
o|contracted procedure: k2536 
o|contracted procedure: k2540 
o|contracted procedure: k2544 
o|contracted procedure: k2548 
o|simplifications: ((##core#call . 2) (let . 46)) 
o|  call simplifications:
o|    scheme#+	2
o|removed binding forms: 193 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest6263 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest6263 0 
o|contracted procedure: k2214 
o|removed binding forms: 1 
o|customizable procedures: (k1741 k1822 doloop388389 g440449 map-loop434452 g318326 for-each-loop317341 va2770 doloop361362 doloop357358 module.fmm.fmm-goppa#c-pow doloop333334 g412419 for-each-loop411426 module.fmm.fmm-goppa#c-sub module.fmm.fmm-goppa#c-div loop393 g292299 for-each-loop291302 module.fmm.fmm-goppa#c-add doloop273274 module.fmm.fmm-goppa#fact module.fmm.fmm-goppa#c-mul loop207 loop40 loop31 loop24) 
o|calls to known targets: 61 
o|identified direct recursive calls: f_895 1 
o|unused rest argument: rest6263 f_1093 
o|identified direct recursive calls: f_1652 1 
o|fast box initializations: 14 
o|fast global references: 21 
o|fast global assignments: 7 
o|dropping unused closure argument: f_1298 
o|dropping unused closure argument: f_1328 
o|dropping unused closure argument: f_1358 
o|dropping unused closure argument: f_1420 
o|dropping unused closure argument: f_1560 
o|dropping unused closure argument: f_1652 
*/
/* end of file */
