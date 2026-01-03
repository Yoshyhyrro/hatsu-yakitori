// Lean compiler output
// Module: HatsuYakitori.WittFoundation
// Imports: public import Init public import Mathlib.Data.Fin.Basic public import Mathlib.Data.Fintype.Basic public import Mathlib.Data.Finset.Card public import Mathlib.Data.Finset.Lattice.Basic
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
lean_object* l_List_lengthTR___redArg(lean_object*);
lean_object* lp_mathlib_Multiset_sub___redArg(lean_object*, lean_object*, lean_object*);
lean_object* lp_mathlib_Multiset_ndinter___redArg(lean_object*, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_weight(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_weight___boxed(lean_object*);
lean_object* l_instDecidableEqFin___boxed(lean_object*, lean_object*, lean_object*);
lean_object* l_List_finRange(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_weight(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_List_lengthTR___redArg(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_weight___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_weight(x_1);
lean_dec(x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(24u);
x_2 = lean_alloc_closure((void*)(l_instDecidableEqFin___boxed), 3, 1);
lean_closure_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0;
x_4 = lp_mathlib_Multiset_ndinter___redArg(x_3, x_1, x_2);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(24u);
x_2 = l_List_finRange(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0;
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0;
x_4 = lp_mathlib_Multiset_sub___redArg(x_2, x_3, x_1);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fin_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fintype_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Finset_Card(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Finset_Lattice_Basic(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fin_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fintype_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Finset_Card(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Finset_Lattice_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_inter___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_WittFoundation_compl___closed__0);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
