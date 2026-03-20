import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L05_RightInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 6

Title "Right Identity"

Introduction "TODO"

/-- `add_zero (a : G)` says `a + 0 = a`. -/
TheoremDoc add_zero as "add_zero" in "Group"

Statement add_zero (a : G) : a + 0 = a := by
  Hint "TODO"
  rw [← neg_add a]
  rw [← add_assoc]
  rw [add_neg]
  rw [zero_add]

Conclusion "TODO"

NewTheorem add_neg
