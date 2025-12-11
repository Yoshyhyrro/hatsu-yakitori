/* Generated from srfi-69.scm by the CHICKEN compiler
   http://www.call-cc.org
   Version 5.3.0 (rev e31bbee5)
   linux-unix-gnu-x86-64 [ 64bit dload ptables ]
   command line: srfi-69.scm -output-file /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69/srfi-69.c -dynamic -feature chicken-compile-shared -feature compiling-extension -emit-all-import-libraries -regenerate-import-libraries -setup-mode -include-path /mnt/c/Users/tyuuw/hatsu-yakitori/salmonella-tmp-7d579/repo/cache/srfi-69 -optimize-level 3 -debug-level 0
   uses: eval library
*/
#include "chicken.h"

#define C_rnd_fix() (C_fix(rand()))

static C_PTABLE_ENTRY *create_ptable(void);
C_noret_decl(C_eval_toplevel)
C_externimport void C_ccall C_eval_toplevel(C_word c,C_word *av) C_noret;
C_noret_decl(C_library_toplevel)
C_externimport void C_ccall C_library_toplevel(C_word c,C_word *av) C_noret;

static C_TLS C_word lf[165];
static double C_possibly_force_alignment;


C_noret_decl(f_1603)
static void C_ccall f_1603(C_word c,C_word *av) C_noret;
C_noret_decl(f_1606)
static void C_ccall f_1606(C_word c,C_word *av) C_noret;
C_noret_decl(f_1610)
static void C_ccall f_1610(C_word c,C_word *av) C_noret;
C_noret_decl(f_1613)
static void C_ccall f_1613(C_word c,C_word *av) C_noret;
C_noret_decl(f_1619)
static void C_ccall f_1619(C_word c,C_word *av) C_noret;
C_noret_decl(f_1635)
static void C_ccall f_1635(C_word c,C_word *av) C_noret;
C_noret_decl(f_1638)
static void C_ccall f_1638(C_word c,C_word *av) C_noret;
C_noret_decl(f_1802)
static void C_ccall f_1802(C_word c,C_word *av) C_noret;
C_noret_decl(f_1808)
static void C_fcall f_1808(C_word t0,C_word t1) C_noret;
C_noret_decl(f_1840)
static void C_ccall f_1840(C_word c,C_word *av) C_noret;
C_noret_decl(f_1856)
static void C_ccall f_1856(C_word c,C_word *av) C_noret;
C_noret_decl(f_1893)
static void C_ccall f_1893(C_word c,C_word *av) C_noret;
C_noret_decl(f_1919)
static void C_ccall f_1919(C_word c,C_word *av) C_noret;
C_noret_decl(f_1938)
static void C_ccall f_1938(C_word c,C_word *av) C_noret;
C_noret_decl(f_2007)
static void C_ccall f_2007(C_word c,C_word *av) C_noret;
C_noret_decl(f_2014)
static void C_ccall f_2014(C_word c,C_word *av) C_noret;
C_noret_decl(f_2033)
static void C_ccall f_2033(C_word c,C_word *av) C_noret;
C_noret_decl(f_2049)
static void C_ccall f_2049(C_word c,C_word *av) C_noret;
C_noret_decl(f_2052)
static void C_ccall f_2052(C_word c,C_word *av) C_noret;
C_noret_decl(f_2206)
static void C_ccall f_2206(C_word c,C_word *av) C_noret;
C_noret_decl(f_2245)
static void C_ccall f_2245(C_word c,C_word *av) C_noret;
C_noret_decl(f_2261)
static void C_ccall f_2261(C_word c,C_word *av) C_noret;
C_noret_decl(f_2293)
static void C_ccall f_2293(C_word c,C_word *av) C_noret;
C_noret_decl(f_2405)
static void C_ccall f_2405(C_word c,C_word *av) C_noret;
C_noret_decl(f_2549)
static void C_ccall f_2549(C_word c,C_word *av) C_noret;
C_noret_decl(f_2577)
static void C_ccall f_2577(C_word c,C_word *av) C_noret;
C_noret_decl(f_2593)
static void C_ccall f_2593(C_word c,C_word *av) C_noret;
C_noret_decl(f_2625)
static void C_ccall f_2625(C_word c,C_word *av) C_noret;
C_noret_decl(f_2654)
static void C_ccall f_2654(C_word c,C_word *av) C_noret;
C_noret_decl(f_2659)
static void C_ccall f_2659(C_word c,C_word *av) C_noret;
C_noret_decl(f_2661)
static void C_fcall f_2661(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_2664)
static void C_fcall f_2664(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4,C_word t5,C_word t6) C_noret;
C_noret_decl(f_2681)
static void C_fcall f_2681(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(f_2715)
static void C_ccall f_2715(C_word c,C_word *av) C_noret;
C_noret_decl(f_2737)
static void C_fcall f_2737(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4) C_noret;
C_noret_decl(f_2831)
static void C_ccall f_2831(C_word c,C_word *av) C_noret;
C_noret_decl(f_2975)
static void C_ccall f_2975(C_word c,C_word *av) C_noret;
C_noret_decl(f_3013)
static void C_fcall f_3013(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_3025)
static void C_ccall f_3025(C_word c,C_word *av) C_noret;
C_noret_decl(f_3037)
static void C_ccall f_3037(C_word c,C_word *av) C_noret;
C_noret_decl(f_3072)
static void C_ccall f_3072(C_word c,C_word *av) C_noret;
C_noret_decl(f_3092)
static void C_fcall f_3092(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_3104)
static void C_fcall f_3104(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_3116)
static void C_ccall f_3116(C_word c,C_word *av) C_noret;
C_noret_decl(f_3132)
static void C_ccall f_3132(C_word c,C_word *av) C_noret;
C_noret_decl(f_3164)
static void C_ccall f_3164(C_word c,C_word *av) C_noret;
C_noret_decl(f_3191)
static void C_ccall f_3191(C_word c,C_word *av) C_noret;
C_noret_decl(f_3222)
static void C_ccall f_3222(C_word c,C_word *av) C_noret;
C_noret_decl(f_3225)
static void C_ccall f_3225(C_word c,C_word *av) C_noret;
C_noret_decl(f_3265)
static void C_ccall f_3265(C_word c,C_word *av) C_noret;
C_noret_decl(f_3268)
static void C_ccall f_3268(C_word c,C_word *av) C_noret;
C_noret_decl(f_3332)
static void C_ccall f_3332(C_word c,C_word *av) C_noret;
C_noret_decl(f_3363)
static void C_ccall f_3363(C_word c,C_word *av) C_noret;
C_noret_decl(f_3366)
static void C_ccall f_3366(C_word c,C_word *av) C_noret;
C_noret_decl(f_3406)
static void C_ccall f_3406(C_word c,C_word *av) C_noret;
C_noret_decl(f_3409)
static void C_ccall f_3409(C_word c,C_word *av) C_noret;
C_noret_decl(f_3475)
static void C_fcall f_3475(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_3481)
static C_word C_fcall f_3481(C_word t0,C_word t1);
C_noret_decl(f_3505)
static void C_ccall f_3505(C_word c,C_word *av) C_noret;
C_noret_decl(f_3523)
static void C_ccall f_3523(C_word c,C_word *av) C_noret;
C_noret_decl(f_3528)
static void C_ccall f_3528(C_word c,C_word *av) C_noret;
C_noret_decl(f_3533)
static void C_ccall f_3533(C_word c,C_word *av) C_noret;
C_noret_decl(f_3537)
static void C_ccall f_3537(C_word c,C_word *av) C_noret;
C_noret_decl(f_3540)
static void C_ccall f_3540(C_word c,C_word *av) C_noret;
C_noret_decl(f_3557)
static void C_fcall f_3557(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4,C_word t5,C_word t6,C_word t7) C_noret;
C_noret_decl(f_3561)
static void C_ccall f_3561(C_word c,C_word *av) C_noret;
C_noret_decl(f_3564)
static void C_ccall f_3564(C_word c,C_word *av) C_noret;
C_noret_decl(f_3567)
static void C_ccall f_3567(C_word c,C_word *av) C_noret;
C_noret_decl(f_3577)
static void C_ccall f_3577(C_word c,C_word *av) C_noret;
C_noret_decl(f_3581)
static void C_ccall f_3581(C_word c,C_word *av) C_noret;
C_noret_decl(f_3589)
static void C_ccall f_3589(C_word c,C_word *av) C_noret;
C_noret_decl(f_3604)
static void C_ccall f_3604(C_word c,C_word *av) C_noret;
C_noret_decl(f_3606)
static C_word C_fcall f_3606(C_word t0);
C_noret_decl(f_3682)
static void C_fcall f_3682(C_word t0,C_word t1) C_noret;
C_noret_decl(f_3685)
static void C_fcall f_3685(C_word t0,C_word t1) C_noret;
C_noret_decl(f_3688)
static void C_fcall f_3688(C_word t0,C_word t1) C_noret;
C_noret_decl(f_3691)
static void C_ccall f_3691(C_word c,C_word *av) C_noret;
C_noret_decl(f_3694)
static void C_ccall f_3694(C_word c,C_word *av) C_noret;
C_noret_decl(f_3698)
static void C_ccall f_3698(C_word c,C_word *av) C_noret;
C_noret_decl(f_3714)
static void C_ccall f_3714(C_word c,C_word *av) C_noret;
C_noret_decl(f_3718)
static void C_ccall f_3718(C_word c,C_word *av) C_noret;
C_noret_decl(f_3723)
static void C_fcall f_3723(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_3734)
static void C_fcall f_3734(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_3744)
static void C_ccall f_3744(C_word c,C_word *av) C_noret;
C_noret_decl(f_3748)
static void C_ccall f_3748(C_word c,C_word *av) C_noret;
C_noret_decl(f_3751)
static void C_ccall f_3751(C_word c,C_word *av) C_noret;
C_noret_decl(f_3762)
static void C_ccall f_3762(C_word c,C_word *av) C_noret;
C_noret_decl(f_3772)
static void C_ccall f_3772(C_word c,C_word *av) C_noret;
C_noret_decl(f_3782)
static void C_ccall f_3782(C_word c,C_word *av) C_noret;
C_noret_decl(f_3785)
static void C_ccall f_3785(C_word c,C_word *av) C_noret;
C_noret_decl(f_3803)
static void C_ccall f_3803(C_word c,C_word *av) C_noret;
C_noret_decl(f_3813)
static void C_ccall f_3813(C_word c,C_word *av) C_noret;
C_noret_decl(f_3816)
static void C_ccall f_3816(C_word c,C_word *av) C_noret;
C_noret_decl(f_3836)
static void C_ccall f_3836(C_word c,C_word *av) C_noret;
C_noret_decl(f_3839)
static void C_ccall f_3839(C_word c,C_word *av) C_noret;
C_noret_decl(f_3911)
static void C_ccall f_3911(C_word c,C_word *av) C_noret;
C_noret_decl(f_3914)
static void C_ccall f_3914(C_word c,C_word *av) C_noret;
C_noret_decl(f_3917)
static void C_ccall f_3917(C_word c,C_word *av) C_noret;
C_noret_decl(f_3943)
static void C_ccall f_3943(C_word c,C_word *av) C_noret;
C_noret_decl(f_3946)
static void C_ccall f_3946(C_word c,C_word *av) C_noret;
C_noret_decl(f_3963)
static void C_ccall f_3963(C_word c,C_word *av) C_noret;
C_noret_decl(f_3966)
static void C_ccall f_3966(C_word c,C_word *av) C_noret;
C_noret_decl(f_3973)
static void C_ccall f_3973(C_word c,C_word *av) C_noret;
C_noret_decl(f_3979)
static void C_ccall f_3979(C_word c,C_word *av) C_noret;
C_noret_decl(f_3988)
static void C_ccall f_3988(C_word c,C_word *av) C_noret;
C_noret_decl(f_3997)
static void C_ccall f_3997(C_word c,C_word *av) C_noret;
C_noret_decl(f_4006)
static void C_ccall f_4006(C_word c,C_word *av) C_noret;
C_noret_decl(f_4015)
static void C_ccall f_4015(C_word c,C_word *av) C_noret;
C_noret_decl(f_4024)
static void C_ccall f_4024(C_word c,C_word *av) C_noret;
C_noret_decl(f_4033)
static void C_ccall f_4033(C_word c,C_word *av) C_noret;
C_noret_decl(f_4042)
static void C_ccall f_4042(C_word c,C_word *av) C_noret;
C_noret_decl(f_4054)
static void C_ccall f_4054(C_word c,C_word *av) C_noret;
C_noret_decl(f_4081)
static void C_fcall f_4081(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4091)
static void C_ccall f_4091(C_word c,C_word *av) C_noret;
C_noret_decl(f_4104)
static void C_fcall f_4104(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4120)
static void C_ccall f_4120(C_word c,C_word *av) C_noret;
C_noret_decl(f_4148)
static void C_ccall f_4148(C_word c,C_word *av) C_noret;
C_noret_decl(f_4155)
static void C_ccall f_4155(C_word c,C_word *av) C_noret;
C_noret_decl(f_4161)
static void C_ccall f_4161(C_word c,C_word *av) C_noret;
C_noret_decl(f_4167)
static void C_ccall f_4167(C_word c,C_word *av) C_noret;
C_noret_decl(f_4170)
static void C_ccall f_4170(C_word c,C_word *av) C_noret;
C_noret_decl(f_4173)
static void C_ccall f_4173(C_word c,C_word *av) C_noret;
C_noret_decl(f_4190)
static void C_ccall f_4190(C_word c,C_word *av) C_noret;
C_noret_decl(f_4198)
static void C_ccall f_4198(C_word c,C_word *av) C_noret;
C_noret_decl(f_4208)
static void C_fcall f_4208(C_word t0,C_word t1) C_noret;
C_noret_decl(f_4218)
static void C_ccall f_4218(C_word c,C_word *av) C_noret;
C_noret_decl(f_4221)
static void C_ccall f_4221(C_word c,C_word *av) C_noret;
C_noret_decl(f_4237)
static void C_fcall f_4237(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4293)
static void C_ccall f_4293(C_word c,C_word *av) C_noret;
C_noret_decl(f_4299)
static void C_fcall f_4299(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4320)
static void C_ccall f_4320(C_word c,C_word *av) C_noret;
C_noret_decl(f_4334)
static void C_ccall f_4334(C_word c,C_word *av) C_noret;
C_noret_decl(f_4343)
static void C_ccall f_4343(C_word c,C_word *av) C_noret;
C_noret_decl(f_4347)
static void C_fcall f_4347(C_word t0,C_word t1) C_noret;
C_noret_decl(f_4353)
static void C_ccall f_4353(C_word c,C_word *av) C_noret;
C_noret_decl(f_4356)
static void C_ccall f_4356(C_word c,C_word *av) C_noret;
C_noret_decl(f_4379)
static void C_fcall f_4379(C_word t0,C_word t1) C_noret;
C_noret_decl(f_4397)
static void C_ccall f_4397(C_word c,C_word *av) C_noret;
C_noret_decl(f_4412)
static void C_ccall f_4412(C_word c,C_word *av) C_noret;
C_noret_decl(f_4426)
static void C_fcall f_4426(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4436)
static void C_ccall f_4436(C_word c,C_word *av) C_noret;
C_noret_decl(f_4454)
static void C_ccall f_4454(C_word c,C_word *av) C_noret;
C_noret_decl(f_4466)
static void C_ccall f_4466(C_word c,C_word *av) C_noret;
C_noret_decl(f_4489)
static void C_fcall f_4489(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4499)
static void C_ccall f_4499(C_word c,C_word *av) C_noret;
C_noret_decl(f_4517)
static void C_ccall f_4517(C_word c,C_word *av) C_noret;
C_noret_decl(f_4526)
static void C_ccall f_4526(C_word c,C_word *av) C_noret;
C_noret_decl(f_4529)
static void C_ccall f_4529(C_word c,C_word *av) C_noret;
C_noret_decl(f_4561)
static void C_ccall f_4561(C_word c,C_word *av) C_noret;
C_noret_decl(f_4570)
static void C_fcall f_4570(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4,C_word t5) C_noret;
C_noret_decl(f_4594)
static void C_fcall f_4594(C_word t0,C_word t1) C_noret;
C_noret_decl(f_4612)
static void C_ccall f_4612(C_word c,C_word *av) C_noret;
C_noret_decl(f_4627)
static void C_ccall f_4627(C_word c,C_word *av) C_noret;
C_noret_decl(f_4641)
static void C_fcall f_4641(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4651)
static void C_ccall f_4651(C_word c,C_word *av) C_noret;
C_noret_decl(f_4677)
static void C_ccall f_4677(C_word c,C_word *av) C_noret;
C_noret_decl(f_4700)
static void C_fcall f_4700(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4710)
static void C_ccall f_4710(C_word c,C_word *av) C_noret;
C_noret_decl(f_4733)
static void C_ccall f_4733(C_word c,C_word *av) C_noret;
C_noret_decl(f_4736)
static void C_ccall f_4736(C_word c,C_word *av) C_noret;
C_noret_decl(f_4760)
static void C_ccall f_4760(C_word c,C_word *av) C_noret;
C_noret_decl(f_4767)
static void C_ccall f_4767(C_word c,C_word *av) C_noret;
C_noret_decl(f_4772)
static void C_ccall f_4772(C_word c,C_word *av) C_noret;
C_noret_decl(f_4799)
static void C_fcall f_4799(C_word t0,C_word t1) C_noret;
C_noret_decl(f_4817)
static void C_ccall f_4817(C_word c,C_word *av) C_noret;
C_noret_decl(f_4832)
static void C_ccall f_4832(C_word c,C_word *av) C_noret;
C_noret_decl(f_4838)
static void C_ccall f_4838(C_word c,C_word *av) C_noret;
C_noret_decl(f_4849)
static void C_fcall f_4849(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4898)
static void C_fcall f_4898(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_4928)
static void C_ccall f_4928(C_word c,C_word *av) C_noret;
C_noret_decl(f_4950)
static void C_ccall f_4950(C_word c,C_word *av) C_noret;
C_noret_decl(f_4952)
static void C_ccall f_4952(C_word c,C_word *av) C_noret;
C_noret_decl(f_4968)
static void C_ccall f_4968(C_word c,C_word *av) C_noret;
C_noret_decl(f_4983)
static C_word C_fcall f_4983(C_word t0,C_word t1);
C_noret_decl(f_5022)
static void C_fcall f_5022(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5038)
static void C_ccall f_5038(C_word c,C_word *av) C_noret;
C_noret_decl(f_5058)
static void C_ccall f_5058(C_word c,C_word *av) C_noret;
C_noret_decl(f_5074)
static void C_ccall f_5074(C_word c,C_word *av) C_noret;
C_noret_decl(f_5089)
static C_word C_fcall f_5089(C_word t0,C_word t1);
C_noret_decl(f_5129)
static void C_fcall f_5129(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5142)
static void C_ccall f_5142(C_word c,C_word *av) C_noret;
C_noret_decl(f_5166)
static void C_ccall f_5166(C_word c,C_word *av) C_noret;
C_noret_decl(f_5182)
static void C_ccall f_5182(C_word c,C_word *av) C_noret;
C_noret_decl(f_5202)
static C_word C_fcall f_5202(C_word t0,C_word t1,C_word t2);
C_noret_decl(f_5249)
static void C_fcall f_5249(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5268)
static void C_ccall f_5268(C_word c,C_word *av) C_noret;
C_noret_decl(f_5297)
static void C_ccall f_5297(C_word c,C_word *av) C_noret;
C_noret_decl(f_5304)
static void C_ccall f_5304(C_word c,C_word *av) C_noret;
C_noret_decl(f_5318)
static void C_fcall f_5318(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5331)
static void C_ccall f_5331(C_word c,C_word *av) C_noret;
C_noret_decl(f_5344)
static void C_fcall f_5344(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5363)
static void C_ccall f_5363(C_word c,C_word *av) C_noret;
C_noret_decl(f_5393)
static void C_ccall f_5393(C_word c,C_word *av) C_noret;
C_noret_decl(f_5400)
static void C_ccall f_5400(C_word c,C_word *av) C_noret;
C_noret_decl(f_5409)
static void C_fcall f_5409(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5421)
static void C_fcall f_5421(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5431)
static void C_ccall f_5431(C_word c,C_word *av) C_noret;
C_noret_decl(f_5444)
static void C_fcall f_5444(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5457)
static void C_ccall f_5457(C_word c,C_word *av) C_noret;
C_noret_decl(f_5470)
static void C_ccall f_5470(C_word c,C_word *av) C_noret;
C_noret_decl(f_5477)
static void C_ccall f_5477(C_word c,C_word *av) C_noret;
C_noret_decl(f_5489)
static void C_ccall f_5489(C_word c,C_word *av) C_noret;
C_noret_decl(f_5503)
static void C_ccall f_5503(C_word c,C_word *av) C_noret;
C_noret_decl(f_5505)
static void C_ccall f_5505(C_word c,C_word *av) C_noret;
C_noret_decl(f_5520)
static void C_fcall f_5520(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5536)
static void C_fcall f_5536(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5578)
static void C_ccall f_5578(C_word c,C_word *av) C_noret;
C_noret_decl(f_5585)
static void C_ccall f_5585(C_word c,C_word *av) C_noret;
C_noret_decl(f_5586)
static void C_fcall f_5586(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5599)
static void C_ccall f_5599(C_word c,C_word *av) C_noret;
C_noret_decl(f_5607)
static void C_ccall f_5607(C_word c,C_word *av) C_noret;
C_noret_decl(f_5609)
static void C_fcall f_5609(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5619)
static void C_ccall f_5619(C_word c,C_word *av) C_noret;
C_noret_decl(f_5632)
static void C_ccall f_5632(C_word c,C_word *av) C_noret;
C_noret_decl(f_5647)
static void C_fcall f_5647(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5663)
static void C_fcall f_5663(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5697)
static void C_ccall f_5697(C_word c,C_word *av) C_noret;
C_noret_decl(f_5712)
static void C_fcall f_5712(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5728)
static void C_fcall f_5728(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5762)
static void C_fcall f_5762(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5774)
static void C_fcall f_5774(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5782)
static void C_fcall f_5782(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5803)
static void C_ccall f_5803(C_word c,C_word *av) C_noret;
C_noret_decl(f_5812)
static void C_fcall f_5812(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_5822)
static void C_ccall f_5822(C_word c,C_word *av) C_noret;
C_noret_decl(f_5835)
static void C_fcall f_5835(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5847)
static void C_fcall f_5847(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5863)
static void C_fcall f_5863(C_word t0,C_word t1,C_word t2,C_word t3) C_noret;
C_noret_decl(f_5891)
static void C_ccall f_5891(C_word c,C_word *av) C_noret;
C_noret_decl(f_5901)
static void C_ccall f_5901(C_word c,C_word *av) C_noret;
C_noret_decl(f_5908)
static void C_ccall f_5908(C_word c,C_word *av) C_noret;
C_noret_decl(f_5913)
static void C_ccall f_5913(C_word c,C_word *av) C_noret;
C_noret_decl(f_5920)
static void C_ccall f_5920(C_word c,C_word *av) C_noret;
C_noret_decl(f_5925)
static void C_ccall f_5925(C_word c,C_word *av) C_noret;
C_noret_decl(f_5932)
static void C_ccall f_5932(C_word c,C_word *av) C_noret;
C_noret_decl(f_5937)
static void C_ccall f_5937(C_word c,C_word *av) C_noret;
C_noret_decl(f_5944)
static void C_ccall f_5944(C_word c,C_word *av) C_noret;
C_noret_decl(f_5949)
static void C_ccall f_5949(C_word c,C_word *av) C_noret;
C_noret_decl(f_5957)
static void C_ccall f_5957(C_word c,C_word *av) C_noret;
C_noret_decl(f_5960)
static void C_ccall f_5960(C_word c,C_word *av) C_noret;
C_noret_decl(f_5962)
static void C_ccall f_5962(C_word c,C_word *av) C_noret;
C_noret_decl(f_5966)
static void C_ccall f_5966(C_word c,C_word *av) C_noret;
C_noret_decl(f_5969)
static void C_ccall f_5969(C_word c,C_word *av) C_noret;
C_noret_decl(f_5978)
static void C_ccall f_5978(C_word c,C_word *av) C_noret;
C_noret_decl(f_5988)
static void C_ccall f_5988(C_word c,C_word *av) C_noret;
C_noret_decl(f_6000)
static void C_ccall f_6000(C_word c,C_word *av) C_noret;
C_noret_decl(f_6015)
static void C_fcall f_6015(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_6057)
static void C_fcall f_6057(C_word t0,C_word t1,C_word t2) C_noret;
C_noret_decl(f_6076)
static void C_ccall f_6076(C_word c,C_word *av) C_noret;
C_noret_decl(f_6098)
static void C_ccall f_6098(C_word c,C_word *av) C_noret;
C_noret_decl(f_6107)
static void C_ccall f_6107(C_word c,C_word *av) C_noret;
C_noret_decl(f_6121)
static void C_ccall f_6121(C_word c,C_word *av) C_noret;
C_noret_decl(C_toplevel)
C_externexport void C_ccall C_toplevel(C_word c,C_word *av) C_noret;

C_noret_decl(trf_1808)
static void C_ccall trf_1808(C_word c,C_word *av) C_noret;
static void C_ccall trf_1808(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_1808(t0,t1);}

C_noret_decl(trf_2661)
static void C_ccall trf_2661(C_word c,C_word *av) C_noret;
static void C_ccall trf_2661(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_2661(t0,t1,t2);}

C_noret_decl(trf_2664)
static void C_ccall trf_2664(C_word c,C_word *av) C_noret;
static void C_ccall trf_2664(C_word c,C_word *av){
C_word t0=av[6];
C_word t1=av[5];
C_word t2=av[4];
C_word t3=av[3];
C_word t4=av[2];
C_word t5=av[1];
C_word t6=av[0];
f_2664(t0,t1,t2,t3,t4,t5,t6);}

C_noret_decl(trf_2681)
static void C_ccall trf_2681(C_word c,C_word *av) C_noret;
static void C_ccall trf_2681(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_2681(t0,t1,t2,t3,t4);}

C_noret_decl(trf_2737)
static void C_ccall trf_2737(C_word c,C_word *av) C_noret;
static void C_ccall trf_2737(C_word c,C_word *av){
C_word t0=av[4];
C_word t1=av[3];
C_word t2=av[2];
C_word t3=av[1];
C_word t4=av[0];
f_2737(t0,t1,t2,t3,t4);}

C_noret_decl(trf_3013)
static void C_ccall trf_3013(C_word c,C_word *av) C_noret;
static void C_ccall trf_3013(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_3013(t0,t1,t2,t3);}

C_noret_decl(trf_3092)
static void C_ccall trf_3092(C_word c,C_word *av) C_noret;
static void C_ccall trf_3092(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_3092(t0,t1,t2,t3);}

C_noret_decl(trf_3104)
static void C_ccall trf_3104(C_word c,C_word *av) C_noret;
static void C_ccall trf_3104(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_3104(t0,t1,t2,t3);}

C_noret_decl(trf_3475)
static void C_ccall trf_3475(C_word c,C_word *av) C_noret;
static void C_ccall trf_3475(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_3475(t0,t1,t2);}

C_noret_decl(trf_3557)
static void C_ccall trf_3557(C_word c,C_word *av) C_noret;
static void C_ccall trf_3557(C_word c,C_word *av){
C_word t0=av[7];
C_word t1=av[6];
C_word t2=av[5];
C_word t3=av[4];
C_word t4=av[3];
C_word t5=av[2];
C_word t6=av[1];
C_word t7=av[0];
f_3557(t0,t1,t2,t3,t4,t5,t6,t7);}

C_noret_decl(trf_3682)
static void C_ccall trf_3682(C_word c,C_word *av) C_noret;
static void C_ccall trf_3682(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_3682(t0,t1);}

C_noret_decl(trf_3685)
static void C_ccall trf_3685(C_word c,C_word *av) C_noret;
static void C_ccall trf_3685(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_3685(t0,t1);}

C_noret_decl(trf_3688)
static void C_ccall trf_3688(C_word c,C_word *av) C_noret;
static void C_ccall trf_3688(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_3688(t0,t1);}

C_noret_decl(trf_3723)
static void C_ccall trf_3723(C_word c,C_word *av) C_noret;
static void C_ccall trf_3723(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_3723(t0,t1,t2);}

C_noret_decl(trf_3734)
static void C_ccall trf_3734(C_word c,C_word *av) C_noret;
static void C_ccall trf_3734(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_3734(t0,t1,t2);}

C_noret_decl(trf_4081)
static void C_ccall trf_4081(C_word c,C_word *av) C_noret;
static void C_ccall trf_4081(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4081(t0,t1,t2);}

C_noret_decl(trf_4104)
static void C_ccall trf_4104(C_word c,C_word *av) C_noret;
static void C_ccall trf_4104(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4104(t0,t1,t2);}

C_noret_decl(trf_4208)
static void C_ccall trf_4208(C_word c,C_word *av) C_noret;
static void C_ccall trf_4208(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_4208(t0,t1);}

C_noret_decl(trf_4237)
static void C_ccall trf_4237(C_word c,C_word *av) C_noret;
static void C_ccall trf_4237(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4237(t0,t1,t2);}

C_noret_decl(trf_4299)
static void C_ccall trf_4299(C_word c,C_word *av) C_noret;
static void C_ccall trf_4299(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4299(t0,t1,t2);}

C_noret_decl(trf_4347)
static void C_ccall trf_4347(C_word c,C_word *av) C_noret;
static void C_ccall trf_4347(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_4347(t0,t1);}

C_noret_decl(trf_4379)
static void C_ccall trf_4379(C_word c,C_word *av) C_noret;
static void C_ccall trf_4379(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_4379(t0,t1);}

C_noret_decl(trf_4426)
static void C_ccall trf_4426(C_word c,C_word *av) C_noret;
static void C_ccall trf_4426(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4426(t0,t1,t2);}

C_noret_decl(trf_4489)
static void C_ccall trf_4489(C_word c,C_word *av) C_noret;
static void C_ccall trf_4489(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4489(t0,t1,t2);}

C_noret_decl(trf_4570)
static void C_ccall trf_4570(C_word c,C_word *av) C_noret;
static void C_ccall trf_4570(C_word c,C_word *av){
C_word t0=av[5];
C_word t1=av[4];
C_word t2=av[3];
C_word t3=av[2];
C_word t4=av[1];
C_word t5=av[0];
f_4570(t0,t1,t2,t3,t4,t5);}

C_noret_decl(trf_4594)
static void C_ccall trf_4594(C_word c,C_word *av) C_noret;
static void C_ccall trf_4594(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_4594(t0,t1);}

C_noret_decl(trf_4641)
static void C_ccall trf_4641(C_word c,C_word *av) C_noret;
static void C_ccall trf_4641(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4641(t0,t1,t2);}

C_noret_decl(trf_4700)
static void C_ccall trf_4700(C_word c,C_word *av) C_noret;
static void C_ccall trf_4700(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4700(t0,t1,t2);}

C_noret_decl(trf_4799)
static void C_ccall trf_4799(C_word c,C_word *av) C_noret;
static void C_ccall trf_4799(C_word c,C_word *av){
C_word t0=av[1];
C_word t1=av[0];
f_4799(t0,t1);}

C_noret_decl(trf_4849)
static void C_ccall trf_4849(C_word c,C_word *av) C_noret;
static void C_ccall trf_4849(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4849(t0,t1,t2);}

C_noret_decl(trf_4898)
static void C_ccall trf_4898(C_word c,C_word *av) C_noret;
static void C_ccall trf_4898(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_4898(t0,t1,t2);}

C_noret_decl(trf_5022)
static void C_ccall trf_5022(C_word c,C_word *av) C_noret;
static void C_ccall trf_5022(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5022(t0,t1,t2);}

C_noret_decl(trf_5129)
static void C_ccall trf_5129(C_word c,C_word *av) C_noret;
static void C_ccall trf_5129(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5129(t0,t1,t2);}

C_noret_decl(trf_5249)
static void C_ccall trf_5249(C_word c,C_word *av) C_noret;
static void C_ccall trf_5249(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5249(t0,t1,t2,t3);}

C_noret_decl(trf_5318)
static void C_ccall trf_5318(C_word c,C_word *av) C_noret;
static void C_ccall trf_5318(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5318(t0,t1,t2);}

C_noret_decl(trf_5344)
static void C_ccall trf_5344(C_word c,C_word *av) C_noret;
static void C_ccall trf_5344(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5344(t0,t1,t2,t3);}

C_noret_decl(trf_5409)
static void C_ccall trf_5409(C_word c,C_word *av) C_noret;
static void C_ccall trf_5409(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5409(t0,t1,t2);}

C_noret_decl(trf_5421)
static void C_ccall trf_5421(C_word c,C_word *av) C_noret;
static void C_ccall trf_5421(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5421(t0,t1,t2);}

C_noret_decl(trf_5444)
static void C_ccall trf_5444(C_word c,C_word *av) C_noret;
static void C_ccall trf_5444(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5444(t0,t1,t2);}

C_noret_decl(trf_5520)
static void C_ccall trf_5520(C_word c,C_word *av) C_noret;
static void C_ccall trf_5520(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5520(t0,t1,t2,t3);}

C_noret_decl(trf_5536)
static void C_ccall trf_5536(C_word c,C_word *av) C_noret;
static void C_ccall trf_5536(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5536(t0,t1,t2,t3);}

C_noret_decl(trf_5586)
static void C_ccall trf_5586(C_word c,C_word *av) C_noret;
static void C_ccall trf_5586(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5586(t0,t1,t2);}

C_noret_decl(trf_5609)
static void C_ccall trf_5609(C_word c,C_word *av) C_noret;
static void C_ccall trf_5609(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5609(t0,t1,t2);}

C_noret_decl(trf_5647)
static void C_ccall trf_5647(C_word c,C_word *av) C_noret;
static void C_ccall trf_5647(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5647(t0,t1,t2,t3);}

C_noret_decl(trf_5663)
static void C_ccall trf_5663(C_word c,C_word *av) C_noret;
static void C_ccall trf_5663(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5663(t0,t1,t2,t3);}

C_noret_decl(trf_5712)
static void C_ccall trf_5712(C_word c,C_word *av) C_noret;
static void C_ccall trf_5712(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5712(t0,t1,t2,t3);}

C_noret_decl(trf_5728)
static void C_ccall trf_5728(C_word c,C_word *av) C_noret;
static void C_ccall trf_5728(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5728(t0,t1,t2,t3);}

C_noret_decl(trf_5762)
static void C_ccall trf_5762(C_word c,C_word *av) C_noret;
static void C_ccall trf_5762(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5762(t0,t1,t2);}

C_noret_decl(trf_5774)
static void C_ccall trf_5774(C_word c,C_word *av) C_noret;
static void C_ccall trf_5774(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5774(t0,t1,t2);}

C_noret_decl(trf_5782)
static void C_ccall trf_5782(C_word c,C_word *av) C_noret;
static void C_ccall trf_5782(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5782(t0,t1,t2);}

C_noret_decl(trf_5812)
static void C_ccall trf_5812(C_word c,C_word *av) C_noret;
static void C_ccall trf_5812(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_5812(t0,t1,t2);}

C_noret_decl(trf_5835)
static void C_ccall trf_5835(C_word c,C_word *av) C_noret;
static void C_ccall trf_5835(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5835(t0,t1,t2,t3);}

C_noret_decl(trf_5847)
static void C_ccall trf_5847(C_word c,C_word *av) C_noret;
static void C_ccall trf_5847(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5847(t0,t1,t2,t3);}

C_noret_decl(trf_5863)
static void C_ccall trf_5863(C_word c,C_word *av) C_noret;
static void C_ccall trf_5863(C_word c,C_word *av){
C_word t0=av[3];
C_word t1=av[2];
C_word t2=av[1];
C_word t3=av[0];
f_5863(t0,t1,t2,t3);}

C_noret_decl(trf_6015)
static void C_ccall trf_6015(C_word c,C_word *av) C_noret;
static void C_ccall trf_6015(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_6015(t0,t1,t2);}

C_noret_decl(trf_6057)
static void C_ccall trf_6057(C_word c,C_word *av) C_noret;
static void C_ccall trf_6057(C_word c,C_word *av){
C_word t0=av[2];
C_word t1=av[1];
C_word t2=av[0];
f_6057(t0,t1,t2);}

/* k1601 */
static void C_ccall f_1603(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,2)))){
C_save_and_reclaim((void *)f_1603,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1606,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_eval_toplevel(2,av2);}}

