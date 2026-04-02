import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L07_OneStepIdentity

World "ReflectionWorld"
Level 8

Title "One Step Test: Inverses"

Introduction "TODO"

variable {G : Type} [MyGroup G]

/-- `one_step_inv H h hε a ha` says that if `H` is closed under `a * b⁻¹` by `h` and contains the identity by `hε`, then `a ∈ H` implies `a⁻¹ ∈ H`. -/
TheoremDoc one_step_inv as "one_step_inv" in "Subgroup"

Statement one_step_inv (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hε : H 1) (a : G) (ha : H a) : H (a⁻¹) := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h1 := h 1 a
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h2 := h1 hε
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h3 := h2 ha
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [id_op] at h3
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  exact h3

Conclusion "TODO"

NewTheorem one_step_id
