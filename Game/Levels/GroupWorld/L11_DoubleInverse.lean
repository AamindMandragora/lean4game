import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L10_RightCancellation

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 11

Title "Double Inverse"

Introduction "It is finally time to prove what may be the most obvious property of all: the inverse of the inverse of some element in the group is that element."

/-- `neg_of_neg_is_g (g : G)` says `(-(-g)) = g`. -/
TheoremDoc neg_of_neg_is_g as "neg_of_neg_is_g" in "Group"

Statement neg_of_neg_is_g (g : G) : (-(-g)) = g := by
  Hint (hidden := true) "We definitely want to get rid of that `(-(-g))` somehow, and it'd be nice if we could also remove the `g` to get the goal to `0 = 0`. Is there any lemma we could apply to perform this cancellation?"
  Hint (hidden := true) "We know that the inverse of `g` is `(-g)` and the inverse of `(-g)` is `(-(-g))`, so we can `apply add_cancel (-g)` to place it on the right of both expressions."
  apply add_cancel (-g)
  Hint (hidden := true) "Now it's actually time to perform the cancellations. How can we combine the `g` and the `(-g)`?"
  Hint (hidden := true) "Use `rw [add_neg]`."
  rw [add_neg]
  Hint (hidden := true) "Finally, cancel the other pair of inverses."
  Hint (hidden := true) "Use `rw [neg_add]`."
  rw [neg_add]

Conclusion "Congrats! Let's look back on what we've proved about inverses of groups so far. We know that every element `a` has exactly one double-sided inverse `(-a)`, and the inverse of `(-a)` is `a` itself! Exciting stuff. And we derived all of this from associativity, left inverses, and left identity. It really goes to show you just how powerful each axiom is, and how multiplicative their power is. We only needed three to create such a complex mathematical structure. Now, onto the final level!"

NewTheorem add_cancel