/* k1604 in k1601 */
static void C_ccall f_1606(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1606,c,av);}
a=C_alloc(11);
t2=C_set_block_item(lf[0] /* ##sys#number-hash-hook */,0,C_SCHEME_FALSE);
t3=C_a_i_provide(&a,1,lf[1]);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1610,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:97: chicken.platform#register-feature! */
t5=C_fast_retrieve(lf[163]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=lf[164];
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k1608 in k1604 in k1601 */
static void C_ccall f_1610(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(21,c,4)))){
C_save_and_reclaim((void *)f_1610,c,av);}
a=C_alloc(21);
t2=C_mutate(&lf[2] /* (set! srfi-69#hash-default-randomization ...) */,C_rnd_fix());
t3=C_mutate((C_word*)lf[0]+1 /* (set! ##sys#number-hash-hook ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1613,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[4]+1 /* (set! srfi-69#number-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1619,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[10]+1 /* (set! srfi-69#object-uid-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1840,tmp=(C_word)a,a+=2,tmp));
t6=C_mutate((C_word*)lf[12]+1 /* (set! srfi-69#symbol-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_1919,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[14]+1 /* (set! ##sys#check-keyword ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2007,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[18]+1 /* (set! srfi-69#keyword-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2033,tmp=(C_word)a,a+=2,tmp));
t9=C_mutate((C_word*)lf[20]+1 /* (set! srfi-69#eq?-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2245,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[22]+1 /* (set! srfi-69#hash-by-identity ...) */,C_fast_retrieve(lf[20]));
t11=C_mutate((C_word*)lf[23]+1 /* (set! srfi-69#eqv?-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2577,tmp=(C_word)a,a+=2,tmp));
t12=C_set_block_item(lf[25] /* srfi-69#*recursive-hash-max-depth* */,0,C_fix(4));
t13=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2654,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t14=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_6121,tmp=(C_word)a,a+=2,tmp);
/* srfi-69.scm:318: chicken.base#make-parameter */
t15=C_fast_retrieve(lf[162]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t15;
av2[1]=t13;
av2[2]=C_fix(4);
av2[3]=t14;
((C_proc)(void*)(*((C_word*)t15+1)))(4,av2);}}

/* ##sys#number-hash-hook in k1608 in k1604 in k1601 */
static void C_ccall f_1613(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_1613,c,av);}
/* srfi-69.scm:195: *equal?-hash */
f_2661(t1,t2,t3);}

/* srfi-69#number-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1619(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,5)))){
C_save_and_reclaim((void *)f_1619,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1635,a[2]=t1,a[3]=t4,a[4]=t2,a[5]=t7,tmp=(C_word)a,a+=6,tmp);
if(C_truep(C_i_numberp(t2))){
t10=t9;{
C_word *av2=av;
av2[0]=t10;
av2[1]=C_SCHEME_UNDEFINED;
f_1635(2,av2);}}
else{
/* srfi-69.scm:208: ##sys#signal-hook */
t10=C_fast_retrieve(lf[7]);{
C_word av2[6];
av2[0]=t10;
av2[1]=t9;
av2[2]=lf[8];
av2[3]=lf[6];
av2[4]=lf[9];
av2[5]=t2;
((C_proc)(void*)(*((C_word*)t10+1)))(6,av2);}}}

/* k1633 in srfi-69#number-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1635(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1635,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1638,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:209: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=lf[6];
tp(4,av2);}}

/* k1636 in k1633 in srfi-69#number-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1638(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_1638,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1808,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
if(C_truep(C_fixnump(((C_word*)t0)[4]))){
t3=t2;
f_1808(t3,C_fixnum_xor(((C_word*)t0)[4],((C_word*)t0)[5]));}
else{
if(C_truep(C_i_flonump(((C_word*)t0)[4]))){
t3=C_subbyte(((C_word*)t0)[4],C_fix(7));
t4=C_subbyte(((C_word*)t0)[4],C_fix(6));
t5=C_subbyte(((C_word*)t0)[4],C_fix(5));
t6=C_subbyte(((C_word*)t0)[4],C_fix(4));
t7=C_subbyte(((C_word*)t0)[4],C_fix(3));
t8=C_subbyte(((C_word*)t0)[4],C_fix(2));
t9=C_subbyte(((C_word*)t0)[4],C_fix(1));
t10=C_fixnum_shift_left(C_subbyte(((C_word*)t0)[4],C_fix(0)),C_fix(1));
t11=C_fixnum_plus(t9,t10);
t12=C_fixnum_shift_left(t11,C_fix(1));
t13=C_fixnum_plus(t8,t12);
t14=C_fixnum_shift_left(t13,C_fix(1));
t15=C_fixnum_plus(t7,t14);
t16=C_fixnum_shift_left(t15,C_fix(1));
t17=C_fixnum_plus(t6,t16);
t18=C_fixnum_shift_left(t17,C_fix(1));
t19=C_fixnum_plus(t5,t18);
t20=C_fixnum_shift_left(t19,C_fix(1));
t21=C_fixnum_plus(t4,t20);
t22=C_fixnum_shift_left(t21,C_fix(1));
t23=t2;
f_1808(t23,C_fixnum_times(C_fix(331804471),C_fixnum_plus(t3,t22)));}
else{
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1802,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:199: ##sys#number-hash-hook */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[0]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[0]+1);
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
av2[3]=((C_word*)t0)[5];
tp(4,av2);}}}}

/* k1800 in k1636 in k1633 in srfi-69#number-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1802(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1802,c,av);}
t2=((C_word*)t0)[2];
f_1808(t2,C_fix(t1));}

/* k1806 in k1636 in k1633 in srfi-69#number-hash in k1608 in k1604 in k1601 */
static void C_fcall f_1808(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,1)))){
C_save_and_reclaim_args((void *)trf_1808,2,t0,t1);}
t2=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t1,C_fix(0)))){
t3=C_fixnum_negate(t1);
t4=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t3),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* srfi-69#object-uid-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1840(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1840,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1856,a[2]=t1,a[3]=t4,a[4]=t2,a[5]=t7,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:223: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t9;
av2[2]=t4;
av2[3]=lf[11];
tp(4,av2);}}

/* k1854 in srfi-69#object-uid-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1856(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_1856,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_1893,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:219: *equal?-hash */
f_2661(t2,((C_word*)t0)[4],((C_word*)t0)[5]);}

/* k1891 in k1854 in srfi-69#object-uid-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1893(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1893,c,av);}
t2=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t1,C_fix(0)))){
t3=C_fixnum_negate(t1);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t3),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* srfi-69#symbol-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1919(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_1919,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=C_i_check_symbol_2(t2,lf[13]);
t10=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_1938,a[2]=t2,a[3]=t7,a[4]=t1,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:238: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t10;
av2[2]=t4;
av2[3]=lf[13];
tp(4,av2);}}

/* k1936 in srfi-69#symbol-hash in k1608 in k1604 in k1601 */
static void C_ccall f_1938(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_1938,c,av);}
t2=C_slot(((C_word*)t0)[2],C_fix(1));
t3=C_u_i_string_hash(t2,((C_word*)t0)[3]);
t4=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t3,C_fix(0)))){
t5=C_fixnum_negate(t3);
t6=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_fixnum_modulo(C_fixnum_and(t4,t5),((C_word*)t0)[5]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t5=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_fixnum_modulo(C_fixnum_and(t4,t3),((C_word*)t0)[5]);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* ##sys#check-keyword in k1608 in k1604 in k1601 */
static void C_ccall f_2007(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand((c-3)*C_SIZEOF_PAIR +5,c,2)))){
C_save_and_reclaim((void*)f_2007,c,av);}
a=C_alloc((c-3)*C_SIZEOF_PAIR+5);
t3=C_build_rest(&a,c,3,av);
C_word t4;
C_word t5;
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2014,a[2]=t1,a[3]=t3,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:244: chicken.keyword#keyword? */
t5=C_fast_retrieve(lf[17]);{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k2012 in ##sys#check-keyword in k1608 in k1604 in k1601 */
static void C_ccall f_2014(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,5)))){
C_save_and_reclaim((void *)f_2014,c,av);}
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t2=C_i_nullp(((C_word*)t0)[3]);
if(C_truep(C_i_not(t2))){
/* srfi-69.scm:245: ##sys#signal-hook */
t3=C_fast_retrieve(lf[7]);{
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[15];
av2[3]=C_i_car(((C_word*)t0)[3]);
av2[4]=lf[16];
av2[5]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(6,av2);}}
else{
/* srfi-69.scm:245: ##sys#signal-hook */
t3=C_fast_retrieve(lf[7]);{
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[15];
av2[3]=C_SCHEME_FALSE;
av2[4]=lf[16];
av2[5]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t3+1)))(6,av2);}}}}

/* srfi-69#keyword-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2033(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2033,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2049,a[2]=t2,a[3]=t7,a[4]=t1,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:258: ##sys#check-keyword */
t10=C_fast_retrieve(lf[14]);{
C_word av2[4];
av2[0]=t10;
av2[1]=t9;
av2[2]=t2;
av2[3]=lf[19];
f_2007(4,av2);}}

/* k2047 in srfi-69#keyword-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2049(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2049,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2052,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:259: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
av2[3]=lf[19];
tp(4,av2);}}

/* k2050 in k2047 in srfi-69#keyword-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2052(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2052,c,av);}
t2=C_slot(((C_word*)t0)[2],C_fix(1));
t3=C_u_i_string_hash(t2,((C_word*)t0)[3]);
t4=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t3,C_fix(0)))){
t5=C_fixnum_negate(t3);
t6=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_fixnum_modulo(C_fixnum_and(t4,t5),((C_word*)t0)[5]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t5=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_fixnum_modulo(C_fixnum_and(t4,t3),((C_word*)t0)[5]);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* k2204 in k2259 in srfi-69#eq?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2206(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_2206,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_u_i_string_hash(C_slot(((C_word*)t0)[3],C_fix(1)),((C_word*)t0)[4]);
f_2293(2,av2);}}
else{
if(C_truep(C_i_not(C_blockp(((C_word*)t0)[3])))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fixnum_xor(C_fix(262),((C_word*)t0)[4]);
f_2293(2,av2);}}
else{
/* srfi-69.scm:219: *equal?-hash */
f_2661(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}}}

/* srfi-69#eq?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2245(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2245,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2261,a[2]=t1,a[3]=t4,a[4]=t2,a[5]=t7,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:283: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t9;
av2[2]=t4;
av2[3]=lf[21];
tp(4,av2);}}

/* k2259 in srfi-69#eq?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2261(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_2261,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2293,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
if(C_truep(C_fixnump(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(((C_word*)t0)[4],((C_word*)t0)[5]);
f_2293(2,av2);}}
else{
if(C_truep(C_charp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(C_character_code(((C_word*)t0)[4])),((C_word*)t0)[5]);
f_2293(2,av2);}}
else{
switch(((C_word*)t0)[4]){
case C_SCHEME_TRUE:
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(256),((C_word*)t0)[5]);
f_2293(2,av2);}
case C_SCHEME_FALSE:
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(257),((C_word*)t0)[5]);
f_2293(2,av2);}
default:
if(C_truep(C_i_nullp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(258),((C_word*)t0)[5]);
f_2293(2,av2);}}
else{
if(C_truep(C_eofp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(259),((C_word*)t0)[5]);
f_2293(2,av2);}}
else{
if(C_truep(C_i_symbolp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_u_i_string_hash(C_slot(((C_word*)t0)[4],C_fix(1)),((C_word*)t0)[5]);
f_2293(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2206,a[2]=t2,a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:277: chicken.keyword#keyword? */
t4=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}}}}}}}

/* k2291 in k2259 in srfi-69#eq?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2293(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2293,c,av);}
t2=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t1,C_fix(0)))){
t3=C_fixnum_negate(t1);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t3),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k2403 in k2591 in srfi-69#eqv?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2405(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,3)))){
C_save_and_reclaim((void *)f_2405,c,av);}
a=C_alloc(3);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_u_i_string_hash(C_slot(((C_word*)t0)[3],C_fix(1)),((C_word*)t0)[4]);
f_2625(2,av2);}}
else{
if(C_truep(C_i_numberp(((C_word*)t0)[3]))){
if(C_truep(C_i_flonump(((C_word*)t0)[3]))){
t2=C_subbyte(((C_word*)t0)[3],C_fix(7));
t3=C_subbyte(((C_word*)t0)[3],C_fix(6));
t4=C_subbyte(((C_word*)t0)[3],C_fix(5));
t5=C_subbyte(((C_word*)t0)[3],C_fix(4));
t6=C_subbyte(((C_word*)t0)[3],C_fix(3));
t7=C_subbyte(((C_word*)t0)[3],C_fix(2));
t8=C_subbyte(((C_word*)t0)[3],C_fix(1));
t9=C_fixnum_shift_left(C_subbyte(((C_word*)t0)[3],C_fix(0)),C_fix(1));
t10=C_fixnum_plus(t8,t9);
t11=C_fixnum_shift_left(t10,C_fix(1));
t12=C_fixnum_plus(t7,t11);
t13=C_fixnum_shift_left(t12,C_fix(1));
t14=C_fixnum_plus(t6,t13);
t15=C_fixnum_shift_left(t14,C_fix(1));
t16=C_fixnum_plus(t5,t15);
t17=C_fixnum_shift_left(t16,C_fix(1));
t18=C_fixnum_plus(t4,t17);
t19=C_fixnum_shift_left(t18,C_fix(1));
t20=C_fixnum_plus(t3,t19);
t21=C_fixnum_shift_left(t20,C_fix(1));
t22=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t22;
av2[1]=C_fixnum_times(C_fix(331804471),C_fixnum_plus(t2,t21));
f_2625(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2549,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:199: ##sys#number-hash-hook */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[0]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[0]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}}
else{
if(C_truep(C_i_not(C_blockp(((C_word*)t0)[3])))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fixnum_xor(C_fix(262),((C_word*)t0)[4]);
f_2625(2,av2);}}
else{
/* srfi-69.scm:219: *equal?-hash */
f_2661(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}}}}

/* k2547 in k2403 in k2591 in srfi-69#eqv?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2549(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2549,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fix(t1);
f_2625(2,av2);}}

/* srfi-69#eqv?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2577(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_2577,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_2593,a[2]=t1,a[3]=t4,a[4]=t2,a[5]=t7,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:309: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t9;
av2[2]=t4;
av2[3]=lf[24];
tp(4,av2);}}

/* k2591 in srfi-69#eqv?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2593(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,c,2)))){
C_save_and_reclaim((void *)f_2593,c,av);}
a=C_alloc(9);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2625,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
if(C_truep(C_fixnump(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(((C_word*)t0)[4],((C_word*)t0)[5]);
f_2625(2,av2);}}
else{
if(C_truep(C_charp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(C_character_code(((C_word*)t0)[4])),((C_word*)t0)[5]);
f_2625(2,av2);}}
else{
switch(((C_word*)t0)[4]){
case C_SCHEME_TRUE:
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(256),((C_word*)t0)[5]);
f_2625(2,av2);}
case C_SCHEME_FALSE:
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(257),((C_word*)t0)[5]);
f_2625(2,av2);}
default:
if(C_truep(C_i_nullp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(258),((C_word*)t0)[5]);
f_2625(2,av2);}}
else{
if(C_truep(C_eofp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_xor(C_fix(259),((C_word*)t0)[5]);
f_2625(2,av2);}}
else{
if(C_truep(C_i_symbolp(((C_word*)t0)[4]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_u_i_string_hash(C_slot(((C_word*)t0)[4],C_fix(1)),((C_word*)t0)[5]);
f_2625(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_2405,a[2]=t2,a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:302: chicken.keyword#keyword? */
t4=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
((C_proc)(void*)(*((C_word*)t4+1)))(3,av2);}}}}}}}}

/* k2623 in k2591 in srfi-69#eqv?-hash in k1608 in k1604 in k1601 */
static void C_ccall f_2625(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2625,c,av);}
t2=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t1,C_fix(0)))){
t3=C_fixnum_negate(t1);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t3),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_2654(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_2654,c,av);}
a=C_alloc(5);
t2=C_mutate((C_word*)lf[26]+1 /* (set! srfi-69#recursive-hash-max-depth ...) */,t1);
t3=C_set_block_item(lf[27] /* srfi-69#*recursive-hash-max-length* */,0,C_fix(4));
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2659,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_6107,tmp=(C_word)a,a+=2,tmp);
/* srfi-69.scm:327: chicken.base#make-parameter */
t6=C_fast_retrieve(lf[162]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t4;
av2[2]=C_fix(4);
av2[3]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_2659(C_word c,C_word *av){
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
C_word t27;
C_word t28;
C_word t29;
C_word t30;
C_word t31;
C_word t32;
C_word t33;
C_word t34;
C_word t35;
C_word t36;
C_word t37;
C_word t38;
C_word t39;
C_word t40;
C_word t41;
C_word t42;
C_word t43;
C_word t44;
C_word t45;
C_word t46;
C_word t47;
C_word t48;
C_word t49;
C_word t50;
C_word t51;
C_word t52;
C_word t53;
C_word t54;
C_word t55;
C_word t56;
C_word t57;
C_word t58;
C_word t59;
C_word t60;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(81,c,9)))){
C_save_and_reclaim((void *)f_2659,c,av);}
a=C_alloc(81);
t2=C_mutate((C_word*)lf[28]+1 /* (set! srfi-69#recursive-hash-max-length ...) */,t1);
t3=C_mutate(&lf[3] /* (set! srfi-69#*equal?-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_2661,tmp=(C_word)a,a+=2,tmp));
t4=C_mutate((C_word*)lf[30]+1 /* (set! srfi-69#equal?-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3116,tmp=(C_word)a,a+=2,tmp));
t5=C_mutate((C_word*)lf[32]+1 /* (set! srfi-69#hash ...) */,C_fast_retrieve(lf[30]));
t6=C_mutate((C_word*)lf[33]+1 /* (set! srfi-69#string-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3191,tmp=(C_word)a,a+=2,tmp));
t7=C_mutate((C_word*)lf[37]+1 /* (set! srfi-69#string-ci-hash ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3332,tmp=(C_word)a,a+=2,tmp));
t8=C_mutate((C_word*)lf[39]+1 /* (set! srfi-69#string-hash-ci ...) */,C_fast_retrieve(lf[37]));
t9=C_mutate(&lf[40] /* (set! srfi-69#constant652 ...) */,lf[41]);
t10=C_mutate(&lf[42] /* (set! srfi-69#hash-table-canonical-length ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3475,tmp=(C_word)a,a+=2,tmp));
t11=C_fast_retrieve(lf[20]);
t12=C_fast_retrieve(lf[23]);
t13=C_fast_retrieve(lf[30]);
t14=C_fast_retrieve(lf[32]);
t15=C_fast_retrieve(lf[33]);
t16=C_fast_retrieve(lf[39]);
t17=C_fast_retrieve(lf[4]);
t18=C_fast_retrieve(lf[10]);
t19=C_fast_retrieve(lf[12]);
t20=C_fast_retrieve(lf[18]);
t21=C_mutate((C_word*)lf[43]+1 /* (set! srfi-69#*make-hash-function ...) */,(*a=C_CLOSURE_TYPE|11,a[1]=(C_word)f_3505,a[2]=t11,a[3]=t12,a[4]=t13,a[5]=t14,a[6]=t15,a[7]=t16,a[8]=t17,a[9]=t18,a[10]=t19,a[11]=t20,tmp=(C_word)a,a+=12,tmp));
t22=C_mutate(&lf[46] /* (set! srfi-69#*make-hash-table ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3557,tmp=(C_word)a,a+=2,tmp));
t23=*((C_word*)lf[51]+1);
t24=*((C_word*)lf[52]+1);
t25=*((C_word*)lf[53]+1);
t26=*((C_word*)lf[54]+1);
t27=*((C_word*)lf[55]+1);
t28=*((C_word*)lf[56]+1);
t29=C_fast_retrieve(lf[20]);
t30=C_fast_retrieve(lf[23]);
t31=C_fast_retrieve(lf[30]);
t32=C_fast_retrieve(lf[32]);
t33=C_fast_retrieve(lf[33]);
t34=C_fast_retrieve(lf[39]);
t35=C_fast_retrieve(lf[4]);
t36=C_mutate((C_word*)lf[57]+1 /* (set! srfi-69#make-hash-table ...) */,(*a=C_CLOSURE_TYPE|13,a[1]=(C_word)f_3604,a[2]=t23,a[3]=t29,a[4]=t24,a[5]=t30,a[6]=t25,a[7]=t31,a[8]=t26,a[9]=t33,a[10]=t27,a[11]=t34,a[12]=t28,a[13]=t35,tmp=(C_word)a,a+=14,tmp));
t37=C_mutate((C_word*)lf[85]+1 /* (set! srfi-69#hash-table? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3973,tmp=(C_word)a,a+=2,tmp));
t38=C_mutate((C_word*)lf[86]+1 /* (set! srfi-69#hash-table-size ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3979,tmp=(C_word)a,a+=2,tmp));
t39=C_mutate((C_word*)lf[88]+1 /* (set! srfi-69#hash-table-equivalence-function ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3988,tmp=(C_word)a,a+=2,tmp));
t40=C_mutate((C_word*)lf[90]+1 /* (set! srfi-69#hash-table-hash-function ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_3997,tmp=(C_word)a,a+=2,tmp));
t41=C_mutate((C_word*)lf[92]+1 /* (set! srfi-69#hash-table-min-load ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4006,tmp=(C_word)a,a+=2,tmp));
t42=C_mutate((C_word*)lf[94]+1 /* (set! srfi-69#hash-table-max-load ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4015,tmp=(C_word)a,a+=2,tmp));
t43=C_mutate((C_word*)lf[96]+1 /* (set! srfi-69#hash-table-weak-keys ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4024,tmp=(C_word)a,a+=2,tmp));
t44=C_mutate((C_word*)lf[98]+1 /* (set! srfi-69#hash-table-weak-values ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4033,tmp=(C_word)a,a+=2,tmp));
t45=C_mutate((C_word*)lf[100]+1 /* (set! srfi-69#hash-table-has-initial? ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4042,tmp=(C_word)a,a+=2,tmp));
t46=C_mutate((C_word*)lf[102]+1 /* (set! srfi-69#hash-table-initial ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4054,tmp=(C_word)a,a+=2,tmp));
t47=C_mutate((C_word*)lf[104]+1 /* (set! srfi-69#hash-table-resize! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4148,tmp=(C_word)a,a+=2,tmp));
t48=C_mutate(&lf[105] /* (set! srfi-69#*hash-table-copy ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4208,tmp=(C_word)a,a+=2,tmp));
t49=C_mutate((C_word*)lf[106]+1 /* (set! srfi-69#hash-table-copy ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4334,tmp=(C_word)a,a+=2,tmp));
t50=*((C_word*)lf[51]+1);
t51=C_mutate((C_word*)lf[108]+1 /* (set! srfi-69#hash-table-update! ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4343,a[2]=t50,tmp=(C_word)a,a+=3,tmp));
t52=*((C_word*)lf[51]+1);
t53=C_mutate(&lf[112] /* (set! srfi-69#*hash-table-update!/default ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4570,a[2]=t52,tmp=(C_word)a,a+=3,tmp));
t54=C_mutate((C_word*)lf[113]+1 /* (set! srfi-69#hash-table-update!/default ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_4760,tmp=(C_word)a,a+=2,tmp));
t55=*((C_word*)lf[51]+1);
t56=C_mutate((C_word*)lf[115]+1 /* (set! srfi-69#hash-table-set! ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4772,a[2]=t55,tmp=(C_word)a,a+=3,tmp));
t57=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4950,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t58=*((C_word*)lf[51]+1);
t59=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5978,a[2]=t58,tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:894: chicken.base#getter-with-setter */
t60=*((C_word*)lf[160]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t60;
av2[1]=t57;
av2[2]=t59;
av2[3]=C_fast_retrieve(lf[115]);
av2[4]=lf[161];
((C_proc)(void*)(*((C_word*)t60+1)))(5,av2);}}

/* srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_2661(C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(11,0,7)))){
C_save_and_reclaim_args((void *)trf_2661,3,t1,t2,t3);}
a=C_alloc(11);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2664,a[2]=t7,tmp=(C_word)a,a+=3,tmp));
t9=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_2737,a[2]=t7,a[3]=t5,tmp=(C_word)a,a+=4,tmp));
/* srfi-69.scm:390: recursive-hash */
t10=((C_word*)t7)[1];
f_2737(t10,t1,t2,C_fix(0),t3);}

/* vector-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_2664(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4,C_word t5,C_word t6){
C_word tmp;
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
if(C_unlikely(!C_demand(C_calculate_demand(9,0,5)))){
C_save_and_reclaim_args((void *)trf_2664,7,t0,t1,t2,t3,t4,t5,t6);}
a=C_alloc(9);
t7=C_block_size(t2);
t8=C_fixnum_xor(t3,t6);
t9=C_fixnum_plus(t7,t8);
t10=C_i_fixnum_min(C_fast_retrieve(lf[27]),t7);
t11=C_i_fixnum_max(t5,t10);
t12=C_fixnum_difference(t11,t5);
t13=C_SCHEME_UNDEFINED;
t14=(*a=C_VECTOR_TYPE|1,a[1]=t13,tmp=(C_word)a,a+=2,tmp);
t15=C_set_block_item(t14,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_2681,a[2]=t14,a[3]=((C_word*)t0)[2],a[4]=t2,a[5]=t4,a[6]=t6,tmp=(C_word)a,a+=7,tmp));
t16=((C_word*)t14)[1];
f_2681(t16,t1,t9,t5,t12);}

/* loop in vector-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_2681(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,4)))){
C_save_and_reclaim_args((void *)trf_2681,5,t0,t1,t2,t3,t4);}
a=C_alloc(8);
t5=C_eqp(t4,C_fix(0));
if(C_truep(t5)){
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t6=C_fixnum_shift_left(t2,C_fix(4));
t7=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2715,a[2]=t6,a[3]=((C_word*)t0)[2],a[4]=t1,a[5]=t2,a[6]=t3,a[7]=t4,tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:365: recursive-hash */
t8=((C_word*)((C_word*)t0)[3])[1];
f_2737(t8,t7,C_slot(((C_word*)t0)[4],t3),C_fixnum_plus(((C_word*)t0)[5],C_fix(1)),((C_word*)t0)[6]);}}

/* k2713 in loop in vector-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_2715(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_2715,c,av);}
t2=C_fixnum_plus(((C_word*)t0)[2],t1);
/* srfi-69.scm:363: loop */
t3=((C_word*)((C_word*)t0)[3])[1];
f_2681(t3,((C_word*)t0)[4],C_fixnum_plus(((C_word*)t0)[5],t2),C_fixnum_plus(((C_word*)t0)[6],C_fix(1)),C_fixnum_difference(((C_word*)t0)[7],C_fix(1)));}

/* recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_2737(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,2)))){
C_save_and_reclaim_args((void *)trf_2737,5,t0,t1,t2,t3,t4);}
a=C_alloc(8);
if(C_truep(C_fixnum_greater_or_equal_p(t3,C_fast_retrieve(lf[25])))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(99),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
if(C_truep(C_fixnump(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(t2,t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
if(C_truep(C_charp(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(C_character_code(t2)),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
switch(t2){
case C_SCHEME_TRUE:
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(256),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}
case C_SCHEME_FALSE:
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(257),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}
default:
if(C_truep(C_i_nullp(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(258),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
if(C_truep(C_eofp(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_fixnum_xor(C_fix(259),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
if(C_truep(C_i_symbolp(t2))){
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_u_i_string_hash(C_slot(t2,C_fix(1)),t4);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_2831,a[2]=t1,a[3]=t2,a[4]=t4,a[5]=((C_word*)t0)[2],a[6]=t3,a[7]=((C_word*)t0)[3],tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:380: chicken.keyword#keyword? */
t6=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}}}}}}}}

/* k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_2831(C_word c,C_word *av){
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
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_2831,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_u_i_string_hash(C_slot(((C_word*)t0)[3],C_fix(1)),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_i_flonump(((C_word*)t0)[3]))){
if(C_truep(C_i_flonump(((C_word*)t0)[3]))){
t2=C_subbyte(((C_word*)t0)[3],C_fix(7));
t3=C_subbyte(((C_word*)t0)[3],C_fix(6));
t4=C_subbyte(((C_word*)t0)[3],C_fix(5));
t5=C_subbyte(((C_word*)t0)[3],C_fix(4));
t6=C_subbyte(((C_word*)t0)[3],C_fix(3));
t7=C_subbyte(((C_word*)t0)[3],C_fix(2));
t8=C_subbyte(((C_word*)t0)[3],C_fix(1));
t9=C_fixnum_shift_left(C_subbyte(((C_word*)t0)[3],C_fix(0)),C_fix(1));
t10=C_fixnum_plus(t8,t9);
t11=C_fixnum_shift_left(t10,C_fix(1));
t12=C_fixnum_plus(t7,t11);
t13=C_fixnum_shift_left(t12,C_fix(1));
t14=C_fixnum_plus(t6,t13);
t15=C_fixnum_shift_left(t14,C_fix(1));
t16=C_fixnum_plus(t5,t15);
t17=C_fixnum_shift_left(t16,C_fix(1));
t18=C_fixnum_plus(t4,t17);
t19=C_fixnum_shift_left(t18,C_fix(1));
t20=C_fixnum_plus(t3,t19);
t21=C_fixnum_shift_left(t20,C_fix(1));
t22=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t22;
av2[1]=C_fixnum_times(C_fix(331804471),C_fixnum_plus(t2,t21));
((C_proc)(void*)(*((C_word*)t22+1)))(2,av2);}}
else{
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_2975,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:199: ##sys#number-hash-hook */
{C_proc tp=(C_proc)C_fast_retrieve_proc(*((C_word*)lf[0]+1));
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[0]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
tp(4,av2);}}}
else{
if(C_truep(C_i_not(C_blockp(((C_word*)t0)[3])))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fixnum_xor(C_fix(262),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_byteblockp(((C_word*)t0)[3]))){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_u_i_string_hash(((C_word*)t0)[3],((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
if(C_truep(C_i_pairp(((C_word*)t0)[3]))){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3013,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:384: g504 */
t3=t2;
f_3013(t3,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}
else{
if(C_truep(C_portp(((C_word*)t0)[3]))){
t2=C_peek_fixnum(((C_word*)t0)[3],C_fix(0));
t3=C_fixnum_shift_left(t2,C_fix(4));
t4=C_fixnum_xor(t3,((C_word*)t0)[4]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3072,a[2]=((C_word*)t0)[2],a[3]=t4,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:343: scheme#input-port? */
t6=C_fast_retrieve(lf[29]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}
else{
if(C_truep(C_specialp(((C_word*)t0)[3]))){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3092,a[2]=((C_word*)t0)[7],a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:386: g518 */
t3=t2;
f_3092(t3,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}
else{
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3104,a[2]=((C_word*)t0)[7],a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:387: g522 */
t3=t2;
f_3104(t3,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}}}}}}}}

/* k2973 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_2975(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_2975,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fix(t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* g504 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3013(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_3013,4,t0,t1,t2,t3);}
a=C_alloc(7);
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3037,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t2,a[5]=((C_word*)t0)[3],a[6]=t3,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:338: recursive-hash */
t5=((C_word*)((C_word*)t0)[2])[1];
f_2737(t5,t4,C_slot(t2,C_fix(0)),C_fixnum_plus(((C_word*)t0)[3],C_fix(1)),t3);}

/* k3023 in k3035 in g504 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3025(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3025,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_fixnum_plus(((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k3035 in g504 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3037(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_3037,c,av);}
a=C_alloc(4);
t2=C_fixnum_shift_left(t1,C_fix(16));
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3025,a[2]=((C_word*)t0)[2],a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:339: recursive-hash */
t4=((C_word*)((C_word*)t0)[3])[1];
f_2737(t4,t3,C_slot(((C_word*)t0)[4],C_fix(1)),C_fixnum_plus(((C_word*)t0)[5],C_fix(1)),((C_word*)t0)[6]);}

/* k3070 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3072(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3072,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=(C_truep(t1)?C_fixnum_plus(((C_word*)t0)[3],C_fix(260)):C_fixnum_plus(((C_word*)t0)[3],C_fix(261)));
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* g518 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3092(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,6)))){
C_save_and_reclaim_args((void *)trf_3092,4,t0,t1,t2,t3);}
/* srfi-69.scm:348: vector-hash */
t4=((C_word*)((C_word*)t0)[2])[1];
f_2664(t4,t1,t2,C_peek_fixnum(t2,C_fix(0)),((C_word*)t0)[3],C_fix(1),t3);}

/* g522 in k2829 in recursive-hash in srfi-69#*equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3104(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,6)))){
C_save_and_reclaim_args((void *)trf_3104,4,t0,t1,t2,t3);}
/* srfi-69.scm:351: vector-hash */
t4=((C_word*)((C_word*)t0)[2])[1];
f_2664(t4,t1,t2,C_fix(0),((C_word*)t0)[3],C_fix(0),t3);}

/* srfi-69#equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3116(C_word c,C_word *av){
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
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_3116,c,av);}
a=C_alloc(6);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3132,a[2]=t1,a[3]=t4,a[4]=t2,a[5]=t7,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:394: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t9;
av2[2]=t4;
av2[3]=lf[31];
tp(4,av2);}}

/* k3130 in srfi-69#equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3132(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_3132,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3164,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:395: *equal?-hash */
f_2661(t2,((C_word*)t0)[4],((C_word*)t0)[5]);}

