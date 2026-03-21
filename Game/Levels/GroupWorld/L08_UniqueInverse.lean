import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L07_UniqueIdentity

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 8

Title "Unique Inverse"

Introduction "Identity and inverse proofs seem to come in pairs... We must prove that, if two elements add to `0`, the second is the inverse of the first."

/-- `is_inverse (a b : G)` says `a + b = 0 → b = (-a)`. -/
TheoremDoc is_inverse as "is_inverse" in "Group"

Statement is_inverse (a b : G) : a + b = 0 → b = (-a) := by
  Hint (hidden := true) "Once again, we have a goal in the form of a logical implication. How can we simplify it?"
  Hint (hidden := true) "Let's move the hypothesis to the assumptions by using `intro h`."
  intro h
  Hint (hidden := true) "If we want to show that `b = (-a)`, we'll need to both cancel out the `a` on the left and get a `(-a)` term on the right. How can we set up and prove an assumption that an equation like that is equivalent to our hypothesis `{h}`?"
  Hint (hidden := true) "Use `have h1 : (-a) + (a + b) = (-a) + 0 := by rw [{h}]`."
  have h1 : (-a) + (a + b) = (-a) + 0 := by rw [h]
  Hint (hidden := true) "The parentheses will probably never be on our side. How can we fix them?"
  Hint (hidden := true) "Use `rw [← add_assoc] at {h1}`."
  rw [← add_assoc] at h1
  Hint (hidden := true) "Time to cancel out inverses."
  Hint (hidden := true) "Use `rw [neg_add] at {h1}`."
  rw [neg_add] at h1
  Hint (hidden := true) "This time, we have zeroes on both sides. Can we get rid of them in one line?"
  Hint (hidden := true) "Use `rw [add_zero, zero_add] at {h1}`."
  rw [add_zero, zero_add] at h1
  exact h1

Conclusion "Now we can further simplify an unknown element `b` to be `(-a)` if they add to `0`! Every element in a group has one, and only one, corresponding inverse."

NewTheorem is_zero
