import Game.Metadata
import Game.Documentation.Group.NormalSubgroup
import Game.Levels.ReflectionWorld.L10_OneStepTest

World "ReflectionWorld"
Level 11

Title "Normal Subgroups"

Introduction "TODO"

variable {G : Type} [MyGroup G]

Statement : IsNormalSubgroup (G := G) Univ := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case toIsSubgroup =>
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
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case conj_mem => intro g a _; trivial

Conclusion "TODO"

NewTheorem one_step_test
