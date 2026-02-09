// Lean compiler output
// Module: HatsuYakitori.HopfStructure
// Imports: public import Init public import HatsuYakitori.MachineConstants public import Mathlib.Data.Real.Basic
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayWeight_succ__weight___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayWeight_succ__weight(uint8_t);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg(uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad(uint8_t, uint8_t);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayWeight_succ__weight(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
uint8_t x_2; 
x_2 = 1;
return x_2;
}
case 1:
{
uint8_t x_3; 
x_3 = 2;
return x_3;
}
case 2:
{
uint8_t x_4; 
x_4 = 3;
return x_4;
}
case 3:
{
uint8_t x_5; 
x_5 = 4;
return x_5;
}
default: 
{
return x_1;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayWeight_succ__weight___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayWeight_succ__weight(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0() {
_start:
{
uint8_t x_1; lean_object* x_2; 
x_1 = 2;
x_2 = lean_alloc_ctor(2, 0, 1);
lean_ctor_set_uint8(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg(uint8_t x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_2 = 2;
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0;
x_4 = lean_alloc_ctor(2, 0, 1);
lean_ctor_set_uint8(x_4, 0, x_1);
x_5 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
lean_ctor_set_uint8(x_5, sizeof(void*)*2, x_2);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; lean_object* x_5; 
x_3 = lean_unbox(x_1);
x_4 = lean_unbox(x_2);
x_5 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad(x_3, x_4);
return x_5;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_HopfStructure(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Real_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_coproduct__via__dodecad___redArg___closed__0);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
