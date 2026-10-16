-- CayleyDicksonQuiver.AbelianCurse.CDBilinear
--
-- Algebraic infrastructure for `Hypotheses.mul`, proved for EVERY level k
-- (no postulates, no case analysis on k):
--
--   * `mul-addˡ`, `mul-addʳ`: multiplication is additive in each argument;
--   * `conj-add`, `neg-add`, `add-interchange`, `add-zeroˡ`;
--   * `tms k n x`: the n-fold sum x + ... + x, with `tms-add`, `tms-neg`,
--     `tms-plus`, `tms-tms`, `tms-mulˡ`, `tms-mulʳ` (scalars pull out);
--   * `sq-seed`: if p (p y) = - y, q (q y) = - y and p (q y) + q (p y) = 0,
--     then (p + c q)((p + c q) y) = - (1 + c^2) y for every natural c;
--   * `uv-seed`: if the four anticommutator expressions for the pairs
--     (p, r), (p, s), (q, r), (q, s) vanish at y, then
--     u (v y) + v (u y) = 0 for u = p + c q, v = r + c s, every natural c.
--
-- Nothing here depends on `SecondOperatorLemmas`; the only project import is
-- `Hypotheses`. Not imported by `Everything`; may contain holes.
module CayleyDicksonQuiver.AbelianCurse.CDBilinear where

open import CayleyDicksonQuiver.Hypotheses
  using (CD; add; neg; mul; conj; zeroCD; add-comm; add-assoc; mul-zeroˡ; mul-zeroʳ)
open import Data.Integer using (ℤ; _+_; _*_; -_)
open import Data.Integer.Properties using (neg-distrib-+; *-distribˡ-+; *-distribʳ-+; +-identityˡ)
open import Data.Nat using (ℕ) renaming (zero to ℕzero; suc to ℕsuc; _+_ to _+ℕ_; _*_ to _*ℕ_)
open import Data.Product using (_,_)
open import Relation.Binary.PropositionalEquality
open ≡-Reasoning

add-interchange : (k : ℕ) (p q r s : CD k) →
  add k (add k p q) (add k r s) ≡ add k (add k p r) (add k q s)
add-interchange k p q r s =
  begin
    add k (add k p q) (add k r s)
  ≡⟨ add-assoc k p q (add k r s) ⟩
    add k p (add k q (add k r s))
  ≡⟨ cong (add k p) (sym (add-assoc k q r s)) ⟩
    add k p (add k (add k q r) s)
  ≡⟨ cong (λ t → add k p (add k t s)) (add-comm k q r) ⟩
    add k p (add k (add k r q) s)
  ≡⟨ cong (add k p) (add-assoc k r q s) ⟩
    add k p (add k r (add k q s))
  ≡⟨ sym (add-assoc k p r (add k q s)) ⟩
    add k (add k p r) (add k q s)
  ∎

neg-add : (k : ℕ) (x y : CD k) → neg k (add k x y) ≡ add k (neg k x) (neg k y)
neg-add ℕzero    x       y       = neg-distrib-+ x y
neg-add (ℕsuc k) (a , b) (c , d) = cong₂ _,_ (neg-add k a c) (neg-add k b d)

conj-add : (k : ℕ) (x y : CD k) → conj k (add k x y) ≡ add k (conj k x) (conj k y)
conj-add ℕzero    x       y       = refl
conj-add (ℕsuc k) (a , b) (c , d) = cong₂ _,_ (conj-add k a c) (neg-add k b d)

