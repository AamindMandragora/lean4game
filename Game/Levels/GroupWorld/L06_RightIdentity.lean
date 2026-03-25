import Game.Metadata
import Game.Definitions.Group.Group
import Game.Levels.GroupWorld.L05_RightInverse

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 6

Title "Right Identity"

Introduction "Now, the second half of the pair. And with it, a new tactic! If we have a lemma in the form of a logical implication (`P → Q`), and our goal is `Q`, then we know that if `P` holds, our goal must also hold. This means that we can just prove `P` instead. `apply lemma` will replace the goal in the form of `lemma`'s conclusion `Q` with its hypothesis `P`. We can also `apply lemma at assumption` where `assumption` is `P` to turn it into `Q`. Using this, we must prove that the left identity `1` also serves as a right identity."

/-- `op_id (a : Group)` says `a * 1 = a`. -/
TheoremDoc op_id as "op_id" in "Group"

Statement op_id (a : Group) : a * 1 = a := by
  Hint (hidden := true) "It might be nice to cancel out that `a` somehow. Have we proven anything in the past that might be applicable?"
  Hint (hidden := true) "Use `apply op_left_cancel (a⁻¹)` to put this goal in the form of `op_left_cancel`'s hypothesis, using `a⁻¹` as the element we will cancel with."
  apply op_left_cancel (a⁻¹)
  Hint (hidden := true) "Unfortunately, we can't use `inv_op_cancel` this time, as we don't know that `(a⁻¹)⁻¹ = a`. However, we can use similar steps! How do we fix our parentheses?"
  Hint (hidden := true) "Use `rw [← op_assoc]`."
  rw [← op_assoc]
  Hint (hidden := true) "This time, we have an `a` on the right of an `a⁻¹`. How can we cancel them out?"
  Hint (hidden := true) "Since the inverse is on the left, use `rw [inv_op]`."
  rw [inv_op]
  Hint (hidden := true) "How can we get rid of that pesky identity?"
  Hint (hidden := true) "Use `rw [id_op]`."
  rw [id_op]

Conclusion "Congratulations! We finally know that our `1` is a true double-sided identity, and inverses are double sided as well! This means that, for any element and its inverse (or `1`), the commutative property holds! However, this does not mean that commutativity is guaranteed for any pair of elements, as you'll see later."

NewTheorem op_inv
NewTactic apply
