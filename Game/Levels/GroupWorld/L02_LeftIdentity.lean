import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 2

Title "Left Identity"

Introduction "TODO"

Statement (a : G) : (0 : G) + a = a := by
  Hint "TODO"
  rw [zero_add]

Conclusion "TODO"

NewTactic rw
NewTheorem zero_add
