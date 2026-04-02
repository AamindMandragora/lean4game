import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L09_OneStepClosure

World "ReflectionWorld"
Level 10

Title "One Step Test"

Introduction "TODO"

variable {G : Type} [MyGroup G]

/-- `one_step_test H hx h` says that if `H` is closed under `a * b⁻¹` by `h` and nonempty by `hx`, then `H` is a subgroup. -/
TheoremDoc one_step_test as "one_step_test" in "Subgroup"

Statement one_step_test (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hx : ∃ x, H x) : IsSubgroup (G := G) H := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  have hε : H 1 := by exact one_step_id H h hx
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case id_mem => exact hε
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case op_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    intro a b ha hb
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    exact one_step_op H h hε a b ha hb
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case inv_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    intro a ha
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    exact one_step_inv H h hε a ha

Conclusion "TODO"

NewTheorem one_step_op
