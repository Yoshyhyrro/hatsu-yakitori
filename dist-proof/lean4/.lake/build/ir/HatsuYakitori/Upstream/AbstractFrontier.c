// Lean compiler output
// Module: HatsuYakitori.Upstream.AbstractFrontier
// Imports: public import Init public import Mathlib.Data.Real.Basic public import Mathlib.Data.Fin.Basic public import Mathlib.Tactic public import Mathlib.Data.Fintype.Basic public import HatsuYakitori.Upstream.MachineConstants
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
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier_ArikiKoike_isGeometricNeighbor___boxed(lean_object*, lean_object*);
lean_object* lean_nat_to_int(lean_object*);
lean_object* lean_int_sub(lean_object*, lean_object*);
lean_object* lean_nat_abs(lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier_ArikiKoike_isGeometricNeighbor(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier_ArikiKoike_isGeometricNeighbor(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; uint8_t x_8; 
x_3 = lean_nat_to_int(x_1);
x_4 = lean_nat_to_int(x_2);
x_5 = lean_int_sub(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
x_6 = lean_nat_abs(x_5);
lean_dec(x_5);
x_7 = lean_unsigned_to_nat(1u);
x_8 = lean_nat_dec_eq(x_6, x_7);
if (x_8 == 0)
{
lean_object* x_9; uint8_t x_10; 
x_9 = lean_unsigned_to_nat(10u);
x_10 = lean_nat_dec_eq(x_6, x_9);
lean_dec(x_6);
return x_10;
}
else
{
lean_dec(x_6);
return x_8;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier_ArikiKoike_isGeometricNeighbor___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier_ArikiKoike_isGeometricNeighbor(x_1, x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fin_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Tactic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fintype_Basic(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_MachineConstants(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_AbstractFrontier(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Real_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fin_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Tactic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fintype_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_Upstream_MachineConstants(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
