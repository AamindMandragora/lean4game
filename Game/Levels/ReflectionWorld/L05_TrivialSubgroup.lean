import Game.Metadata
import Game.Documentation.Tactic.show
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L04_Subgroup

World "ReflectionWorld"
Level 5

Title "Trivial Subgroup"

Introduction "TODO"

variable {G : Type} [MyGroup G]

def Trivial (g : G) : Prop := (g = 1)

Statement : IsSubgroup (G := G) Trivial := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case id_mem => trivial
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case op_mem =>
    intro a b ha hb
    show a * b = 1
    rw [ha, hb, op_id]
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case inv_mem =>
    intro a ha
    show a⁻¹ = 1
    rw [ha, ← id_is_inv_id]

Conclusion "TODO"

NewTactic «show»
