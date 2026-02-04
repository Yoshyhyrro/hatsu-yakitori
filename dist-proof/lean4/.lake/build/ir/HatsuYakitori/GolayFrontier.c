// Lean compiler output
// Module: HatsuYakitori.GolayFrontier
// Imports: public import Init public import Mathlib.Analysis.SpecialFunctions.Log.Basic public import Mathlib.Data.Real.Basic public import Mathlib.Data.Fin.Basic public import Mathlib.Data.Finset.Card public import Mathlib.Data.Nat.Basic public import Mathlib.Data.Nat.Bits public import Mathlib.Data.Vector.Basic public import Mathlib.Data.List.Range public import Mathlib.Tactic public import HatsuYakitori.MachineConstants
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
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_decodeGolay24(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0;
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_frontierModeFromGolay(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___redArg___boxed(lean_object*);
lean_object* l_List_lengthTR___redArg(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_toCtorIdx___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows;
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ofNat(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim(lean_object*, uint8_t, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_toCtorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___redArg(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_toCtorIdx(uint8_t);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqGaloisHeightClass(uint8_t, uint8_t);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___redArg(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0___boxed(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_total__codewords___nativeDecide__1__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim(lean_object*, uint8_t, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqM24Orbit___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9;
lean_object* lean_nat_shiftr(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ofNat(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___redArg(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_toCtorIdx___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_galoisOrbitSize___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_toCtorIdx(uint8_t);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ofNat___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative(lean_object*);
lean_object* lean_nat_to_int(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___boxed(lean_object*, lean_object*);
static uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__1;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___redArg___boxed(lean_object*);
lean_object* l_List_range(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_frontierModeFromGolay___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim(lean_object*, uint8_t, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_decodeGolay24___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ofNat___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqGaloisHeightClass___boxed(lean_object*, lean_object*);
lean_object* lean_nat_land(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr(uint8_t, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___redArg___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim(lean_object*, lean_object*, uint8_t, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8;
static uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__1;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___redArg___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
lean_object* lean_nat_lxor(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim(lean_object*, uint8_t, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr(uint8_t, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
uint8_t lean_nat_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___redArg___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10;
uint8_t lean_nat_dec_lt(lean_object*, lean_object*);
lean_object* lean_nat_mod(lean_object*, lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqM24Orbit(uint8_t, uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(uint8_t);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_galoisOrbitSize(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___redArg(lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqFrontierMode(uint8_t, uint8_t);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_toCtorIdx___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___redArg(lean_object*);
lean_object* l_Repr_addAppParen(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___redArg___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ofNat___boxed(lean_object*);
lean_object* lean_nat_shiftl(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx___boxed(lean_object*);
lean_object* lean_nat_sub(lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___redArg___boxed(lean_object*);
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ofNat(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_k;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqFrontierMode___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___boxed(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___redArg(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize___boxed(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___redArg(lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0(lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr(uint8_t, lean_object*);
lean_object* l_List_zipWith___at___00List_zip_spec__0___redArg(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___redArg___boxed(lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit___boxed(lean_object*);
uint8_t lean_nat_dec_le(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_n;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3;
lean_object* lean_nat_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___boxed(lean_object*, lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize(uint8_t);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_d;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim(lean_object*, uint8_t, lean_object*, lean_object*);
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg___boxed(lean_object*, lean_object*, lean_object*);
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4;
static lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode;
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___redArg(lean_object*);
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_n() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(24u);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_k() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(12u);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_d() {
_start:
{
lean_object* x_1; 
x_1 = lean_unsigned_to_nat(8u);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 1)
{
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_12; lean_object* x_13; uint8_t x_14; 
x_4 = lean_unsigned_to_nat(1u);
x_5 = lean_nat_sub(x_1, x_4);
x_6 = lean_nat_add(x_5, x_4);
lean_dec(x_5);
x_12 = lean_unsigned_to_nat(2u);
x_13 = lean_nat_mod(x_6, x_12);
x_14 = lean_nat_dec_eq(x_13, x_4);
lean_dec(x_13);
if (x_14 == 0)
{
x_7 = x_2;
goto block_11;
}
else
{
x_7 = x_4;
goto block_11;
}
block_11:
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_8 = lean_nat_shiftr(x_6, x_4);
lean_dec(x_6);
x_9 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight(x_8);
lean_dec(x_8);
x_10 = lean_nat_add(x_7, x_9);
lean_dec(x_9);
return x_10;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(0u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 1)
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_3);
x_6 = lean_box(0);
x_7 = lean_apply_1(x_2, x_6);
return x_7;
}
else
{
lean_object* x_8; lean_object* x_9; lean_object* x_10; 
lean_dec(x_2);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_sub(x_1, x_8);
x_10 = lean_apply_1(x_3, x_9);
return x_10;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg(x_1, x_2, x_3);
lean_dec(x_1);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___redArg(x_2, x_3, x_4);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_object* x_5; 
x_5 = lp_hatsu_x2dyakitori_x2dproof___private_HatsuYakitori_GolayFrontier_0__HatsuYakitori_GolayFrontier_hammingWeight_match__1_splitter(x_1, x_2, x_3, x_4);
lean_dec(x_2);
return x_5;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_unsigned_to_nat(2283u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0;
x_2 = lean_unsigned_to_nat(2366u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1;
x_2 = lean_unsigned_to_nat(2711u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2;
x_2 = lean_unsigned_to_nat(3526u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3;
x_2 = lean_unsigned_to_nat(871u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4;
x_2 = lean_unsigned_to_nat(1741u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5;
x_2 = lean_unsigned_to_nat(3481u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6;
x_2 = lean_unsigned_to_nat(986u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7;
x_2 = lean_unsigned_to_nat(1972u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8;
x_2 = lean_unsigned_to_nat(3944u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9;
x_2 = lean_unsigned_to_nat(1595u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10;
x_2 = lean_unsigned_to_nat(3189u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11;
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows;
x_2 = l_List_lengthTR___redArg(x_1);
return x_2;
}
}
static uint8_t _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; 
x_1 = lean_unsigned_to_nat(12u);
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0;
x_3 = lean_nat_dec_eq(x_2, x_1);
return x_3;
}
}
static uint8_t _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1() {
_start:
{
uint8_t x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__1;
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = lean_unsigned_to_nat(2762u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0;
x_2 = lean_unsigned_to_nat(2869u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1;
x_2 = lean_unsigned_to_nat(2553u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2;
x_2 = lean_unsigned_to_nat(1395u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3;
x_2 = lean_unsigned_to_nat(3215u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4;
x_2 = lean_unsigned_to_nat(3103u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5;
x_2 = lean_unsigned_to_nat(3809u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6;
x_2 = lean_unsigned_to_nat(475u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7;
x_2 = lean_unsigned_to_nat(1207u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8;
x_2 = lean_unsigned_to_nat(2269u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9;
x_2 = lean_unsigned_to_nat(3175u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10;
x_2 = lean_unsigned_to_nat(2254u);
x_3 = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(x_3, 0, x_2);
lean_ctor_set(x_3, 1, x_1);
return x_3;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11;
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows;
x_2 = l_List_lengthTR___redArg(x_1);
return x_2;
}
}
static uint8_t _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; uint8_t x_3; 
x_1 = lean_unsigned_to_nat(12u);
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0;
x_3 = lean_nat_dec_eq(x_2, x_1);
return x_3;
}
}
static uint8_t _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1() {
_start:
{
uint8_t x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__1;
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
if (lean_obj_tag(x_3) == 0)
{
return x_2;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; lean_object* x_11; uint8_t x_12; 
x_4 = lean_ctor_get(x_3, 0);
x_5 = lean_ctor_get(x_3, 1);
x_6 = lean_ctor_get(x_4, 0);
x_7 = lean_ctor_get(x_4, 1);
x_8 = lean_unsigned_to_nat(1u);
x_9 = lean_nat_shiftl(x_8, x_6);
x_10 = lean_nat_land(x_1, x_9);
lean_dec(x_9);
x_11 = lean_unsigned_to_nat(0u);
x_12 = lean_nat_dec_eq(x_10, x_11);
lean_dec(x_10);
if (x_12 == 0)
{
lean_object* x_13; 
x_13 = lean_nat_lxor(x_2, x_7);
lean_dec(x_2);
x_2 = x_13;
x_3 = x_5;
goto _start;
}
else
{
x_3 = x_5;
goto _start;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3) {
_start:
{
lean_object* x_4; 
x_4 = lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0(x_1, x_2, x_3);
lean_dec(x_3);
lean_dec(x_1);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0;
x_2 = l_List_range(x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows;
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0;
x_3 = l_List_zipWith___at___00List_zip_spec__0___redArg(x_2, x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; lean_object* x_4; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1;
x_3 = lean_unsigned_to_nat(0u);
x_4 = lp_hatsu_x2dyakitori_x2dproof_List_foldl___at___00HatsuYakitori_GolayFrontier_computeParity_spec__0(x_1, x_3, x_2);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_decodeGolay24(lean_object* x_1) {
_start:
{
lean_object* x_2; lean_object* x_3; 
x_2 = lean_unsigned_to_nat(12u);
x_3 = lean_nat_shiftr(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_decodeGolay24___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_decodeGolay24(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
case 2:
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(2u);
return x_4;
}
default: 
{
lean_object* x_5; 
x_5 = lean_unsigned_to_nat(3u);
return x_5;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_toCtorIdx(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_toCtorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_inc(x_5);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_3);
x_7 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorElim(x_1, x_2, x_6, x_4, x_5);
lean_dec(x_5);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedLow_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_fundamental_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_intermediate_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ramifiedHigh_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ofNat(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(1u);
x_3 = lean_nat_dec_le(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(2u);
x_5 = lean_nat_dec_le(x_1, x_4);
if (x_5 == 0)
{
uint8_t x_6; 
x_6 = 3;
return x_6;
}
else
{
uint8_t x_7; 
x_7 = 2;
return x_7;
}
}
else
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(0u);
x_9 = lean_nat_dec_le(x_1, x_8);
if (x_9 == 0)
{
uint8_t x_10; 
x_10 = 1;
return x_10;
}
else
{
uint8_t x_11; 
x_11 = 0;
return x_11;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ofNat___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ofNat(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqGaloisHeightClass(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_GaloisHeightClass_ctorIdx(x_2);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqGaloisHeightClass___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
x_4 = lean_unbox(x_2);
x_5 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqGaloisHeightClass(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.GaloisHeightClass.ramifiedLow", 57, 57);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.GaloisHeightClass.fundamental", 57, 57);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.GaloisHeightClass.intermediate", 58, 58);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.GaloisHeightClass.ramifiedHigh", 58, 58);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(2u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(1u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_10; lean_object* x_17; lean_object* x_24; 
switch (x_1) {
case 0:
{
lean_object* x_31; uint8_t x_32; 
x_31 = lean_unsigned_to_nat(1024u);
x_32 = lean_nat_dec_le(x_31, x_2);
if (x_32 == 0)
{
lean_object* x_33; 
x_33 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_3 = x_33;
goto block_9;
}
else
{
lean_object* x_34; 
x_34 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_3 = x_34;
goto block_9;
}
}
case 1:
{
lean_object* x_35; uint8_t x_36; 
x_35 = lean_unsigned_to_nat(1024u);
x_36 = lean_nat_dec_le(x_35, x_2);
if (x_36 == 0)
{
lean_object* x_37; 
x_37 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_10 = x_37;
goto block_16;
}
else
{
lean_object* x_38; 
x_38 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_10 = x_38;
goto block_16;
}
}
case 2:
{
lean_object* x_39; uint8_t x_40; 
x_39 = lean_unsigned_to_nat(1024u);
x_40 = lean_nat_dec_le(x_39, x_2);
if (x_40 == 0)
{
lean_object* x_41; 
x_41 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_17 = x_41;
goto block_23;
}
else
{
lean_object* x_42; 
x_42 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_17 = x_42;
goto block_23;
}
}
default: 
{
lean_object* x_43; uint8_t x_44; 
x_43 = lean_unsigned_to_nat(1024u);
x_44 = lean_nat_dec_le(x_43, x_2);
if (x_44 == 0)
{
lean_object* x_45; 
x_45 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_24 = x_45;
goto block_30;
}
else
{
lean_object* x_46; 
x_46 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_24 = x_46;
goto block_30;
}
}
}
block_9:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1;
x_5 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
x_6 = 0;
x_7 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set_uint8(x_7, sizeof(void*)*1, x_6);
x_8 = l_Repr_addAppParen(x_7, x_2);
return x_8;
}
block_16:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3;
x_12 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = 0;
x_14 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set_uint8(x_14, sizeof(void*)*1, x_13);
x_15 = l_Repr_addAppParen(x_14, x_2);
return x_15;
}
block_23:
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; 
x_18 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5;
x_19 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = 0;
x_21 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set_uint8(x_21, sizeof(void*)*1, x_20);
x_22 = l_Repr_addAppParen(x_21, x_2);
return x_22;
}
block_30:
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; 
x_25 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7;
x_26 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = 0;
x_28 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set_uint8(x_28, sizeof(void*)*1, x_27);
x_29 = l_Repr_addAppParen(x_28, x_2);
return x_29;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0;
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(uint8_t x_1) {
_start:
{
switch (x_1) {
case 0:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
case 1:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
case 2:
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(2u);
return x_4;
}
case 3:
{
lean_object* x_5; 
x_5 = lean_unsigned_to_nat(3u);
return x_5;
}
case 4:
{
lean_object* x_6; 
x_6 = lean_unsigned_to_nat(4u);
return x_6;
}
default: 
{
lean_object* x_7; 
x_7 = lean_unsigned_to_nat(5u);
return x_7;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_toCtorIdx(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_toCtorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_inc(x_5);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_3);
x_7 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorElim(x_1, x_2, x_6, x_4, x_5);
lean_dec(x_5);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_trivial_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octad_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dodecad_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_octadComplement_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_dualTrivial_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_other_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ofNat(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(2u);
x_3 = lean_nat_dec_le(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(3u);
x_5 = lean_nat_dec_le(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(4u);
x_7 = lean_nat_dec_le(x_1, x_6);
if (x_7 == 0)
{
uint8_t x_8; 
x_8 = 5;
return x_8;
}
else
{
uint8_t x_9; 
x_9 = 4;
return x_9;
}
}
else
{
uint8_t x_10; 
x_10 = 3;
return x_10;
}
}
else
{
lean_object* x_11; uint8_t x_12; 
x_11 = lean_unsigned_to_nat(0u);
x_12 = lean_nat_dec_le(x_1, x_11);
if (x_12 == 0)
{
lean_object* x_13; uint8_t x_14; 
x_13 = lean_unsigned_to_nat(1u);
x_14 = lean_nat_dec_le(x_1, x_13);
if (x_14 == 0)
{
uint8_t x_15; 
x_15 = 2;
return x_15;
}
else
{
uint8_t x_16; 
x_16 = 1;
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = 0;
return x_17;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ofNat___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ofNat(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqM24Orbit(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_M24Orbit_ctorIdx(x_2);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqM24Orbit___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
x_4 = lean_unbox(x_2);
x_5 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqM24Orbit(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.trivial", 44, 44);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.octad", 42, 42);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.dodecad", 44, 44);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.octadComplement", 52, 52);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.dualTrivial", 48, 48);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.M24Orbit.other", 42, 42);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_10; lean_object* x_17; lean_object* x_24; lean_object* x_31; lean_object* x_38; 
switch (x_1) {
case 0:
{
lean_object* x_45; uint8_t x_46; 
x_45 = lean_unsigned_to_nat(1024u);
x_46 = lean_nat_dec_le(x_45, x_2);
if (x_46 == 0)
{
lean_object* x_47; 
x_47 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_3 = x_47;
goto block_9;
}
else
{
lean_object* x_48; 
x_48 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_3 = x_48;
goto block_9;
}
}
case 1:
{
lean_object* x_49; uint8_t x_50; 
x_49 = lean_unsigned_to_nat(1024u);
x_50 = lean_nat_dec_le(x_49, x_2);
if (x_50 == 0)
{
lean_object* x_51; 
x_51 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_10 = x_51;
goto block_16;
}
else
{
lean_object* x_52; 
x_52 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_10 = x_52;
goto block_16;
}
}
case 2:
{
lean_object* x_53; uint8_t x_54; 
x_53 = lean_unsigned_to_nat(1024u);
x_54 = lean_nat_dec_le(x_53, x_2);
if (x_54 == 0)
{
lean_object* x_55; 
x_55 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_17 = x_55;
goto block_23;
}
else
{
lean_object* x_56; 
x_56 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_17 = x_56;
goto block_23;
}
}
case 3:
{
lean_object* x_57; uint8_t x_58; 
x_57 = lean_unsigned_to_nat(1024u);
x_58 = lean_nat_dec_le(x_57, x_2);
if (x_58 == 0)
{
lean_object* x_59; 
x_59 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_24 = x_59;
goto block_30;
}
else
{
lean_object* x_60; 
x_60 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_24 = x_60;
goto block_30;
}
}
case 4:
{
lean_object* x_61; uint8_t x_62; 
x_61 = lean_unsigned_to_nat(1024u);
x_62 = lean_nat_dec_le(x_61, x_2);
if (x_62 == 0)
{
lean_object* x_63; 
x_63 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_31 = x_63;
goto block_37;
}
else
{
lean_object* x_64; 
x_64 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_31 = x_64;
goto block_37;
}
}
default: 
{
lean_object* x_65; uint8_t x_66; 
x_65 = lean_unsigned_to_nat(1024u);
x_66 = lean_nat_dec_le(x_65, x_2);
if (x_66 == 0)
{
lean_object* x_67; 
x_67 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_38 = x_67;
goto block_44;
}
else
{
lean_object* x_68; 
x_68 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_38 = x_68;
goto block_44;
}
}
}
block_9:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1;
x_5 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
x_6 = 0;
x_7 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set_uint8(x_7, sizeof(void*)*1, x_6);
x_8 = l_Repr_addAppParen(x_7, x_2);
return x_8;
}
block_16:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3;
x_12 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = 0;
x_14 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set_uint8(x_14, sizeof(void*)*1, x_13);
x_15 = l_Repr_addAppParen(x_14, x_2);
return x_15;
}
block_23:
{
lean_object* x_18; lean_object* x_19; uint8_t x_20; lean_object* x_21; lean_object* x_22; 
x_18 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5;
x_19 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_19, 0, x_17);
lean_ctor_set(x_19, 1, x_18);
x_20 = 0;
x_21 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_21, 0, x_19);
lean_ctor_set_uint8(x_21, sizeof(void*)*1, x_20);
x_22 = l_Repr_addAppParen(x_21, x_2);
return x_22;
}
block_30:
{
lean_object* x_25; lean_object* x_26; uint8_t x_27; lean_object* x_28; lean_object* x_29; 
x_25 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7;
x_26 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_26, 0, x_24);
lean_ctor_set(x_26, 1, x_25);
x_27 = 0;
x_28 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_28, 0, x_26);
lean_ctor_set_uint8(x_28, sizeof(void*)*1, x_27);
x_29 = l_Repr_addAppParen(x_28, x_2);
return x_29;
}
block_37:
{
lean_object* x_32; lean_object* x_33; uint8_t x_34; lean_object* x_35; lean_object* x_36; 
x_32 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9;
x_33 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_33, 0, x_31);
lean_ctor_set(x_33, 1, x_32);
x_34 = 0;
x_35 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_35, 0, x_33);
lean_ctor_set_uint8(x_35, sizeof(void*)*1, x_34);
x_36 = l_Repr_addAppParen(x_35, x_2);
return x_36;
}
block_44:
{
lean_object* x_39; lean_object* x_40; uint8_t x_41; lean_object* x_42; lean_object* x_43; 
x_39 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11;
x_40 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_40, 0, x_38);
lean_ctor_set(x_40, 1, x_39);
x_41 = 0;
x_42 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_42, 0, x_40);
lean_ctor_set_uint8(x_42, sizeof(void*)*1, x_41);
x_43 = l_Repr_addAppParen(x_42, x_2);
return x_43;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0;
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize(uint8_t x_1) {
_start:
{
switch (x_1) {
case 1:
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(759u);
return x_2;
}
case 2:
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(2576u);
return x_3;
}
case 3:
{
lean_object* x_4; 
x_4 = lean_unsigned_to_nat(759u);
return x_4;
}
case 5:
{
lean_object* x_5; 
x_5 = lean_unsigned_to_nat(0u);
return x_5;
}
default: 
{
lean_object* x_6; 
x_6 = lean_unsigned_to_nat(1u);
return x_6;
}
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize(x_2);
return x_3;
}
}
static uint8_t _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_total__codewords___nativeDecide__1__1() {
_start:
{
uint8_t x_1; 
x_1 = 1;
return x_1;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_eq(x_1, x_2);
if (x_3 == 0)
{
lean_object* x_4; uint8_t x_5; 
x_4 = lean_unsigned_to_nat(8u);
x_5 = lean_nat_dec_eq(x_1, x_4);
if (x_5 == 0)
{
lean_object* x_6; uint8_t x_7; 
x_6 = lean_unsigned_to_nat(12u);
x_7 = lean_nat_dec_eq(x_1, x_6);
if (x_7 == 0)
{
lean_object* x_8; uint8_t x_9; 
x_8 = lean_unsigned_to_nat(16u);
x_9 = lean_nat_dec_eq(x_1, x_8);
if (x_9 == 0)
{
lean_object* x_10; uint8_t x_11; 
x_10 = lean_unsigned_to_nat(24u);
x_11 = lean_nat_dec_eq(x_1, x_10);
if (x_11 == 0)
{
uint8_t x_12; 
x_12 = 5;
return x_12;
}
else
{
uint8_t x_13; 
x_13 = 4;
return x_13;
}
}
else
{
uint8_t x_14; 
x_14 = 3;
return x_14;
}
}
else
{
uint8_t x_15; 
x_15 = 2;
return x_15;
}
}
else
{
uint8_t x_16; 
x_16 = 1;
return x_16;
}
}
else
{
uint8_t x_17; 
x_17 = 0;
return x_17;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_hammingWeight(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_weightToOrbit(x_2);
lean_dec(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_galoisOrbitSize(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_octadOrbitRepresentative(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_orbitSize(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_galoisOrbitSize___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_galoisOrbitSize(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(uint8_t x_1) {
_start:
{
if (x_1 == 0)
{
lean_object* x_2; 
x_2 = lean_unsigned_to_nat(0u);
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_unsigned_to_nat(1u);
return x_3;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_toCtorIdx(uint8_t x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_toCtorIdx___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_toCtorIdx(x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim(lean_object* x_1, lean_object* x_2, uint8_t x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
lean_inc(x_5);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4, lean_object* x_5) {
_start:
{
uint8_t x_6; lean_object* x_7; 
x_6 = lean_unbox(x_3);
x_7 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorElim(x_1, x_2, x_6, x_4, x_5);
lean_dec(x_5);
lean_dec(x_2);
return x_7;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_stack_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___redArg(lean_object* x_1) {
_start:
{
lean_inc(x_1);
return x_1;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___redArg___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___redArg(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim(lean_object* x_1, uint8_t x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
lean_inc(x_4);
return x_4;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim___boxed(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
uint8_t x_5; lean_object* x_6; 
x_5 = lean_unbox(x_2);
x_6 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_queue_elim(x_1, x_5, x_3, x_4);
lean_dec(x_4);
return x_6;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ofNat(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(0u);
x_3 = lean_nat_dec_le(x_1, x_2);
if (x_3 == 0)
{
uint8_t x_4; 
x_4 = 1;
return x_4;
}
else
{
uint8_t x_5; 
x_5 = 0;
return x_5;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ofNat___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ofNat(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqFrontierMode(uint8_t x_1, uint8_t x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_FrontierMode_ctorIdx(x_2);
x_5 = lean_nat_dec_eq(x_3, x_4);
lean_dec(x_4);
lean_dec(x_3);
return x_5;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqFrontierMode___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; uint8_t x_4; uint8_t x_5; lean_object* x_6; 
x_3 = lean_unbox(x_1);
x_4 = lean_unbox(x_2);
x_5 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instDecidableEqFrontierMode(x_3, x_4);
x_6 = lean_box(x_5);
return x_6;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.FrontierMode.stack", 46, 46);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("HatsuYakitori.GolayFrontier.FrontierMode.queue", 46, 46);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr(uint8_t x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_10; 
if (x_1 == 0)
{
lean_object* x_17; uint8_t x_18; 
x_17 = lean_unsigned_to_nat(1024u);
x_18 = lean_nat_dec_le(x_17, x_2);
if (x_18 == 0)
{
lean_object* x_19; 
x_19 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_3 = x_19;
goto block_9;
}
else
{
lean_object* x_20; 
x_20 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_3 = x_20;
goto block_9;
}
}
else
{
lean_object* x_21; uint8_t x_22; 
x_21 = lean_unsigned_to_nat(1024u);
x_22 = lean_nat_dec_le(x_21, x_2);
if (x_22 == 0)
{
lean_object* x_23; 
x_23 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8;
x_10 = x_23;
goto block_16;
}
else
{
lean_object* x_24; 
x_24 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9;
x_10 = x_24;
goto block_16;
}
}
block_9:
{
lean_object* x_4; lean_object* x_5; uint8_t x_6; lean_object* x_7; lean_object* x_8; 
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1;
x_5 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
x_6 = 0;
x_7 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_7, 0, x_5);
lean_ctor_set_uint8(x_7, sizeof(void*)*1, x_6);
x_8 = l_Repr_addAppParen(x_7, x_2);
return x_8;
}
block_16:
{
lean_object* x_11; lean_object* x_12; uint8_t x_13; lean_object* x_14; lean_object* x_15; 
x_11 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3;
x_12 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_12, 0, x_10);
lean_ctor_set(x_12, 1, x_11);
x_13 = 0;
x_14 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set_uint8(x_14, sizeof(void*)*1, x_13);
x_15 = l_Repr_addAppParen(x_14, x_2);
return x_15;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = lean_unbox(x_1);
x_4 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr(x_3, x_2);
lean_dec(x_2);
return x_4;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode() {
_start:
{
lean_object* x_1; 
x_1 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0;
return x_1;
}
}
LEAN_EXPORT uint8_t lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_frontierModeFromGolay(lean_object* x_1) {
_start:
{
lean_object* x_2; uint8_t x_3; 
x_2 = lean_unsigned_to_nat(12u);
x_3 = lean_nat_dec_lt(x_1, x_2);
if (x_3 == 0)
{
uint8_t x_4; 
x_4 = 1;
return x_4;
}
else
{
uint8_t x_5; 
x_5 = 0;
return x_5;
}
}
}
LEAN_EXPORT lean_object* lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_frontierModeFromGolay___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_frontierModeFromGolay(x_1);
lean_dec(x_1);
x_3 = lean_box(x_2);
return x_3;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Log_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Real_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Fin_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Finset_Card(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Nat_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Nat_Bits(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_Vector_Basic(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Data_List_Range(uint8_t builtin);
lean_object* initialize_mathlib_Mathlib_Tactic(uint8_t builtin);
lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_MachineConstants(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Analysis_SpecialFunctions_Log_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Real_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Fin_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Finset_Card(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Nat_Basic(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Nat_Bits(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_mathlib_Mathlib_Data_Vector_Basic(builtin);
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
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_n = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_n();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_n);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_k = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_k();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_k);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_d = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_d();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_d);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__2);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__3);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__4);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__5);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__6);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__7);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__8);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__9);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__10);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows___closed__11);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1___closed__1();
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayGeneratorRows__length___nativeDecide__1__1();
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__2);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__3);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__4);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__5);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__6);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__7);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__8);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__9);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__10);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows___closed__11);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1___closed__1();
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_golayParityCheckRows__length___nativeDecide__1__1();
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_computeParity___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__2);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__3);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__4);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__5);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__6);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__7);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__8);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass_repr___closed__9);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprGaloisHeightClass);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__2);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__3);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__4);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__5);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__6);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__7);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__8);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__9);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__10);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit_repr___closed__11);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprM24Orbit);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_total__codewords___nativeDecide__1__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_total__codewords___nativeDecide__1__1();
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__1);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__2);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode_repr___closed__3);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0 = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode___closed__0);
lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode = _init_lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode();
lean_mark_persistent(lp_hatsu_x2dyakitori_x2dproof_HatsuYakitori_GolayFrontier_instReprFrontierMode);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
