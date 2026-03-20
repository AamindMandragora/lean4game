import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 3

Title "Left Inverse Cancellation"

Introduction "TODO"

/-- `neg_add_cancel a b` says `(-a) + (a + b) = b`. -/
TheoremDoc neg_add_cancel as "neg_add_cancel" in "Group"

Statement neg_add_cancel (a b : G) : (-a) + (a + b) = b := by
  Hint "TODO"
  rw [← add_assoc]
  rw [neg_add]
  rw [zero_add]

Conclusion "TODO"

NewTheorem add_assoc neg_add
