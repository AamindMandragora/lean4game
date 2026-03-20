import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L07_UniqueIdentity

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 8

Title "Unique Inverse"

Introduction "TODO"

/-- `is_inverse (a b : G)` says `a + b = 0 → b = (-a)`. -/
TheoremDoc is_inverse as "is_inverse" in "Group"

Statement is_inverse (a b : G) : a + b = 0 → b = (-a) := by
  Hint "TODO"
  intro h
  have h1 : (-a) + (a + b) = (-a) + 0 := by rw [h]
  rw [← add_assoc] at h1
  rw [neg_add] at h1
  rw [add_zero] at h1
  rw [zero_add] at h1
  exact h1

Conclusion "TODO"

NewTheorem is_zero
