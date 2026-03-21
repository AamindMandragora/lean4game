import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L08_UniqueInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 9

Title "Inverse of Zero"

Introduction "In the last level, we proved that every element has a unique double-sided inverse. Naturally, that includes the identity element. So what's the inverse of zero? And what's zero the inverse of?"

/-- `zero_is_neg_zero` says `(0 : G) = -0`. -/
TheoremDoc zero_is_neg_zero as "zero_is_neg_zero" in "Group"

Statement zero_is_neg_zero : (0 : G) = -0 := by
  Hint (hidden := true) "We want to show that `0` is an inverse of `-0`. Have we proven a lemma in the past that might be applicable here?"
  Hint (hidden := true) "Use `apply is_inverse` to turn the goal into `0 + 0 = 0`, the corresponding hypothesis."
  apply is_inverse
  Hint (hidden := true) "Now, we can simply add `0` and its inverse `0` together."
  Hint (hidden := true) "Use `rw [add_zero]`."
  rw [add_zero]

Conclusion "We know know that `0` is its own inverse, which begs the question: can any element be its own inverse? Yes! We've been working with the arbitrary group, but choosing a specific one can allow you to find more properties specific to it."

NewTheorem is_inverse
