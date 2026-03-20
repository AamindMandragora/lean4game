import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L06_RightIdentity

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 7

Title "Unique Identity"

Introduction "TODO"

/-- `is_zero (a e : G)` says `e + a = a → e = 0`. -/
TheoremDoc is_zero as "is_zero" in "Group"

Statement is_zero (a e : G) : e + a = a → e = 0 := by
  Hint "TODO"
  intro h
  have h1 : e + a + (-a) = a + (-a) := by rw [h]
  rw [add_assoc] at h1
  rw [add_neg] at h1
  rw [add_zero] at h1
  exact h1

Conclusion "TODO"

NewTheorem add_zero
