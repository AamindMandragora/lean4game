import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L08_UniqueInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 9

Title "Inverse of Zero"

Introduction "TODO"

/-- `neg_zero_is_zero` says `-(0 : G) = 0`. -/
TheoremDoc neg_zero_is_zero as "neg_zero_is_zero" in "Group"

Statement neg_zero_is_zero : -(0 : G) = 0 := by
  Hint "TODO"
  rw [← zero_add (-0)]
  rw [add_neg]

Conclusion "TODO"

NewTheorem is_inverse
