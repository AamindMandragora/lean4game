import Game.Metadata
import Game.Documentation.Group.Group

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 3

Title "Left Inverse Cancellation"

Introduction "For this level, you'll have to use all three group axioms. As always, click on `Theorems` -> `Group` to see what you've unlocked. After this level, you'll be able to use this fact in all future proofs without redoing the steps. We will attempt to prove that, if we have an expression `a * b`, we can multiply by `a⁻¹` on the left to cancel out the `a`.

A quirk of `rw` is that, for some hypothesis `h : x = 2`, `rw [h]` will only attempt to replace an `x` with a `2`. If we wanted to do the opposite, we'd have to reverse the hypothesis. We can do this by typing a `←` (\\l) right before `h`.

For the rest of the levels in this world, I'll provide a complete set of steps given to you behind hints in case you get stuck. However, I'd like it if you used them as little as possible, because it's not great for learning if you're just copying down my proof without thinking about it first."

/-- `inv_op_cancel a b` says `a⁻¹ * (a * b) = b`. -/
TheoremDoc inv_op_cancel as "inv_op_cancel" in "Group"

Statement inv_op_cancel (a b : Group) : a⁻¹ * (a * b) = b := by
  Hint (hidden := true) "We want to cancel out the `a` with the `a⁻¹`, but they're not grouped together. Currently, the expression dictates that we must first multiply `a * b`, and then only multiply by `a⁻¹`. Do we have a theorem that can regroup terms?"
  Hint (hidden := true) "We can use `rw [← op_assoc]` to regroup the terms on the left to `(a⁻¹ * a) * b`."
  rw [← op_assoc]
  Hint (hidden := true) "Now that `a⁻¹` and `a` are grouped together, we can use another group axiom to cancel them out."
  Hint (hidden := true) "Use `rw [inv_op]` to replace `a⁻¹ * a` with `1`."
  rw [inv_op]
  Hint (hidden := true) "We're now left with `1 * b = b`. What group axiom can we use to remove the `1`?"
  Hint (hidden := true) "Use `rw [id_op]`."
  rw [id_op]

Conclusion "You've just proved your first derived theorem! We're slowly regaining the properties we used to take for granted. In the future, you'll be able to cite `inv_op_cancel`, bundling three steps into one! You'll use this a lot in the future."

NewTheorem op_assoc
