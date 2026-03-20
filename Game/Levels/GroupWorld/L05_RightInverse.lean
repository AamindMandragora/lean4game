import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L04_LeftCancellation

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 5

Title "Right Inverse"

Introduction "TODO"

/-- `add_neg (a : G)` says `a + (-a) = 0`. -/
TheoremDoc add_neg as "add_neg" in "Group"

Statement add_neg (a : G) : a + (-a) = 0 := by
  Hint "TODO"
  rw [← zero_add (a + (-a))]
  rw [← neg_add (-a)]
  rw [add_assoc]
  Branch
    rw [← add_assoc (-a)]
    rw [neg_add]
    rw [zero_add]
  rw [neg_add_cancel a]

Conclusion "TODO"
