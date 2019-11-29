module half where

open import Relation.Binary.PropositionalEquality using (_≡_ ; refl)
open import Size

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ

{-# BUILTIN NATURAL ℕ #-}

half : ℕ → ℕ
half zero = zero
half (suc zero) = zero
half (suc (suc i)) = suc (half i)

_ : half 5 ≡ 2
_ = refl

data ℕₛ (n : Size) : Set where
  zero : ℕₛ n
  suc : (m : Size< n) → ℕₛ m → ℕₛ n


_ : ∀ {n} → ℕₛ n
_ = zero

_ : ∀ {n} (m : Size< n) → ℕₛ m → ℕₛ n
_ = suc

halfₛ : ∀ n → ℕₛ n → ℕₛ n
halfₛ n zero = zero
halfₛ n (suc m zero) = zero
halfₛ n (suc m (suc k i)) = suc k (halfₛ k i)