/* k3162 in k3130 in srfi-69#equal?-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3164(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3164,c,av);}
t2=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t1,C_fix(0)))){
t3=C_fixnum_negate(t1);
t4=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t3),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_fixnum_modulo(C_fixnum_and(t2,t1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}}

/* srfi-69#string-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3191(C_word c,C_word *av){
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
C_word t15;
C_word t16;
C_word t17;
C_word *a;
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_3191,c,av);}
a=C_alloc(8);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_SCHEME_FALSE:C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=C_rest_nullp(c,5);
t10=(C_truep(t9)?C_SCHEME_FALSE:C_get_rest_arg(c,5,av,3,t0));
t11=C_rest_nullp(c,5);
t12=C_rest_nullp(c,6);
t13=(C_truep(t12)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,6,av,3,t0));
t14=C_rest_nullp(c,6);
t15=C_i_check_string_2(t2,lf[34]);
t16=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_3222,a[2]=t13,a[3]=t1,a[4]=t4,a[5]=t7,a[6]=t10,a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:404: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t16;
av2[2]=t4;
av2[3]=lf[34];
tp(4,av2);}}

/* k3220 in srfi-69#string-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3222(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,5)))){
C_save_and_reclaim((void *)f_3222,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_3225,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
if(C_truep(((C_word*)t0)[5])){
t3=(C_truep(((C_word*)t0)[6])?((C_word*)t0)[6]:C_block_size(((C_word*)t0)[7]));
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3265,a[2]=t2,a[3]=((C_word*)t0)[7],a[4]=((C_word*)t0)[5],a[5]=t3,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:407: ##sys#check-range */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=C_fix(0);
av2[4]=C_block_size(((C_word*)t0)[7]);
av2[5]=lf[34];
tp(6,av2);}}
else{
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=((C_word*)t0)[7];
f_3225(2,av2);}}}

/* k3223 in k3220 in srfi-69#string-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3225(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3225,c,av);}
t2=C_u_i_string_hash(t1,((C_word*)t0)[2]);
t3=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t2,C_fix(0)))){
t4=C_fixnum_negate(t2);
t5=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_fixnum_modulo(C_fixnum_and(t3,t4),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t3,t2),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k3263 in k3220 in srfi-69#string-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3265(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,5)))){
C_save_and_reclaim((void *)f_3265,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3268,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:408: ##sys#check-range */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
av2[3]=C_fix(0);
av2[4]=C_block_size(((C_word*)t0)[3]);
av2[5]=lf[34];
tp(6,av2);}}

/* k3266 in k3263 in k3220 in srfi-69#string-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3268(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_3268,c,av);}
/* srfi-69.scm:409: ##sys#substring */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[35]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[35]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
tp(5,av2);}}

/* srfi-69#string-ci-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3332(C_word c,C_word *av){
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
C_word t15;
C_word t16;
C_word t17;
C_word *a;
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_3332,c,av);}
a=C_alloc(8);
t3=C_rest_nullp(c,3);
t4=(C_truep(t3)?C_fix(536870912):C_get_rest_arg(c,3,av,3,t0));
t5=C_rest_nullp(c,3);
t6=C_rest_nullp(c,4);
t7=(C_truep(t6)?C_SCHEME_FALSE:C_get_rest_arg(c,4,av,3,t0));
t8=C_rest_nullp(c,4);
t9=C_rest_nullp(c,5);
t10=(C_truep(t9)?C_SCHEME_FALSE:C_get_rest_arg(c,5,av,3,t0));
t11=C_rest_nullp(c,5);
t12=C_rest_nullp(c,6);
t13=(C_truep(t12)?C_retrieve2(lf[2],C_text("srfi-69#hash-default-randomization")):C_get_rest_arg(c,6,av,3,t0));
t14=C_rest_nullp(c,6);
t15=C_i_check_string_2(t2,lf[38]);
t16=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_3363,a[2]=t13,a[3]=t1,a[4]=t4,a[5]=t7,a[6]=t10,a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:416: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word av2[4];
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t16;
av2[2]=t4;
av2[3]=lf[38];
tp(4,av2);}}

/* k3361 in srfi-69#string-ci-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3363(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,5)))){
C_save_and_reclaim((void *)f_3363,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_3366,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
if(C_truep(((C_word*)t0)[5])){
t3=(C_truep(((C_word*)t0)[6])?((C_word*)t0)[6]:C_block_size(((C_word*)t0)[7]));
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3406,a[2]=t2,a[3]=((C_word*)t0)[7],a[4]=((C_word*)t0)[5],a[5]=t3,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:419: ##sys#check-range */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=C_fix(0);
av2[4]=C_block_size(((C_word*)t0)[7]);
av2[5]=lf[34];
tp(6,av2);}}
else{
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=((C_word*)t0)[7];
f_3366(2,av2);}}}

/* k3364 in k3361 in srfi-69#string-ci-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3366(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3366,c,av);}
t2=C_u_i_string_ci_hash(t1,((C_word*)t0)[2]);
t3=C_fix((C_word)C_MOST_POSITIVE_32_BIT_FIXNUM);
if(C_truep(C_fixnum_lessp(t2,C_fix(0)))){
t4=C_fixnum_negate(t2);
t5=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_fixnum_modulo(C_fixnum_and(t3,t4),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t4=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_fixnum_modulo(C_fixnum_and(t3,t2),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k3404 in k3361 in srfi-69#string-ci-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3406(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,5)))){
C_save_and_reclaim((void *)f_3406,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3409,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:420: ##sys#check-range */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[36]);
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=*((C_word*)lf[36]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[5];
av2[3]=C_fix(0);
av2[4]=C_block_size(((C_word*)t0)[3]);
av2[5]=lf[34];
tp(6,av2);}}

/* k3407 in k3404 in k3361 in srfi-69#string-ci-hash in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3409(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_3409,c,av);}
/* srfi-69.scm:421: ##sys#substring */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[35]);
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=*((C_word*)lf[35]+1);
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
tp(5,av2);}}

/* srfi-69#hash-table-canonical-length in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3475(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,0,2)))){
C_save_and_reclaim_args((void *)trf_3475,3,t1,t2,t3);}
a=C_alloc(3);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_3481,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=(
  f_3481(t4,t2)
);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}

/* loop in srfi-69#hash-table-canonical-length in k2657 in k2652 in k1608 in k1604 in k1601 */
static C_word C_fcall f_3481(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_stack_overflow_check;
loop:{}
t2=C_slot(t1,C_fix(0));
t3=C_slot(t1,C_fix(1));
t4=C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]);
if(C_truep(t4)){
if(C_truep(t4)){
return(t2);}
else{
t6=t3;
t1=t6;
goto loop;}}
else{
if(C_truep(C_i_nullp(t3))){
return(t2);}
else{
t6=t3;
t1=t6;
goto loop;}}}

/* srfi-69#*make-hash-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3505(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(40,c,4)))){
C_save_and_reclaim((void *)f_3505,c,av);}
a=C_alloc(40);
t3=C_a_i_list(&a,10,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[6],((C_word*)t0)[7],((C_word*)t0)[8],((C_word*)t0)[9],((C_word*)t0)[10],((C_word*)t0)[11]);
if(C_truep(C_u_i_memq(t2,t3))){
t4=C_rnd_fix();
t5=C_a_i_list2(&a,2,((C_word*)t0)[6],((C_word*)t0)[7]);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=(C_truep(C_u_i_memq(t2,t5))?(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3523,a[2]=t2,a[3]=t4,tmp=(C_word)a,a+=4,tmp):(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3528,a[2]=t2,a[3]=t4,tmp=(C_word)a,a+=4,tmp));
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_3533,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* f_3523 in srfi-69#*make-hash-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3523(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,6)))){
C_save_and_reclaim((void *)f_3523,c,av);}
/* srfi-69.scm:481: user-function */
t4=((C_word*)t0)[2];{
C_word *av2;
if(c >= 7) {
  av2=av;
} else {
  av2=C_alloc(7);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=t2;
av2[3]=t3;
av2[4]=C_SCHEME_FALSE;
av2[5]=C_SCHEME_FALSE;
av2[6]=((C_word*)t0)[3];
((C_proc)C_fast_retrieve_proc(t4))(7,av2);}}

/* f_3528 in srfi-69#*make-hash-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3528(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3=av[3];
C_word t4;
C_word *a;
if(c!=4) C_bad_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_3528,c,av);}
/* srfi-69.scm:483: user-function */
t4=((C_word*)t0)[2];{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t1;
av2[2]=t2;
av2[3]=t3;
av2[4]=((C_word*)t0)[3];
((C_proc)C_fast_retrieve_proc(t4))(5,av2);}}

/* f_3533 in srfi-69#*make-hash-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3533(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3533,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_3537,a[2]=t3,a[3]=t1,a[4]=((C_word*)t0)[2],tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:485: user-function */
t5=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t5;
av2[1]=t4;
av2[2]=t2;
av2[3]=t3;
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}

/* k3535 */
static void C_ccall f_3537(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_3537,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3540,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:486: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t2;
av2[2]=t1;
av2[3]=lf[31];
tp(4,av2);}}

/* k3538 in k3535 */
static void C_ccall f_3540(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,7)))){
C_save_and_reclaim((void *)f_3540,c,av);}
t2=C_fixnum_lessp(((C_word*)t0)[2],((C_word*)t0)[3]);
t3=(C_truep(t2)?C_fixnum_greater_or_equal_p(((C_word*)t0)[2],C_fix(0)):C_SCHEME_FALSE);
if(C_truep(t3)){
t4=((C_word*)t0)[4];{
C_word *av2=av;
av2[0]=t4;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
/* srfi-69.scm:489: ##sys#signal-hook */
t4=C_fast_retrieve(lf[7]);{
C_word *av2;
if(c >= 8) {
  av2=av;
} else {
  av2=C_alloc(8);
}
av2[0]=t4;
av2[1]=((C_word*)t0)[4];
av2[2]=lf[44];
av2[3]=lf[31];
av2[4]=lf[45];
av2[5]=((C_word*)t0)[3];
av2[6]=((C_word*)t0)[2];
av2[7]=((C_word*)t0)[5];
((C_proc)(void*)(*((C_word*)t4+1)))(8,av2);}}}

/* srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3557(C_word t1,C_word t2,C_word t3,C_word t4,C_word t5,C_word t6,C_word t7,C_word t8){
C_word tmp;
C_word t9;
C_word t10;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,3)))){
C_save_and_reclaim_args((void *)trf_3557,8,t1,t2,t3,t4,t5,t6,t7,t8);}
a=C_alloc(9);
t9=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_3561,a[2]=t2,a[3]=t3,a[4]=t5,a[5]=t6,a[6]=t7,a[7]=t1,a[8]=t4,tmp=(C_word)a,a+=9,tmp);
if(C_truep(C_i_nullp(t8))){
/* srfi-69.scm:498: make-vector */
t10=*((C_word*)lf[50]+1);{
C_word av2[4];
av2[0]=t10;
av2[1]=t9;
av2[2]=t4;
av2[3]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}
else{
t10=t9;{
C_word av2[2];
av2[0]=t10;
av2[1]=C_i_car(t8);
f_3561(2,av2);}}}

/* k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3561(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(46,c,2)))){
C_save_and_reclaim((void *)f_3561,c,av);}
a=C_alloc(46);
t2=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_3564,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],tmp=(C_word)a,a+=10,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_3589,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=C_s_a_i_times(&a,2,((C_word*)t0)[8],((C_word*)t0)[4]);
/* srfi-69.scm:499: scheme#floor */
t5=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k3562 in k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3564(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(46,c,2)))){
C_save_and_reclaim((void *)f_3564,c,av);}
a=C_alloc(46);
t2=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_3567,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,a[9]=((C_word*)t0)[8],tmp=(C_word)a,a+=10,tmp);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_3581,a[2]=t2,tmp=(C_word)a,a+=3,tmp);
t4=C_s_a_i_times(&a,2,((C_word*)t0)[9],((C_word*)t0)[6]);
/* srfi-69.scm:500: scheme#floor */
t5=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t5;
av2[1]=t3;
av2[2]=t4;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}

/* k3565 in k3562 in k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3567(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(18,c,2)))){
C_save_and_reclaim((void *)f_3567,c,av);}
a=C_alloc(18);
t2=C_a_i_record(&a,13,lf[47],((C_word*)t0)[2],C_fix(0),((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[6],C_SCHEME_FALSE,C_SCHEME_FALSE,((C_word*)t0)[7],C_SCHEME_FALSE,((C_word*)t0)[8],t1);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3577,a[2]=t2,a[3]=((C_word*)t0)[9],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:503: *make-hash-function */
t4=C_fast_retrieve(lf[43]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[4];
f_3505(3,av2);}}

/* k3575 in k3565 in k3562 in k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3577(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3577,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(10),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k3579 in k3562 in k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3581(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3581,c,av);}
/* srfi-69.scm:500: scheme#inexact->exact */
t2=*((C_word*)lf[48]+1);{
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

/* k3587 in k3559 in srfi-69#*make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3589(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3589,c,av);}
/* srfi-69.scm:499: scheme#inexact->exact */
t2=*((C_word*)lf[48]+1);{
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

/* srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3604(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand((c-2)*C_SIZEOF_PAIR +48,c,2)))){
C_save_and_reclaim((void*)f_3604,c,av);}
a=C_alloc((c-2)*C_SIZEOF_PAIR+48);
t2=C_build_rest(&a,c,2,av);
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
t3=t2;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=*((C_word*)lf[53]+1);
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_SCHEME_FALSE;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_fix(307);
t10=(*a=C_VECTOR_TYPE|1,a[1]=t9,tmp=(C_word)a,a+=2,tmp);
t11=C_SCHEME_FALSE;
t12=(*a=C_VECTOR_TYPE|1,a[1]=t11,tmp=(C_word)a,a+=2,tmp);
t13=lf[58];
t14=(*a=C_VECTOR_TYPE|1,a[1]=t13,tmp=(C_word)a,a+=2,tmp);
t15=lf[59];
t16=(*a=C_VECTOR_TYPE|1,a[1]=t15,tmp=(C_word)a,a+=2,tmp);
t17=(*a=C_CLOSURE_TYPE|14,a[1]=(C_word)f_3606,a[2]=((C_word*)t0)[2],a[3]=t6,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],a[10]=((C_word*)t0)[9],a[11]=((C_word*)t0)[10],a[12]=((C_word*)t0)[11],a[13]=((C_word*)t0)[12],a[14]=((C_word*)t0)[13],tmp=(C_word)a,a+=15,tmp);
t18=(*a=C_CLOSURE_TYPE|12,a[1]=(C_word)f_3682,a[2]=t10,a[3]=t8,a[4]=t1,a[5]=t6,a[6]=t14,a[7]=t16,a[8]=t12,a[9]=t17,a[10]=((C_word*)t0)[7],a[11]=t2,a[12]=t4,tmp=(C_word)a,a+=13,tmp);
if(C_truep(C_i_nullp(((C_word*)t4)[1]))){
t19=t18;
f_3682(t19,C_SCHEME_UNDEFINED);}
else{
t19=C_i_car(((C_word*)t4)[1]);
t20=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3963,a[2]=t18,a[3]=t6,a[4]=t19,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:558: chicken.keyword#keyword? */
t21=C_fast_retrieve(lf[17]);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t21;
av2[1]=t20;
av2[2]=t19;
((C_proc)(void*)(*((C_word*)t21+1)))(3,av2);}}}

/* hash-for-test in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static C_word C_fcall f_3606(C_word t0){
C_word tmp;
C_word t1;
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
C_stack_overflow_check;{}
t1=C_eqp(((C_word*)t0)[2],((C_word*)((C_word*)t0)[3])[1]);
t2=(C_truep(t1)?t1:C_eqp(*((C_word*)lf[51]+1),((C_word*)((C_word*)t0)[3])[1]));
if(C_truep(t2)){
return(((C_word*)t0)[4]);}
else{
t3=C_eqp(((C_word*)t0)[5],((C_word*)((C_word*)t0)[3])[1]);
t4=(C_truep(t3)?t3:C_eqp(*((C_word*)lf[52]+1),((C_word*)((C_word*)t0)[3])[1]));
if(C_truep(t4)){
return(((C_word*)t0)[6]);}
else{
t5=C_eqp(((C_word*)t0)[7],((C_word*)((C_word*)t0)[3])[1]);
t6=(C_truep(t5)?t5:C_eqp(*((C_word*)lf[53]+1),((C_word*)((C_word*)t0)[3])[1]));
if(C_truep(t6)){
return(((C_word*)t0)[8]);}
else{
t7=C_eqp(((C_word*)t0)[9],((C_word*)((C_word*)t0)[3])[1]);
t8=(C_truep(t7)?t7:C_eqp(*((C_word*)lf[54]+1),((C_word*)((C_word*)t0)[3])[1]));
if(C_truep(t8)){
return(((C_word*)t0)[10]);}
else{
t9=C_eqp(((C_word*)t0)[11],((C_word*)((C_word*)t0)[3])[1]);
t10=(C_truep(t9)?t9:C_eqp(*((C_word*)lf[55]+1),((C_word*)((C_word*)t0)[3])[1]));
if(C_truep(t10)){
return(((C_word*)t0)[12]);}
else{
t11=C_eqp(((C_word*)t0)[13],((C_word*)((C_word*)t0)[3])[1]);
if(C_truep(t11)){
return((C_truep(t11)?((C_word*)t0)[14]:C_SCHEME_FALSE));}
else{
t12=C_eqp(*((C_word*)lf[56]+1),((C_word*)((C_word*)t0)[3])[1]);
return((C_truep(t12)?((C_word*)t0)[14]:C_SCHEME_FALSE));}}}}}}}

/* k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3682(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,0,2)))){
C_save_and_reclaim_args((void *)trf_3682,2,t0,t1);}
a=C_alloc(19);
t2=(*a=C_CLOSURE_TYPE|12,a[1]=(C_word)f_3685,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],a[11]=((C_word*)t0)[11],a[12]=((C_word*)t0)[12],tmp=(C_word)a,a+=13,tmp);
if(C_truep(C_i_nullp(((C_word*)((C_word*)t0)[12])[1]))){
t3=t2;
f_3685(t3,C_SCHEME_UNDEFINED);}
else{
t3=C_i_car(((C_word*)((C_word*)t0)[12])[1]);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3943,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[12],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:564: chicken.keyword#keyword? */
t5=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}}

/* k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3685(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(19,0,2)))){
C_save_and_reclaim_args((void *)trf_3685,2,t0,t1);}
a=C_alloc(19);
t2=(*a=C_CLOSURE_TYPE|12,a[1]=(C_word)f_3688,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],a[11]=((C_word*)t0)[11],a[12]=((C_word*)t0)[12],tmp=(C_word)a,a+=13,tmp);
if(C_truep(C_i_nullp(((C_word*)((C_word*)t0)[12])[1]))){
t3=t2;
f_3688(t3,C_SCHEME_UNDEFINED);}
else{
t3=C_i_car(((C_word*)((C_word*)t0)[12])[1]);
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3911,a[2]=t2,a[3]=t3,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[12],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:570: chicken.keyword#keyword? */
t5=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t5;
av2[1]=t4;
av2[2]=t3;
((C_proc)(void*)(*((C_word*)t5+1)))(3,av2);}}}

/* k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3688(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(23,0,3)))){
C_save_and_reclaim_args((void *)trf_3688,2,t0,t1);}
a=C_alloc(23);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_3691,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],tmp=(C_word)a,a+=11,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_3723,a[2]=((C_word*)t0)[11],a[3]=t4,a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[8],a[8]=((C_word*)t0)[6],a[9]=((C_word*)t0)[7],tmp=(C_word)a,a+=10,tmp));
t6=((C_word*)t4)[1];
f_3723(t6,t2,((C_word*)((C_word*)t0)[12])[1]);}

/* k3689 in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3691(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(16,c,3)))){
C_save_and_reclaim((void *)f_3691,c,av);}
a=C_alloc(16);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_3694,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],tmp=(C_word)a,a+=11,tmp);
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_3718,a[2]=t2,a[3]=((C_word*)t0)[6],a[4]=((C_word*)t0)[7],tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:621: chicken.flonum#fp< */
t4=*((C_word*)lf[65]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)((C_word*)t0)[7])[1];
av2[3]=((C_word*)((C_word*)t0)[6])[1];
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k3692 in k3689 in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3694(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_3694,c,av);}
a=C_alloc(11);
t2=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_3698,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],tmp=(C_word)a,a+=11,tmp);
/* srfi-69.scm:624: hash-table-canonical-length */
f_3475(t2,C_retrieve2(lf[40],C_text("srfi-69#constant652")),((C_word*)((C_word*)t0)[2])[1]);}

/* k3696 in k3692 in k3689 in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3698(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,c,8)))){
C_save_and_reclaim((void *)f_3698,c,av);}
a=C_alloc(10);
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,t1);
if(C_truep(((C_word*)((C_word*)t0)[3])[1])){
/* srfi-69.scm:634: *make-hash-table */
f_3557(((C_word*)t0)[4],((C_word*)((C_word*)t0)[5])[1],((C_word*)((C_word*)t0)[3])[1],((C_word*)((C_word*)t0)[2])[1],((C_word*)((C_word*)t0)[6])[1],((C_word*)((C_word*)t0)[7])[1],((C_word*)((C_word*)t0)[8])[1],C_SCHEME_END_OF_LIST);}
else{
t3=(
/* srfi-69.scm:627: hash-for-test */
  f_3606(((C_word*)t0)[9])
);
if(C_truep(t3)){
t4=C_mutate(((C_word *)((C_word*)t0)[3])+1,t3);
/* srfi-69.scm:634: *make-hash-table */
f_3557(((C_word*)t0)[4],((C_word*)((C_word*)t0)[5])[1],((C_word*)((C_word*)t0)[3])[1],((C_word*)((C_word*)t0)[2])[1],((C_word*)((C_word*)t0)[6])[1],((C_word*)((C_word*)t0)[7])[1],((C_word*)((C_word*)t0)[8])[1],C_SCHEME_END_OF_LIST);}
else{
t4=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_3714,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[10],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],a[9]=((C_word*)t0)[8],tmp=(C_word)a,a+=10,tmp);
/* srfi-69.scm:631: chicken.base#warning */
t5=C_fast_retrieve(lf[60]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=lf[61];
av2[3]=lf[62];
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}}}

/* k3712 in k3696 in k3692 in k3689 in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3714(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,8)))){
C_save_and_reclaim((void *)f_3714,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:634: *make-hash-table */
f_3557(((C_word*)t0)[4],((C_word*)((C_word*)t0)[5])[1],((C_word*)((C_word*)t0)[2])[1],((C_word*)((C_word*)t0)[6])[1],((C_word*)((C_word*)t0)[7])[1],((C_word*)((C_word*)t0)[8])[1],((C_word*)((C_word*)t0)[9])[1],C_SCHEME_END_OF_LIST);}

/* k3716 in k3689 in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3718(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,5)))){
C_save_and_reclaim((void *)f_3718,c,av);}
if(C_truep(t1)){
/* srfi-69.scm:622: chicken.base#error */
t2=*((C_word*)lf[63]+1);{
C_word *av2;
if(c >= 6) {
  av2=av;
} else {
  av2=C_alloc(6);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[61];
av2[3]=lf[64];
av2[4]=((C_word*)((C_word*)t0)[3])[1];
av2[5]=((C_word*)((C_word*)t0)[4])[1];
((C_proc)(void*)(*((C_word*)t2+1)))(6,av2);}}
else{
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
f_3694(2,av2);}}}

/* loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3723(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(17,0,3)))){
C_save_and_reclaim_args((void *)trf_3723,3,t0,t1,t2);}
a=C_alloc(17);
if(C_truep(C_i_nullp(t2))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=C_i_car(t2);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_3734,a[2]=t3,a[3]=((C_word*)t0)[2],tmp=(C_word)a,a+=4,tmp);
t5=(*a=C_CLOSURE_TYPE|12,a[1]=(C_word)f_3744,a[2]=t2,a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=t3,a[6]=((C_word*)t0)[4],a[7]=((C_word*)t0)[5],a[8]=((C_word*)t0)[6],a[9]=((C_word*)t0)[7],a[10]=((C_word*)t0)[8],a[11]=((C_word*)t0)[9],a[12]=t4,tmp=(C_word)a,a+=13,tmp);
/* srfi-69.scm:583: chicken.keyword#keyword? */
t6=C_fast_retrieve(lf[17]);{
C_word av2[3];
av2[0]=t6;
av2[1]=t5;
av2[2]=t3;
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}}

/* invarg-err in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_3734(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,5)))){
C_save_and_reclaim_args((void *)trf_3734,3,t0,t1,t2);}
/* srfi-69.scm:582: chicken.base#error */
t3=*((C_word*)lf[63]+1);{
C_word av2[6];
av2[0]=t3;
av2[1]=t1;
av2[2]=lf[61];
av2[3]=t2;
av2[4]=((C_word*)t0)[2];
av2[5]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(6,av2);}}

/* k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3744(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,c,2)))){
C_save_and_reclaim((void *)f_3744,c,av);}
a=C_alloc(13);
if(C_truep(t1)){
t2=C_u_i_cdr(((C_word*)t0)[2]);
t3=(*a=C_CLOSURE_TYPE|12,a[1]=(C_word)f_3748,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=t2,a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=((C_word*)t0)[10],a[11]=((C_word*)t0)[11],a[12]=((C_word*)t0)[12],tmp=(C_word)a,a+=13,tmp);
if(C_truep(C_i_pairp(t2))){
t4=t3;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_u_i_car(t2);
f_3748(2,av2);}}
else{
/* srfi-69.scm:587: invarg-err */
t4=((C_word*)t0)[12];
f_3734(t4,t3,lf[82]);}}
else{
/* srfi-69.scm:619: invarg-err */
t2=((C_word*)t0)[12];
f_3734(t2,((C_word*)t0)[4],lf[83]);}}

/* k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3748(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_3748,c,av);}
a=C_alloc(12);
t2=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_3751,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],tmp=(C_word)a,a+=5,tmp);
t3=C_eqp(((C_word*)t0)[5],lf[66]);
if(C_truep(t3)){
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3762,a[2]=((C_word*)t0)[6],a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:590: ##sys#check-closure */
t5=C_fast_retrieve(lf[67]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=t1;
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}
else{
t4=C_eqp(((C_word*)t0)[5],lf[68]);
if(C_truep(t4)){
t5=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3772,a[2]=((C_word*)t0)[7],a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:593: ##sys#check-closure */
t6=C_fast_retrieve(lf[67]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=t1;
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}
else{
t5=C_eqp(((C_word*)t0)[5],lf[69]);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3782,a[2]=t1,a[3]=((C_word*)t0)[8],a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:596: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t6;
av2[2]=t1;
av2[3]=lf[61];
tp(4,av2);}}
else{
t6=C_eqp(((C_word*)t0)[5],lf[71]);
if(C_truep(t6)){
t7=C_mutate(((C_word *)((C_word*)t0)[9])+1,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_3803,a[2]=t1,tmp=(C_word)a,a+=3,tmp));
/* srfi-69.scm:618: loop */
t8=((C_word*)((C_word*)t0)[2])[1];
f_3723(t8,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}
else{
t7=C_eqp(((C_word*)t0)[5],lf[72]);
if(C_truep(t7)){
t8=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3813,a[2]=((C_word*)t0)[10],a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:603: ##sys#check-inexact */
t9=C_fast_retrieve(lf[76]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t9;
av2[1]=t8;
av2[2]=t1;
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t9+1)))(4,av2);}}
else{
t8=C_eqp(((C_word*)t0)[5],lf[77]);
if(C_truep(t8)){
t9=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3836,a[2]=((C_word*)t0)[11],a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:608: ##sys#check-inexact */
t10=C_fast_retrieve(lf[76]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t10;
av2[1]=t9;
av2[2]=t1;
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t10+1)))(4,av2);}}
else{
t9=C_eqp(((C_word*)t0)[5],lf[79]);
if(C_truep(t9)){
if(C_truep(t1)){
/* srfi-69.scm:618: loop */
t10=((C_word*)((C_word*)t0)[2])[1];
f_3723(t10,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}
else{
/* srfi-69.scm:618: loop */
t10=((C_word*)((C_word*)t0)[2])[1];
f_3723(t10,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}}
else{
t10=C_eqp(((C_word*)t0)[5],lf[80]);
if(C_truep(t10)){
if(C_truep(t1)){
/* srfi-69.scm:618: loop */
t11=((C_word*)((C_word*)t0)[2])[1];
f_3723(t11,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}
else{
/* srfi-69.scm:618: loop */
t11=((C_word*)((C_word*)t0)[2])[1];
f_3723(t11,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}}
else{
/* srfi-69.scm:617: invarg-err */
t11=((C_word*)t0)[12];
f_3734(t11,t2,lf[81]);}}}}}}}}}

/* k3749 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3751(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3751,c,av);}
/* srfi-69.scm:618: loop */
t2=((C_word*)((C_word*)t0)[2])[1];
f_3723(t2,((C_word*)t0)[3],C_u_i_cdr(((C_word*)t0)[4]));}

/* k3760 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3762(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3762,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_3723(t3,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}

/* k3770 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3772(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3772,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_3723(t3,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}

/* k3780 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3782(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3782,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3785,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
if(C_truep(C_fixnum_lessp(C_fix(0),((C_word*)t0)[2]))){
t3=C_i_fixnum_min(C_fix(1073741823),((C_word*)t0)[2]);
t4=C_mutate(((C_word *)((C_word*)t0)[3])+1,t3);
/* srfi-69.scm:618: loop */
t5=((C_word*)((C_word*)t0)[4])[1];
f_3723(t5,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}
else{
/* srfi-69.scm:598: chicken.base#error */
t3=*((C_word*)lf[63]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[61];
av2[3]=lf[70];
av2[4]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k3783 in k3780 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3785(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3785,c,av);}
t2=C_i_fixnum_min(C_fix(1073741823),((C_word*)t0)[2]);
t3=C_set_block_item(((C_word*)t0)[3],0,t2);
/* srfi-69.scm:618: loop */
t4=((C_word*)((C_word*)t0)[4])[1];
f_3723(t4,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}

/* f_3803 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3803(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3803,c,av);}
t2=t1;{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k3811 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3813(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3813,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3816,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(C_truep(C_flonum_lessp(lf[73],((C_word*)t0)[3]))?C_flonum_lessp(((C_word*)t0)[3],lf[74]):C_SCHEME_FALSE);
if(C_truep(t3)){
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t5=((C_word*)((C_word*)t0)[4])[1];
f_3723(t5,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}
else{
/* srfi-69.scm:605: chicken.base#error */
t4=*((C_word*)lf[63]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=lf[61];
av2[3]=lf[75];
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}}

