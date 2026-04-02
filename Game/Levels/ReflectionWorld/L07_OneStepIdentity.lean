import Game.Metadata
import Game.Documentation.Tactic.obtain
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L06_SubgroupIntersection

World "ReflectionWorld"
Level 7

Title "One Step Test: Identity"

Introduction "TODO"

variable {G : Type} [MyGroup G]

/-- `one_step_id H h hx` says that if `H` is closed under `a * b⁻¹` by `h` and nonempty by `hx`, then `1 ∈ H`. -/
TheoremDoc one_step_id as "one_step_id" in "Subgroup"

Statement one_step_id (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hx : ∃ x, H x) : H 1 := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  obtain ⟨x, hx⟩ := hx
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h1 := h x x
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h2 := h1 hx
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have h3 := h2 hx
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_inv] at h3
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  exact h3

Conclusion "TODO"

NewTheorem subgroup_intersection
NewTactic obtain
