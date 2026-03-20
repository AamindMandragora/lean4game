import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L10_RightCancellation

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 11

Title "Double Inverse"

Introduction "TODO"

/-- `neg_of_neg_is_g (g : G)` says `(-(-g)) = g`. -/
TheoremDoc neg_of_neg_is_g as "neg_of_neg_is_g" in "Group"

Statement neg_of_neg_is_g (g : G) : (-(-g)) = g := by
  Hint "TODO"
  rw [← zero_add (-(-g))]
  rw [← add_neg g]
  rw [add_assoc]
  rw [add_neg]
  rw [add_zero]

Conclusion "TODO"

NewTheorem add_cancel
