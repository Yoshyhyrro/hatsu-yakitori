// Lean compiler output
// Module: HatsuYakitori.KakIntegration
// Imports: public import Init public import Mathlib.Data.Real.Basic public import Mathlib.Data.Nat.Basic public import Mathlib.Data.Fintype.Basic public import Mathlib.GroupTheory.Perm.Basic public import HatsuYakitori.MachineConstants public import HatsuYakitori.CartanUtils public import HatsuYakitori.GolayFrontier public import HatsuYakitori.KakDecomposition
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
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Nat_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fintype_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_GroupTheory_Perm_Basic(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_KakDecomposition(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_KakIntegration(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Real_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Nat_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fintype_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_GroupTheory_Perm_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_KakDecomposition(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