mul-addˡ : (k : ℕ) (x x' y : CD k) → mul k (add k x x') y ≡ add k (mul k x y) (mul k x' y)
mul-addʳ : (k : ℕ) (x y y' : CD k) → mul k x (add k y y') ≡ add k (mul k x y) (mul k x y')

mul-addˡ ℕzero    x       x'       y       = *-distribʳ-+ y x x'
mul-addˡ (ℕsuc k) (a , b) (a' , b') (c , d) = cong₂ _,_ first second
  where
  first : add k (mul k (add k a a') c) (neg k (mul k (conj k d) (add k b b')))
        ≡ add k (add k (mul k a c) (neg k (mul k (conj k d) b)))
                (add k (mul k a' c) (neg k (mul k (conj k d) b')))
  first =
    trans (cong₂ (add k) (mul-addˡ k a a' c)
             (trans (cong (neg k) (mul-addʳ k (conj k d) b b')) (neg-add k _ _)))
          (add-interchange k _ _ _ _)
  second : add k (mul k d (add k a a')) (mul k (add k b b') (conj k c))
         ≡ add k (add k (mul k d a) (mul k b (conj k c)))
                 (add k (mul k d a') (mul k b' (conj k c)))
  second =
    trans (cong₂ (add k) (mul-addʳ k d a a') (mul-addˡ k b b' (conj k c)))
          (add-interchange k _ _ _ _)

mul-addʳ ℕzero    x       y       y'       = *-distribˡ-+ x y y'
mul-addʳ (ℕsuc k) (a , b) (c , d) (c' , d') = cong₂ _,_ first second
  where
  first : add k (mul k a (add k c c')) (neg k (mul k (conj k (add k d d')) b))
        ≡ add k (add k (mul k a c) (neg k (mul k (conj k d) b)))
                (add k (mul k a c') (neg k (mul k (conj k d') b)))
  first =
    trans (cong₂ (add k) (mul-addʳ k a c c')
             (trans (cong (neg k) (trans (cong (λ t → mul k t b) (conj-add k d d'))
                                         (mul-addˡ k (conj k d) (conj k d') b)))
                    (neg-add k _ _)))
          (add-interchange k _ _ _ _)
  second : add k (mul k (add k d d') a) (mul k b (conj k (add k c c')))
         ≡ add k (add k (mul k d a) (mul k b (conj k c)))
                 (add k (mul k d' a) (mul k b (conj k c')))
  second =
    trans (cong₂ (add k) (mul-addˡ k d d' a)
             (trans (cong (mul k b) (conj-add k c c')) (mul-addʳ k b (conj k c) (conj k c'))))
          (add-interchange k _ _ _ _)

------------------------------------------------------------------------
-- n-fold sums (`tms`) and their calculus
------------------------------------------------------------------------

add-zeroˡ : (k : ℕ) (x : CD k) → add k (zeroCD k) x ≡ x
add-zeroˡ ℕzero    x       = +-identityˡ x
add-zeroˡ (ℕsuc k) (a , b) = cong₂ _,_ (add-zeroˡ k a) (add-zeroˡ k b)

neg-zero : (k : ℕ) → neg k (zeroCD k) ≡ zeroCD k
neg-zero ℕzero    = refl
neg-zero (ℕsuc k) = cong₂ _,_ (neg-zero k) (neg-zero k)

tms : (k : ℕ) → ℕ → CD k → CD k
tms k ℕzero    x = zeroCD k
tms k (ℕsuc n) x = add k x (tms k n x)

tms-zero : (k c : ℕ) → tms k c (zeroCD k) ≡ zeroCD k
tms-zero k ℕzero    = refl
tms-zero k (ℕsuc c) = trans (cong (add k (zeroCD k)) (tms-zero k c)) (add-zeroˡ k (zeroCD k))

tms-add : (k c : ℕ) (x y : CD k) → tms k c (add k x y) ≡ add k (tms k c x) (tms k c y)
tms-add k ℕzero    x y = sym (add-zeroˡ k (zeroCD k))
tms-add k (ℕsuc c) x y =
  trans (cong (add k (add k x y)) (tms-add k c x y))
        (add-interchange k x y (tms k c x) (tms k c y))

tms-neg : (k c : ℕ) (x : CD k) → tms k c (neg k x) ≡ neg k (tms k c x)
tms-neg k ℕzero    x = sym (neg-zero k)
tms-neg k (ℕsuc c) x =
  trans (cong (add k (neg k x)) (tms-neg k c x)) (sym (neg-add k x (tms k c x)))

tms-plus : (k a b : ℕ) (x : CD k) → tms k (a +ℕ b) x ≡ add k (tms k a x) (tms k b x)
tms-plus k ℕzero    b x = sym (add-zeroˡ k (tms k b x))
tms-plus k (ℕsuc a) b x =
  trans (cong (add k x) (tms-plus k a b x)) (sym (add-assoc k x (tms k a x) (tms k b x)))

tms-tms : (k c d : ℕ) (x : CD k) → tms k c (tms k d x) ≡ tms k (c *ℕ d) x
tms-tms k ℕzero    d x = refl
tms-tms k (ℕsuc c) d x =
  trans (cong (add k (tms k d x)) (tms-tms k c d x)) (sym (tms-plus k d (c *ℕ d) x))

tms-mulˡ : (k c : ℕ) (x y : CD k) → mul k (tms k c x) y ≡ tms k c (mul k x y)
tms-mulˡ k ℕzero    x y = mul-zeroˡ k y
tms-mulˡ k (ℕsuc c) x y =
  trans (mul-addˡ k x (tms k c x) y) (cong (add k (mul k x y)) (tms-mulˡ k c x y))

tms-mulʳ : (k c : ℕ) (x y : CD k) → mul k x (tms k c y) ≡ tms k c (mul k x y)
tms-mulʳ k ℕzero    x y = mul-zeroʳ k x
tms-mulʳ k (ℕsuc c) x y =
  trans (mul-addʳ k x y (tms k c y)) (cong (add k (mul k x y)) (tms-mulʳ k c x y))

------------------------------------------------------------------------
-- The seed lemma for u (u y):  (p + c q)((p + c q) y) = - (1 + c^2) y
------------------------------------------------------------------------

sq-seed : (k c : ℕ) (p q y : CD k) →
  mul k p (mul k p y) ≡ neg k y →
  mul k q (mul k q y) ≡ neg k y →
  add k (mul k p (mul k q y)) (mul k q (mul k p y)) ≡ zeroCD k →
  mul k (add k p (tms k c q)) (mul k (add k p (tms k c q)) y)
    ≡ neg k (tms k (ℕsuc (c *ℕ c)) y)
sq-seed k c p q y Fpp Fqq Fpq =
  begin
    mul k u (mul k u y)
  ≡⟨ cong (mul k u) uy-eq ⟩
    mul k u w
  ≡⟨ mul-addˡ k p (tms k c q) w ⟩
    add k (mul k p w) (mul k (tms k c q) w)
  ≡⟨ cong₂ (add k) pw-eq qw-eq ⟩
    add k (add k (neg k y) (tms k c X)) (add k (tms k c Z) (tms k (c *ℕ c) (neg k y)))
  ≡⟨ cong (λ t → add k (add k (neg k y) (tms k c X)) (add k (tms k c Z) t)) (tms-neg k (c *ℕ c) y) ⟩
    add k (add k (neg k y) (tms k c X)) (add k (tms k c Z) (neg k (tms k (c *ℕ c) y)))
  ≡⟨ add-assoc k (neg k y) (tms k c X) (add k (tms k c Z) (neg k (tms k (c *ℕ c) y))) ⟩
    add k (neg k y) (add k (tms k c X) (add k (tms k c Z) (neg k (tms k (c *ℕ c) y))))
  ≡⟨ cong (add k (neg k y)) mid ⟩
    add k (neg k y) (neg k (tms k (c *ℕ c) y))
  ≡⟨ sym (neg-add k y (tms k (c *ℕ c) y)) ⟩
    neg k (tms k (ℕsuc (c *ℕ c)) y)
  ∎
  where
  u : CD k
  u = add k p (tms k c q)
  A B X Z w : CD k
  A = mul k p y
  B = mul k q y
  X = mul k p B
  Z = mul k q A
  w = add k A (tms k c B)
  uy-eq : mul k u y ≡ w
  uy-eq = trans (mul-addˡ k p (tms k c q) y) (cong (add k A) (tms-mulˡ k c q y))
  pw-eq : mul k p w ≡ add k (neg k y) (tms k c X)
  pw-eq = trans (mul-addʳ k p A (tms k c B)) (cong₂ (add k) Fpp (tms-mulʳ k c p B))
  qw-eq : mul k (tms k c q) w ≡ add k (tms k c Z) (tms k (c *ℕ c) (neg k y))
  qw-eq =
    begin
      mul k (tms k c q) w
    ≡⟨ tms-mulˡ k c q w ⟩
      tms k c (mul k q w)
    ≡⟨ cong (tms k c) (mul-addʳ k q A (tms k c B)) ⟩
      tms k c (add k Z (mul k q (tms k c B)))
    ≡⟨ cong (λ t → tms k c (add k Z t)) (tms-mulʳ k c q B) ⟩
      tms k c (add k Z (tms k c (mul k q B)))
    ≡⟨ cong (λ t → tms k c (add k Z (tms k c t))) Fqq ⟩
      tms k c (add k Z (tms k c (neg k y)))
    ≡⟨ tms-add k c Z (tms k c (neg k y)) ⟩
      add k (tms k c Z) (tms k c (tms k c (neg k y)))
    ≡⟨ cong (add k (tms k c Z)) (tms-tms k c c (neg k y)) ⟩
      add k (tms k c Z) (tms k (c *ℕ c) (neg k y))
    ∎
  mid : add k (tms k c X) (add k (tms k c Z) (neg k (tms k (c *ℕ c) y)))
      ≡ neg k (tms k (c *ℕ c) y)
  mid =
    begin
      add k (tms k c X) (add k (tms k c Z) (neg k (tms k (c *ℕ c) y)))
    ≡⟨ sym (add-assoc k (tms k c X) (tms k c Z) (neg k (tms k (c *ℕ c) y))) ⟩
      add k (add k (tms k c X) (tms k c Z)) (neg k (tms k (c *ℕ c) y))
    ≡⟨ cong (λ t → add k t (neg k (tms k (c *ℕ c) y))) (sym (tms-add k c X Z)) ⟩
      add k (tms k c (add k X Z)) (neg k (tms k (c *ℕ c) y))
    ≡⟨ cong (λ t → add k (tms k c t) (neg k (tms k (c *ℕ c) y))) Fpq ⟩
      add k (tms k c (zeroCD k)) (neg k (tms k (c *ℕ c) y))
    ≡⟨ cong (λ t → add k t (neg k (tms k (c *ℕ c) y))) (tms-zero k c) ⟩
      add k (zeroCD k) (neg k (tms k (c *ℕ c) y))
    ≡⟨ add-zeroˡ k _ ⟩
      neg k (tms k (c *ℕ c) y)
    ∎

------------------------------------------------------------------------
-- The seed lemma for u (v y) + v (u y)
------------------------------------------------------------------------

Bf : (k : ℕ) (y u v : CD k) → CD k
Bf k y u v = add k (mul k u (mul k v y)) (mul k v (mul k u y))

Bf-addˡ : (k : ℕ) (y u u' v : CD k) →
  Bf k y (add k u u') v ≡ add k (Bf k y u v) (Bf k y u' v)
Bf-addˡ k y u u' v =
  trans (cong₂ (add k) (mul-addˡ k u u' (mul k v y))
           (trans (cong (mul k v) (mul-addˡ k u u' y)) (mul-addʳ k v (mul k u y) (mul k u' y))))
        (add-interchange k (mul k u (mul k v y)) (mul k u' (mul k v y))
                           (mul k v (mul k u y)) (mul k v (mul k u' y)))

Bf-addʳ : (k : ℕ) (y u v v' : CD k) →
  Bf k y u (add k v v') ≡ add k (Bf k y u v) (Bf k y u v')
Bf-addʳ k y u v v' =
  trans (cong₂ (add k)
           (trans (cong (mul k u) (mul-addˡ k v v' y)) (mul-addʳ k u (mul k v y) (mul k v' y)))
           (mul-addˡ k v v' (mul k u y)))
        (add-interchange k (mul k u (mul k v y)) (mul k u (mul k v' y))
                           (mul k v (mul k u y)) (mul k v' (mul k u y)))

Bf-tmsˡ : (k c : ℕ) (y u v : CD k) → Bf k y (tms k c u) v ≡ tms k c (Bf k y u v)
Bf-tmsˡ k c y u v =
  trans (cong₂ (add k) (tms-mulˡ k c u (mul k v y))
           (trans (cong (mul k v) (tms-mulˡ k c u y)) (tms-mulʳ k c v (mul k u y))))
        (sym (tms-add k c (mul k u (mul k v y)) (mul k v (mul k u y))))

Bf-tmsʳ : (k c : ℕ) (y u v : CD k) → Bf k y u (tms k c v) ≡ tms k c (Bf k y u v)
Bf-tmsʳ k c y u v =
  trans (cong₂ (add k)
           (trans (cong (mul k u) (tms-mulˡ k c v y)) (tms-mulʳ k c u (mul k v y)))
           (tms-mulˡ k c v (mul k u y)))
        (sym (tms-add k c (mul k u (mul k v y)) (mul k v (mul k u y))))

uv-seed : (k c : ℕ) (p q r s y : CD k) →
  Bf k y p r ≡ zeroCD k → Bf k y p s ≡ zeroCD k →
  Bf k y q r ≡ zeroCD k → Bf k y q s ≡ zeroCD k →
  Bf k y (add k p (tms k c q)) (add k r (tms k c s)) ≡ zeroCD k
uv-seed k c p q r s y Hpr Hps Hqr Hqs =
  begin
    Bf k y (add k p (tms k c q)) (add k r (tms k c s))
  ≡⟨ Bf-addˡ k y p (tms k c q) (add k r (tms k c s)) ⟩
    add k (Bf k y p (add k r (tms k c s))) (Bf k y (tms k c q) (add k r (tms k c s)))
  ≡⟨ cong₂ (add k) E1 E2 ⟩
    add k (add k z (tms k c z)) (tms k c (add k z (tms k c z)))
  ≡⟨ cong₂ (add k) z1 (trans (cong (tms k c) z1) (tms-zero k c)) ⟩
    add k z z
  ≡⟨ add-zeroˡ k z ⟩
    z
  ∎
  where
  z : CD k
  z = zeroCD k
  z1 : add k z (tms k c z) ≡ z
  z1 = trans (cong (add k z) (tms-zero k c)) (add-zeroˡ k z)
  E1 : Bf k y p (add k r (tms k c s)) ≡ add k z (tms k c z)
  E1 = trans (Bf-addʳ k y p r (tms k c s))
             (cong₂ (add k) Hpr (trans (Bf-tmsʳ k c y p s) (cong (tms k c) Hps)))
  E2 : Bf k y (tms k c q) (add k r (tms k c s)) ≡ tms k c (add k z (tms k c z))
  E2 = trans (Bf-tmsˡ k c y q (add k r (tms k c s)))
             (cong (tms k c)
                (trans (Bf-addʳ k y q r (tms k c s))
                       (cong₂ (add k) Hqr (trans (Bf-tmsʳ k c y q s) (cong (tms k c) Hqs)))))
