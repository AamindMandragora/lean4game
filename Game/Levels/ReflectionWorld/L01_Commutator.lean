import Game.Metadata
import Game.Documentation.Group.Group
import Game.Levels.GroupWorld.L12_ShoesAndSocks

variable {Group : Type} [MyGroup Group]

World "ReflectionWorld"
Level 1

Title "Commutator"

Introduction "TODO"

Statement (a b : Group) (h : a * b = b * a) : a * b * a⁻¹ * b⁻¹ = 1 := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [h]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_assoc b]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_inv]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_id]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  rw [op_inv]

Conclusion "TODO"

NewTheorem inv_of_inv_is_g
