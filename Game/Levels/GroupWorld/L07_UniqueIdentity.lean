import Game.Metadata
import Game.Definitions.Group.Group
import Game.Levels.GroupWorld.L06_RightIdentity

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 7

Title "Unique Identity"

Introduction "Our construction of a group only assumes that there is some element in the underlying set that acts as an identity. What if there's more than one identity? You must try and prove that for some identity element `e` in `Group`, `e = 1`."

/-- `is_id (a e : Group)` says `e * a = a → e = 1`. -/
TheoremDoc is_id as "is_id" in "Group"

Statement is_id (a e : Group) : e * a = a → e = 1 := by
  Hint (hidden := true) "We haven't had a logical implication in a while. How can we turn the hypothesis into an assumption?"
  Hint (hidden := true) "Use `intro h`."
  intro h
  Hint (hidden := true) "Our end goal is to show that `e = 1`. Take a look at our assumption `{h}`. How can we manipulate it to get a `1` on the right side?"
  Hint (hidden := true) "We must multiply by `a⁻¹` on the right on both sides! Let's call that our subgoal. How can we use our assumption to prove that multiplying by `a⁻¹` on both sides preserves equality?"
  Hint (hidden := true) "Use `have h1 : e * a * a⁻¹ = a * a⁻¹ := by rw [{h}]`."
  have h1 : e * a * a⁻¹ = a * a⁻¹ := by rw [h]
  Hint (hidden := true) "Once again, the parentheses aren't on our side. Let's fix that."
  Hint (hidden := true) "Use `rw [op_assoc] at {h1}`."
  rw [op_assoc] at h1
  Hint (hidden := true) "Now we have to cancel out terms."
  Hint (hidden := true) "Use `rw [op_inv] at {h1}`."
  rw [op_inv] at h1
  Hint (hidden := true) "Finally, we'll clean up the identity."
  Hint (hidden := true) "Use `rw [op_id] at {h1}`."
  rw [op_id] at h1
  Hint (hidden := true) "Our assumption `{h1}` looks familiar, doesn't it? How can we use it to prove the goal?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "Congrats! Now we know that every group has a unique, double-sided identity! We can use this lemma, `is_id`, to simplify mystery elements as long as they satisfy the hypothesis."

NewTheorem op_id
