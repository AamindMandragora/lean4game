import Game.Metadata
import Game.Definitions.Group.Group
import Game.Levels.GroupWorld.L09_InverseOfIdentity

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 10

Title "Right Cancellation"

Introduction "A while ago, we proved left cancellation. Now that we know our identity and inverses are double-sided, let's try and prove right cancellation!"

/-- `op_cancel (a b c : Group)` says `b * a = c * a → b = c`. -/
TheoremDoc op_cancel as "op_cancel" in "Group"

Statement op_cancel (a b c : Group) : b * a = c * a → b = c := by
  Hint (hidden := true) "We're back to having logical implications as goals, so what tactic should we use?"
  Hint (hidden := true) "Use `intro h`."
  intro h
  Hint (hidden := true) "We know that we have to multiply by `a⁻¹` on both sides to perform the cancellation, so make that your subgoal and try and prove it."
  Hint (hidden := true) "Use `have h1 : b * a * a⁻¹ = c * a * a⁻¹ := by rw [{h}]`."
  have h1 : b * a * a⁻¹ = c * a * a⁻¹ := by rw [h]
  Hint (hidden := true) "Now, regroup the terms on both sides."
  Hint (hidden := true) "Use `rw [op_assoc, op_assoc] at {h1}`."
  rw [op_assoc, op_assoc] at h1
  Hint (hidden := true) "Perform the cancellation."
  Hint (hidden := true) "Use `rw [op_inv] at {h1}`."
  rw [op_inv] at h1
  Hint (hidden := true) "You have to remove the extra identities somehow so it matches the goal."
  Hint (hidden := true) "Use `rw [op_id, op_id] at {h1}`."
  rw [op_id, op_id] at h1
  Hint (hidden := true) "The assumption `{h1}` now matches the goal exactly. How can we use it to prove the goal?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "We can finally cancel terms on both sides! Only two more levels to go."

NewTheorem id_is_inv_id