/* k3814 in k3811 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3816(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3816,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_3723(t3,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}

/* k3834 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3836(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3836,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_3839,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],tmp=(C_word)a,a+=7,tmp);
t3=(C_truep(C_flonum_lessp(lf[73],((C_word*)t0)[3]))?C_flonum_lessp(((C_word*)t0)[3],lf[74]):C_SCHEME_FALSE);
if(C_truep(t3)){
t4=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t5=((C_word*)((C_word*)t0)[4])[1];
f_3723(t5,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}
else{
/* srfi-69.scm:610: chicken.base#error */
t4=*((C_word*)lf[63]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t4;
av2[1]=t2;
av2[2]=lf[61];
av2[3]=lf[78];
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t4+1)))(5,av2);}}}

/* k3837 in k3834 in k3746 in k3742 in loop in k3686 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3839(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_3839,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
/* srfi-69.scm:618: loop */
t3=((C_word*)((C_word*)t0)[4])[1];
f_3723(t3,((C_word*)t0)[5],C_u_i_cdr(((C_word*)t0)[6]));}

/* k3909 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3911(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_3911,c,av);}
a=C_alloc(6);
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];
f_3688(t3,t2);}
else{
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3914,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[2],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:571: ##sys#check-fixnum */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[5]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[5]+1);
av2[1]=t2;
av2[2]=((C_word*)t0)[3];
av2[3]=lf[61];
tp(4,av2);}}}

/* k3912 in k3909 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3914(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,4)))){
C_save_and_reclaim((void *)f_3914,c,av);}
a=C_alloc(6);
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3917,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp);
if(C_truep(C_fixnum_lessp(C_fix(0),((C_word*)t0)[2]))){
t3=t2;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_SCHEME_UNDEFINED;
f_3917(2,av2);}}
else{
/* srfi-69.scm:573: chicken.base#error */
t3=*((C_word*)lf[63]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=lf[61];
av2[3]=lf[84];
av2[4]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}}

/* k3915 in k3912 in k3909 in k3683 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3917(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3917,c,av);}
t2=C_i_fixnum_min(C_fix(1073741823),((C_word*)t0)[2]);
t3=C_set_block_item(((C_word*)t0)[3],0,t2);
t4=C_i_cdr(((C_word*)((C_word*)t0)[4])[1]);
t5=C_mutate(((C_word *)((C_word*)t0)[4])+1,t4);
t6=((C_word*)t0)[5];
f_3688(t6,t5);}

/* k3941 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3943(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_3943,c,av);}
a=C_alloc(6);
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];
f_3685(t3,t2);}
else{
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3946,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[2],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:565: ##sys#check-closure */
t3=C_fast_retrieve(lf[67]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}}

/* k3944 in k3941 in k3680 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3946(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3946,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
t3=C_i_cdr(((C_word*)((C_word*)t0)[4])[1]);
t4=C_mutate(((C_word *)((C_word*)t0)[4])+1,t3);
t5=((C_word*)t0)[5];
f_3685(t5,t4);}

/* k3961 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3963(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_3963,c,av);}
a=C_alloc(6);
if(C_truep(t1)){
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];
f_3682(t3,t2);}
else{
t2=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_3966,a[2]=((C_word*)t0)[3],a[3]=((C_word*)t0)[4],a[4]=((C_word*)t0)[5],a[5]=((C_word*)t0)[2],tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:559: ##sys#check-closure */
t3=C_fast_retrieve(lf[67]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[4];
av2[3]=lf[61];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}}

/* k3964 in k3961 in srfi-69#make-hash-table in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3966(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3966,c,av);}
t2=C_mutate(((C_word *)((C_word*)t0)[2])+1,((C_word*)t0)[3]);
t3=C_i_cdr(((C_word*)((C_word*)t0)[4])[1]);
t4=C_mutate(((C_word *)((C_word*)t0)[4])+1,t3);
t5=((C_word*)t0)[5];
f_3682(t5,t4);}

/* srfi-69#hash-table? in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3973(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_3973,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=C_i_structurep(t2,lf[47]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* srfi-69#hash-table-size in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3979(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3979,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[87]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(2));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-equivalence-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3988(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3988,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[89]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(3));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-hash-function in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_3997(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_3997,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[91]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(4));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-min-load in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4006(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4006,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[93]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(5));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-max-load in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4015(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4015,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[95]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(6));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-weak-keys in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4024(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4024,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[97]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(7));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-weak-values in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4033(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4033,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[99]);
t4=t1;{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_slot(t2,C_fix(8));
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* srfi-69#hash-table-has-initial? in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4042(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4042,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[101]);
t4=C_slot(t2,C_fix(9));
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=(C_truep(t4)?C_SCHEME_TRUE:C_SCHEME_FALSE);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}

/* srfi-69#hash-table-initial in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4054(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4054,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[103]);
t4=C_slot(t2,C_fix(9));
if(C_truep(t4)){
/* srfi-69.scm:679: thunk */
t5=t4;{
C_word *av2=av;
av2[0]=t5;
av2[1]=t1;
((C_proc)C_fast_retrieve_proc(t5))(2,av2);}}
else{
t5=t1;{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* doloop842 in k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4081(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,0,3)))){
C_save_and_reclaim_args((void *)trf_4081,3,t0,t1,t2);}
a=C_alloc(13);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_4091,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t4=C_slot(((C_word*)t0)[4],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4104,a[2]=((C_word*)t0)[5],a[3]=t6,a[4]=((C_word*)t0)[6],a[5]=((C_word*)t0)[7],tmp=(C_word)a,a+=6,tmp));
t8=((C_word*)t6)[1];
f_4104(t8,t3,t4);}}

/* k4089 in doloop842 in k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4091(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4091,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_4081(t2,((C_word*)t0)[3],C_fixnum_plus(((C_word*)t0)[4],C_fix(1)));}

/* loop in doloop842 in k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4104(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,3)))){
C_save_and_reclaim_args((void *)trf_4104,3,t0,t1,t2);}
a=C_alloc(8);
if(C_truep(C_i_nullp(t2))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4120,a[2]=t3,a[3]=t4,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=t1,a[7]=t2,tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:692: hash */
t6=((C_word*)t0)[4];{
C_word av2[4];
av2[0]=t6;
av2[1]=t5;
av2[2]=t4;
av2[3]=((C_word*)t0)[5];
((C_proc)C_fast_retrieve_proc(t6))(4,av2);}}}

/* k4118 in loop in doloop842 in k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4120(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,2)))){
C_save_and_reclaim((void *)f_4120,c,av);}
a=C_alloc(6);
t2=C_slot(((C_word*)t0)[2],C_fix(1));
t3=C_a_i_cons(&a,2,((C_word*)t0)[3],t2);
t4=C_slot(((C_word*)t0)[4],t1);
t5=C_a_i_cons(&a,2,t3,t4);
t6=C_i_setslot(((C_word*)t0)[4],t1,t5);
/* srfi-69.scm:695: loop */
t7=((C_word*)((C_word*)t0)[5])[1];
f_4104(t7,((C_word*)t0)[6],C_slot(((C_word*)t0)[7],C_fix(1)));}

/* srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4148(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_4148,c,av);}
a=C_alloc(6);
t5=C_fixnum_times(t4,C_fix(2));
t6=C_i_fixnum_min(C_fix(1073741823),t5);
t7=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4155,a[2]=t2,a[3]=t1,a[4]=t3,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:701: hash-table-canonical-length */
f_3475(t7,C_retrieve2(lf[40],C_text("srfi-69#constant652")),t6);}

/* k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4155(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4155,c,av);}
a=C_alloc(43);
t2=C_slot(((C_word*)t0)[2],C_fix(5));
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4161,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4198,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=C_s_a_i_times(&a,2,((C_word*)t0)[5],t2);
/* srfi-69.scm:703: scheme#floor */
t6=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t6;
av2[1]=t4;
av2[2]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}

/* k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4161(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4161,c,av);}
a=C_alloc(43);
t2=C_slot(((C_word*)t0)[2],C_fix(6));
t3=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4167,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4190,a[2]=t3,tmp=(C_word)a,a+=3,tmp);
t5=C_s_a_i_times(&a,2,((C_word*)t0)[6],t2);
/* srfi-69.scm:705: scheme#floor */
t6=*((C_word*)lf[49]+1);{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t6;
av2[1]=t4;
av2[2]=t5;
((C_proc)(void*)(*((C_word*)t6+1)))(3,av2);}}

/* k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4167(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_4167,c,av);}
a=C_alloc(7);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4170,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t1,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:706: scheme#make-vector */
t3=*((C_word*)lf[50]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}

/* k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4170(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(17,c,3)))){
C_save_and_reclaim((void *)f_4170,c,av);}
a=C_alloc(17);
t2=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4173,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp);
t3=C_slot(((C_word*)t0)[2],C_fix(10));
t4=C_block_size(((C_word*)t0)[6]);
t5=C_block_size(t1);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4081,a[2]=t4,a[3]=t7,a[4]=((C_word*)t0)[6],a[5]=t1,a[6]=t3,a[7]=t5,tmp=(C_word)a,a+=8,tmp));
t9=((C_word*)t7)[1];
f_4081(t9,t2,C_fix(0));}

/* k4171 in k4168 in k4165 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4173(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4173,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(1),((C_word*)t0)[3]);
t3=C_i_setslot(((C_word*)t0)[2],C_fix(11),((C_word*)t0)[4]);
t4=((C_word*)t0)[5];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_i_setslot(((C_word*)t0)[2],C_fix(12),((C_word*)t0)[6]);
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}

/* k4188 in k4159 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4190(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4190,c,av);}
/* srfi-69.scm:705: scheme#inexact->exact */
t2=*((C_word*)lf[48]+1);{
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

/* k4196 in k4153 in srfi-69#hash-table-resize! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4198(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4198,c,av);}
/* srfi-69.scm:703: scheme#inexact->exact */
t2=*((C_word*)lf[48]+1);{
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

/* srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4208(C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_4208,2,t1,t2);}
a=C_alloc(6);
t3=C_slot(t2,C_fix(1));
t4=C_block_size(t3);
t5=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4218,a[2]=t2,a[3]=t1,a[4]=t4,a[5]=t3,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:730: make-vector */
t6=*((C_word*)lf[50]+1);{
C_word av2[4];
av2[0]=t6;
av2[1]=t5;
av2[2]=t4;
av2[3]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4218(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_4218,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4221,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
t3=C_SCHEME_UNDEFINED;
t4=(*a=C_VECTOR_TYPE|1,a[1]=t3,tmp=(C_word)a,a+=2,tmp);
t5=C_set_block_item(t4,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4237,a[2]=((C_word*)t0)[4],a[3]=((C_word*)t0)[2],a[4]=t1,a[5]=t4,a[6]=((C_word*)t0)[5],tmp=(C_word)a,a+=7,tmp));
t6=((C_word*)t4)[1];
f_4237(t6,t2,C_fix(0));}

/* k4219 in k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4221(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4221,c,av);}
t2=C_slot(((C_word*)t0)[2],C_fix(2));
t3=C_i_setslot(t1,C_fix(2),t2);
t4=C_slot(((C_word*)t0)[2],C_fix(10));
t5=C_i_setslot(t1,C_fix(10),t4);
t6=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* doloop875 in k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4237(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,8)))){
C_save_and_reclaim_args((void *)trf_4237,3,t0,t1,t2);}
a=C_alloc(11);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
/* srfi-69.scm:733: *make-hash-table */
f_3557(t1,C_slot(((C_word*)t0)[3],C_fix(3)),C_slot(((C_word*)t0)[3],C_fix(4)),C_slot(((C_word*)t0)[3],C_fix(2)),C_slot(((C_word*)t0)[3],C_fix(5)),C_slot(((C_word*)t0)[3],C_fix(6)),C_slot(((C_word*)t0)[3],C_fix(9)),C_a_i_list(&a,1,((C_word*)t0)[4]));}
else{
t3=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4293,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=((C_word*)t0)[5],a[5]=t1,tmp=(C_word)a,a+=6,tmp);
t4=C_slot(((C_word*)t0)[6],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4299,a[2]=t6,tmp=(C_word)a,a+=3,tmp));
t8=((C_word*)t6)[1];
f_4299(t8,t3,t4);}}

/* k4291 in doloop875 in k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4293(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4293,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],((C_word*)t0)[3],t1);
t3=((C_word*)((C_word*)t0)[4])[1];
f_4237(t3,((C_word*)t0)[5],C_fixnum_plus(((C_word*)t0)[3],C_fix(1)));}

/* copy-loop in doloop875 in k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4299(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,0,2)))){
C_save_and_reclaim_args((void *)trf_4299,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nullp(t2))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_slot(t3,C_fix(1));
t6=C_a_i_cons(&a,2,t4,t5);
t7=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4320,a[2]=t1,a[3]=t6,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:745: copy-loop */
t9=t7;
t10=C_slot(t2,C_fix(1));
t1=t9;
t2=t10;
goto loop;}}

/* k4318 in copy-loop in doloop875 in k4216 in srfi-69#*hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4320(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_4320,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,((C_word*)t0)[3],t1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* srfi-69#hash-table-copy in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4334(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word t4;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4334,c,av);}
t3=C_i_check_structure_2(t2,lf[47],lf[107]);
/* srfi-69.scm:754: *hash-table-copy */
f_4208(t1,t2);}

/* srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4343(C_word c,C_word *av){
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
if(c<5) C_bad_min_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,2)))){
C_save_and_reclaim((void *)f_4343,c,av);}
a=C_alloc(11);
t5=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4347,a[2]=t2,a[3]=((C_word*)t0)[2],a[4]=t3,a[5]=t4,a[6]=t1,tmp=(C_word)a,a+=7,tmp);
if(C_truep(C_rest_nullp(c,5))){
t6=C_slot(t2,C_fix(9));
if(C_truep(t6)){
t7=t5;
f_4347(t7,t6);}
else{
t7=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4561,a[2]=t3,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
t8=t5;
f_4347(t8,t7);}}
else{
t6=t5;
f_4347(t6,C_get_rest_arg(c,5,av,5,t0));}}

/* k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4347(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,3)))){
C_save_and_reclaim_args((void *)trf_4347,2,t0,t1);}
a=C_alloc(8);
t2=C_i_check_structure_2(((C_word*)t0)[2],lf[47],lf[109]);
t3=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4353,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=t1,a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:774: ##sys#check-closure */
t4=C_fast_retrieve(lf[67]);{
C_word av2[4];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[5];
av2[3]=lf[109];
((C_proc)(void*)(*((C_word*)t4+1)))(4,av2);}}

/* k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4353(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_4353,c,av);}
a=C_alloc(8);
t2=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4356,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:775: ##sys#check-closure */
t3=C_fast_retrieve(lf[67]);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=((C_word*)t0)[6];
av2[3]=lf[109];
((C_proc)(void*)(*((C_word*)t3+1)))(4,av2);}}

/* k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4356(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(15,c,2)))){
C_save_and_reclaim((void *)f_4356,c,av);}
a=C_alloc(15);
t2=C_slot(((C_word*)t0)[2],C_fix(2));
t3=C_fixnum_plus(t2,C_fix(1));
t4=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4397,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[7],tmp=(C_word)a,a+=9,tmp);
t5=C_slot(((C_word*)t0)[2],C_fix(1));
t6=C_slot(((C_word*)t0)[2],C_fix(11));
t7=C_slot(((C_word*)t0)[2],C_fix(12));
t8=C_block_size(t5);
t9=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4379,a[2]=t4,a[3]=((C_word*)t0)[2],a[4]=t5,a[5]=t8,tmp=(C_word)a,a+=6,tmp);
if(C_truep(C_fixnum_lessp(t8,C_fix(1073741823)))){
t10=C_fixnum_less_or_equal_p(t6,t3);
t11=t9;
f_4379(t11,(C_truep(t10)?C_fixnum_less_or_equal_p(t3,t7):C_SCHEME_FALSE));}
else{
t10=t9;
f_4379(t10,C_SCHEME_FALSE);}}

/* k4377 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4379(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_4379,2,t0,t1);}
if(C_truep(t1)){
/* srfi-69.scm:721: hash-table-resize! */
t2=C_fast_retrieve(lf[104]);{
C_word av2[5];
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
f_4148(5,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=t2;
f_4397(2,av2);}}}

/* k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4397(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4397,c,av);}
a=C_alloc(11);
t2=C_slot(((C_word*)t0)[2],C_fix(10));
t3=C_slot(((C_word*)t0)[2],C_fix(3));
t4=C_slot(((C_word*)t0)[2],C_fix(1));
t5=C_block_size(t4);
t6=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_4412,a[2]=t4,a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[5],a[8]=((C_word*)t0)[6],a[9]=((C_word*)t0)[7],a[10]=((C_word*)t0)[8],tmp=(C_word)a,a+=11,tmp);
/* srfi-69.scm:782: hash */
t7=t2;{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=((C_word*)t0)[4];
av2[3]=t5;
((C_proc)C_fast_retrieve_proc(t7))(4,av2);}}

/* k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4412(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4412,c,av);}
a=C_alloc(14);
t2=C_slot(((C_word*)t0)[2],t1);
t3=C_eqp(((C_word*)t0)[3],((C_word*)t0)[4]);
if(C_truep(t3)){
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_4426,a[2]=((C_word*)t0)[5],a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=t5,tmp=(C_word)a,a+=11,tmp));
t7=((C_word*)t5)[1];
f_4426(t7,((C_word*)t0)[10],t2);}
else{
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|11,a[1]=(C_word)f_4489,a[2]=((C_word*)t0)[5],a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=t5,a[11]=((C_word*)t0)[4],tmp=(C_word)a,a+=12,tmp));
t7=((C_word*)t5)[1];
f_4489(t7,((C_word*)t0)[10],t2);}}

/* loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4426(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,0,2)))){
C_save_and_reclaim_args((void *)trf_4426,3,t0,t1,t2);}
a=C_alloc(13);
if(C_truep(C_i_nullp(t2))){
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4436,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,tmp=(C_word)a,a+=9,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4454,a[2]=((C_word*)t0)[8],a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:788: thunk */
t5=((C_word*)t0)[9];{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)C_fast_retrieve_proc(t5))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_eqp(((C_word*)t0)[2],t4);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4466,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:794: func */
t7=((C_word*)t0)[8];{
C_word av2[3];
av2[0]=t7;
av2[1]=t6;
av2[2]=C_slot(t3,C_fix(1));
((C_proc)C_fast_retrieve_proc(t7))(3,av2);}}
else{
/* srfi-69.scm:797: loop */
t8=t1;
t9=C_slot(t2,C_fix(1));
t1=t8;
t2=t9;
goto loop;}}}

/* k4434 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4436(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_4436,c,av);}
a=C_alloc(6);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_a_i_cons(&a,2,t2,((C_word*)t0)[3]);
t4=C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],t3);
t5=C_i_set_i_slot(((C_word*)t0)[6],C_fix(2),((C_word*)t0)[7]);
t6=((C_word*)t0)[8];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k4452 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4454(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4454,c,av);}
/* srfi-69.scm:788: func */
t2=((C_word*)t0)[2];{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
av2[2]=t1;
((C_proc)C_fast_retrieve_proc(t2))(3,av2);}}

/* k4464 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4466(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4466,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(1),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4489(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(13,0,3)))){
C_save_and_reclaim_args((void *)trf_4489,3,t0,t1,t2);}
a=C_alloc(13);
if(C_truep(C_i_nullp(t2))){
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4499,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,tmp=(C_word)a,a+=9,tmp);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4517,a[2]=((C_word*)t0)[8],a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:801: thunk */
t5=((C_word*)t0)[9];{
C_word av2[2];
av2[0]=t5;
av2[1]=t4;
((C_proc)C_fast_retrieve_proc(t5))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4526,a[2]=t3,a[3]=t1,a[4]=((C_word*)t0)[8],a[5]=((C_word*)t0)[10],a[6]=t2,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:806: test */
t5=((C_word*)t0)[11];{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[2];
av2[3]=C_slot(t3,C_fix(0));
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}}

/* k4497 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4499(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_4499,c,av);}
a=C_alloc(6);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_a_i_cons(&a,2,t2,((C_word*)t0)[3]);
t4=C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],t3);
t5=C_i_set_i_slot(((C_word*)t0)[6],C_fix(2),((C_word*)t0)[7]);
t6=((C_word*)t0)[8];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k4515 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4517(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4517,c,av);}
/* srfi-69.scm:801: func */
t2=((C_word*)t0)[2];{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
av2[2]=t1;
((C_proc)C_fast_retrieve_proc(t2))(3,av2);}}

/* k4524 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4526(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_4526,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4529,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:807: func */
t3=((C_word*)t0)[4];{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_slot(((C_word*)t0)[2],C_fix(1));
((C_proc)C_fast_retrieve_proc(t3))(3,av2);}}
else{
/* srfi-69.scm:810: loop */
t2=((C_word*)((C_word*)t0)[5])[1];
f_4489(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[6],C_fix(1)));}}

/* k4527 in k4524 in loop in k4410 in k4395 in k4354 in k4351 in k4345 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4529(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4529,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(1),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* f_4561 in srfi-69#hash-table-update! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4561(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,6)))){
C_save_and_reclaim((void *)f_4561,c,av);}
/* srfi-69.scm:769: ##sys#signal-hook */
t2=C_fast_retrieve(lf[7]);{
C_word *av2;
if(c >= 7) {
  av2=av;
} else {
  av2=C_alloc(7);
}
av2[0]=t2;
av2[1]=t1;
av2[2]=lf[110];
av2[3]=lf[109];
av2[4]=lf[111];
av2[5]=((C_word*)t0)[2];
av2[6]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(7,av2);}}

/* srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4570(C_word t0,C_word t1,C_word t2,C_word t3,C_word t4,C_word t5){
C_word tmp;
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
if(C_unlikely(!C_demand(C_calculate_demand(15,0,2)))){
C_save_and_reclaim_args((void *)trf_4570,6,t0,t1,t2,t3,t4,t5);}
a=C_alloc(15);
t6=C_slot(t2,C_fix(2));
t7=C_fixnum_plus(t6,C_fix(1));
t8=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4612,a[2]=t2,a[3]=((C_word*)t0)[2],a[4]=t3,a[5]=t7,a[6]=t4,a[7]=t5,a[8]=t1,tmp=(C_word)a,a+=9,tmp);
t9=C_slot(t2,C_fix(1));
t10=C_slot(t2,C_fix(11));
t11=C_slot(t2,C_fix(12));
t12=C_block_size(t9);
t13=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4594,a[2]=t8,a[3]=t2,a[4]=t9,a[5]=t12,tmp=(C_word)a,a+=6,tmp);
if(C_truep(C_fixnum_lessp(t12,C_fix(1073741823)))){
t14=C_fixnum_less_or_equal_p(t10,t7);
t15=t13;
f_4594(t15,(C_truep(t14)?C_fixnum_less_or_equal_p(t7,t11):C_SCHEME_FALSE));}
else{
t14=t13;
f_4594(t14,C_SCHEME_FALSE);}}

/* k4592 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4594(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_4594,2,t0,t1);}
if(C_truep(t1)){
/* srfi-69.scm:721: hash-table-resize! */
t2=C_fast_retrieve(lf[104]);{
C_word av2[5];
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
f_4148(5,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=t2;
f_4612(2,av2);}}}

/* k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4612(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4612,c,av);}
a=C_alloc(11);
t2=C_slot(((C_word*)t0)[2],C_fix(10));
t3=C_slot(((C_word*)t0)[2],C_fix(3));
t4=C_slot(((C_word*)t0)[2],C_fix(1));
t5=C_block_size(t4);
t6=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_4627,a[2]=t4,a[3]=((C_word*)t0)[3],a[4]=t3,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[2],a[7]=((C_word*)t0)[5],a[8]=((C_word*)t0)[6],a[9]=((C_word*)t0)[7],a[10]=((C_word*)t0)[8],tmp=(C_word)a,a+=11,tmp);
/* srfi-69.scm:821: hash */
t7=t2;{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=((C_word*)t0)[4];
av2[3]=t5;
((C_proc)C_fast_retrieve_proc(t7))(4,av2);}}

/* k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4627(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4627,c,av);}
a=C_alloc(14);
t2=C_slot(((C_word*)t0)[2],t1);
t3=C_eqp(((C_word*)t0)[3],((C_word*)t0)[4]);
if(C_truep(t3)){
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_4641,a[2]=((C_word*)t0)[5],a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=t5,tmp=(C_word)a,a+=11,tmp));
t7=((C_word*)t5)[1];
f_4641(t7,((C_word*)t0)[10],t2);}
else{
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|11,a[1]=(C_word)f_4700,a[2]=((C_word*)t0)[5],a[3]=t2,a[4]=((C_word*)t0)[2],a[5]=t1,a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=((C_word*)t0)[8],a[9]=((C_word*)t0)[9],a[10]=t5,a[11]=((C_word*)t0)[4],tmp=(C_word)a,a+=12,tmp));
t7=((C_word*)t5)[1];
f_4700(t7,((C_word*)t0)[10],t2);}}

/* loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4641(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,2)))){
C_save_and_reclaim_args((void *)trf_4641,3,t0,t1,t2);}
a=C_alloc(9);
if(C_truep(C_i_nullp(t2))){
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4651,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,tmp=(C_word)a,a+=9,tmp);
/* srfi-69.scm:827: func */
t4=((C_word*)t0)[8];{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[9];
((C_proc)C_fast_retrieve_proc(t4))(3,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_eqp(((C_word*)t0)[2],t4);
if(C_truep(t5)){
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4677,a[2]=t3,a[3]=t1,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:833: func */
t7=((C_word*)t0)[8];{
C_word av2[3];
av2[0]=t7;
av2[1]=t6;
av2[2]=C_slot(t3,C_fix(1));
((C_proc)C_fast_retrieve_proc(t7))(3,av2);}}
else{
/* srfi-69.scm:836: loop */
t8=t1;
t9=C_slot(t2,C_fix(1));
t1=t8;
t2=t9;
goto loop;}}}

/* k4649 in loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4651(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_4651,c,av);}
a=C_alloc(6);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_a_i_cons(&a,2,t2,((C_word*)t0)[3]);
t4=C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],t3);
t5=C_i_set_i_slot(((C_word*)t0)[6],C_fix(2),((C_word*)t0)[7]);
t6=((C_word*)t0)[8];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k4675 in loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4677(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4677,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(1),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4700(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(9,0,3)))){
C_save_and_reclaim_args((void *)trf_4700,3,t0,t1,t2);}
a=C_alloc(9);
if(C_truep(C_i_nullp(t2))){
t3=(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_4710,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=((C_word*)t0)[5],a[6]=((C_word*)t0)[6],a[7]=((C_word*)t0)[7],a[8]=t1,tmp=(C_word)a,a+=9,tmp);
/* srfi-69.scm:840: func */
t4=((C_word*)t0)[8];{
C_word av2[3];
av2[0]=t4;
av2[1]=t3;
av2[2]=((C_word*)t0)[9];
((C_proc)C_fast_retrieve_proc(t4))(3,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4733,a[2]=t3,a[3]=t1,a[4]=((C_word*)t0)[8],a[5]=((C_word*)t0)[10],a[6]=t2,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:845: test */
t5=((C_word*)t0)[11];{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[2];
av2[3]=C_slot(t3,C_fix(0));
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}}

/* k4708 in loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4710(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,1)))){
C_save_and_reclaim((void *)f_4710,c,av);}
a=C_alloc(6);
t2=C_a_i_cons(&a,2,((C_word*)t0)[2],t1);
t3=C_a_i_cons(&a,2,t2,((C_word*)t0)[3]);
t4=C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],t3);
t5=C_i_set_i_slot(((C_word*)t0)[6],C_fix(2),((C_word*)t0)[7]);
t6=((C_word*)t0)[8];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}

/* k4731 in loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4733(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_4733,c,av);}
a=C_alloc(4);
if(C_truep(t1)){
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4736,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:846: func */
t3=((C_word*)t0)[4];{
C_word *av2;
if(c >= 3) {
  av2=av;
} else {
  av2=C_alloc(3);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_slot(((C_word*)t0)[2],C_fix(1));
((C_proc)C_fast_retrieve_proc(t3))(3,av2);}}
else{
/* srfi-69.scm:849: loop */
t2=((C_word*)((C_word*)t0)[5])[1];
f_4700(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[6],C_fix(1)));}}

/* k4734 in k4731 in loop in k4625 in k4610 in srfi-69#*hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4736(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4736,c,av);}
t2=C_i_setslot(((C_word*)t0)[2],C_fix(1),t1);
t3=((C_word*)t0)[3];{
C_word *av2=av;
av2[0]=t3;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* srfi-69#hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4760(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_4760,c,av);}
a=C_alloc(7);
t6=C_i_check_structure_2(t2,lf[47],lf[114]);
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4767,a[2]=t1,a[3]=t2,a[4]=t3,a[5]=t4,a[6]=t5,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:853: ##sys#check-closure */
t8=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t8;
av2[1]=t7;
av2[2]=t4;
av2[3]=lf[114];
((C_proc)(void*)(*((C_word*)t8+1)))(4,av2);}}

/* k4765 in srfi-69#hash-table-update!/default in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4767(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,5)))){
C_save_and_reclaim((void *)f_4767,c,av);}
/* srfi-69.scm:854: *hash-table-update!/default */
t2=C_retrieve2(lf[112],C_text("srfi-69#\052hash-table-update!/default"));
f_4570(t2,((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[6]);}

/* srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4772(C_word c,C_word *av){
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
C_word t12;
C_word t13;
C_word t14;
C_word t15;
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,c,2)))){
C_save_and_reclaim((void *)f_4772,c,av);}
a=C_alloc(14);
t5=C_i_check_structure_2(t2,lf[47],lf[116]);
t6=C_slot(t2,C_fix(2));
t7=C_fixnum_plus(t6,C_fix(1));
t8=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4817,a[2]=t2,a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=t3,a[6]=t4,a[7]=t7,tmp=(C_word)a,a+=8,tmp);
t9=C_slot(t2,C_fix(1));
t10=C_slot(t2,C_fix(11));
t11=C_slot(t2,C_fix(12));
t12=C_block_size(t9);
t13=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_4799,a[2]=t8,a[3]=t2,a[4]=t9,a[5]=t12,tmp=(C_word)a,a+=6,tmp);
if(C_truep(C_fixnum_lessp(t12,C_fix(1073741823)))){
t14=C_fixnum_less_or_equal_p(t10,t7);
t15=t13;
f_4799(t15,(C_truep(t14)?C_fixnum_less_or_equal_p(t7,t11):C_SCHEME_FALSE));}
else{
t14=t13;
f_4799(t14,C_SCHEME_FALSE);}}

/* k4797 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4799(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,4)))){
C_save_and_reclaim_args((void *)trf_4799,2,t0,t1);}
if(C_truep(t1)){
/* srfi-69.scm:721: hash-table-resize! */
t2=C_fast_retrieve(lf[104]);{
C_word av2[5];
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=((C_word*)t0)[3];
av2[3]=((C_word*)t0)[4];
av2[4]=((C_word*)t0)[5];
f_4148(5,av2);}}
else{
t2=C_SCHEME_UNDEFINED;
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=t2;
f_4817(2,av2);}}}

/* k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4817(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4817,c,av);}
a=C_alloc(10);
t2=C_slot(((C_word*)t0)[2],C_fix(10));
t3=C_slot(((C_word*)t0)[2],C_fix(3));
t4=C_slot(((C_word*)t0)[2],C_fix(1));
t5=C_block_size(t4);
t6=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_4832,a[2]=t4,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[4],a[5]=t3,a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],a[8]=((C_word*)t0)[2],a[9]=((C_word*)t0)[7],tmp=(C_word)a,a+=10,tmp);
/* srfi-69.scm:866: hash */
t7=t2;{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t7;
av2[1]=t6;
av2[2]=((C_word*)t0)[5];
av2[3]=t5;
((C_proc)C_fast_retrieve_proc(t7))(4,av2);}}

/* k4830 in k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4832(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_4832,c,av);}
a=C_alloc(16);
t2=C_slot(((C_word*)t0)[2],t1);
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4838,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
t4=C_eqp(((C_word*)t0)[4],((C_word*)t0)[5]);
if(C_truep(t4)){
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_4849,a[2]=((C_word*)t0)[6],a[3]=((C_word*)t0)[7],a[4]=t2,a[5]=((C_word*)t0)[2],a[6]=t1,a[7]=((C_word*)t0)[8],a[8]=((C_word*)t0)[9],a[9]=t6,tmp=(C_word)a,a+=10,tmp));
t8=((C_word*)t6)[1];
f_4849(t8,t3,t2);}
else{
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_4898,a[2]=((C_word*)t0)[6],a[3]=((C_word*)t0)[7],a[4]=t2,a[5]=((C_word*)t0)[2],a[6]=t1,a[7]=((C_word*)t0)[8],a[8]=((C_word*)t0)[9],a[9]=t6,a[10]=((C_word*)t0)[5],tmp=(C_word)a,a+=11,tmp));
t8=((C_word*)t6)[1];
f_4898(t8,t3,t2);}}

/* k4836 in k4830 in k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4838(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_4838,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=*((C_word*)lf[117]+1);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* loop in k4830 in k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4849(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,2)))){
C_save_and_reclaim_args((void *)trf_4849,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_nullp(t2))){
t3=C_a_i_cons(&a,2,((C_word*)t0)[2],((C_word*)t0)[3]);
t4=C_a_i_cons(&a,2,t3,((C_word*)t0)[4]);
t5=C_i_setslot(((C_word*)t0)[5],((C_word*)t0)[6],t4);
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_i_set_i_slot(((C_word*)t0)[7],C_fix(2),((C_word*)t0)[8]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_eqp(((C_word*)t0)[2],t4);
if(C_truep(t5)){
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_i_setslot(t3,C_fix(1),((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
/* srfi-69.scm:878: loop */
t7=t1;
t8=C_slot(t2,C_fix(1));
t1=t7;
t2=t8;
goto loop;}}}

