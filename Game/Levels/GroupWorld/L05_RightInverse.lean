import Game.Metadata
import Game.Documentation.Group.Group
import Game.Levels.GroupWorld.L04_LeftCancellation

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 5

Title "Right Inverse"

Introduction "What? A boss level? Already?? Whoops... This level is going to be hard. Originally, we only gave left inverses as a group axiom. It turns out that we can use those left inverses as right inverses too! So every inverse of an element, however many there are, can act as both a left and a right inverse. Feel free to use a hint or two to get started if you need to."

/-- `op_inv (a : Group)` says `a * a⁻¹ = 1`. -/
TheoremDoc op_inv as "op_inv" in "Group"

Statement op_inv (a : Group) : a * a⁻¹ = 1 := by
  Hint (hidden := true) "The trick here is to insert something that can eventually cancel out with something on the left. But to do that, we need an extra term to manipulate. How can we add an extra term to the left that doesn't change the value of the expression?"
  Hint (hidden := true) "Use `rw [← id_op (a * a⁻¹)]` to put a `1` in front."
  rw [← id_op (a * a⁻¹)]
  Hint (hidden := true) "Now that we have that extra term, let's replace it with something. What cancels out with `a`?"
  Hint (hidden := true) "Use `rw [← inv_op (a⁻¹)]` to replace the `1` with `(a⁻¹)⁻¹ * a⁻¹`."
  rw [← inv_op (a⁻¹)]
  Hint (hidden := true) "We know we'd like to cancel out the `a⁻¹` and the `a`, but the parentheses aren't letting us. How can we fix that?"
  Hint (hidden := true) "Use `rw [op_assoc]`."
  rw [op_assoc]
  Hint (hidden := true) "The expression in the parentheses should look very familiar. We can use a lemma from a past level to solve this."
  Hint (hidden := true) "Use `rw [inv_op_cancel a]` from level three!"
  rw [inv_op_cancel a]

Conclusion "That was tough! You've just proved that left inverses are also right inverses, which many textbooks simply assume. In the future, you can cite this using `op_inv`.

Recall that the left-inverse lemma is called `inv_op`; this is because of Lean naming convention to put the operand (inv) on the correct side of the operator (op)."

NewTheorem op_left_cancel
