import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L08_OneStepInverse

World "ReflectionWorld"
Level 9

Title "One Step Test: Closure"

Introduction "TODO"

variable {G : Type} [MyGroup G]

/-- `one_step_op H h hε a b ha hb` says that if `H` is closed under `a * b⁻¹` by `h` and contains the identity by `hε`, then `a ∈ H` and `b ∈ H` implies `a * b ∈ H`. -/
TheoremDoc one_step_op as "one_step_op" in "Subgroup"

Statement one_step_op (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hε : H 1) (a b : G) (ha : H a) (hb : H b) : H (a * b) := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h1 := h a b⁻¹
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [inv_of_inv_is_g] at h1
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h2 := h1 ha
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h3 := h 1 b
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h4 := h3 hε
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h5 := h4 hb
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [id_op] at h5
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h6 := h2 h5
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  exact h6

Conclusion "TODO"

NewTheorem one_step_inv
