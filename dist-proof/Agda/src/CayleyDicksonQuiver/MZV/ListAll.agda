-- CayleyDicksonQuiver.MZV.ListAll
--
-- Lemmas on `All` for lists, used by the MZV modules.
module CayleyDicksonQuiver.MZV.ListAll where

open import Data.List using (List; []; _∷_; map; concatMap; applyUpTo; _++_)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc; _≤_; z≤n; s≤s)
open import Data.Product using (_×_; _,_)

all-++ : {A : Set} {P : A → Set} {xs ys : List A} →
  All P xs → All P ys → All P (xs ++ ys)
all-++ []         hys = hys
all-++ (h ∷ hxs)  hys = h ∷ all-++ hxs hys

all-map : {A B : Set} {P : B → Set} (f : A → B) {xs : List A} →
  All (λ x → P (f x)) xs → All P (map f xs)
all-map f []         = []
all-map f (h ∷ hs)   = h ∷ all-map f hs

all-imp : {A : Set} {P Q : A → Set} → (∀ x → P x → Q x) →
  {xs : List A} → All P xs → All Q xs
all-imp f []         = []
all-imp f (h ∷ hs)   = f _ h ∷ all-imp f hs

all-both : {A : Set} {P Q : A → Set} {xs : List A} →
  All P xs → All Q xs → All (λ x → P x × Q x) xs
all-both []         []         = []
all-both (p ∷ ps)   (q ∷ qs)   = (p , q) ∷ all-both ps qs

all-upTo : {A : Set} {Q : A → Set} (g : ℕ → List A) (f : ℕ → ℕ)
  (n : ℕ) → (∀ i → suc i ≤ n → All Q (g (f i))) →
  All Q (concatMap g (applyUpTo f n))
all-upTo g f zero    h = []
all-upTo g f (suc n) h =
  all-++ (h zero (s≤s z≤n))
         (all-upTo g (λ i → f (suc i)) n (λ i lt → h (suc i) (s≤s lt)))