/* loop in k4830 in k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_4898(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,3)))){
C_save_and_reclaim_args((void *)trf_4898,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nullp(t2))){
t3=C_a_i_cons(&a,2,((C_word*)t0)[2],((C_word*)t0)[3]);
t4=C_a_i_cons(&a,2,t3,((C_word*)t0)[4]);
t5=C_i_setslot(((C_word*)t0)[5],((C_word*)t0)[6],t4);
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_i_set_i_slot(((C_word*)t0)[7],C_fix(2),((C_word*)t0)[8]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_4928,a[2]=t1,a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[9],a[6]=t2,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:886: test */
t5=((C_word*)t0)[10];{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[2];
av2[3]=C_slot(t3,C_fix(0));
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}}

/* k4926 in loop in k4830 in k4815 in srfi-69#hash-table-set! in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4928(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_4928,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_i_setslot(((C_word*)t0)[3],C_fix(1),((C_word*)t0)[4]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
/* srfi-69.scm:888: loop */
t2=((C_word*)((C_word*)t0)[5])[1];
f_4898(t2,((C_word*)t0)[2],C_slot(((C_word*)t0)[6],C_fix(1)));}}

/* k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4950(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(44,c,5)))){
C_save_and_reclaim((void *)f_4950,c,av);}
a=C_alloc(44);
t2=C_mutate((C_word*)lf[118]+1 /* (set! srfi-69#hash-table-ref ...) */,t1);
t3=*((C_word*)lf[51]+1);
t4=C_mutate((C_word*)lf[119]+1 /* (set! srfi-69#hash-table-ref/default ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_4952,a[2]=t3,tmp=(C_word)a,a+=3,tmp));
t5=*((C_word*)lf[51]+1);
t6=C_mutate((C_word*)lf[121]+1 /* (set! srfi-69#hash-table-exists? ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5058,a[2]=t5,tmp=(C_word)a,a+=3,tmp));
t7=*((C_word*)lf[51]+1);
t8=C_mutate((C_word*)lf[123]+1 /* (set! srfi-69#hash-table-delete! ...) */,(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5166,a[2]=t7,tmp=(C_word)a,a+=3,tmp));
t9=C_mutate((C_word*)lf[125]+1 /* (set! srfi-69#hash-table-remove! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5297,tmp=(C_word)a,a+=2,tmp));
t10=C_mutate((C_word*)lf[127]+1 /* (set! srfi-69#hash-table-clear! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5393,tmp=(C_word)a,a+=2,tmp));
t11=C_mutate(&lf[130] /* (set! srfi-69#*hash-table-merge! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5409,tmp=(C_word)a,a+=2,tmp));
t12=C_mutate((C_word*)lf[131]+1 /* (set! srfi-69#hash-table-merge! ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5477,tmp=(C_word)a,a+=2,tmp));
t13=C_mutate((C_word*)lf[133]+1 /* (set! srfi-69#hash-table-merge ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5489,tmp=(C_word)a,a+=2,tmp));
t14=C_mutate((C_word*)lf[135]+1 /* (set! srfi-69#hash-table->alist ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5505,tmp=(C_word)a,a+=2,tmp));
t15=C_mutate((C_word*)lf[137]+1 /* (set! srfi-69#alist->hash-table ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5578,tmp=(C_word)a,a+=2,tmp));
t16=C_mutate((C_word*)lf[139]+1 /* (set! srfi-69#hash-table-keys ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5632,tmp=(C_word)a,a+=2,tmp));
t17=C_mutate((C_word*)lf[141]+1 /* (set! srfi-69#hash-table-values ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5697,tmp=(C_word)a,a+=2,tmp));
t18=C_mutate(&lf[143] /* (set! srfi-69#*hash-table-for-each ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5762,tmp=(C_word)a,a+=2,tmp));
t19=C_mutate(&lf[145] /* (set! srfi-69#*hash-table-fold ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5835,tmp=(C_word)a,a+=2,tmp));
t20=C_mutate((C_word*)lf[146]+1 /* (set! srfi-69#hash-table-fold ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5901,tmp=(C_word)a,a+=2,tmp));
t21=C_mutate((C_word*)lf[148]+1 /* (set! srfi-69#hash-table-for-each ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5913,tmp=(C_word)a,a+=2,tmp));
t22=C_mutate((C_word*)lf[150]+1 /* (set! srfi-69#hash-table-walk ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5925,tmp=(C_word)a,a+=2,tmp));
t23=C_mutate((C_word*)lf[152]+1 /* (set! srfi-69#hash-table-map ...) */,(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5937,tmp=(C_word)a,a+=2,tmp));
t24=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5960,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
t25=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5962,tmp=(C_word)a,a+=2,tmp);
/* srfi-69.scm:1180: ##sys#register-record-printer */
{C_proc tp=(C_proc)C_fast_retrieve_symbol_proc(lf[157]);
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=*((C_word*)lf[157]+1);
av2[1]=t24;
av2[2]=lf[47];
av2[3]=t25;
tp(4,av2);}}

/* srfi-69#hash-table-ref/default in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4952(C_word c,C_word *av){
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
C_word *a;
if(c!=5) C_bad_argc_2(c,5,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_4952,c,av);}
a=C_alloc(8);
t5=C_i_check_structure_2(t2,lf[47],lf[120]);
t6=C_slot(t2,C_fix(1));
t7=C_slot(t2,C_fix(3));
t8=C_slot(t2,C_fix(10));
t9=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_4968,a[2]=((C_word*)t0)[2],a[3]=t7,a[4]=t6,a[5]=t4,a[6]=t3,a[7]=t1,tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:933: hash */
t10=t8;{
C_word *av2=av;
av2[0]=t10;
av2[1]=t9;
av2[2]=t3;
av2[3]=C_block_size(t6);
((C_proc)C_fast_retrieve_proc(t10))(4,av2);}}

/* k4966 in srfi-69#hash-table-ref/default in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_4968(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_4968,c,av);}
a=C_alloc(8);
t2=C_eqp(((C_word*)t0)[2],((C_word*)t0)[3]);
if(C_truep(t2)){
t3=C_slot(((C_word*)t0)[4],t1);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_4983,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],tmp=(C_word)a,a+=4,tmp);
t5=((C_word*)t0)[7];{
C_word *av2=av;
av2[0]=t5;
av2[1]=(
  f_4983(t4,t3)
);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t3=C_slot(((C_word*)t0)[4],t1);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5022,a[2]=((C_word*)t0)[5],a[3]=t5,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[6],tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_5022(t7,((C_word*)t0)[7],t3);}}

/* loop in k4966 in srfi-69#hash-table-ref/default in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static C_word C_fcall f_4983(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_stack_overflow_check;
loop:{}
if(C_truep(C_i_nullp(t1))){
return(((C_word*)t0)[2]);}
else{
t2=C_slot(t1,C_fix(0));
t3=C_slot(t2,C_fix(0));
t4=C_eqp(((C_word*)t0)[3],t3);
if(C_truep(t4)){
return(C_slot(t2,C_fix(1)));}
else{
t6=C_slot(t1,C_fix(1));
t1=t6;
goto loop;}}}

/* loop in k4966 in srfi-69#hash-table-ref/default in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5022(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_5022,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_nullp(t2))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=((C_word*)t0)[2];
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5038,a[2]=t1,a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:948: test */
t5=((C_word*)t0)[4];{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=C_slot(t3,C_fix(0));
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}}

/* k5036 in loop in k4966 in srfi-69#hash-table-ref/default in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5038(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5038,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_slot(((C_word*)t0)[3],C_fix(1));
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
/* srfi-69.scm:950: loop */
t2=((C_word*)((C_word*)t0)[4])[1];
f_5022(t2,((C_word*)t0)[2],C_slot(((C_word*)t0)[5],C_fix(1)));}}

/* srfi-69#hash-table-exists? in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5058(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_5058,c,av);}
a=C_alloc(7);
t4=C_i_check_structure_2(t2,lf[47],lf[122]);
t5=C_slot(t2,C_fix(1));
t6=C_slot(t2,C_fix(3));
t7=C_slot(t2,C_fix(10));
t8=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_5074,a[2]=((C_word*)t0)[2],a[3]=t6,a[4]=t5,a[5]=t3,a[6]=t1,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:959: hash */
t9=t7;{
C_word *av2=av;
av2[0]=t9;
av2[1]=t8;
av2[2]=t3;
av2[3]=C_block_size(t5);
((C_proc)C_fast_retrieve_proc(t9))(4,av2);}}

/* k5072 in srfi-69#hash-table-exists? in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5074(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_5074,c,av);}
a=C_alloc(7);
t2=C_eqp(((C_word*)t0)[2],((C_word*)t0)[3]);
if(C_truep(t2)){
t3=C_slot(((C_word*)t0)[4],t1);
t4=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5089,a[2]=((C_word*)t0)[5],tmp=(C_word)a,a+=3,tmp);
t5=((C_word*)t0)[6];{
C_word *av2=av;
av2[0]=t5;
av2[1]=(
  f_5089(t4,t3)
);
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
t3=C_slot(((C_word*)t0)[4],t1);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5129,a[2]=t5,a[3]=((C_word*)t0)[3],a[4]=((C_word*)t0)[5],tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_5129(t7,((C_word*)t0)[6],t3);}}

/* loop in k5072 in srfi-69#hash-table-exists? in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static C_word C_fcall f_5089(C_word t0,C_word t1){
C_word tmp;
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_stack_overflow_check;
loop:{}
t2=C_i_nullp(t1);
if(C_truep(C_i_not(t2))){
t3=C_slot(t1,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_eqp(((C_word*)t0)[2],t4);
if(C_truep(t5)){
return(t5);}
else{
t7=C_slot(t1,C_fix(1));
t1=t7;
goto loop;}}
else{
return(C_SCHEME_FALSE);}}

/* loop in k5072 in srfi-69#hash-table-exists? in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5129(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,3)))){
C_save_and_reclaim_args((void *)trf_5129,3,t0,t1,t2);}
a=C_alloc(5);
t3=C_i_nullp(t2);
if(C_truep(C_i_not(t3))){
t4=C_slot(t2,C_fix(0));
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5142,a[2]=t1,a[3]=((C_word*)t0)[2],a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:971: test */
t6=((C_word*)t0)[3];{
C_word av2[4];
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[4];
av2[3]=C_slot(t4,C_fix(0));
((C_proc)C_fast_retrieve_proc(t6))(4,av2);}}
else{
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k5140 in loop in k5072 in srfi-69#hash-table-exists? in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5142(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5142,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=t1;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
/* srfi-69.scm:972: loop */
t2=((C_word*)((C_word*)t0)[3])[1];
f_5129(t2,((C_word*)t0)[2],C_slot(((C_word*)t0)[4],C_fix(1)));}}

/* srfi-69#hash-table-delete! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5166(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,3)))){
C_save_and_reclaim((void *)f_5166,c,av);}
a=C_alloc(7);
t4=C_i_check_structure_2(t2,lf[47],lf[124]);
t5=C_slot(t2,C_fix(1));
t6=C_block_size(t5);
t7=C_slot(t2,C_fix(10));
t8=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_5182,a[2]=t2,a[3]=t5,a[4]=((C_word*)t0)[2],a[5]=t3,a[6]=t1,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:983: hash */
t9=t7;{
C_word *av2=av;
av2[0]=t9;
av2[1]=t8;
av2[2]=t3;
av2[3]=t6;
((C_proc)C_fast_retrieve_proc(t9))(4,av2);}}

/* k5180 in srfi-69#hash-table-delete! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5182(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(11,c,4)))){
C_save_and_reclaim((void *)f_5182,c,av);}
a=C_alloc(11);
t2=C_slot(((C_word*)t0)[2],C_fix(3));
t3=C_slot(((C_word*)t0)[2],C_fix(2));
t4=C_fixnum_difference(t3,C_fix(1));
t5=C_slot(((C_word*)t0)[3],t1);
t6=C_eqp(((C_word*)t0)[4],t2);
if(C_truep(t6)){
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_5202,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[3],a[4]=t1,a[5]=((C_word*)t0)[2],a[6]=t4,tmp=(C_word)a,a+=7,tmp);
t8=((C_word*)t0)[6];{
C_word *av2=av;
av2[0]=t8;
av2[1]=(
  f_5202(t7,C_SCHEME_FALSE,t5)
);
((C_proc)(void*)(*((C_word*)t8+1)))(2,av2);}}
else{
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|8,a[1]=(C_word)f_5249,a[2]=((C_word*)t0)[3],a[3]=t1,a[4]=((C_word*)t0)[2],a[5]=t4,a[6]=t8,a[7]=t2,a[8]=((C_word*)t0)[5],tmp=(C_word)a,a+=9,tmp));
t10=((C_word*)t8)[1];
f_5249(t10,((C_word*)t0)[6],C_SCHEME_FALSE,t5);}}

/* loop in k5180 in srfi-69#hash-table-delete! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static C_word C_fcall f_5202(C_word t0,C_word t1,C_word t2){
C_word tmp;
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
C_stack_overflow_check;
loop:{}
t3=C_i_nullp(t2);
if(C_truep(C_i_not(t3))){
t4=C_slot(t2,C_fix(0));
t5=C_slot(t2,C_fix(1));
t6=C_slot(t4,C_fix(0));
t7=C_eqp(((C_word*)t0)[2],t6);
if(C_truep(t7)){
t8=(C_truep(t1)?C_i_setslot(t1,C_fix(1),t5):C_i_setslot(((C_word*)t0)[3],((C_word*)t0)[4],t5));
t9=C_i_set_i_slot(((C_word*)t0)[5],C_fix(2),((C_word*)t0)[6]);
return(C_SCHEME_TRUE);}
else{
t11=t2;
t12=t5;
t1=t11;
t2=t12;
goto loop;}}
else{
return(C_SCHEME_FALSE);}}

/* loop in k5180 in srfi-69#hash-table-delete! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5249(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,3)))){
C_save_and_reclaim_args((void *)trf_5249,4,t0,t1,t2,t3);}
a=C_alloc(11);
t4=C_i_nullp(t3);
if(C_truep(C_i_not(t4))){
t5=C_slot(t3,C_fix(0));
t6=C_slot(t3,C_fix(1));
t7=(*a=C_CLOSURE_TYPE|10,a[1]=(C_word)f_5268,a[2]=t2,a[3]=t6,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],a[7]=((C_word*)t0)[5],a[8]=t1,a[9]=((C_word*)t0)[6],a[10]=t3,tmp=(C_word)a,a+=11,tmp);
/* srfi-69.scm:1006: test */
t8=((C_word*)t0)[7];{
C_word av2[4];
av2[0]=t8;
av2[1]=t7;
av2[2]=((C_word*)t0)[8];
av2[3]=C_slot(t5,C_fix(0));
((C_proc)C_fast_retrieve_proc(t8))(4,av2);}}
else{
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* k5266 in loop in k5180 in srfi-69#hash-table-delete! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5268(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5268,c,av);}
if(C_truep(t1)){
t2=(C_truep(((C_word*)t0)[2])?C_i_setslot(((C_word*)t0)[2],C_fix(1),((C_word*)t0)[3]):C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[3]));
t3=C_i_set_i_slot(((C_word*)t0)[6],C_fix(2),((C_word*)t0)[7]);
t4=((C_word*)t0)[8];{
C_word *av2=av;
av2[0]=t4;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
/* srfi-69.scm:1013: loop */
t2=((C_word*)((C_word*)t0)[9])[1];
f_5249(t2,((C_word*)t0)[8],((C_word*)t0)[10],((C_word*)t0)[3]);}}

/* srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5297(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_5297,c,av);}
a=C_alloc(5);
t4=C_i_check_structure_2(t2,lf[47],lf[126]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5304,a[2]=t2,a[3]=t3,a[4]=t1,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1019: ##sys#check-closure */
t6=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t3;
av2[3]=lf[126];
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k5302 in srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5304(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(12,c,3)))){
C_save_and_reclaim((void *)f_5304,c,av);}
a=C_alloc(12);
t2=C_slot(((C_word*)t0)[2],C_fix(1));
t3=C_block_size(t2);
t4=C_slot(((C_word*)t0)[2],C_fix(2));
t5=t4;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_5318,a[2]=t3,a[3]=((C_word*)t0)[2],a[4]=t6,a[5]=t8,a[6]=t2,a[7]=((C_word*)t0)[3],tmp=(C_word)a,a+=8,tmp));
t10=((C_word*)t8)[1];
f_5318(t10,((C_word*)t0)[4],C_fix(0));}

/* doloop1138 in k5302 in srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5318(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(14,0,4)))){
C_save_and_reclaim_args((void *)trf_5318,3,t0,t1,t2);}
a=C_alloc(14);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=C_i_set_i_slot(((C_word*)t0)[3],C_fix(2),((C_word*)((C_word*)t0)[4])[1]);
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5331,a[2]=((C_word*)t0)[5],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t4=C_slot(((C_word*)t0)[6],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_5344,a[2]=((C_word*)t0)[6],a[3]=t2,a[4]=((C_word*)t0)[4],a[5]=t6,a[6]=((C_word*)t0)[7],tmp=(C_word)a,a+=7,tmp));
t8=((C_word*)t6)[1];
f_5344(t8,t3,C_SCHEME_FALSE,t4);}}

/* k5329 in doloop1138 in k5302 in srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5331(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5331,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5318(t2,((C_word*)t0)[3],C_fixnum_plus(((C_word*)t0)[4],C_fix(1)));}

/* loop in doloop1138 in k5302 in srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5344(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(10,0,3)))){
C_save_and_reclaim_args((void *)trf_5344,4,t0,t1,t2,t3);}
a=C_alloc(10);
t4=C_i_nullp(t3);
if(C_truep(C_i_not(t4))){
t5=C_slot(t3,C_fix(0));
t6=C_slot(t3,C_fix(1));
t7=(*a=C_CLOSURE_TYPE|9,a[1]=(C_word)f_5363,a[2]=t2,a[3]=t6,a[4]=((C_word*)t0)[2],a[5]=((C_word*)t0)[3],a[6]=((C_word*)t0)[4],a[7]=t1,a[8]=((C_word*)t0)[5],a[9]=t3,tmp=(C_word)a,a+=10,tmp);
/* srfi-69.scm:1029: func */
t8=((C_word*)t0)[6];{
C_word av2[4];
av2[0]=t8;
av2[1]=t7;
av2[2]=C_slot(t5,C_fix(0));
av2[3]=C_slot(t5,C_fix(1));
((C_proc)C_fast_retrieve_proc(t8))(4,av2);}}
else{
t5=t1;{
C_word av2[2];
av2[0]=t5;
av2[1]=C_SCHEME_FALSE;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}}

/* k5361 in loop in doloop1138 in k5302 in srfi-69#hash-table-remove! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5363(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5363,c,av);}
if(C_truep(t1)){
t2=(C_truep(((C_word*)t0)[2])?C_i_setslot(((C_word*)t0)[2],C_fix(1),((C_word*)t0)[3]):C_i_setslot(((C_word*)t0)[4],((C_word*)t0)[5],((C_word*)t0)[3]));
t3=C_fixnum_difference(((C_word*)((C_word*)t0)[6])[1],C_fix(1));
t4=C_set_block_item(((C_word*)t0)[6],0,t3);
t5=((C_word*)t0)[7];{
C_word *av2=av;
av2[0]=t5;
av2[1]=C_SCHEME_TRUE;
((C_proc)(void*)(*((C_word*)t5+1)))(2,av2);}}
else{
/* srfi-69.scm:1036: loop */
t2=((C_word*)((C_word*)t0)[8])[1];
f_5344(t2,((C_word*)t0)[7],((C_word*)t0)[9],((C_word*)t0)[3]);}}

/* srfi-69#hash-table-clear! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5393(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,3)))){
C_save_and_reclaim((void *)f_5393,c,av);}
a=C_alloc(4);
t3=C_i_check_structure_2(t2,lf[47],lf[128]);
t4=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5400,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:1042: scheme#vector-fill! */
t5=*((C_word*)lf[129]+1);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=C_slot(t2,C_fix(1));
av2[3]=C_SCHEME_END_OF_LIST;
((C_proc)(void*)(*((C_word*)t5+1)))(4,av2);}}

/* k5398 in srfi-69#hash-table-clear! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5400(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_5400,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_i_set_i_slot(((C_word*)t0)[3],C_fix(2),C_fix(0));
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5409(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,3)))){
C_save_and_reclaim_args((void *)trf_5409,3,t1,t2,t3);}
a=C_alloc(8);
t4=C_slot(t3,C_fix(1));
t5=C_block_size(t4);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5421,a[2]=t5,a[3]=t2,a[4]=t7,a[5]=t4,tmp=(C_word)a,a+=6,tmp));
t9=((C_word*)t7)[1];
f_5421(t9,t1,C_fix(0));}

/* doloop1163 in srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5421(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,0,3)))){
C_save_and_reclaim_args((void *)trf_5421,3,t0,t1,t2);}
a=C_alloc(11);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t3=t1;{
C_word av2[2];
av2[0]=t3;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5431,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t4=C_slot(((C_word*)t0)[5],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5444,a[2]=t6,a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp));
t8=((C_word*)t6)[1];
f_5444(t8,t3,t4);}}

/* k5429 in doloop1163 in srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5431(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5431,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5421(t2,((C_word*)t0)[3],C_fixnum_plus(((C_word*)t0)[4],C_fix(1)));}

/* doloop1166 in doloop1163 in srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5444(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,5)))){
C_save_and_reclaim_args((void *)trf_5444,3,t0,t1,t2);}
a=C_alloc(7);
if(C_truep(C_i_nullp(t2))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5457,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t5=C_slot(t3,C_fix(0));
t6=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5470,tmp=(C_word)a,a+=2,tmp);
/* srfi-69.scm:1055: *hash-table-update!/default */
t7=C_retrieve2(lf[112],C_text("srfi-69#\052hash-table-update!/default"));
f_4570(t7,t4,((C_word*)t0)[3],t5,t6,C_slot(t3,C_fix(1)));}}

/* k5455 in doloop1166 in doloop1163 in srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5457(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5457,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5444(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* a5469 in doloop1166 in doloop1163 in srfi-69#*hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5470(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_5470,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* srfi-69#hash-table-merge! in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5477(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5477,c,av);}
t4=C_i_check_structure_2(t2,lf[47],lf[132]);
t5=C_i_check_structure_2(t3,lf[47],lf[132]);
/* srfi-69.scm:1060: *hash-table-merge! */
f_5409(t1,t2,t3);}

/* srfi-69#hash-table-merge in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5489(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(4,c,2)))){
C_save_and_reclaim((void *)f_5489,c,av);}
a=C_alloc(4);
t4=C_i_check_structure_2(t2,lf[47],lf[134]);
t5=C_i_check_structure_2(t3,lf[47],lf[134]);
t6=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5503,a[2]=t1,a[3]=t3,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:1065: *hash-table-copy */
f_4208(t6,t2);}

/* k5501 in srfi-69#hash-table-merge in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5503(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5503,c,av);}
/* srfi-69.scm:1065: *hash-table-merge! */
f_5409(((C_word*)t0)[2],t1,((C_word*)t0)[3]);}

/* srfi-69#hash-table->alist in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5505(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_5505,c,av);}
a=C_alloc(7);
t3=C_i_check_structure_2(t2,lf[47],lf[136]);
t4=C_slot(t2,C_fix(1));
t5=C_block_size(t4);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5520,a[2]=t5,a[3]=t4,a[4]=t7,tmp=(C_word)a,a+=5,tmp));
t9=((C_word*)t7)[1];
f_5520(t9,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in srfi-69#hash-table->alist in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5520(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_5520,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_slot(((C_word*)t0)[3],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5536,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t6,tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_5536(t8,t1,t4,t3);}}

/* loop2 in loop in srfi-69#hash-table->alist in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5536(C_word t0,C_word t1,C_word t2,C_word t3){
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
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_5536,4,t0,t1,t2,t3);}
a=C_alloc(6);
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:1079: loop */
t4=((C_word*)((C_word*)t0)[2])[1];
f_5520(t4,t1,C_fixnum_plus(((C_word*)t0)[3],C_fix(1)),t3);}
else{
t4=C_slot(t2,C_fix(1));
t5=C_slot(t2,C_fix(0));
t6=C_slot(t5,C_fix(0));
t7=C_slot(t5,C_fix(1));
t8=C_a_i_cons(&a,2,t6,t7);
t9=C_a_i_cons(&a,2,t8,t3);
/* srfi-69.scm:1080: loop2 */
t11=t1;
t12=t4;
t13=t9;
t1=t11;
t2=t12;
t3=t13;
goto loop;}}

/* srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5578(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c<3) C_bad_min_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand((c-3)*C_SIZEOF_PAIR +4,c,3)))){
C_save_and_reclaim((void*)f_5578,c,av);}
a=C_alloc((c-3)*C_SIZEOF_PAIR+4);
t3=C_build_rest(&a,c,3,av);
C_word t4;
C_word t5;
C_word t6;
t4=C_i_check_list_2(t2,lf[138]);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5585,a[2]=t1,a[3]=t2,tmp=(C_word)a,a+=4,tmp);{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=0;
av2[1]=t5;
av2[2]=C_fast_retrieve(lf[57]);
av2[3]=t3;
C_apply(4,av2);}}

/* k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5585(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(13,c,3)))){
C_save_and_reclaim((void *)f_5585,c,av);}
a=C_alloc(13);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5586,a[2]=t1,tmp=(C_word)a,a+=3,tmp);
t3=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5607,a[2]=((C_word*)t0)[2],a[3]=t1,tmp=(C_word)a,a+=4,tmp);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5609,a[2]=t5,a[3]=t2,tmp=(C_word)a,a+=4,tmp));
t7=((C_word*)t5)[1];
f_5609(t7,t3,((C_word*)t0)[3]);}

/* g1206 in k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5586(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(2,0,5)))){
C_save_and_reclaim_args((void *)trf_5586,3,t0,t1,t2);}
a=C_alloc(2);
t3=C_i_check_pair_2(t2,lf[138]);
t4=C_slot(t2,C_fix(0));
t5=(*a=C_CLOSURE_TYPE|1,a[1]=(C_word)f_5599,tmp=(C_word)a,a+=2,tmp);
/* srfi-69.scm:1091: *hash-table-update!/default */
t6=C_retrieve2(lf[112],C_text("srfi-69#\052hash-table-update!/default"));
f_4570(t6,t1,((C_word*)t0)[2],t4,t5,C_slot(t2,C_fix(1)));}

/* a5598 in g1206 in k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5599(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2=av[2];
C_word t3;
C_word *a;
if(c!=3) C_bad_argc_2(c,3,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_5599,c,av);}
t3=t1;{
C_word *av2=av;
av2[0]=t3;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t3+1)))(2,av2);}}

/* k5605 in k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5607(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_5607,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* for-each-loop1205 in k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5609(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_5609,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5619,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1088: g1206 */
t4=((C_word*)t0)[3];
f_5586(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k5617 in for-each-loop1205 in k5583 in srfi-69#alist->hash-table in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5619(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5619,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5609(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* srfi-69#hash-table-keys in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5632(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_5632,c,av);}
a=C_alloc(7);
t3=C_i_check_structure_2(t2,lf[47],lf[140]);
t4=C_slot(t2,C_fix(1));
t5=C_block_size(t4);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5647,a[2]=t5,a[3]=t4,a[4]=t7,tmp=(C_word)a,a+=5,tmp));
t9=((C_word*)t7)[1];
f_5647(t9,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in srfi-69#hash-table-keys in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5647(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_5647,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_slot(((C_word*)t0)[3],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5663,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t6,tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_5663(t8,t1,t4,t3);}}

/* loop2 in loop in srfi-69#hash-table-keys in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5663(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,3)))){
C_save_and_reclaim_args((void *)trf_5663,4,t0,t1,t2,t3);}
a=C_alloc(3);
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:1107: loop */
t4=((C_word*)((C_word*)t0)[2])[1];
f_5647(t4,t1,C_fixnum_plus(((C_word*)t0)[3],C_fix(1)),t3);}
else{
t4=C_slot(t2,C_fix(1));
t5=C_slot(t2,C_fix(0));
t6=C_slot(t5,C_fix(0));
t7=C_a_i_cons(&a,2,t6,t3);
/* srfi-69.scm:1108: loop2 */
t9=t1;
t10=t4;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}

/* srfi-69#hash-table-values in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5697(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(7,c,4)))){
C_save_and_reclaim((void *)f_5697,c,av);}
a=C_alloc(7);
t3=C_i_check_structure_2(t2,lf[47],lf[142]);
t4=C_slot(t2,C_fix(1));
t5=C_block_size(t4);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5712,a[2]=t5,a[3]=t4,a[4]=t7,tmp=(C_word)a,a+=5,tmp));
t9=((C_word*)t7)[1];
f_5712(t9,t1,C_fix(0),C_SCHEME_END_OF_LIST);}

/* loop in srfi-69#hash-table-values in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5712(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(7,0,4)))){
C_save_and_reclaim_args((void *)trf_5712,4,t0,t1,t2,t3);}
a=C_alloc(7);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_slot(((C_word*)t0)[3],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5728,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t6,tmp=(C_word)a,a+=5,tmp));
t8=((C_word*)t6)[1];
f_5728(t8,t1,t4,t3);}}

/* loop2 in loop in srfi-69#hash-table-values in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5728(C_word t0,C_word t1,C_word t2,C_word t3){
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
if(C_unlikely(!C_demand(C_calculate_demand(3,0,3)))){
C_save_and_reclaim_args((void *)trf_5728,4,t0,t1,t2,t3);}
a=C_alloc(3);
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:1122: loop */
t4=((C_word*)((C_word*)t0)[2])[1];
f_5712(t4,t1,C_fixnum_plus(((C_word*)t0)[3],C_fix(1)),t3);}
else{
t4=C_slot(t2,C_fix(1));
t5=C_slot(t2,C_fix(0));
t6=C_slot(t5,C_fix(1));
t7=C_a_i_cons(&a,2,t6,t3);
/* srfi-69.scm:1123: loop2 */
t9=t1;
t10=t4;
t11=t7;
t1=t9;
t2=t10;
t3=t11;
goto loop;}}

/* srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5762(C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,3)))){
C_save_and_reclaim_args((void *)trf_5762,3,t1,t2,t3);}
a=C_alloc(8);
t4=C_slot(t2,C_fix(1));
t5=C_block_size(t4);
t6=C_SCHEME_UNDEFINED;
t7=(*a=C_VECTOR_TYPE|1,a[1]=t6,tmp=(C_word)a,a+=2,tmp);
t8=C_set_block_item(t7,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5774,a[2]=t5,a[3]=t3,a[4]=t4,a[5]=t7,tmp=(C_word)a,a+=6,tmp));
t9=((C_word*)t7)[1];
f_5774(t9,t1,C_fix(0));}

/* doloop1258 in srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5774(C_word t0,C_word t1,C_word t2){
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
if(C_unlikely(!C_demand(C_calculate_demand(14,0,3)))){
C_save_and_reclaim_args((void *)trf_5774,3,t0,t1,t2);}
a=C_alloc(14);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t3=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5782,a[2]=((C_word*)t0)[3],tmp=(C_word)a,a+=3,tmp);
t4=C_slot(((C_word*)t0)[4],t2);
t5=C_i_check_list_2(t4,lf[144]);
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5803,a[2]=((C_word*)t0)[5],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5812,a[2]=t8,a[3]=t3,tmp=(C_word)a,a+=4,tmp));
t10=((C_word*)t8)[1];
f_5812(t10,t6,t4);}}

/* g1264 in doloop1258 in srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5782(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,3)))){
C_save_and_reclaim_args((void *)trf_5782,3,t0,t1,t2);}
/* srfi-69.scm:1140: proc */
t3=((C_word*)t0)[2];{
C_word av2[4];
av2[0]=t3;
av2[1]=t1;
av2[2]=C_slot(t2,C_fix(0));
av2[3]=C_slot(t2,C_fix(1));
((C_proc)C_fast_retrieve_proc(t3))(4,av2);}}

/* k5801 in doloop1258 in srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5803(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5803,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5774(t2,((C_word*)t0)[3],C_fixnum_plus(((C_word*)t0)[4],C_fix(1)));}

/* for-each-loop1263 in doloop1258 in srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5812(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,2)))){
C_save_and_reclaim_args((void *)trf_5812,3,t0,t1,t2);}
a=C_alloc(5);
if(C_truep(C_i_pairp(t2))){
t3=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5822,a[2]=((C_word*)t0)[2],a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1139: g1264 */
t4=((C_word*)t0)[3];
f_5782(t4,t3,C_slot(t2,C_fix(0)));}
else{
t3=C_SCHEME_UNDEFINED;
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}}

