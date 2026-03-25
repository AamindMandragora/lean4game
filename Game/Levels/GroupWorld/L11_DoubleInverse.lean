import Game.Metadata
import Game.Definitions.Group.Group
import Game.Levels.GroupWorld.L10_RightCancellation

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 11

Title "Double Inverse"

Introduction "It is finally time to prove what may be the most useful and obvious theorem of them all: taking the inverse of an element twice results in that element."

/-- `inv_of_inv_is_g (g : Group)` says `(g⁻¹)⁻¹ = g`. -/
TheoremDoc inv_of_inv_is_g as "inv_of_inv_is_g" in "Group"

Statement inv_of_inv_is_g (g : Group) : (g⁻¹)⁻¹ = g := by
  Hint (hidden := true) "We definitely want to get rid of that `(g⁻¹)⁻¹` somehow, and it'd be nice if we could also remove the `g` to get the goal to `1 = 1`. Is there any lemma we could apply to perform this cancellation?"
  Hint (hidden := true) "We know that the inverse of `g` is `g⁻¹` and the inverse of `g⁻¹` is `(g⁻¹)⁻¹`, so we can `apply op_cancel (g⁻¹)` to place it on the right of both expressions."
  apply op_cancel (g⁻¹)
  Hint (hidden := true) "Now it's actually time to perform the cancellations. How can we combine the `g` and the `g⁻¹`?"
  Hint (hidden := true) "Use `rw [op_inv]`."
  rw [op_inv]
  Hint (hidden := true) "Finally, cancel the other pair of inverses."
  Hint (hidden := true) "Use `rw [inv_op]`."
  rw [inv_op]

Conclusion "Congrats! Let's look back on what we've proved about inverses of groups so far. We know that every element `a` has exactly one double-sided inverse `a⁻¹`, and the inverse of `a⁻¹` is `a` itself! Exciting stuff. And we derived all of this from associativity, left inverses, and left identity. It really goes to show you just how powerful each axiom is, and how multiplicative their power is. We only needed three to create such a complex mathematical structure. Now, onto the final level!"

NewTheorem op_cancel
