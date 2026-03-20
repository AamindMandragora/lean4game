import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 1

Title "Zero Equals Zero"

Introduction "TODO"

Statement : (0 : G) = 0 := by
  Hint "Remember, we're just trying to prove that `0 = 0`. We just introduced the `rfl` tactic that proves any goal of the form `X = X`."
  rfl

Conclusion "TODO"

NewTactic rfl
