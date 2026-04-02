import Game.Metadata
import Game.Documentation.Group.AbelianGroup
import Game.Levels.ReflectionWorld.L02_Conjugation

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

World "ReflectionWorld"
Level 3

Title "Inverse Distribution"

Introduction "TODO"

/-- `inv_dist (a b : AbelianGroup)` says `(a * b)⁻¹ = a⁻¹ * b⁻¹`. -/
TheoremDoc inv_dist as "inv_dist" in "AbelianGroup"

Statement inv_dist (a b : AbelianGroup) : (a * b)⁻¹ = a⁻¹ * b⁻¹ := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [shoes_and_socks]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_comm]

Conclusion "TODO"

NewTheorem op_conj
