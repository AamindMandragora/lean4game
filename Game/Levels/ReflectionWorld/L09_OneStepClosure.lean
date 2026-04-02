import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L08_OneStepInverse

World "ReflectionWorld"
Level 9

Title "One Step Test: Closure"

Introduction "This is the trickiest of the three pieces. Our closure condition gives us `a * b⁻¹`, but we want `a * b`. How do we get rid of that pesky inverse?"

variable {G : Type} [MyGroup G]

/-- `one_step_op H h hε a b ha hb` says that if `H` is closed under `a * b⁻¹` by `h` and contains the identity by `hε`, then `a ∈ H` and `b ∈ H` implies `a * b ∈ H`. -/
TheoremDoc one_step_op as "one_step_op" in "Subgroup"

Statement one_step_op (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hε : H 1) (a b : G) (ha : H a) (hb : H b) : H (a * b) := by
  Hint (hidden := true) "We want `H (a * b)`. Our tool gives us `H (a * b⁻¹)`. So if we could feed in `b⁻¹` as the second argument, the double inverse would give us `a * (b⁻¹)⁻¹ = a * b`. Let's set that up."
  Hint (hidden := true) "Use `have h1 := h a b⁻¹` to start building `a * (b⁻¹)⁻¹`."
  have h1 := h a b⁻¹
  Hint (hidden := true) "Before we feed in membership proofs, let's rewrite the double inverse so we can see where this is going."
  Hint (hidden := true) "Use `rw [inv_of_inv_is_g] at {h1}` to turn `(b⁻¹)⁻¹` into `b`."
  rw [inv_of_inv_is_g] at h1
  Hint (hidden := true) "Now `{h1} : H a → H b⁻¹ → H (a * b)`. We have `H a` — feed it in."
  Hint (hidden := true) "Use `have h2 := {h1} ha`."
  have h2 := h1 ha
  Hint (hidden := true) "We still need `H b⁻¹`. We know `b ∈ H`, so we need to get `b⁻¹ ∈ H`. We proved in the last level that the one-step condition gives us inverses. How can we apply that?"
  have h3 := one_step_inv H h hε b hb
  Hint (hidden := true) "Now we have a hypothesis that says `H b⁻¹`. How can we use that to get rid of the hypothesis on `{h3}`?"
  Hint (hidden := true) "Use `have h4 := {h2} {h3}`."
  have h4 := h2 h3
  Hint (hidden := true) "`{h4}` should be exactly what we need."
  Hint (hidden := true) "Use `exact {h4}`."
  exact h4

Conclusion "All three pieces are in place. Time to put them together."

NewTheorem one_step_inv
