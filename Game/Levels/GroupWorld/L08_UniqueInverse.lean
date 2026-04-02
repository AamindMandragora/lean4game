import Game.Metadata
import Game.Documentation.Group.Group
import Game.Levels.GroupWorld.L07_UniqueIdentity

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 8

Title "Unique Inverse"

Introduction "Identity and inverse proofs seem to come in pairs... We must prove that, if two elements multiply to `1`, the second is the inverse of the first."

/-- `is_inverse (a b : Group)` says `a * b = 1 → b = a⁻¹`. -/
TheoremDoc is_inverse as "is_inverse" in "Group"

Statement is_inverse (a b : Group) : a * b = 1 → b = a⁻¹ := by
  Hint (hidden := true) "Once again, we have a goal in the form of a logical implication. How can we simplify it?"
  Hint (hidden := true) "Let's move the hypothesis to the assumptions by using `intro h`."
  intro h
  Hint (hidden := true) "If we want to show that `b = a⁻¹`, we'll need to both cancel out the `a` on the left and get an `a⁻¹` term on the right. How can we set up and prove an assumption that an equation like that is equivalent to our hypothesis `{h}`?"
  Hint (hidden := true) "Use `have h1 : a⁻¹ * (a * b) = a⁻¹ * 1 := by rw [{h}]`."
  have h1 : a⁻¹ * (a * b) = a⁻¹ * 1 := by rw [h]
  Hint (hidden := true) "We have a handy lemma from a past level that can simplify the left side in one step."
  Hint (hidden := true) "Use `rw [inv_op_cancel] at {h1}`."
  rw [inv_op_cancel] at h1
  Hint (hidden := true) "Now we need to clean up the right side. How can we get rid of the identity?"
  Hint (hidden := true) "Use `rw [op_id] at {h1}`."
  rw [op_id] at h1
  Hint (hidden := true) "Our assumption `{h1}` looks familiar, doesn't it? How can we use it to prove the goal?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "Now we can further simplify an unknown element `b` to be `a⁻¹` if they multiply to `1`! Every element in a group has one, and only one, corresponding inverse."

NewTheorem is_id