/* k5820 in for-each-loop1263 in doloop1258 in srfi-69#*hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5822(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_5822,c,av);}
t2=((C_word*)((C_word*)t0)[2])[1];
f_5812(t2,((C_word*)t0)[3],C_slot(((C_word*)t0)[4],C_fix(1)));}

/* srfi-69#*hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5835(C_word t1,C_word t2,C_word t3,C_word t4){
C_word tmp;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word t9;
C_word t10;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,4)))){
C_save_and_reclaim_args((void *)trf_5835,4,t1,t2,t3,t4);}
a=C_alloc(8);
t5=C_slot(t2,C_fix(1));
t6=C_block_size(t5);
t7=C_SCHEME_UNDEFINED;
t8=(*a=C_VECTOR_TYPE|1,a[1]=t7,tmp=(C_word)a,a+=2,tmp);
t9=C_set_block_item(t8,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5847,a[2]=t6,a[3]=t5,a[4]=t8,a[5]=t3,tmp=(C_word)a,a+=6,tmp));
t10=((C_word*)t8)[1];
f_5847(t10,t1,C_fix(0),t4);}

/* loop in srfi-69#*hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5847(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(8,0,4)))){
C_save_and_reclaim_args((void *)trf_5847,4,t0,t1,t2,t3);}
a=C_alloc(8);
if(C_truep(C_fixnum_greater_or_equal_p(t2,((C_word*)t0)[2]))){
t4=t1;{
C_word av2[2];
av2[0]=t4;
av2[1]=t3;
((C_proc)(void*)(*((C_word*)t4+1)))(2,av2);}}
else{
t4=C_slot(((C_word*)t0)[3],t2);
t5=C_SCHEME_UNDEFINED;
t6=(*a=C_VECTOR_TYPE|1,a[1]=t5,tmp=(C_word)a,a+=2,tmp);
t7=C_set_block_item(t6,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5863,a[2]=((C_word*)t0)[4],a[3]=t2,a[4]=t6,a[5]=((C_word*)t0)[5],tmp=(C_word)a,a+=6,tmp));
t8=((C_word*)t6)[1];
f_5863(t8,t1,t4,t3);}}

/* fold2 in loop in srfi-69#*hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_5863(C_word t0,C_word t1,C_word t2,C_word t3){
C_word tmp;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(5,0,4)))){
C_save_and_reclaim_args((void *)trf_5863,4,t0,t1,t2,t3);}
a=C_alloc(5);
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:1152: loop */
t4=((C_word*)((C_word*)t0)[2])[1];
f_5847(t4,t1,C_fixnum_plus(((C_word*)t0)[3],C_fix(1)),t3);}
else{
t4=C_slot(t2,C_fix(0));
t5=C_slot(t2,C_fix(1));
t6=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5891,a[2]=((C_word*)t0)[4],a[3]=t1,a[4]=t5,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1155: func */
t7=((C_word*)t0)[5];{
C_word av2[5];
av2[0]=t7;
av2[1]=t6;
av2[2]=C_slot(t4,C_fix(0));
av2[3]=C_slot(t4,C_fix(1));
av2[4]=t3;
((C_proc)C_fast_retrieve_proc(t7))(5,av2);}}}

/* k5889 in fold2 in loop in srfi-69#*hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5891(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5891,c,av);}
/* srfi-69.scm:1154: fold2 */
t2=((C_word*)((C_word*)t0)[2])[1];
f_5863(t2,((C_word*)t0)[3],((C_word*)t0)[4],t1);}

/* srfi-69#hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5901(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(6,c,3)))){
C_save_and_reclaim((void *)f_5901,c,av);}
a=C_alloc(6);
t5=C_i_check_structure_2(t2,lf[47],lf[147]);
t6=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_5908,a[2]=t1,a[3]=t2,a[4]=t3,a[5]=t4,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:1159: ##sys#check-closure */
t7=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t7;
av2[1]=t6;
av2[2]=t3;
av2[3]=lf[147];
((C_proc)(void*)(*((C_word*)t7+1)))(4,av2);}}

/* k5906 in srfi-69#hash-table-fold in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5908(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_5908,c,av);}
/* srfi-69.scm:1160: *hash-table-fold */
f_5835(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4],((C_word*)t0)[5]);}

/* srfi-69#hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5913(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_5913,c,av);}
a=C_alloc(5);
t4=C_i_check_structure_2(t2,lf[47],lf[149]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5920,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1164: ##sys#check-closure */
t6=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t3;
av2[3]=lf[149];
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k5918 in srfi-69#hash-table-for-each in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5920(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5920,c,av);}
/* srfi-69.scm:1165: *hash-table-for-each */
f_5762(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}

/* srfi-69#hash-table-walk in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5925(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_5925,c,av);}
a=C_alloc(5);
t4=C_i_check_structure_2(t2,lf[47],lf[151]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5932,a[2]=t1,a[3]=t2,a[4]=t3,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1169: ##sys#check-closure */
t6=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t3;
av2[3]=lf[151];
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k5930 in srfi-69#hash-table-walk in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5932(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,3)))){
C_save_and_reclaim((void *)f_5932,c,av);}
/* srfi-69.scm:1170: *hash-table-for-each */
f_5762(((C_word*)t0)[2],((C_word*)t0)[3],((C_word*)t0)[4]);}

/* srfi-69#hash-table-map in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5937(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,3)))){
C_save_and_reclaim((void *)f_5937,c,av);}
a=C_alloc(5);
t4=C_i_check_structure_2(t2,lf[47],lf[153]);
t5=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5944,a[2]=t3,a[3]=t1,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1174: ##sys#check-closure */
t6=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t3;
av2[3]=lf[153];
((C_proc)(void*)(*((C_word*)t6+1)))(4,av2);}}

/* k5942 in srfi-69#hash-table-map in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5944(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,5)))){
C_save_and_reclaim((void *)f_5944,c,av);}
a=C_alloc(3);
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_5949,a[2]=((C_word*)t0)[2],tmp=(C_word)a,a+=3,tmp);
/* srfi-69.scm:1175: *hash-table-fold */
f_5835(((C_word*)t0)[3],((C_word*)t0)[4],t2,C_SCHEME_END_OF_LIST);}

/* a5948 in k5942 in srfi-69#hash-table-map in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5949(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_5949,c,av);}
a=C_alloc(4);
t5=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5957,a[2]=t1,a[3]=t4,tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:1175: func */
t6=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t6;
av2[1]=t5;
av2[2]=t2;
av2[3]=t3;
((C_proc)C_fast_retrieve_proc(t6))(4,av2);}}

/* k5955 in a5948 in k5942 in srfi-69#hash-table-map in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5957(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(3,c,1)))){
C_save_and_reclaim((void *)f_5957,c,av);}
a=C_alloc(3);
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_a_i_cons(&a,2,t1,((C_word*)t0)[3]);
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* k5958 in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5960(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,1)))){
C_save_and_reclaim((void *)f_5960,c,av);}
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_SCHEME_UNDEFINED;
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}

/* a5961 in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5962(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(5,c,4)))){
C_save_and_reclaim((void *)f_5962,c,av);}
a=C_alloc(5);
t4=(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_5966,a[2]=t1,a[3]=t3,a[4]=t2,tmp=(C_word)a,a+=5,tmp);
/* srfi-69.scm:1183: ##sys#print */
t5=*((C_word*)lf[154]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t5;
av2[1]=t4;
av2[2]=lf[156];
av2[3]=C_SCHEME_FALSE;
av2[4]=t3;
((C_proc)(void*)(*((C_word*)t5+1)))(5,av2);}}

/* k5964 in a5961 in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5966(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word t3;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(4,c,4)))){
C_save_and_reclaim((void *)f_5966,c,av);}
a=C_alloc(4);
t2=(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_5969,a[2]=((C_word*)t0)[2],a[3]=((C_word*)t0)[3],tmp=(C_word)a,a+=4,tmp);
/* srfi-69.scm:1184: ##sys#print */
t3=*((C_word*)lf[154]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t3;
av2[1]=t2;
av2[2]=C_slot(((C_word*)t0)[4],C_fix(2));
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t3+1)))(5,av2);}}

/* k5967 in k5964 in a5961 in k4948 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5969(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,4)))){
C_save_and_reclaim((void *)f_5969,c,av);}
/* srfi-69.scm:1185: ##sys#print */
t2=*((C_word*)lf[154]+1);{
C_word *av2;
if(c >= 5) {
  av2=av;
} else {
  av2=C_alloc(5);
}
av2[0]=t2;
av2[1]=((C_word*)t0)[2];
av2[2]=lf[155];
av2[3]=C_SCHEME_FALSE;
av2[4]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(5,av2);}}

/* a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5978(C_word c,C_word *av){
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
if(c<4) C_bad_min_argc_2(c,4,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(11,c,3)))){
C_save_and_reclaim((void *)f_5978,c,av);}
a=C_alloc(11);
t4=C_rest_nullp(c,4);
t5=(C_truep(t4)?(*a=C_CLOSURE_TYPE|3,a[1]=(C_word)f_6098,a[2]=t3,a[3]=t2,tmp=(C_word)a,a+=4,tmp):C_get_rest_arg(c,4,av,4,t0));
t6=C_i_check_structure_2(t2,lf[47],lf[158]);
t7=(*a=C_CLOSURE_TYPE|6,a[1]=(C_word)f_5988,a[2]=t2,a[3]=((C_word*)t0)[2],a[4]=t5,a[5]=t3,a[6]=t1,tmp=(C_word)a,a+=7,tmp);
/* srfi-69.scm:901: ##sys#check-closure */
t8=C_fast_retrieve(lf[67]);{
C_word *av2=av;
av2[0]=t8;
av2[1]=t7;
av2[2]=t5;
av2[3]=lf[158];
((C_proc)(void*)(*((C_word*)t8+1)))(4,av2);}}

/* k5986 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_5988(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_5988,c,av);}
a=C_alloc(8);
t2=C_slot(((C_word*)t0)[2],C_fix(1));
t3=C_slot(((C_word*)t0)[2],C_fix(3));
t4=C_slot(((C_word*)t0)[2],C_fix(10));
t5=(*a=C_CLOSURE_TYPE|7,a[1]=(C_word)f_6000,a[2]=((C_word*)t0)[3],a[3]=t3,a[4]=t2,a[5]=((C_word*)t0)[4],a[6]=((C_word*)t0)[5],a[7]=((C_word*)t0)[6],tmp=(C_word)a,a+=8,tmp);
/* srfi-69.scm:905: hash */
t6=t4;{
C_word *av2;
if(c >= 4) {
  av2=av;
} else {
  av2=C_alloc(4);
}
av2[0]=t6;
av2[1]=t5;
av2[2]=((C_word*)t0)[5];
av2[3]=C_block_size(t2);
((C_proc)C_fast_retrieve_proc(t6))(4,av2);}}

/* k5998 in k5986 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_6000(C_word c,C_word *av){
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
if(C_unlikely(!C_demand(C_calculate_demand(8,c,3)))){
C_save_and_reclaim((void *)f_6000,c,av);}
a=C_alloc(8);
t2=C_eqp(((C_word*)t0)[2],((C_word*)t0)[3]);
if(C_truep(t2)){
t3=C_slot(((C_word*)t0)[4],t1);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|4,a[1]=(C_word)f_6015,a[2]=((C_word*)t0)[5],a[3]=((C_word*)t0)[6],a[4]=t5,tmp=(C_word)a,a+=5,tmp));
t7=((C_word*)t5)[1];
f_6015(t7,((C_word*)t0)[7],t3);}
else{
t3=C_slot(((C_word*)t0)[4],t1);
t4=C_SCHEME_UNDEFINED;
t5=(*a=C_VECTOR_TYPE|1,a[1]=t4,tmp=(C_word)a,a+=2,tmp);
t6=C_set_block_item(t5,0,(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_6057,a[2]=((C_word*)t0)[5],a[3]=t5,a[4]=((C_word*)t0)[3],a[5]=((C_word*)t0)[6],tmp=(C_word)a,a+=6,tmp));
t7=((C_word*)t5)[1];
f_6057(t7,((C_word*)t0)[7],t3);}}

/* loop in k5998 in k5986 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_6015(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word t6;
C_word t7;
C_word t8;
C_word *a;
loop:
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,0,2)))){
C_save_and_reclaim_args((void *)trf_6015,3,t0,t1,t2);}
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:910: def */
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=t1;
((C_proc)C_fast_retrieve_proc(t3))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=C_slot(t3,C_fix(0));
t5=C_eqp(((C_word*)t0)[3],t4);
if(C_truep(t5)){
t6=t1;{
C_word av2[2];
av2[0]=t6;
av2[1]=C_slot(t3,C_fix(1));
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
/* srfi-69.scm:914: loop */
t7=t1;
t8=C_slot(t2,C_fix(1));
t1=t7;
t2=t8;
goto loop;}}}

/* loop in k5998 in k5986 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_fcall f_6057(C_word t0,C_word t1,C_word t2){
C_word tmp;
C_word t3;
C_word t4;
C_word t5;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(6,0,3)))){
C_save_and_reclaim_args((void *)trf_6057,3,t0,t1,t2);}
a=C_alloc(6);
if(C_truep(C_i_nullp(t2))){
/* srfi-69.scm:918: def */
t3=((C_word*)t0)[2];{
C_word av2[2];
av2[0]=t3;
av2[1]=t1;
((C_proc)C_fast_retrieve_proc(t3))(2,av2);}}
else{
t3=C_slot(t2,C_fix(0));
t4=(*a=C_CLOSURE_TYPE|5,a[1]=(C_word)f_6076,a[2]=t1,a[3]=t3,a[4]=((C_word*)t0)[3],a[5]=t2,tmp=(C_word)a,a+=6,tmp);
/* srfi-69.scm:920: test */
t5=((C_word*)t0)[4];{
C_word av2[4];
av2[0]=t5;
av2[1]=t4;
av2[2]=((C_word*)t0)[5];
av2[3]=C_slot(t3,C_fix(0));
((C_proc)C_fast_retrieve_proc(t5))(4,av2);}}}

/* k6074 in loop in k5998 in k5986 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_6076(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,2)))){
C_save_and_reclaim((void *)f_6076,c,av);}
if(C_truep(t1)){
t2=((C_word*)t0)[2];{
C_word *av2=av;
av2[0]=t2;
av2[1]=C_slot(((C_word*)t0)[3],C_fix(1));
((C_proc)(void*)(*((C_word*)t2+1)))(2,av2);}}
else{
/* srfi-69.scm:922: loop */
t2=((C_word*)((C_word*)t0)[4])[1];
f_6057(t2,((C_word*)t0)[2],C_slot(((C_word*)t0)[5],C_fix(1)));}}

/* f_6098 in a5977 in k2657 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_6098(C_word c,C_word *av){
C_word tmp;
C_word t0=av[0];
C_word t1=av[1];
C_word t2;
C_word *a;
if(c!=2) C_bad_argc_2(c,2,t0);
C_check_for_interrupt;
if(C_unlikely(!C_demand(C_calculate_demand(0,c,6)))){
C_save_and_reclaim((void *)f_6098,c,av);}
/* srfi-69.scm:897: ##sys#signal-hook */
t2=C_fast_retrieve(lf[7]);{
C_word *av2;
if(c >= 7) {
  av2=av;
} else {
  av2=C_alloc(7);
}
av2[0]=t2;
av2[1]=t1;
av2[2]=lf[110];
av2[3]=lf[158];
av2[4]=lf[159];
av2[5]=((C_word*)t0)[2];
av2[6]=((C_word*)t0)[3];
((C_proc)(void*)(*((C_word*)t2+1)))(7,av2);}}

/* a6106 in k2652 in k1608 in k1604 in k1601 */
static void C_ccall f_6107(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_6107,c,av);}
t3=C_fixnump(t2);
t4=(C_truep(t3)?C_i_fixnum_positivep(t2):C_SCHEME_FALSE);
if(C_truep(t4)){
t5=C_mutate((C_word*)lf[27]+1 /* (set! srfi-69#*recursive-hash-max-length* ...) */,t2);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t5=C_fast_retrieve(lf[27]);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_fast_retrieve(lf[27]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}

/* a6120 in k1608 in k1604 in k1601 */
static void C_ccall f_6121(C_word c,C_word *av){
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
C_save_and_reclaim((void *)f_6121,c,av);}
t3=C_fixnump(t2);
t4=(C_truep(t3)?C_i_fixnum_positivep(t2):C_SCHEME_FALSE);
if(C_truep(t4)){
t5=C_mutate((C_word*)lf[25]+1 /* (set! srfi-69#*recursive-hash-max-depth* ...) */,t2);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=t2;
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}
else{
t5=C_fast_retrieve(lf[25]);
t6=t1;{
C_word *av2=av;
av2[0]=t6;
av2[1]=C_fast_retrieve(lf[25]);
((C_proc)(void*)(*((C_word*)t6+1)))(2,av2);}}}

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
if(C_unlikely(!C_demand_2(1016))){
C_save(t1);
C_rereclaim2(1016*sizeof(C_word),1);
t1=C_restore;}
a=C_alloc(3);
C_initialize_lf(lf,165);
lf[0]=C_h_intern(&lf[0],22, C_text("##sys#number-hash-hook"));
lf[1]=C_h_intern(&lf[1],8, C_text("srfi-69#"));
lf[4]=C_h_intern(&lf[4],19, C_text("srfi-69#number-hash"));
lf[5]=C_h_intern(&lf[5],18, C_text("##sys#check-fixnum"));
lf[6]=C_h_intern(&lf[6],11, C_text("number-hash"));
lf[7]=C_h_intern(&lf[7],17, C_text("##sys#signal-hook"));
lf[8]=C_h_intern_kw(&lf[8],4, C_text("type"));
lf[9]=C_decode_literal(C_heaptop,C_text("\376B\000\000\016invalid number"));
lf[10]=C_h_intern(&lf[10],23, C_text("srfi-69#object-uid-hash"));
lf[11]=C_h_intern(&lf[11],15, C_text("object-uid-hash"));
lf[12]=C_h_intern(&lf[12],19, C_text("srfi-69#symbol-hash"));
lf[13]=C_h_intern(&lf[13],11, C_text("symbol-hash"));
lf[14]=C_h_intern(&lf[14],19, C_text("##sys#check-keyword"));
lf[15]=C_h_intern_kw(&lf[15],10, C_text("type-error"));
lf[16]=C_decode_literal(C_heaptop,C_text("\376B\000\000!bad argument type - not a keyword"));
lf[17]=C_h_intern(&lf[17],24, C_text("chicken.keyword#keyword\077"));
lf[18]=C_h_intern(&lf[18],20, C_text("srfi-69#keyword-hash"));
lf[19]=C_h_intern(&lf[19],12, C_text("keyword-hash"));
lf[20]=C_h_intern(&lf[20],16, C_text("srfi-69#eq\077-hash"));
lf[21]=C_h_intern(&lf[21],8, C_text("eq\077-hash"));
lf[22]=C_h_intern(&lf[22],24, C_text("srfi-69#hash-by-identity"));
lf[23]=C_h_intern(&lf[23],17, C_text("srfi-69#eqv\077-hash"));
lf[24]=C_h_intern(&lf[24],9, C_text("eqv\077-hash"));
lf[25]=C_h_intern(&lf[25],34, C_text("srfi-69#\052recursive-hash-max-depth\052"));
lf[26]=C_h_intern(&lf[26],32, C_text("srfi-69#recursive-hash-max-depth"));
lf[27]=C_h_intern(&lf[27],35, C_text("srfi-69#\052recursive-hash-max-length\052"));
lf[28]=C_h_intern(&lf[28],33, C_text("srfi-69#recursive-hash-max-length"));
lf[29]=C_h_intern(&lf[29],18, C_text("scheme#input-port\077"));
lf[30]=C_h_intern(&lf[30],19, C_text("srfi-69#equal\077-hash"));
lf[31]=C_h_intern(&lf[31],4, C_text("hash"));
lf[32]=C_h_intern(&lf[32],12, C_text("srfi-69#hash"));
lf[33]=C_h_intern(&lf[33],19, C_text("srfi-69#string-hash"));
lf[34]=C_h_intern(&lf[34],11, C_text("string-hash"));
lf[35]=C_h_intern(&lf[35],15, C_text("##sys#substring"));
lf[36]=C_h_intern(&lf[36],17, C_text("##sys#check-range"));
lf[37]=C_h_intern(&lf[37],22, C_text("srfi-69#string-ci-hash"));
lf[38]=C_h_intern(&lf[38],14, C_text("string-ci-hash"));
lf[39]=C_h_intern(&lf[39],22, C_text("srfi-69#string-hash-ci"));
lf[41]=C_decode_literal(C_heaptop,C_text("\376\003\000\000\002\376\377\001\000\000\0013\376\003\000\000\002\376\377\001\000\000\002i\376\003\000\000\002\376\377\001\000\000\004\325\376\003\000\000\002\376\377\001\000\000\011\255\376\003\000\000\002\376\377\001\000\000\023]\376\003\000\000\002\376\377\001\000\000&\303\376\003\000\000\002\376\377\001"
"\000\000M\215\376\003\000\000\002\376\377\001\000\000\233\035\376\003\000\000\002\376\377\001\000\0016\077\376\003\000\000\002\376\377\001\000\002l\201\376\003\000\000\002\376\377\001\000\004\331\005\376\003\000\000\002\376\377\001\000\011\262\025\376\003\000\000\002\376\377\001\000\023dA\376\003\000\000"
"\002\376\377\001\000&\310\205\376\003\000\000\002\376\377\001\000M\221\037\376\003\000\000\002\376\377\001\000\233\042I\376\003\000\000\002\376\377\001\0016D\277\376\003\000\000\002\376\377\001\002l\211\207\376\003\000\000\002\376\377\001\004\331\023\027\376\003\000\000\002\376\377\001\011\262&1"
"\376\003\000\000\002\376\377\001\023dLq\376\003\000\000\002\376\377\001&\310\230\373\376\003\000\000\002\376\377\001\077\377\377\377\376\377\016"));
lf[43]=C_h_intern(&lf[43],27, C_text("srfi-69#\052make-hash-function"));
lf[44]=C_h_intern_kw(&lf[44],12, C_text("bounds-error"));
lf[45]=C_decode_literal(C_heaptop,C_text("\376B\000\000\030Hash value out of bounds"));
lf[47]=C_h_intern(&lf[47],10, C_text("hash-table"));
lf[48]=C_h_intern(&lf[48],21, C_text("scheme#inexact->exact"));
lf[49]=C_h_intern(&lf[49],12, C_text("scheme#floor"));
lf[50]=C_h_intern(&lf[50],18, C_text("scheme#make-vector"));
lf[51]=C_h_intern(&lf[51],10, C_text("scheme#eq\077"));
lf[52]=C_h_intern(&lf[52],11, C_text("scheme#eqv\077"));
lf[53]=C_h_intern(&lf[53],13, C_text("scheme#equal\077"));
lf[54]=C_h_intern(&lf[54],15, C_text("scheme#string=\077"));
lf[55]=C_h_intern(&lf[55],18, C_text("scheme#string-ci=\077"));
lf[56]=C_h_intern(&lf[56],8, C_text("scheme#="));
lf[57]=C_h_intern(&lf[57],23, C_text("srfi-69#make-hash-table"));
lf[58]=C_decode_literal(C_heaptop,C_text("\376U0.5\000"));
lf[59]=C_decode_literal(C_heaptop,C_text("\376U0.8000000000000000444089209850062616169452667236328125\000"));
lf[60]=C_h_intern(&lf[60],20, C_text("chicken.base#warning"));
lf[61]=C_h_intern(&lf[61],15, C_text("make-hash-table"));
lf[62]=C_decode_literal(C_heaptop,C_text("\376B\000\000\033user test without user hash"));
lf[63]=C_h_intern(&lf[63],18, C_text("chicken.base#error"));
lf[64]=C_decode_literal(C_heaptop,C_text("\376B\000\000\036min-load greater than max-load"));
lf[65]=C_h_intern(&lf[65],18, C_text("chicken.flonum#fp<"));
lf[66]=C_h_intern_kw(&lf[66],4, C_text("test"));
lf[67]=C_h_intern(&lf[67],19, C_text("##sys#check-closure"));
lf[68]=C_h_intern_kw(&lf[68],4, C_text("hash"));
lf[69]=C_h_intern_kw(&lf[69],4, C_text("size"));
lf[70]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014invalid size"));
lf[71]=C_h_intern_kw(&lf[71],7, C_text("initial"));
lf[72]=C_h_intern_kw(&lf[72],8, C_text("min-load"));
lf[73]=C_decode_literal(C_heaptop,C_text("\376U0.0\000"));
lf[74]=C_decode_literal(C_heaptop,C_text("\376U1.0\000"));
lf[75]=C_decode_literal(C_heaptop,C_text("\376B\000\000\020invalid min-load"));
lf[76]=C_h_intern(&lf[76],19, C_text("##sys#check-inexact"));
lf[77]=C_h_intern_kw(&lf[77],8, C_text("max-load"));
lf[78]=C_decode_literal(C_heaptop,C_text("\376B\000\000\020invalid max-load"));
lf[79]=C_h_intern_kw(&lf[79],9, C_text("weak-keys"));
lf[80]=C_h_intern_kw(&lf[80],11, C_text("weak-values"));
lf[81]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017unknown keyword"));
lf[82]=C_decode_literal(C_heaptop,C_text("\376B\000\000\025missing keyword value"));
lf[83]=C_decode_literal(C_heaptop,C_text("\376B\000\000\017missing keyword"));
lf[84]=C_decode_literal(C_heaptop,C_text("\376B\000\000\014invalid size"));
lf[85]=C_h_intern(&lf[85],19, C_text("srfi-69#hash-table\077"));
lf[86]=C_h_intern(&lf[86],23, C_text("srfi-69#hash-table-size"));
lf[87]=C_h_intern(&lf[87],15, C_text("hash-table-size"));
lf[88]=C_h_intern(&lf[88],39, C_text("srfi-69#hash-table-equivalence-function"));
lf[89]=C_h_intern(&lf[89],31, C_text("hash-table-equivalence-function"));
lf[90]=C_h_intern(&lf[90],32, C_text("srfi-69#hash-table-hash-function"));
lf[91]=C_h_intern(&lf[91],24, C_text("hash-table-hash-function"));
lf[92]=C_h_intern(&lf[92],27, C_text("srfi-69#hash-table-min-load"));
lf[93]=C_h_intern(&lf[93],19, C_text("hash-table-min-load"));
lf[94]=C_h_intern(&lf[94],27, C_text("srfi-69#hash-table-max-load"));
lf[95]=C_h_intern(&lf[95],19, C_text("hash-table-max-load"));
lf[96]=C_h_intern(&lf[96],28, C_text("srfi-69#hash-table-weak-keys"));
lf[97]=C_h_intern(&lf[97],20, C_text("hash-table-weak-keys"));
lf[98]=C_h_intern(&lf[98],30, C_text("srfi-69#hash-table-weak-values"));
lf[99]=C_h_intern(&lf[99],22, C_text("hash-table-weak-values"));
lf[100]=C_h_intern(&lf[100],31, C_text("srfi-69#hash-table-has-initial\077"));
lf[101]=C_h_intern(&lf[101],23, C_text("hash-table-has-initial\077"));
lf[102]=C_h_intern(&lf[102],26, C_text("srfi-69#hash-table-initial"));
lf[103]=C_h_intern(&lf[103],18, C_text("hash-table-initial"));
lf[104]=C_h_intern(&lf[104],26, C_text("srfi-69#hash-table-resize!"));
lf[106]=C_h_intern(&lf[106],23, C_text("srfi-69#hash-table-copy"));
lf[107]=C_h_intern(&lf[107],15, C_text("hash-table-copy"));
lf[108]=C_h_intern(&lf[108],26, C_text("srfi-69#hash-table-update!"));
lf[109]=C_h_intern(&lf[109],18, C_text("hash-table-update!"));
lf[110]=C_h_intern_kw(&lf[110],12, C_text("access-error"));
lf[111]=C_decode_literal(C_heaptop,C_text("\376B\000\000\037hash-table does not contain key"));
lf[113]=C_h_intern(&lf[113],34, C_text("srfi-69#hash-table-update!/default"));
lf[114]=C_h_intern(&lf[114],26, C_text("hash-table-update!/default"));
lf[115]=C_h_intern(&lf[115],23, C_text("srfi-69#hash-table-set!"));
lf[116]=C_h_intern(&lf[116],15, C_text("hash-table-set!"));
lf[117]=C_h_intern(&lf[117],21, C_text("##sys#undefined-value"));
lf[118]=C_h_intern(&lf[118],22, C_text("srfi-69#hash-table-ref"));
lf[119]=C_h_intern(&lf[119],30, C_text("srfi-69#hash-table-ref/default"));
lf[120]=C_h_intern(&lf[120],22, C_text("hash-table-ref/default"));
lf[121]=C_h_intern(&lf[121],26, C_text("srfi-69#hash-table-exists\077"));
lf[122]=C_h_intern(&lf[122],18, C_text("hash-table-exists\077"));
lf[123]=C_h_intern(&lf[123],26, C_text("srfi-69#hash-table-delete!"));
lf[124]=C_h_intern(&lf[124],18, C_text("hash-table-delete!"));
lf[125]=C_h_intern(&lf[125],26, C_text("srfi-69#hash-table-remove!"));
lf[126]=C_h_intern(&lf[126],18, C_text("hash-table-remove!"));
lf[127]=C_h_intern(&lf[127],25, C_text("srfi-69#hash-table-clear!"));
lf[128]=C_h_intern(&lf[128],17, C_text("hash-table-clear!"));
lf[129]=C_h_intern(&lf[129],19, C_text("scheme#vector-fill!"));
lf[131]=C_h_intern(&lf[131],25, C_text("srfi-69#hash-table-merge!"));
lf[132]=C_h_intern(&lf[132],17, C_text("hash-table-merge!"));
lf[133]=C_h_intern(&lf[133],24, C_text("srfi-69#hash-table-merge"));
lf[134]=C_h_intern(&lf[134],16, C_text("hash-table-merge"));
lf[135]=C_h_intern(&lf[135],25, C_text("srfi-69#hash-table->alist"));
lf[136]=C_h_intern(&lf[136],17, C_text("hash-table->alist"));
lf[137]=C_h_intern(&lf[137],25, C_text("srfi-69#alist->hash-table"));
lf[138]=C_h_intern(&lf[138],17, C_text("alist->hash-table"));
lf[139]=C_h_intern(&lf[139],23, C_text("srfi-69#hash-table-keys"));
lf[140]=C_h_intern(&lf[140],15, C_text("hash-table-keys"));
lf[141]=C_h_intern(&lf[141],25, C_text("srfi-69#hash-table-values"));
lf[142]=C_h_intern(&lf[142],17, C_text("hash-table-values"));
lf[144]=C_h_intern(&lf[144],8, C_text("for-each"));
lf[146]=C_h_intern(&lf[146],23, C_text("srfi-69#hash-table-fold"));
lf[147]=C_h_intern(&lf[147],15, C_text("hash-table-fold"));
lf[148]=C_h_intern(&lf[148],27, C_text("srfi-69#hash-table-for-each"));
lf[149]=C_h_intern(&lf[149],19, C_text("hash-table-for-each"));
lf[150]=C_h_intern(&lf[150],23, C_text("srfi-69#hash-table-walk"));
lf[151]=C_h_intern(&lf[151],15, C_text("hash-table-walk"));
lf[152]=C_h_intern(&lf[152],22, C_text("srfi-69#hash-table-map"));
lf[153]=C_h_intern(&lf[153],14, C_text("hash-table-map"));
lf[154]=C_h_intern(&lf[154],11, C_text("##sys#print"));
lf[155]=C_decode_literal(C_heaptop,C_text("\376B\000\000\002)>"));
lf[156]=C_decode_literal(C_heaptop,C_text("\376B\000\000\016#<hash-table ("));
lf[157]=C_h_intern(&lf[157],29, C_text("##sys#register-record-printer"));
lf[158]=C_h_intern(&lf[158],14, C_text("hash-table-ref"));
lf[159]=C_decode_literal(C_heaptop,C_text("\376B\000\000\037hash-table does not contain key"));
lf[160]=C_h_intern(&lf[160],31, C_text("chicken.base#getter-with-setter"));
lf[161]=C_decode_literal(C_heaptop,C_text("\376B\000\000\035(hash-table-ref ht key . def)"));
lf[162]=C_h_intern(&lf[162],27, C_text("chicken.base#make-parameter"));
lf[163]=C_h_intern(&lf[163],34, C_text("chicken.platform#register-feature!"));
lf[164]=C_h_intern(&lf[164],7, C_text("srfi-69"));
C_register_lf2(lf,165,create_ptable());{}
t2=(*a=C_CLOSURE_TYPE|2,a[1]=(C_word)f_1603,a[2]=t1,tmp=(C_word)a,a+=3,tmp);{
C_word *av2=av;
av2[0]=C_SCHEME_UNDEFINED;
av2[1]=t2;
C_library_toplevel(2,av2);}}

