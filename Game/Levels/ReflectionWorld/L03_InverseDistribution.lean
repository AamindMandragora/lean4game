import Game.Metadata
import Game.Documentation.Group.AbelianGroup
import Game.Levels.ReflectionWorld.L02_Conjugation

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

World "ReflectionWorld"
Level 3

Title "Inverse Distribution"

Introduction "Remember the Shoes and Socks lemma from Group World? We proved that `(a * b)⁻¹ = b⁻¹ * a⁻¹` — the order reverses. At the time, we all wondered why `(a * b)⁻¹` wasn't just `a⁻¹ * b⁻¹`. The answer was a lack of commutativity.

Well, now we do. In an abelian group, the inverse distributes 'normally' (`(a * b)⁻¹ = a⁻¹ * b⁻¹`), and we can all sleep tonight."

/-- `inv_dist (a b : AbelianGroup)` says `(a * b)⁻¹ = a⁻¹ * b⁻¹`. -/
TheoremDoc inv_dist as "inv_dist" in "AbelianGroup"

Statement inv_dist (a b : AbelianGroup) : (a * b)⁻¹ = a⁻¹ * b⁻¹ := by
  Hint (hidden := true) "We already know that `(a * b)⁻¹ = b⁻¹ * a⁻¹` from Group World. That's almost what we want. How can we use that result?"
  Hint (hidden := true) "Use `rw [shoes_and_socks]` to rewrite `(a * b)⁻¹` to `b⁻¹ * a⁻¹`."
  rw [shoes_and_socks]
  Hint (hidden := true) "Now swap `b⁻¹ * a⁻¹` to `a⁻¹ * b⁻¹` using commutativity."
  Hint (hidden := true) "Use `rw [op_comm]`."
  rw [op_comm]

Conclusion "The last proof we did was four lines. This proof was two. Commutativity is an incredibly powerful addition to our group's toolbox. It not only simplified our logic but gave us a more intuitive result. And thus ends our foray into O₂. Now, let's dive deeper into special subsets of a group. Hopefully the proofs are as easy..."

NewTheorem op_conj
