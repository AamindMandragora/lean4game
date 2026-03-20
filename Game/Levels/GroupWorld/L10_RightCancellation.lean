import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L09_InverseOfZero

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 10

Title "Right Cancellation"

Introduction "TODO"

/-- `add_cancel (a b c : G)` says `b + a = c + a → b = c`. -/
TheoremDoc add_cancel as "add_cancel" in "Group"

Statement add_cancel (a b c : G) : b + a = c + a → b = c := by
  Hint "TODO"
  intro h
  have h1 : b + a + (-a) = c + a + (-a) := by rw [h]
  rw [add_assoc] at h1
  rw [add_assoc] at h1
  rw [add_neg] at h1
  rw [add_zero] at h1
  rw [add_zero] at h1
  exact h1

Conclusion "TODO"

NewTheorem neg_zero_is_zero
