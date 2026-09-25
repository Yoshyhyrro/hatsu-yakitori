(*
** File: ats_kernel.dats
** Minimal ATS2 core module for static safety verification.
** Can be compiled directly to C object files for Chicken Scheme FFI.
*)

#include "share/atspre_staload.hats"

(*
** Exported C function: Verify array index bounds at type level
** Param n: Strict positive integer (n > 0)
** Param i: Natural integer (i >= 0)
*)
extern
fn ats_check_index {n:pos} {i:nat} (n: int n, i: int i): bool = "ext#"

implement
ats_check_index {n} {i} (n, i) =
  if i < n then true else false

(*
** Exported C function: Overflow-checked bounded addition
** Ensures at compile-time that input arguments do not exceed the threshold
*)
extern
fn ats_safe_add {a,b:nat | a + b < 65536} (a: int a, b: int b): int (a + b) = "ext#"

implement
ats_safe_add (a, b) = a + b
