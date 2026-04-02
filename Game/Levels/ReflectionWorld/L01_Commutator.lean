import Game.Metadata
import Game.Documentation.Group.Group
import Game.Levels.GroupWorld.L12_ShoesAndSocks

variable {Group : Type} [MyGroup Group]

World "ReflectionWorld"
Level 1

Title "Commutator"

Introduction "Here's a question: how do you measure how 'non-commutative' two elements are? In other words, if `a * b ≠ b * a`, can we quantify *how far off* they are?

The answer is the **commutator**. The expression `a * b * a⁻¹ * b⁻¹` equals `1` if and only if `a` and `b` commute. Think of it as a litmus test for commutativity.

In this level, you're given a hypothesis `h` that `a` and `b` commute. Your job is to show that the commutator is trivial. This might seem like circular reasoning, but it's not — you're proving the equivalence, one direction at a time."

Statement (a b : Group) (h : a * b = b * a) : a * b * a⁻¹ * b⁻¹ = 1 := by
  Hint (hidden := true) "We have a hypothesis that `a * b = b * a`. Can we apply that to our goal?"
  Hint (hidden := true) "Use `rw [{h}]` to replace `a * b` with `b * a`."
  rw [h]
  Hint (hidden := true) "Now we have `b * a * a⁻¹ * b⁻¹`. The `a` and `a⁻¹` are begging to cancel, but the parentheses aren't cooperating."
  Hint (hidden := true) "Use `rw [op_assoc b]` to regroup so `a * a⁻¹` are together."
  rw [op_assoc b]
  Hint (hidden := true) "Now there should be an `a * a⁻¹` hiding in there. Time to cancel."
  Hint (hidden := true) "Use `rw [op_inv]`."
  rw [op_inv]
  Hint (hidden := true) "Almost there. Clean up the identity."
  Hint (hidden := true) "Use `rw [op_id]`."
  rw [op_id]
  Hint (hidden := true) "One more cancellation to go."
  Hint (hidden := true) "Use `rw [op_inv]`."
  rw [op_inv]

Conclusion "The commutator vanishes. That's the algebraic way of saying 'these two elements commute.' Next, we'll see what happens when *every* pair of elements commutes."

NewTheorem inv_of_inv_is_g
