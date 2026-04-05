// Lean compiler output
// Module: HatsuYakitori.CartanUtils
// Imports: public import Init public import Mathlib.Analysis.SpecialFunctions.Log.Basic public import Mathlib.Analysis.SpecialFunctions.Pow.Real public import Mathlib.Data.Real.Basic public import Mathlib.Data.Fin.Basic public import Mathlib.Data.List.Range public import Mathlib.Algebra.Order.Field.Basic public import Mathlib.Tactic public import HatsuYakitori.MachineConstants
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
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_machineEpsilon;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_prettyPrintDecomposition___boxed(lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0;
extern lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_machineEpsilonReal;
extern lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_defaultToleranceReal;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_match__1_splitter(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_go_match__1_splitter(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_prettyPrintDecomposition(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_match__1_splitter___redArg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_go_match__1_splitter___redArg(lean_object*, lean_object*, lean_object*);
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_machineEpsilon() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_machineEpsilonReal;
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_defaultToleranceReal;
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_go_match__1_splitter___redArg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_4; lean_object* x_5; 
lean_dec(x_3);
x_4 = lean_box(0);
x_5 = lean_apply_1(x_2, x_4);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
lean_dec(x_2);
x_6 = lean_ctor_get(x_1, 0);
lean_inc(x_6);
x_7 = lean_ctor_get(x_1, 1);
lean_inc(x_7);
lean_dec_ref(x_1);
x_8 = lean_apply_2(x_3, x_6, x_7);
return x_8;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_go_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_go_match__1_splitter___redArg(x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_match__1_splitter___redArg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_5; lean_object* x_6; 
lean_dec(x_4);
lean_dec(x_3);
x_5 = lean_box(0);
x_6 = lean_apply_1(x_2, x_5);
return x_6;
}
else
{
lean_object* x_7; 
lean_dec(x_2);
x_7 = lean_ctor_get(x_1, 1);
if (lean_obj_tag(x_7) == 0)
{
lean_object* x_8; lean_object* x_9; 
lean_dec(x_4);
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec_ref(x_1);
x_9 = lean_apply_1(x_3, x_8);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; 
lean_inc(x_7);
lean_dec(x_3);
x_10 = lean_ctor_get(x_1, 0);
lean_inc(x_10);
lean_dec_ref(x_1);
x_11 = lean_apply_3(x_4, x_10, x_7, lean_box(0));
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_CartanUtils_0__HatsuYakitori_CartanUtils_cartanStepRatio_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_5);
lean_dec(x_4);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_3, x_6);
return x_7;
}
else
{
lean_object* x_8; 
lean_dec(x_3);
x_8 = lean_ctor_get(x_2, 1);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; lean_object* x_10; 
lean_dec(x_5);
x_9 = lean_ctor_get(x_2, 0);
lean_inc(x_9);
lean_dec_ref(x_2);
x_10 = lean_apply_1(x_4, x_9);
return x_10;
}
else
{
lean_object* x_11; lean_object* x_12; 
lean_inc(x_8);
lean_dec(x_4);
x_11 = lean_ctor_get(x_2, 0);
lean_inc(x_11);
lean_dec_ref(x_2);
x_12 = lean_apply_3(x_5, x_11, x_8, lean_box(0));
return x_12;
}
}
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("", 0, 0);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0;
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_prettyPrintDecomposition(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0;
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_prettyPrintDecomposition___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_prettyPrintDecomposition(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Log_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Pow_Real(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fin_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_List_Range(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Algebra_Order_Field_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Tactic(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Log_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Pow_Real(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Real_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fin_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_List_Range(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Algebra_Order_Field_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Tactic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_machineEpsilon = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_machineEpsilon();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_machineEpsilon);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_formatFloat___closed__0);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
