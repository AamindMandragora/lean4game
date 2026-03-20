import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L03_LeftInverseCancellation

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 4

Title "Left Cancellation"

Introduction "TODO"

/-- `cancel_add (a b c : G)` says `a + b = a + c → b = c`. -/
TheoremDoc cancel_add as "cancel_add" in "Group"

Statement cancel_add (a b c : G) : a + b = a + c → b = c := by
  Hint "TODO"
  intro h
  have h1 : (-a) + (a + b) = (-a) + (a + c) := by rw [h]
  rw [neg_add_cancel] at h1
  rw [neg_add_cancel] at h1
  exact h1

Conclusion "TODO"

NewTactic intro exact «have»
NewTheorem neg_add_cancel
