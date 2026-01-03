// Lean compiler output
// Module: HatsuYakitori.GolayFrontier
// Imports: public import Init public import Mathlib.Data.Finset.Card public import Mathlib.Data.Set.Basic public import HatsuYakitori.WittFoundation
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
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weight(lean_object*);
lean_object* l_List_lengthTR___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weight___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weight(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_List_lengthTR___redArg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weight___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weight(x_1);
lean_dec(x_1);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Finset_Card(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Set_Basic(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Finset_Card(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Set_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
