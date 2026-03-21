import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L06_RightIdentity

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 7

Title "Unique Identity"

Introduction "Our construction of a group only assumes that there is some element in the underlying set that acts as an identity. What if there's more than one identity? You must try and prove that for some identity element `e` in `G`, `e = 0`."

/-- `is_zero (a e : G)` says `e + a = a → e = 0`. -/
TheoremDoc is_zero as "is_zero" in "Group"

Statement is_zero (a e : G) : e + a = a → e = 0 := by
  Hint (hidden := true) "We haven't had a logical implication in a while. How can we turn the hypothesis into an assumption?"
  Hint (hidden := true) "Use `intro h`."
  intro h
  Hint (hidden := true) "Our end goal is to show that `e = 0`. Take a look at our assumption `{h}`. How can we manipulate it to get a zero on the right side?"
  Hint (hidden := true) "We must add `(-a)` to the right on both sides! Let's call that our subgoal. How can we use our assumption to prove that adding `(-a)` to both sides preserves equality?"
  Hint (hidden := true) "Use `have h1 : e + a + (-a) = a + (-a) := by rw [{h}]`."
  have h1 : e + a + (-a) = a + (-a) := by rw [h]
  Hint (hidden := true) "Once again, the parentheses aren't on our side. Let's fix that."
  Hint (hidden := true) "Use `rw [add_assoc] at {h1}`."
  rw [add_assoc] at h1
  Hint (hidden := true) "Now we have to cancel out terms."
  Hint (hidden := true) "Use `rw [add_neg] at {h1}`."
  rw [add_neg] at h1
  Hint (hidden := true) "Finally, we'll clean up the zeroes."
  Hint (hidden := true) "Use `rw [add_zero] at {h1}`."
  rw [add_zero] at h1
  Hint (hidden := true) "Our assumption `{h1}` looks familiar, doesn't it? How can we use it to prove the goal?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "Congrats! Now we know that every group has a unique, double-sided identity! We can use this lemma, `is_zero`, to simplify mystery elements as long as they satisfy the hypothesis."

NewTheorem add_zero