#ifdef C_ENABLE_PTABLES
static C_PTABLE_ENTRY ptable[254] = {
{C_text("f_1603:srfi_2d69_2escm"),(void*)f_1603},
{C_text("f_1606:srfi_2d69_2escm"),(void*)f_1606},
{C_text("f_1610:srfi_2d69_2escm"),(void*)f_1610},
{C_text("f_1613:srfi_2d69_2escm"),(void*)f_1613},
{C_text("f_1619:srfi_2d69_2escm"),(void*)f_1619},
{C_text("f_1635:srfi_2d69_2escm"),(void*)f_1635},
{C_text("f_1638:srfi_2d69_2escm"),(void*)f_1638},
{C_text("f_1802:srfi_2d69_2escm"),(void*)f_1802},
{C_text("f_1808:srfi_2d69_2escm"),(void*)f_1808},
{C_text("f_1840:srfi_2d69_2escm"),(void*)f_1840},
{C_text("f_1856:srfi_2d69_2escm"),(void*)f_1856},
{C_text("f_1893:srfi_2d69_2escm"),(void*)f_1893},
{C_text("f_1919:srfi_2d69_2escm"),(void*)f_1919},
{C_text("f_1938:srfi_2d69_2escm"),(void*)f_1938},
{C_text("f_2007:srfi_2d69_2escm"),(void*)f_2007},
{C_text("f_2014:srfi_2d69_2escm"),(void*)f_2014},
{C_text("f_2033:srfi_2d69_2escm"),(void*)f_2033},
{C_text("f_2049:srfi_2d69_2escm"),(void*)f_2049},
{C_text("f_2052:srfi_2d69_2escm"),(void*)f_2052},
{C_text("f_2206:srfi_2d69_2escm"),(void*)f_2206},
{C_text("f_2245:srfi_2d69_2escm"),(void*)f_2245},
{C_text("f_2261:srfi_2d69_2escm"),(void*)f_2261},
{C_text("f_2293:srfi_2d69_2escm"),(void*)f_2293},
{C_text("f_2405:srfi_2d69_2escm"),(void*)f_2405},
{C_text("f_2549:srfi_2d69_2escm"),(void*)f_2549},
{C_text("f_2577:srfi_2d69_2escm"),(void*)f_2577},
{C_text("f_2593:srfi_2d69_2escm"),(void*)f_2593},
{C_text("f_2625:srfi_2d69_2escm"),(void*)f_2625},
{C_text("f_2654:srfi_2d69_2escm"),(void*)f_2654},
{C_text("f_2659:srfi_2d69_2escm"),(void*)f_2659},
{C_text("f_2661:srfi_2d69_2escm"),(void*)f_2661},
{C_text("f_2664:srfi_2d69_2escm"),(void*)f_2664},
{C_text("f_2681:srfi_2d69_2escm"),(void*)f_2681},
{C_text("f_2715:srfi_2d69_2escm"),(void*)f_2715},
{C_text("f_2737:srfi_2d69_2escm"),(void*)f_2737},
{C_text("f_2831:srfi_2d69_2escm"),(void*)f_2831},
{C_text("f_2975:srfi_2d69_2escm"),(void*)f_2975},
{C_text("f_3013:srfi_2d69_2escm"),(void*)f_3013},
{C_text("f_3025:srfi_2d69_2escm"),(void*)f_3025},
{C_text("f_3037:srfi_2d69_2escm"),(void*)f_3037},
{C_text("f_3072:srfi_2d69_2escm"),(void*)f_3072},
{C_text("f_3092:srfi_2d69_2escm"),(void*)f_3092},
{C_text("f_3104:srfi_2d69_2escm"),(void*)f_3104},
{C_text("f_3116:srfi_2d69_2escm"),(void*)f_3116},
{C_text("f_3132:srfi_2d69_2escm"),(void*)f_3132},
{C_text("f_3164:srfi_2d69_2escm"),(void*)f_3164},
{C_text("f_3191:srfi_2d69_2escm"),(void*)f_3191},
{C_text("f_3222:srfi_2d69_2escm"),(void*)f_3222},
{C_text("f_3225:srfi_2d69_2escm"),(void*)f_3225},
{C_text("f_3265:srfi_2d69_2escm"),(void*)f_3265},
{C_text("f_3268:srfi_2d69_2escm"),(void*)f_3268},
{C_text("f_3332:srfi_2d69_2escm"),(void*)f_3332},
{C_text("f_3363:srfi_2d69_2escm"),(void*)f_3363},
{C_text("f_3366:srfi_2d69_2escm"),(void*)f_3366},
{C_text("f_3406:srfi_2d69_2escm"),(void*)f_3406},
{C_text("f_3409:srfi_2d69_2escm"),(void*)f_3409},
{C_text("f_3475:srfi_2d69_2escm"),(void*)f_3475},
{C_text("f_3481:srfi_2d69_2escm"),(void*)f_3481},
{C_text("f_3505:srfi_2d69_2escm"),(void*)f_3505},
{C_text("f_3523:srfi_2d69_2escm"),(void*)f_3523},
{C_text("f_3528:srfi_2d69_2escm"),(void*)f_3528},
{C_text("f_3533:srfi_2d69_2escm"),(void*)f_3533},
{C_text("f_3537:srfi_2d69_2escm"),(void*)f_3537},
{C_text("f_3540:srfi_2d69_2escm"),(void*)f_3540},
{C_text("f_3557:srfi_2d69_2escm"),(void*)f_3557},
{C_text("f_3561:srfi_2d69_2escm"),(void*)f_3561},
{C_text("f_3564:srfi_2d69_2escm"),(void*)f_3564},
{C_text("f_3567:srfi_2d69_2escm"),(void*)f_3567},
{C_text("f_3577:srfi_2d69_2escm"),(void*)f_3577},
{C_text("f_3581:srfi_2d69_2escm"),(void*)f_3581},
{C_text("f_3589:srfi_2d69_2escm"),(void*)f_3589},
{C_text("f_3604:srfi_2d69_2escm"),(void*)f_3604},
{C_text("f_3606:srfi_2d69_2escm"),(void*)f_3606},
{C_text("f_3682:srfi_2d69_2escm"),(void*)f_3682},
{C_text("f_3685:srfi_2d69_2escm"),(void*)f_3685},
{C_text("f_3688:srfi_2d69_2escm"),(void*)f_3688},
{C_text("f_3691:srfi_2d69_2escm"),(void*)f_3691},
{C_text("f_3694:srfi_2d69_2escm"),(void*)f_3694},
{C_text("f_3698:srfi_2d69_2escm"),(void*)f_3698},
{C_text("f_3714:srfi_2d69_2escm"),(void*)f_3714},
{C_text("f_3718:srfi_2d69_2escm"),(void*)f_3718},
{C_text("f_3723:srfi_2d69_2escm"),(void*)f_3723},
{C_text("f_3734:srfi_2d69_2escm"),(void*)f_3734},
{C_text("f_3744:srfi_2d69_2escm"),(void*)f_3744},
{C_text("f_3748:srfi_2d69_2escm"),(void*)f_3748},
{C_text("f_3751:srfi_2d69_2escm"),(void*)f_3751},
{C_text("f_3762:srfi_2d69_2escm"),(void*)f_3762},
{C_text("f_3772:srfi_2d69_2escm"),(void*)f_3772},
{C_text("f_3782:srfi_2d69_2escm"),(void*)f_3782},
{C_text("f_3785:srfi_2d69_2escm"),(void*)f_3785},
{C_text("f_3803:srfi_2d69_2escm"),(void*)f_3803},
{C_text("f_3813:srfi_2d69_2escm"),(void*)f_3813},
{C_text("f_3816:srfi_2d69_2escm"),(void*)f_3816},
{C_text("f_3836:srfi_2d69_2escm"),(void*)f_3836},
{C_text("f_3839:srfi_2d69_2escm"),(void*)f_3839},
{C_text("f_3911:srfi_2d69_2escm"),(void*)f_3911},
{C_text("f_3914:srfi_2d69_2escm"),(void*)f_3914},
{C_text("f_3917:srfi_2d69_2escm"),(void*)f_3917},
{C_text("f_3943:srfi_2d69_2escm"),(void*)f_3943},
{C_text("f_3946:srfi_2d69_2escm"),(void*)f_3946},
{C_text("f_3963:srfi_2d69_2escm"),(void*)f_3963},
{C_text("f_3966:srfi_2d69_2escm"),(void*)f_3966},
{C_text("f_3973:srfi_2d69_2escm"),(void*)f_3973},
{C_text("f_3979:srfi_2d69_2escm"),(void*)f_3979},
{C_text("f_3988:srfi_2d69_2escm"),(void*)f_3988},
{C_text("f_3997:srfi_2d69_2escm"),(void*)f_3997},
{C_text("f_4006:srfi_2d69_2escm"),(void*)f_4006},
{C_text("f_4015:srfi_2d69_2escm"),(void*)f_4015},
{C_text("f_4024:srfi_2d69_2escm"),(void*)f_4024},
{C_text("f_4033:srfi_2d69_2escm"),(void*)f_4033},
{C_text("f_4042:srfi_2d69_2escm"),(void*)f_4042},
{C_text("f_4054:srfi_2d69_2escm"),(void*)f_4054},
{C_text("f_4081:srfi_2d69_2escm"),(void*)f_4081},
{C_text("f_4091:srfi_2d69_2escm"),(void*)f_4091},
{C_text("f_4104:srfi_2d69_2escm"),(void*)f_4104},
{C_text("f_4120:srfi_2d69_2escm"),(void*)f_4120},
{C_text("f_4148:srfi_2d69_2escm"),(void*)f_4148},
{C_text("f_4155:srfi_2d69_2escm"),(void*)f_4155},
{C_text("f_4161:srfi_2d69_2escm"),(void*)f_4161},
{C_text("f_4167:srfi_2d69_2escm"),(void*)f_4167},
{C_text("f_4170:srfi_2d69_2escm"),(void*)f_4170},
{C_text("f_4173:srfi_2d69_2escm"),(void*)f_4173},
{C_text("f_4190:srfi_2d69_2escm"),(void*)f_4190},
{C_text("f_4198:srfi_2d69_2escm"),(void*)f_4198},
{C_text("f_4208:srfi_2d69_2escm"),(void*)f_4208},
{C_text("f_4218:srfi_2d69_2escm"),(void*)f_4218},
{C_text("f_4221:srfi_2d69_2escm"),(void*)f_4221},
{C_text("f_4237:srfi_2d69_2escm"),(void*)f_4237},
{C_text("f_4293:srfi_2d69_2escm"),(void*)f_4293},
{C_text("f_4299:srfi_2d69_2escm"),(void*)f_4299},
{C_text("f_4320:srfi_2d69_2escm"),(void*)f_4320},
{C_text("f_4334:srfi_2d69_2escm"),(void*)f_4334},
{C_text("f_4343:srfi_2d69_2escm"),(void*)f_4343},
{C_text("f_4347:srfi_2d69_2escm"),(void*)f_4347},
{C_text("f_4353:srfi_2d69_2escm"),(void*)f_4353},
{C_text("f_4356:srfi_2d69_2escm"),(void*)f_4356},
{C_text("f_4379:srfi_2d69_2escm"),(void*)f_4379},
{C_text("f_4397:srfi_2d69_2escm"),(void*)f_4397},
{C_text("f_4412:srfi_2d69_2escm"),(void*)f_4412},
{C_text("f_4426:srfi_2d69_2escm"),(void*)f_4426},
{C_text("f_4436:srfi_2d69_2escm"),(void*)f_4436},
{C_text("f_4454:srfi_2d69_2escm"),(void*)f_4454},
{C_text("f_4466:srfi_2d69_2escm"),(void*)f_4466},
{C_text("f_4489:srfi_2d69_2escm"),(void*)f_4489},
{C_text("f_4499:srfi_2d69_2escm"),(void*)f_4499},
{C_text("f_4517:srfi_2d69_2escm"),(void*)f_4517},
{C_text("f_4526:srfi_2d69_2escm"),(void*)f_4526},
{C_text("f_4529:srfi_2d69_2escm"),(void*)f_4529},
{C_text("f_4561:srfi_2d69_2escm"),(void*)f_4561},
{C_text("f_4570:srfi_2d69_2escm"),(void*)f_4570},
{C_text("f_4594:srfi_2d69_2escm"),(void*)f_4594},
{C_text("f_4612:srfi_2d69_2escm"),(void*)f_4612},
{C_text("f_4627:srfi_2d69_2escm"),(void*)f_4627},
{C_text("f_4641:srfi_2d69_2escm"),(void*)f_4641},
{C_text("f_4651:srfi_2d69_2escm"),(void*)f_4651},
{C_text("f_4677:srfi_2d69_2escm"),(void*)f_4677},
{C_text("f_4700:srfi_2d69_2escm"),(void*)f_4700},
{C_text("f_4710:srfi_2d69_2escm"),(void*)f_4710},
{C_text("f_4733:srfi_2d69_2escm"),(void*)f_4733},
{C_text("f_4736:srfi_2d69_2escm"),(void*)f_4736},
{C_text("f_4760:srfi_2d69_2escm"),(void*)f_4760},
{C_text("f_4767:srfi_2d69_2escm"),(void*)f_4767},
{C_text("f_4772:srfi_2d69_2escm"),(void*)f_4772},
{C_text("f_4799:srfi_2d69_2escm"),(void*)f_4799},
{C_text("f_4817:srfi_2d69_2escm"),(void*)f_4817},
{C_text("f_4832:srfi_2d69_2escm"),(void*)f_4832},
{C_text("f_4838:srfi_2d69_2escm"),(void*)f_4838},
{C_text("f_4849:srfi_2d69_2escm"),(void*)f_4849},
{C_text("f_4898:srfi_2d69_2escm"),(void*)f_4898},
{C_text("f_4928:srfi_2d69_2escm"),(void*)f_4928},
{C_text("f_4950:srfi_2d69_2escm"),(void*)f_4950},
{C_text("f_4952:srfi_2d69_2escm"),(void*)f_4952},
{C_text("f_4968:srfi_2d69_2escm"),(void*)f_4968},
{C_text("f_4983:srfi_2d69_2escm"),(void*)f_4983},
{C_text("f_5022:srfi_2d69_2escm"),(void*)f_5022},
{C_text("f_5038:srfi_2d69_2escm"),(void*)f_5038},
{C_text("f_5058:srfi_2d69_2escm"),(void*)f_5058},
{C_text("f_5074:srfi_2d69_2escm"),(void*)f_5074},
{C_text("f_5089:srfi_2d69_2escm"),(void*)f_5089},
{C_text("f_5129:srfi_2d69_2escm"),(void*)f_5129},
{C_text("f_5142:srfi_2d69_2escm"),(void*)f_5142},
{C_text("f_5166:srfi_2d69_2escm"),(void*)f_5166},
{C_text("f_5182:srfi_2d69_2escm"),(void*)f_5182},
{C_text("f_5202:srfi_2d69_2escm"),(void*)f_5202},
{C_text("f_5249:srfi_2d69_2escm"),(void*)f_5249},
{C_text("f_5268:srfi_2d69_2escm"),(void*)f_5268},
{C_text("f_5297:srfi_2d69_2escm"),(void*)f_5297},
{C_text("f_5304:srfi_2d69_2escm"),(void*)f_5304},
{C_text("f_5318:srfi_2d69_2escm"),(void*)f_5318},
{C_text("f_5331:srfi_2d69_2escm"),(void*)f_5331},
{C_text("f_5344:srfi_2d69_2escm"),(void*)f_5344},
{C_text("f_5363:srfi_2d69_2escm"),(void*)f_5363},
{C_text("f_5393:srfi_2d69_2escm"),(void*)f_5393},
{C_text("f_5400:srfi_2d69_2escm"),(void*)f_5400},
{C_text("f_5409:srfi_2d69_2escm"),(void*)f_5409},
{C_text("f_5421:srfi_2d69_2escm"),(void*)f_5421},
{C_text("f_5431:srfi_2d69_2escm"),(void*)f_5431},
{C_text("f_5444:srfi_2d69_2escm"),(void*)f_5444},
{C_text("f_5457:srfi_2d69_2escm"),(void*)f_5457},
{C_text("f_5470:srfi_2d69_2escm"),(void*)f_5470},
{C_text("f_5477:srfi_2d69_2escm"),(void*)f_5477},
{C_text("f_5489:srfi_2d69_2escm"),(void*)f_5489},
{C_text("f_5503:srfi_2d69_2escm"),(void*)f_5503},
{C_text("f_5505:srfi_2d69_2escm"),(void*)f_5505},
{C_text("f_5520:srfi_2d69_2escm"),(void*)f_5520},
{C_text("f_5536:srfi_2d69_2escm"),(void*)f_5536},
{C_text("f_5578:srfi_2d69_2escm"),(void*)f_5578},
{C_text("f_5585:srfi_2d69_2escm"),(void*)f_5585},
{C_text("f_5586:srfi_2d69_2escm"),(void*)f_5586},
{C_text("f_5599:srfi_2d69_2escm"),(void*)f_5599},
{C_text("f_5607:srfi_2d69_2escm"),(void*)f_5607},
{C_text("f_5609:srfi_2d69_2escm"),(void*)f_5609},
{C_text("f_5619:srfi_2d69_2escm"),(void*)f_5619},
{C_text("f_5632:srfi_2d69_2escm"),(void*)f_5632},
{C_text("f_5647:srfi_2d69_2escm"),(void*)f_5647},
{C_text("f_5663:srfi_2d69_2escm"),(void*)f_5663},
{C_text("f_5697:srfi_2d69_2escm"),(void*)f_5697},
{C_text("f_5712:srfi_2d69_2escm"),(void*)f_5712},
{C_text("f_5728:srfi_2d69_2escm"),(void*)f_5728},
{C_text("f_5762:srfi_2d69_2escm"),(void*)f_5762},
{C_text("f_5774:srfi_2d69_2escm"),(void*)f_5774},
{C_text("f_5782:srfi_2d69_2escm"),(void*)f_5782},
{C_text("f_5803:srfi_2d69_2escm"),(void*)f_5803},
{C_text("f_5812:srfi_2d69_2escm"),(void*)f_5812},
{C_text("f_5822:srfi_2d69_2escm"),(void*)f_5822},
{C_text("f_5835:srfi_2d69_2escm"),(void*)f_5835},
{C_text("f_5847:srfi_2d69_2escm"),(void*)f_5847},
{C_text("f_5863:srfi_2d69_2escm"),(void*)f_5863},
{C_text("f_5891:srfi_2d69_2escm"),(void*)f_5891},
{C_text("f_5901:srfi_2d69_2escm"),(void*)f_5901},
{C_text("f_5908:srfi_2d69_2escm"),(void*)f_5908},
{C_text("f_5913:srfi_2d69_2escm"),(void*)f_5913},
{C_text("f_5920:srfi_2d69_2escm"),(void*)f_5920},
{C_text("f_5925:srfi_2d69_2escm"),(void*)f_5925},
{C_text("f_5932:srfi_2d69_2escm"),(void*)f_5932},
{C_text("f_5937:srfi_2d69_2escm"),(void*)f_5937},
{C_text("f_5944:srfi_2d69_2escm"),(void*)f_5944},
{C_text("f_5949:srfi_2d69_2escm"),(void*)f_5949},
{C_text("f_5957:srfi_2d69_2escm"),(void*)f_5957},
{C_text("f_5960:srfi_2d69_2escm"),(void*)f_5960},
{C_text("f_5962:srfi_2d69_2escm"),(void*)f_5962},
{C_text("f_5966:srfi_2d69_2escm"),(void*)f_5966},
{C_text("f_5969:srfi_2d69_2escm"),(void*)f_5969},
{C_text("f_5978:srfi_2d69_2escm"),(void*)f_5978},
{C_text("f_5988:srfi_2d69_2escm"),(void*)f_5988},
{C_text("f_6000:srfi_2d69_2escm"),(void*)f_6000},
{C_text("f_6015:srfi_2d69_2escm"),(void*)f_6015},
{C_text("f_6057:srfi_2d69_2escm"),(void*)f_6057},
{C_text("f_6076:srfi_2d69_2escm"),(void*)f_6076},
{C_text("f_6098:srfi_2d69_2escm"),(void*)f_6098},
{C_text("f_6107:srfi_2d69_2escm"),(void*)f_6107},
{C_text("f_6121:srfi_2d69_2escm"),(void*)f_6121},
{C_text("toplevel:srfi_2d69_2escm"),(void*)C_toplevel},
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
o|hiding unexported module binding: srfi-69#hash-default-randomization 
o|hiding unexported module binding: srfi-69#$flonum-hash 
o|hiding unexported module binding: srfi-69#*eq?-hash 
o|hiding unexported module binding: srfi-69#*eqv?-hash 
o|hiding unexported module binding: srfi-69#*equal?-hash 
o|hiding unexported module binding: srfi-69#constant652 
o|hiding unexported module binding: srfi-69#hash-table-canonical-length 
o|hiding unexported module binding: srfi-69#*make-hash-table 
o|hiding unexported module binding: srfi-69#hash-table-rehash! 
o|hiding unexported module binding: srfi-69#*hash-table-copy 
o|hiding unexported module binding: srfi-69#*hash-table-update!/default 
o|hiding unexported module binding: srfi-69#*hash-table-merge! 
o|hiding unexported module binding: srfi-69#*hash-table-for-each 
o|hiding unexported module binding: srfi-69#*hash-table-fold 
S|applied compiler syntax:
S|  ##sys#for-each		1
S|  scheme#for-each		1
o|eliminated procedure checks: 219 
o|specializations:
o|  1 (##sys#check-list (or pair list) *)
o|  4 (chicken.flonum#fp< float float)
o|  8 (scheme#eqv? (or eof null fixnum char boolean symbol keyword) *)
o|  1 (scheme#car pair)
o|  2 (scheme#cdr pair)
o|  2 (scheme#memq * list)
o|  2 (scheme#positive? fixnum)
(o e)|safe calls: 819 
(o e)|assignments to immediate values: 7 
o|safe globals: (##sys#number-hash-hook) 
o|contracted procedure: "(srfi-69.scm:210) g6667" 
o|contracted procedure: "(srfi-69.scm:171) g7172" 
o|inlining procedure: k1652 
o|inlining procedure: k1652 
o|contracted procedure: "(srfi-69.scm:210) g7475" 
o|inlining procedure: k1670 
o|inlining procedure: k1670 
o|contracted procedure: "(srfi-69.scm:203) g8283" 
o|inlining procedure: k1681 
o|contracted procedure: "(srfi-69.scm:198) g123124" 
o|contracted procedure: "(srfi-69.scm:198) g119120" 
o|contracted procedure: "(srfi-69.scm:198) g115116" 
o|contracted procedure: "(srfi-69.scm:198) g111112" 
o|contracted procedure: "(srfi-69.scm:198) g107108" 
o|contracted procedure: "(srfi-69.scm:198) g103104" 
o|contracted procedure: "(srfi-69.scm:198) g99100" 
o|contracted procedure: "(srfi-69.scm:198) g9596" 
o|inlining procedure: k1681 
o|contracted procedure: "(srfi-69.scm:199) g127128" 
o|contracted procedure: "(srfi-69.scm:224) g149150" 
o|contracted procedure: "(srfi-69.scm:171) g154155" 
o|inlining procedure: k1870 
o|inlining procedure: k1870 
o|contracted procedure: "(srfi-69.scm:224) g157158" 
o|contracted procedure: "(srfi-69.scm:239) g179180" 
o|contracted procedure: "(srfi-69.scm:171) g184185" 
o|inlining procedure: k1952 
o|inlining procedure: k1952 
o|contracted procedure: "(srfi-69.scm:239) g187188" 
o|contracted procedure: "(srfi-69.scm:233) g191192" 
o|inlining procedure: k2009 
o|inlining procedure: k2009 
o|inlining procedure: k2019 
o|inlining procedure: k2019 
o|contracted procedure: "(srfi-69.scm:260) g218219" 
o|contracted procedure: "(srfi-69.scm:171) g223224" 
o|inlining procedure: k2066 
o|inlining procedure: k2066 
o|contracted procedure: "(srfi-69.scm:260) g226227" 
o|contracted procedure: "(srfi-69.scm:254) g230231" 
o|contracted procedure: "(srfi-69.scm:284) g283284" 
o|contracted procedure: "(srfi-69.scm:171) g288289" 
o|inlining procedure: k2275 
o|inlining procedure: k2275 
o|contracted procedure: "(srfi-69.scm:284) srfi-69#*eq?-hash" 
o|inlining procedure: k2123 
o|inlining procedure: k2123 
o|inlining procedure: k2145 
o|inlining procedure: k2145 
o|inlining procedure: k2163 
o|inlining procedure: k2163 
o|inlining procedure: k2181 
o|contracted procedure: "(srfi-69.scm:276) g243244" 
o|contracted procedure: "(srfi-69.scm:233) g247248" 
o|inlining procedure: k2181 
o|contracted procedure: "(srfi-69.scm:277) g251252" 
o|contracted procedure: "(srfi-69.scm:254) g255256" 
o|inlining procedure: k2221 
o|inlining procedure: k2221 
o|contracted procedure: "(srfi-69.scm:279) g262263" 
o|contracted procedure: "(srfi-69.scm:278) g259260" 
o|contracted procedure: "(srfi-69.scm:310) g388389" 
o|contracted procedure: "(srfi-69.scm:171) g393394" 
o|inlining procedure: k2607 
o|inlining procedure: k2607 
o|contracted procedure: "(srfi-69.scm:310) srfi-69#*eqv?-hash" 
o|inlining procedure: k2322 
o|inlining procedure: k2322 
o|inlining procedure: k2344 
o|inlining procedure: k2344 
o|inlining procedure: k2362 
o|inlining procedure: k2362 
o|inlining procedure: k2380 
o|contracted procedure: "(srfi-69.scm:301) g300301" 
o|contracted procedure: "(srfi-69.scm:233) g304305" 
o|inlining procedure: k2380 
o|contracted procedure: "(srfi-69.scm:302) g308309" 
o|contracted procedure: "(srfi-69.scm:254) g312313" 
o|inlining procedure: k2420 
o|contracted procedure: "(srfi-69.scm:303) g316317" 
o|inlining procedure: k2428 
o|contracted procedure: "(srfi-69.scm:198) g357358" 
o|contracted procedure: "(srfi-69.scm:198) g353354" 
o|contracted procedure: "(srfi-69.scm:198) g349350" 
o|contracted procedure: "(srfi-69.scm:198) g345346" 
o|contracted procedure: "(srfi-69.scm:198) g341342" 
o|contracted procedure: "(srfi-69.scm:198) g337338" 
o|contracted procedure: "(srfi-69.scm:198) g333334" 
o|contracted procedure: "(srfi-69.scm:198) g329330" 
o|inlining procedure: k2428 
o|contracted procedure: "(srfi-69.scm:199) g361362" 
o|inlining procedure: k2420 
o|contracted procedure: "(srfi-69.scm:305) g367368" 
o|contracted procedure: "(srfi-69.scm:304) g364365" 
o|inlining procedure: k2683 
o|inlining procedure: k2683 
o|inlining procedure: k2739 
o|inlining procedure: k2739 
o|inlining procedure: k2757 
o|inlining procedure: k2757 
o|inlining procedure: k2779 
o|inlining procedure: k2779 
o|inlining procedure: k2797 
o|inlining procedure: k2797 
o|contracted procedure: "(srfi-69.scm:379) g430431" 
o|contracted procedure: "(srfi-69.scm:233) g434435" 
o|inlining procedure: k2826 
o|contracted procedure: "(srfi-69.scm:380) g438439" 
o|contracted procedure: "(srfi-69.scm:254) g442443" 
o|inlining procedure: k2826 
o|contracted procedure: "(srfi-69.scm:381) g446447" 
o|inlining procedure: k2854 
o|contracted procedure: "(srfi-69.scm:198) g487488" 
o|contracted procedure: "(srfi-69.scm:198) g483484" 
o|contracted procedure: "(srfi-69.scm:198) g479480" 
o|contracted procedure: "(srfi-69.scm:198) g475476" 
o|contracted procedure: "(srfi-69.scm:198) g471472" 
o|contracted procedure: "(srfi-69.scm:198) g467468" 
o|contracted procedure: "(srfi-69.scm:198) g463464" 
o|contracted procedure: "(srfi-69.scm:198) g459460" 
o|inlining procedure: k2854 
o|contracted procedure: "(srfi-69.scm:199) g491492" 
o|inlining procedure: k2979 
o|inlining procedure: k2979 
o|contracted procedure: "(srfi-69.scm:383) g500501" 
o|inlining procedure: k3007 
o|inlining procedure: k3007 
o|contracted procedure: "(srfi-69.scm:385) g511512" 
o|inlining procedure: k3067 
o|inlining procedure: k3067 
o|inlining procedure: k3084 
o|inlining procedure: k3084 
o|contracted procedure: "(srfi-69.scm:386) g515516" 
o|contracted procedure: "(srfi-69.scm:385) g508509" 
o|contracted procedure: "(srfi-69.scm:383) g497498" 
o|contracted procedure: "(srfi-69.scm:382) g494495" 
o|contracted procedure: "(srfi-69.scm:395) g545546" 
o|contracted procedure: "(srfi-69.scm:171) g550551" 
o|inlining procedure: k3146 
o|inlining procedure: k3146 
o|contracted procedure: "(srfi-69.scm:411) g583584" 
o|contracted procedure: "(srfi-69.scm:171) g588589" 
o|inlining procedure: k3239 
o|inlining procedure: k3239 
o|contracted procedure: "(srfi-69.scm:411) g591592" 
o|contracted procedure: "(srfi-69.scm:423) g625626" 
o|contracted procedure: "(srfi-69.scm:171) g630631" 
o|inlining procedure: k3380 
o|inlining procedure: k3380 
o|contracted procedure: "(srfi-69.scm:423) g633634" 
o|inlining procedure: k3489 
o|inlining procedure: k3489 
o|inlining procedure: k3507 
o|inlining procedure: k3507 
o|inlining procedure: k3541 
o|inlining procedure: k3541 
o|merged explicitly consed rest parameter: rest692701 
o|inlining procedure: k3608 
o|inlining procedure: k3608 
o|inlining procedure: k3626 
o|inlining procedure: k3626 
o|inlining procedure: k3644 
o|inlining procedure: k3644 
o|inlining procedure: k3659 
o|inlining procedure: k3659 
o|consed rest parameter at call site: "(srfi-69.scm:634) srfi-69#*make-hash-table" 9 
o|inlining procedure: k3708 
o|inlining procedure: k3708 
o|inlining procedure: k3725 
o|inlining procedure: k3725 
o|inlining procedure: k3764 
o|inlining procedure: k3764 
o|inlining procedure: k3796 
o|inlining procedure: k3796 
o|inlining procedure: k3814 
o|inlining procedure: k3814 
o|substituted constant variable: a3824 
o|substituted constant variable: a3827 
o|inlining procedure: k3828 
o|substituted constant variable: a3847 
o|substituted constant variable: a3850 
o|inlining procedure: k3828 
o|inlining procedure: k3858 
o|inlining procedure: k3858 
o|inlining procedure: k3861 
o|inlining procedure: k3861 
o|substituted constant variable: a3875 
o|substituted constant variable: a3877 
o|substituted constant variable: a3879 
o|substituted constant variable: a3881 
o|substituted constant variable: a3883 
o|substituted constant variable: a3885 
o|substituted constant variable: a3887 
o|substituted constant variable: a3889 
o|inlining procedure: k3906 
o|inlining procedure: k3906 
o|inlining procedure: k3938 
o|inlining procedure: k3938 
o|inlining procedure: k3958 
o|inlining procedure: k3958 
o|inlining procedure: k4047 
o|inlining procedure: k4047 
o|inlining procedure: k4062 
o|inlining procedure: k4062 
o|contracted procedure: "(srfi-69.scm:707) srfi-69#hash-table-rehash!" 
o|inlining procedure: k4083 
o|inlining procedure: k4083 
o|inlining procedure: k4106 
o|inlining procedure: k4106 
o|inlining procedure: k4239 
o|consed rest parameter at call site: "(srfi-69.scm:733) srfi-69#*make-hash-table" 9 
o|inlining procedure: k4239 
o|inlining procedure: k4301 
o|inlining procedure: k4301 
o|inlining procedure: k4416 
o|inlining procedure: k4428 
o|inlining procedure: k4428 
o|inlining procedure: k4416 
o|inlining procedure: k4491 
o|inlining procedure: k4491 
o|contracted procedure: "(srfi-69.scm:777) g909910" 
o|inlining procedure: k4374 
o|inlining procedure: k4374 
o|inlining procedure: k4386 
o|inlining procedure: k4386 
o|inlining procedure: k4558 
o|inlining procedure: k4558 
o|inlining procedure: k4631 
o|inlining procedure: k4643 
o|inlining procedure: k4643 
o|inlining procedure: k4631 
o|inlining procedure: k4702 
o|inlining procedure: k4702 
o|contracted procedure: "(srfi-69.scm:816) g954955" 
o|inlining procedure: k4589 
o|inlining procedure: k4589 
o|inlining procedure: k4601 
o|inlining procedure: k4601 
o|inlining procedure: k4836 
o|inlining procedure: k4851 
o|inlining procedure: k4851 
o|inlining procedure: k4836 
o|inlining procedure: k4900 
o|inlining procedure: k4900 
o|contracted procedure: "(srfi-69.scm:861) g10021003" 
o|inlining procedure: k4794 
o|inlining procedure: k4794 
o|inlining procedure: k4806 
o|inlining procedure: k4806 
o|inlining procedure: k4969 
o|inlining procedure: k4985 
o|inlining procedure: k4985 
o|inlining procedure: k4969 
o|inlining procedure: k5024 
o|inlining procedure: k5024 
o|inlining procedure: k5075 
o|inlining procedure: k5091 
o|inlining procedure: k5091 
o|inlining procedure: k5075 
o|inlining procedure: k5131 
o|inlining procedure: k5131 
o|inlining procedure: k5192 
o|inlining procedure: k5204 
o|inlining procedure: k5204 
o|inlining procedure: k5192 
o|inlining procedure: k5251 
o|inlining procedure: k5251 
o|inlining procedure: k5320 
o|inlining procedure: k5320 
o|inlining procedure: k5346 
o|inlining procedure: k5346 
o|inlining procedure: k5423 
o|inlining procedure: k5423 
o|inlining procedure: k5446 
o|inlining procedure: k5446 
o|inlining procedure: k5522 
o|inlining procedure: k5522 
o|inlining procedure: k5538 
o|inlining procedure: k5538 
o|inlining procedure: k5611 
o|inlining procedure: k5611 
o|inlining procedure: k5649 
o|inlining procedure: k5649 
o|inlining procedure: k5665 
o|inlining procedure: k5665 
o|inlining procedure: k5714 
o|inlining procedure: k5714 
o|inlining procedure: k5730 
o|inlining procedure: k5730 
o|inlining procedure: k5776 
o|inlining procedure: k5776 
o|inlining procedure: k5814 
o|inlining procedure: k5814 
o|inlining procedure: k5849 
o|inlining procedure: k5849 
o|inlining procedure: k5865 
o|inlining procedure: k5865 
o|inlining procedure: k6001 
o|inlining procedure: k6017 
o|inlining procedure: k6017 
o|inlining procedure: k6001 
o|inlining procedure: k6059 
o|inlining procedure: k6059 
o|inlining procedure: k6109 
o|inlining procedure: k6109 
o|propagated global variable: r61106357 srfi-69#*recursive-hash-max-length* 
o|inlining procedure: k6123 
o|inlining procedure: k6123 
o|propagated global variable: r61246359 srfi-69#*recursive-hash-max-depth* 
o|replaced variables: 1175 
o|removed binding forms: 336 
o|substituted constant variable: i126 
o|substituted constant variable: i122 
o|substituted constant variable: i118 
o|substituted constant variable: i114 
o|substituted constant variable: i110 
o|substituted constant variable: i106 
o|substituted constant variable: i102 
o|substituted constant variable: i98 
o|substituted constant variable: r20206148 
o|substituted constant variable: r20206148 
o|substituted constant variable: i360 
o|substituted constant variable: i356 
o|substituted constant variable: i352 
o|substituted constant variable: i348 
o|substituted constant variable: i344 
o|substituted constant variable: i340 
o|substituted constant variable: i336 
o|substituted constant variable: i332 
o|substituted constant variable: i490 
o|substituted constant variable: i486 
o|substituted constant variable: i482 
o|substituted constant variable: i478 
o|substituted constant variable: i474 
o|substituted constant variable: i470 
o|substituted constant variable: i466 
o|substituted constant variable: i462 
o|substituted constant variable: r30686196 
o|substituted constant variable: r30686196 
o|substituted constant variable: r30686198 
o|substituted constant variable: r30686198 
o|removed unused formal parameters: (weak-keys698 weak-values699) 
o|removed unused parameter to known procedure: weak-keys698 "(srfi-69.scm:634) srfi-69#*make-hash-table" 
o|removed unused parameter to known procedure: weak-values699 "(srfi-69.scm:634) srfi-69#*make-hash-table" 
o|inlining procedure: k3837 
o|substituted constant variable: r38596238 
o|substituted constant variable: r38596240 
o|inlining procedure: k3868 
o|inlining procedure: k3868 
o|substituted constant variable: r40486250 
o|substituted constant variable: r40486251 
o|substituted constant variable: r40636253 
o|removed unused parameter to known procedure: weak-keys698 "(srfi-69.scm:733) srfi-69#*make-hash-table" 
o|removed unused parameter to known procedure: weak-values699 "(srfi-69.scm:733) srfi-69#*make-hash-table" 
o|substituted constant variable: r43026260 
o|substituted constant variable: r43876271 
o|substituted constant variable: r46026283 
o|substituted constant variable: r48076301 
o|substituted constant variable: r50926310 
o|substituted constant variable: r51326313 
o|substituted constant variable: r52056316 
o|substituted constant variable: r52526319 
o|substituted constant variable: r53476323 
o|replaced variables: 397 
o|removed binding forms: 939 
o|inlining procedure: k1661 
o|inlining procedure: k1791 
o|inlining procedure: k1879 
o|inlining procedure: k1961 
o|inlining procedure: k2075 
o|inlining procedure: k2284 
o|inlining procedure: k2616 
o|inlining procedure: k2538 
o|inlining procedure: k2964 
o|inlining procedure: k3155 
o|inlining procedure: k3248 
o|inlining procedure: k3389 
o|inlining procedure: k3495 
o|inlining procedure: k3699 
o|inlining procedure: k3699 
o|inlining procedure: k3699 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|inlining procedure: k3749 
o|removed side-effect free assignment to unused variable: weak-keys733 
o|inlining procedure: k3749 
o|removed side-effect free assignment to unused variable: weak-keys733 
o|inlining procedure: k3749 
o|removed side-effect free assignment to unused variable: weak-values734 
o|inlining procedure: k3749 
o|removed side-effect free assignment to unused variable: weak-values734 
o|inlining procedure: k3749 
o|removed call to pure procedure with unused result: "(srfi-69.scm:737) ##sys#slot" 
o|removed call to pure procedure with unused result: "(srfi-69.scm:737) ##sys#slot" 
o|replaced variables: 3 
o|removed binding forms: 296 
o|contracted procedure: k1697 
o|contracted procedure: k1711 
o|contracted procedure: k1725 
o|contracted procedure: k1739 
o|contracted procedure: k1753 
o|contracted procedure: k1767 
o|contracted procedure: k1781 
o|contracted procedure: k1979 
o|contracted procedure: k2093 
o|contracted procedure: k2444 
o|contracted procedure: k2458 
o|contracted procedure: k2472 
o|contracted procedure: k2486 
o|contracted procedure: k2500 
o|contracted procedure: k2514 
o|contracted procedure: k2528 
o|contracted procedure: k2870 
o|contracted procedure: k2884 
o|contracted procedure: k2898 
o|contracted procedure: k2912 
o|contracted procedure: k2926 
o|contracted procedure: k2940 
o|contracted procedure: k2954 
o|contracted procedure: k2999 
o|contracted procedure: k3054 
o|contracted procedure: k3089 
o|contracted procedure: k3257 
o|contracted procedure: k3398 
o|contracted procedure: k4269 
o|contracted procedure: k4273 
o|simplifications: ((let . 3)) 
o|replaced variables: 10 
o|removed binding forms: 57 
o|removed binding forms: 16 
o|simplifications: ((if . 68) (let . 19) (##core#call . 704)) 
o|  call simplifications:
o|    ##sys#check-list	2
o|    scheme#apply
o|    ##sys#check-pair
o|    chicken.base#void
o|    chicken.fixnum#fx<=	6
o|    ##sys#setislot	10
o|    scheme#cons	21
o|    ##sys#check-structure	30
o|    ##sys#structure?
o|    scheme#*	4
o|    ##sys#make-structure
o|    ##sys#setslot	26
o|    scheme#list	2
o|    ##sys#check-string	2
o|    chicken.fixnum#fx>=	12
o|    scheme#pair?	4
o|    ##sys#peek-fixnum	2
o|    ##sys#size	27
o|    chicken.fixnum#fxmin	4
o|    chicken.fixnum#fxmax
o|    chicken.fixnum#fx=
o|    chicken.fixnum#fx-	4
o|    scheme#char?	3
o|    scheme#eq?	40
o|    scheme#eof-object?	3
o|    scheme#symbol?	3
o|    scheme#char->integer	3
o|    scheme#not	9
o|    ##sys#check-symbol
o|    ##sys#slot	187
o|    scheme#car	30
o|    scheme#null?	78
o|    scheme#cdr	25
o|    scheme#number?	2
o|    chicken.base#fixnum?	6
o|    chicken.base#flonum?	4
o|    chicken.fixnum#fxshl	24
o|    chicken.fixnum#fx+	43
o|    chicken.fixnum#fx*	4
o|    chicken.fixnum#fxxor	25
o|    chicken.fixnum#fx<	15
o|    chicken.fixnum#fxneg	9
o|    chicken.fixnum#fxand	18
o|    chicken.fixnum#fxmod	9
o|contracted procedure: k1833 
o|contracted procedure: k1621 
o|contracted procedure: k1827 
o|contracted procedure: k1624 
o|contracted procedure: k1821 
o|contracted procedure: k1627 
o|contracted procedure: k1815 
o|contracted procedure: k1630 
o|contracted procedure: k1655 
o|contracted procedure: k1661 
o|inlining procedure: k1645 
o|inlining procedure: k1645 
o|contracted procedure: k1673 
o|contracted procedure: k1684 
o|contracted procedure: k1785 
o|contracted procedure: k1775 
o|contracted procedure: k1771 
o|contracted procedure: k1761 
o|contracted procedure: k1757 
o|contracted procedure: k1747 
o|contracted procedure: k1743 
o|contracted procedure: k1733 
o|contracted procedure: k1729 
o|contracted procedure: k1719 
o|contracted procedure: k1715 
o|contracted procedure: k1705 
o|contracted procedure: k1701 
o|contracted procedure: k1691 
o|contracted procedure: k1809 
o|contracted procedure: k1912 
o|contracted procedure: k1842 
o|contracted procedure: k1906 
o|contracted procedure: k1845 
o|contracted procedure: k1900 
o|contracted procedure: k1848 
o|contracted procedure: k1894 
o|contracted procedure: k1851 
o|contracted procedure: k1873 
o|contracted procedure: k1879 
o|inlining procedure: k1863 
o|inlining procedure: k1863 
o|contracted procedure: k2000 
o|contracted procedure: k1921 
o|contracted procedure: k1994 
o|contracted procedure: k1924 
o|contracted procedure: k1988 
o|contracted procedure: k1927 
o|contracted procedure: k1982 
o|contracted procedure: k1930 
o|contracted procedure: k1933 
o|contracted procedure: k1976 
o|contracted procedure: k1955 
o|contracted procedure: k1961 
o|inlining procedure: k1945 
o|inlining procedure: k1945 
o|contracted procedure: k2029 
o|contracted procedure: k2022 
o|contracted procedure: k2019 
o|contracted procedure: k2114 
o|contracted procedure: k2035 
o|contracted procedure: k2108 
o|contracted procedure: k2038 
o|contracted procedure: k2102 
o|contracted procedure: k2041 
o|contracted procedure: k2096 
o|contracted procedure: k2044 
o|contracted procedure: k2090 
o|contracted procedure: k2069 
o|contracted procedure: k2075 
o|inlining procedure: k2059 
o|inlining procedure: k2059 
o|contracted procedure: k2312 
o|contracted procedure: k2247 
o|contracted procedure: k2306 
o|contracted procedure: k2250 
o|contracted procedure: k2300 
o|contracted procedure: k2253 
o|contracted procedure: k2294 
o|contracted procedure: k2256 
o|contracted procedure: k2278 
o|contracted procedure: k2284 
o|inlining procedure: k2268 
o|inlining procedure: k2268 
o|contracted procedure: k2126 
o|contracted procedure: k2135 
o|contracted procedure: k2142 
o|contracted procedure: k2148 
o|contracted procedure: k2157 
o|contracted procedure: k2166 
o|contracted procedure: k2175 
o|contracted procedure: k2184 
o|contracted procedure: k2195 
o|contracted procedure: k2215 
o|contracted procedure: k2230 
o|contracted procedure: k2644 
o|contracted procedure: k2579 
o|contracted procedure: k2638 
o|contracted procedure: k2582 
o|contracted procedure: k2632 
o|contracted procedure: k2585 
o|contracted procedure: k2626 
o|contracted procedure: k2588 
o|contracted procedure: k2610 
o|contracted procedure: k2616 
o|inlining procedure: k2600 
o|inlining procedure: k2600 
o|contracted procedure: k2325 
o|contracted procedure: k2334 
o|contracted procedure: k2341 
o|contracted procedure: k2347 
o|contracted procedure: k2356 
o|contracted procedure: k2365 
o|contracted procedure: k2374 
o|contracted procedure: k2383 
o|contracted procedure: k2394 
o|contracted procedure: k2414 
o|contracted procedure: k2423 
o|contracted procedure: k2431 
o|contracted procedure: k2532 
o|contracted procedure: k2522 
o|contracted procedure: k2518 
o|contracted procedure: k2508 
o|contracted procedure: k2504 
o|contracted procedure: k2494 
o|contracted procedure: k2490 
o|contracted procedure: k2480 
o|contracted procedure: k2476 
o|contracted procedure: k2466 
o|contracted procedure: k2462 
o|contracted procedure: k2452 
o|contracted procedure: k2448 
o|contracted procedure: k2438 
o|contracted procedure: k2562 
o|contracted procedure: k2666 
o|contracted procedure: k2733 
o|contracted procedure: k2673 
o|contracted procedure: k2729 
o|contracted procedure: k2725 
o|contracted procedure: k2677 
o|contracted procedure: k2686 
o|contracted procedure: k2709 
o|contracted procedure: k2705 
o|contracted procedure: k2693 
o|contracted procedure: k2697 
o|contracted procedure: k2701 
o|contracted procedure: k2717 
o|contracted procedure: k2721 
o|contracted procedure: k2742 
o|contracted procedure: k2751 
o|contracted procedure: k2760 
o|contracted procedure: k2767 
o|contracted procedure: k2773 
o|contracted procedure: k2782 
o|contracted procedure: k2791 
o|contracted procedure: k2800 
o|contracted procedure: k2809 
o|contracted procedure: k2820 
o|contracted procedure: k2840 
o|contracted procedure: k2849 
o|contracted procedure: k2857 
o|contracted procedure: k2958 
o|contracted procedure: k2948 
o|contracted procedure: k2944 
o|contracted procedure: k2934 
o|contracted procedure: k2930 
o|contracted procedure: k2920 
o|contracted procedure: k2916 
o|contracted procedure: k2906 
o|contracted procedure: k2902 
o|contracted procedure: k2892 
o|contracted procedure: k2888 
o|contracted procedure: k2878 
o|contracted procedure: k2874 
o|contracted procedure: k2864 
o|contracted procedure: k2988 
o|contracted procedure: k3010 
o|contracted procedure: k3019 
o|contracted procedure: k3027 
o|contracted procedure: k3031 
o|contracted procedure: k3039 
o|contracted procedure: k3043 
o|contracted procedure: k3078 
o|contracted procedure: k3074 
o|contracted procedure: k3063 
o|contracted procedure: k3098 
o|contracted procedure: k3183 
o|contracted procedure: k3118 
o|contracted procedure: k3177 
o|contracted procedure: k3121 
o|contracted procedure: k3171 
o|contracted procedure: k3124 
o|contracted procedure: k3165 
o|contracted procedure: k3127 
o|contracted procedure: k3149 
o|contracted procedure: k3155 
o|inlining procedure: k3139 
o|inlining procedure: k3139 
o|contracted procedure: k3325 
o|contracted procedure: k3193 
o|contracted procedure: k3319 
o|contracted procedure: k3196 
o|contracted procedure: k3313 
o|contracted procedure: k3199 
o|contracted procedure: k3307 
o|contracted procedure: k3202 
o|contracted procedure: k3301 
o|contracted procedure: k3205 
o|contracted procedure: k3295 
o|contracted procedure: k3208 
o|contracted procedure: k3289 
o|contracted procedure: k3211 
o|contracted procedure: k3283 
o|contracted procedure: k3214 
o|contracted procedure: k3217 
o|contracted procedure: k3242 
o|contracted procedure: k3248 
o|inlining procedure: k3232 
o|inlining procedure: k3232 
o|contracted procedure: k3260 
o|contracted procedure: k3273 
o|contracted procedure: k3277 
o|contracted procedure: k3466 
o|contracted procedure: k3334 
o|contracted procedure: k3460 
o|contracted procedure: k3337 
o|contracted procedure: k3454 
o|contracted procedure: k3340 
o|contracted procedure: k3448 
o|contracted procedure: k3343 
o|contracted procedure: k3442 
o|contracted procedure: k3346 
o|contracted procedure: k3436 
o|contracted procedure: k3349 
o|contracted procedure: k3430 
o|contracted procedure: k3352 
o|contracted procedure: k3424 
o|contracted procedure: k3355 
o|contracted procedure: k3358 
o|contracted procedure: k3383 
o|contracted procedure: k3389 
o|inlining procedure: k3373 
o|inlining procedure: k3373 
o|contracted procedure: k3401 
o|contracted procedure: k3414 
o|contracted procedure: k3418 
o|contracted procedure: k3483 
o|contracted procedure: k3486 
o|contracted procedure: k3492 
o|contracted procedure: k3495 
o|contracted procedure: k3512 
o|contracted procedure: k3520 
o|contracted procedure: k3550 
o|contracted procedure: k3544 
o|contracted procedure: k3568 
o|contracted procedure: k3571 
o|contracted procedure: k3583 
o|contracted procedure: k3591 
o|contracted procedure: k3594 
o|contracted procedure: k3611 
o|contracted procedure: k3614 
o|contracted procedure: k3620 
o|contracted procedure: k3623 
o|contracted procedure: k3629 
o|contracted procedure: k3632 
o|contracted procedure: k3638 
o|contracted procedure: k3641 
o|contracted procedure: k3647 
o|contracted procedure: k3650 
o|contracted procedure: k3656 
o|contracted procedure: k3659 
o|contracted procedure: k3728 
o|contracted procedure: k3731 
o|contracted procedure: k3757 
o|contracted procedure: k3767 
o|contracted procedure: k3777 
o|contracted procedure: k3787 
o|contracted procedure: k3790 
o|contracted procedure: k3799 
o|contracted procedure: k3808 
o|contracted procedure: k3818 
o|contracted procedure: k3831 
o|contracted procedure: k3841 
o|contracted procedure: k3854 
o|contracted procedure: k3864 
o|contracted procedure: k3890 
o|contracted procedure: k3900 
o|contracted procedure: k3903 
o|contracted procedure: k3919 
o|contracted procedure: k3923 
o|contracted procedure: k3926 
o|contracted procedure: k3932 
o|contracted procedure: k3935 
o|contracted procedure: k3949 
o|contracted procedure: k3952 
o|contracted procedure: k3955 
o|contracted procedure: k3969 
o|contracted procedure: k3981 
o|contracted procedure: k3990 
o|contracted procedure: k3999 
o|contracted procedure: k4008 
o|contracted procedure: k4017 
o|contracted procedure: k4026 
o|contracted procedure: k4035 
o|contracted procedure: k4044 
o|contracted procedure: k4050 
o|contracted procedure: k4056 
o|contracted procedure: k4059 
o|contracted procedure: k4204 
o|contracted procedure: k4150 
o|contracted procedure: k4156 
o|contracted procedure: k4162 
o|contracted procedure: k4174 
o|contracted procedure: k4177 
o|contracted procedure: k4184 
o|contracted procedure: k4071 
o|contracted procedure: k4074 
o|contracted procedure: k4086 
o|contracted procedure: k4096 
o|contracted procedure: k4100 
o|contracted procedure: k4109 
o|contracted procedure: k4112 
o|contracted procedure: k4115 
o|contracted procedure: k4144 
o|contracted procedure: k4136 
o|contracted procedure: k4140 
o|contracted procedure: k4132 
o|contracted procedure: k4121 
o|contracted procedure: k4128 
o|contracted procedure: k4192 
o|contracted procedure: k4200 
o|contracted procedure: k4210 
o|contracted procedure: k4213 
o|contracted procedure: k4233 
o|contracted procedure: k4222 
o|contracted procedure: k4229 
o|contracted procedure: k4225 
o|contracted procedure: k4242 
o|contracted procedure: k4249 
o|contracted procedure: k4253 
o|contracted procedure: k4257 
o|contracted procedure: k4261 
o|contracted procedure: k4265 
o|contracted procedure: k4277 
o|contracted procedure: k4280 
o|contracted procedure: k4287 
o|contracted procedure: k4295 
o|contracted procedure: k4304 
o|contracted procedure: k4307 
o|contracted procedure: k4326 
o|contracted procedure: k4330 
o|contracted procedure: k4314 
o|contracted procedure: k4322 
o|contracted procedure: k4336 
o|contracted procedure: k4348 
o|contracted procedure: k4549 
o|contracted procedure: k4357 
o|contracted procedure: k4398 
o|contracted procedure: k4401 
o|contracted procedure: k4404 
o|contracted procedure: k4407 
o|contracted procedure: k4413 
o|contracted procedure: k4419 
o|contracted procedure: k4431 
o|contracted procedure: k4448 
o|contracted procedure: k4444 
o|contracted procedure: k4437 
o|contracted procedure: k4440 
o|contracted procedure: k4455 
o|contracted procedure: k4482 
o|contracted procedure: k4461 
o|contracted procedure: k4467 
o|contracted procedure: k4471 
o|contracted procedure: k4478 
o|contracted procedure: k4494 
o|contracted procedure: k4511 
o|contracted procedure: k4507 
o|contracted procedure: k4500 
o|contracted procedure: k4503 
o|contracted procedure: k4518 
o|contracted procedure: k4530 
o|contracted procedure: k4534 
o|contracted procedure: k4541 
o|contracted procedure: k4545 
o|contracted procedure: k4362 
o|contracted procedure: k4365 
o|contracted procedure: k4368 
o|contracted procedure: k4371 
o|contracted procedure: k4383 
o|contracted procedure: k4389 
o|contracted procedure: k4552 
o|contracted procedure: k4555 
o|contracted procedure: k4756 
o|contracted procedure: k4572 
o|contracted procedure: k4613 
o|contracted procedure: k4616 
o|contracted procedure: k4619 
o|contracted procedure: k4622 
o|contracted procedure: k4628 
o|contracted procedure: k4634 
o|contracted procedure: k4646 
o|contracted procedure: k4663 
o|contracted procedure: k4659 
o|contracted procedure: k4652 
o|contracted procedure: k4655 
o|contracted procedure: k4666 
o|contracted procedure: k4693 
o|contracted procedure: k4672 
o|contracted procedure: k4678 
o|contracted procedure: k4682 
o|contracted procedure: k4689 
o|contracted procedure: k4705 
o|contracted procedure: k4722 
o|contracted procedure: k4718 
o|contracted procedure: k4711 
o|contracted procedure: k4714 
o|contracted procedure: k4725 
o|contracted procedure: k4737 
o|contracted procedure: k4741 
o|contracted procedure: k4748 
o|contracted procedure: k4752 
o|contracted procedure: k4577 
o|contracted procedure: k4580 
o|contracted procedure: k4583 
o|contracted procedure: k4586 
o|contracted procedure: k4598 
o|contracted procedure: k4604 
o|contracted procedure: k4762 
o|contracted procedure: k4774 
o|contracted procedure: k4944 
o|contracted procedure: k4777 
o|contracted procedure: k4818 
o|contracted procedure: k4821 
o|contracted procedure: k4824 
o|contracted procedure: k4827 
o|contracted procedure: k4833 
o|contracted procedure: k4842 
o|contracted procedure: k4854 
o|contracted procedure: k4868 
o|contracted procedure: k4864 
o|contracted procedure: k4857 
o|contracted procedure: k4871 
o|contracted procedure: k4891 
o|contracted procedure: k4877 
o|contracted procedure: k4887 
o|contracted procedure: k4903 
o|contracted procedure: k4917 
o|contracted procedure: k4913 
o|contracted procedure: k4906 
o|contracted procedure: k4920 
o|contracted procedure: k4936 
o|contracted procedure: k4940 
o|contracted procedure: k4782 
o|contracted procedure: k4785 
o|contracted procedure: k4788 
o|contracted procedure: k4791 
o|contracted procedure: k4803 
o|contracted procedure: k4809 
o|contracted procedure: k4954 
o|contracted procedure: k4957 
o|contracted procedure: k4960 
o|contracted procedure: k4963 
o|contracted procedure: k4972 
o|contracted procedure: k4979 
o|contracted procedure: k4988 
o|contracted procedure: k4991 
o|contracted procedure: k5011 
o|contracted procedure: k4997 
o|contracted procedure: k5007 
o|contracted procedure: k5018 
o|contracted procedure: k5027 
o|contracted procedure: k5030 
o|contracted procedure: k5046 
o|contracted procedure: k5050 
o|contracted procedure: k5054 
o|contracted procedure: k5060 
o|contracted procedure: k5063 
o|contracted procedure: k5066 
o|contracted procedure: k5069 
o|contracted procedure: k5078 
o|contracted procedure: k5085 
o|contracted procedure: k5118 
o|contracted procedure: k5094 
o|contracted procedure: k5097 
o|contracted procedure: k5114 
o|contracted procedure: k5100 
o|contracted procedure: k5110 
o|contracted procedure: k5125 
o|contracted procedure: k5158 
o|contracted procedure: k5134 
o|contracted procedure: k5137 
o|contracted procedure: k5150 
o|contracted procedure: k5154 
o|contracted procedure: k5162 
o|contracted procedure: k5168 
o|contracted procedure: k5171 
o|contracted procedure: k5174 
o|contracted procedure: k5177 
o|contracted procedure: k5183 
o|contracted procedure: k5293 
o|contracted procedure: k5186 
o|contracted procedure: k5189 
o|contracted procedure: k5195 
o|contracted procedure: k5242 
o|contracted procedure: k5207 
o|contracted procedure: k5210 
o|contracted procedure: k5213 
o|contracted procedure: k5238 
o|contracted procedure: k5219 
o|contracted procedure: k5222 
o|contracted procedure: k5225 
o|contracted procedure: k5289 
o|contracted procedure: k5254 
o|contracted procedure: k5257 
o|contracted procedure: k5260 
o|contracted procedure: k5269 
o|contracted procedure: k5272 
o|contracted procedure: k5285 
o|contracted procedure: k5299 
o|contracted procedure: k5305 
o|contracted procedure: k5308 
o|contracted procedure: k5311 
o|contracted procedure: k5323 
o|contracted procedure: k5336 
o|contracted procedure: k5340 
o|contracted procedure: k5389 
o|contracted procedure: k5349 
o|contracted procedure: k5352 
o|contracted procedure: k5355 
o|contracted procedure: k5364 
o|contracted procedure: k5368 
o|contracted procedure: k5381 
o|contracted procedure: k5385 
o|contracted procedure: k5395 
o|contracted procedure: k5405 
o|contracted procedure: k5411 
o|contracted procedure: k5414 
o|contracted procedure: k5426 
o|contracted procedure: k5436 
o|contracted procedure: k5440 
o|contracted procedure: k5449 
o|contracted procedure: k5452 
o|contracted procedure: k5462 
o|contracted procedure: k5466 
o|contracted procedure: k5473 
o|contracted procedure: k5479 
o|contracted procedure: k5482 
o|contracted procedure: k5491 
o|contracted procedure: k5494 
o|contracted procedure: k5507 
o|contracted procedure: k5510 
o|contracted procedure: k5513 
o|contracted procedure: k5525 
o|contracted procedure: k5532 
o|contracted procedure: k5541 
o|contracted procedure: k5548 
o|contracted procedure: k5555 
o|contracted procedure: k5559 
o|contracted procedure: k5570 
o|contracted procedure: k5574 
o|contracted procedure: k5566 
o|contracted procedure: k5562 
o|contracted procedure: k5580 
o|contracted procedure: k5588 
o|contracted procedure: k5595 
o|contracted procedure: k5602 
o|contracted procedure: k5614 
o|contracted procedure: k5624 
o|contracted procedure: k5628 
o|contracted procedure: k5634 
o|contracted procedure: k5637 
o|contracted procedure: k5640 
o|contracted procedure: k5652 
o|contracted procedure: k5659 
o|contracted procedure: k5668 
o|contracted procedure: k5675 
o|contracted procedure: k5682 
o|contracted procedure: k5686 
o|contracted procedure: k5693 
o|contracted procedure: k5689 
o|contracted procedure: k5699 
o|contracted procedure: k5702 
o|contracted procedure: k5705 
o|contracted procedure: k5717 
o|contracted procedure: k5724 
o|contracted procedure: k5733 
o|contracted procedure: k5740 
o|contracted procedure: k5747 
o|contracted procedure: k5751 
o|contracted procedure: k5758 
o|contracted procedure: k5754 
o|contracted procedure: k5764 
o|contracted procedure: k5767 
o|contracted procedure: k5779 
o|contracted procedure: k5788 
o|contracted procedure: k5792 
o|contracted procedure: k5795 
o|contracted procedure: k5798 
o|contracted procedure: k5808 
o|contracted procedure: k5817 
o|contracted procedure: k5827 
o|contracted procedure: k5831 
o|contracted procedure: k5837 
o|contracted procedure: k5840 
o|contracted procedure: k5852 
o|contracted procedure: k5859 
o|contracted procedure: k5868 
o|contracted procedure: k5875 
o|contracted procedure: k5878 
o|contracted procedure: k5885 
o|contracted procedure: k5893 
o|contracted procedure: k5897 
o|contracted procedure: k5903 
o|contracted procedure: k5915 
o|contracted procedure: k5927 
o|contracted procedure: k5939 
o|contracted procedure: k5974 
o|contracted procedure: k6095 
o|contracted procedure: k5980 
o|contracted procedure: k5983 
o|contracted procedure: k5989 
o|contracted procedure: k5992 
o|contracted procedure: k5995 
o|contracted procedure: k6004 
o|contracted procedure: k6011 
o|contracted procedure: k6020 
o|contracted procedure: k6026 
o|contracted procedure: k6046 
o|contracted procedure: k6032 
o|contracted procedure: k6042 
o|contracted procedure: k6053 
o|contracted procedure: k6062 
o|contracted procedure: k6068 
o|contracted procedure: k6084 
o|contracted procedure: k6088 
o|contracted procedure: k6092 
o|contracted procedure: k6116 
o|contracted procedure: k6112 
o|contracted procedure: k6130 
o|contracted procedure: k6126 
o|simplifications: ((let . 171)) 
o|removed binding forms: 621 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest5355 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest5355 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest5355 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest5355 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest136138 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest136138 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest136138 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest136138 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest166168 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest166168 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest166168 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest166168 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest205207 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest205207 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest205207 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest205207 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest270272 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest270272 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest270272 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest270272 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest375377 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest375377 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest375377 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest375377 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest532534 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest532534 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest532534 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest532534 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest559561 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest559561 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest559561 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest559561 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest601603 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest601603 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest601603 0 
(o x)|known list op on rest arg sublist: ##core#rest-cdr rest601603 0 
o|inlining procedure: k3783 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest894898 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest894898 0 
(o x)|known list op on rest arg sublist: ##core#rest-null? rest10361039 0 
(o x)|known list op on rest arg sublist: ##core#rest-car rest10361039 0 
o|simplifications: ((let . 18)) 
o|removed binding forms: 9 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1625 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r1625 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1625 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r1625 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1846 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r1846 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1846 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r1846 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1925 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r1925 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r1925 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r1925 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2039 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r2039 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2039 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r2039 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2251 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r2251 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2251 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r2251 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2583 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r2583 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r2583 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r2583 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3122 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r3122 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3122 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3122 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3197 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r3197 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3197 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3197 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3338 1 
(o x)|known list op on rest arg sublist: ##core#rest-car r3338 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3338 1 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3338 1 
o|removed binding forms: 1 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3203 2 
(o x)|known list op on rest arg sublist: ##core#rest-car r3203 2 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3203 2 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3203 2 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3344 2 
(o x)|known list op on rest arg sublist: ##core#rest-car r3344 2 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3344 2 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3344 2 
o|removed binding forms: 16 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3209 3 
(o x)|known list op on rest arg sublist: ##core#rest-car r3209 3 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3209 3 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3209 3 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3350 3 
(o x)|known list op on rest arg sublist: ##core#rest-car r3350 3 
(o x)|known list op on rest arg sublist: ##core#rest-null? r3350 3 
(o x)|known list op on rest arg sublist: ##core#rest-cdr r3350 3 
o|removed binding forms: 2 
o|removed binding forms: 4 
o|direct leaf routine/allocation: loop657 0 
o|direct leaf routine/allocation: hash-for-test735 0 
o|direct leaf routine/allocation: loop1068 0 
o|direct leaf routine/allocation: loop1085 0 
o|direct leaf routine/allocation: loop1113 0 
o|converted assignments to bindings: (loop657) 
o|contracted procedure: "(srfi-69.scm:627) k3705" 
o|converted assignments to bindings: (loop1068) 
o|converted assignments to bindings: (loop1085) 
o|converted assignments to bindings: (loop1113) 
o|simplifications: ((let . 4)) 
o|removed binding forms: 1 
o|customizable procedures: (loop1053 loop1049 srfi-69#*hash-table-for-each srfi-69#*hash-table-fold fold21290 loop1287 g12641271 for-each-loop12631274 doloop12581259 loop21246 loop1243 loop21232 loop1229 g12061213 for-each-loop12051218 loop21192 loop1189 srfi-69#*hash-table-merge! doloop11661167 doloop11631164 loop1141 doloop11381139 loop1122 loop1093 loop1072 k4797 loop1023 loop1018 srfi-69#*hash-table-update!/default k4592 loop979 loop970 k4345 k4377 loop934 loop925 srfi-69#*hash-table-copy copy-loop878 doloop875876 loop845 doloop842843 k3680 k3683 k3686 invarg-err771 loop768 srfi-69#hash-table-canonical-length srfi-69#*make-hash-table g522523 g518519 vector-hash410 g504505 recursive-hash411 loop418 k1806 srfi-69#*equal?-hash) 
o|calls to known targets: 169 
o|unused rest argument: rest5355 f_1619 
o|unused rest argument: rest136138 f_1840 
o|unused rest argument: rest166168 f_1919 
o|unused rest argument: rest205207 f_2033 
o|unused rest argument: rest270272 f_2245 
o|unused rest argument: rest375377 f_2577 
o|unused rest argument: rest532534 f_3116 
o|unused rest argument: rest559561 f_3191 
o|unused rest argument: rest601603 f_3332 
o|identified direct recursive calls: f_3481 2 
o|identified direct recursive calls: f_4299 1 
o|identified direct recursive calls: f_4426 1 
o|unused rest argument: rest894898 f_4343 
o|identified direct recursive calls: f_4641 1 
o|identified direct recursive calls: f_4849 1 
o|identified direct recursive calls: f_4983 1 
o|identified direct recursive calls: f_5089 1 
o|identified direct recursive calls: f_5202 1 
o|identified direct recursive calls: f_5536 1 
o|identified direct recursive calls: f_5663 1 
o|identified direct recursive calls: f_5728 1 
o|identified direct recursive calls: f_6015 1 
o|unused rest argument: rest10361039 f_5978 
o|fast box initializations: 34 
o|fast global references: 33 
o|fast global assignments: 10 
o|dropping unused closure argument: f_2661 
o|dropping unused closure argument: f_3475 
o|dropping unused closure argument: f_3557 
o|dropping unused closure argument: f_4208 
o|dropping unused closure argument: f_5409 
o|dropping unused closure argument: f_5762 
o|dropping unused closure argument: f_5835 
*/
/* end of file */
