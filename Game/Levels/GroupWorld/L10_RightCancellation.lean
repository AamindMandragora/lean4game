import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L09_InverseOfZero

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 10

Title "Right Cancellation"

Introduction "A while ago, we proved left cancellation. Now that we know our identity and inverses are double-sided, let's try and prove right cancellation!"

/-- `add_cancel (a b c : G)` says `b + a = c + a → b = c`. -/
TheoremDoc add_cancel as "add_cancel" in "Group"

Statement add_cancel (a b c : G) : b + a = c + a → b = c := by
  Hint (hidden := true) "We're back to having logical implications as goals, so what tactic should we use?"
  Hint (hidden := true) "Use `intro h`."
  intro h
  Hint (hidden := true) "We know that we have to add `(-a)` to both sides to perform the cancellation, so make that your subgoal and try and prove it."
  Hint (hidden := true) "Use `have h1 : b + a + (-a) = c + a + (-a) := by rw [{h}]`."
  have h1 : b + a + (-a) = c + a + (-a) := by rw [h]
  Hint (hidden := true) "Now, regroup the terms on both sides."
  Hint (hidden := true) "Use `rw [add_assoc, add_assoc] at {h1}`."
  rw [add_assoc, add_assoc] at h1
  Hint (hidden := true) "Perform the cancellation."
  Hint (hidden := true) "Use `rw [add_neg] at {h1}`."
  rw [add_neg] at h1
  Hint (hidden := true) "You have to remove the extra zeroes somehow so it matches the goal."
  Hint (hidden := true) "Use `rw [add_zero, add_zero] at {h1}`."
  rw [add_zero, add_zero] at h1
  Hint (hidden := true) "The assumption `{h1}` now matches the goal exactly. How can we use it to prove the goal?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "We can finally cancel terms on both sides! Only two more levels to go."

NewTheorem zero_is_neg_zero
