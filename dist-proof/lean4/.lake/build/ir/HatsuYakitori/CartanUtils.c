// Lean compiler output
// Module: HatsuYakitori.CartanUtils
// Imports: public import Init public import Mathlib.Analysis.SpecialFunctions.Log.Basic public import Mathlib.Analysis.SpecialFunctions.Pow.Real public import Mathlib.Data.Real.Basic public import Mathlib.Data.Fin.Basic public import Mathlib.Data.List.Range public import Mathlib.Tactic public import HatsuYakitori.MachineConstants
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
extern lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_machineEpsilonReal;
extern lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants_defaultToleranceReal;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_CartanUtils_defaultTolerance;
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
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Log_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Pow_Real(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fin_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_List_Range(uint8_t builtin);
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
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
