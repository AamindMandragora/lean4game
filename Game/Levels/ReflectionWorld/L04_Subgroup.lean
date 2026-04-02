import Game.Metadata
import Game.Documentation.Tactic.constructor
import Game.Documentation.Tactic.trivial
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L03_InverseDistribution

World "ReflectionWorld"
Level 4

Title "Subgroup"

Introduction "TODO"

variable {G : Type} [MyGroup G]

def Univ (g : G) : Prop := True

Statement : IsSubgroup (G := G) Univ := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case id_mem => trivial
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case op_mem => intro a b _ _; trivial
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case inv_mem => intro a _; trivial

Conclusion "TODO"

NewTheorem inv_dist
NewDefinition IsSubgroup
NewTactic constructor trivial
