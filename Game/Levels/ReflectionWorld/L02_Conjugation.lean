import Game.Metadata
import Game.Definitions.Group.AbelianGroup
import Game.Levels.ReflectionWorld.L01_Commutator

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

World "ReflectionWorld"
Level 2

Title "Conjugation"

Introduction "TODO"

Statement op_conj (a b : AbelianGroup) : a * b * a⁻¹ = b := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_comm]
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
