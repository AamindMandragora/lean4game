import Game.Metadata
import Game.Documentation.Group.AbelianGroup
import Game.Levels.ReflectionWorld.L01_Commutator

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

World "ReflectionWorld"
Level 2

Title "Conjugation"

Introduction "TODO"

/-- `op_conj (a b : AbelianGroup)` says `a * b * a⁻¹ = b`. -/
TheoremDoc op_conj as "op_conj" in "AbelianGroup"

Statement op_conj (a b : AbelianGroup) : a * b * a⁻¹ = b := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_comm a]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_assoc b]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_inv]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_id]

Conclusion "TODO"

NewTheorem op_comm
