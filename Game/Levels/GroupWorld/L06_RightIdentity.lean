import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L05_RightInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 6

Title "Right Identity"

Introduction "Now, the second half of the pair. And with it, a new tactic! If we have a lemma in the form of a logical implication (`P → Q`), and our goal is `Q`, then we know that if `P` holds, our goal must also hold. This means that we can just prove `P` instead. `apply lemma` will replace the goal in the form of `lemma`'s conclusion `Q` with its hypothesis `P`. Using this, we must prove that the left identity `0` also serves as a right identity."

/-- `add_zero (a : G)` says `a + 0 = a`. -/
TheoremDoc add_zero as "add_zero" in "Group"

Statement add_zero (a : G) : a + 0 = a := by
  Hint (hidden := true) "It might be nice to cancel out that `a` somehow. Have we proven anything in the past that might be applicable?"
  Hint (hidden := true) "Use `apply cancel_add (-a)` to put this goal in the form of `cancel_add`'s hypothesis, using `(-a)` as the metavariable we will cancel with."
  apply cancel_add (-a)
  Hint (hidden := true) "Unfortunately, we can't use `add_left_cancel` this time, as we don't know that `(-(-a)) = a`. However, we can use similar steps! How do we fix our parentheses?"
  Hint (hidden := true) "Use `rw [← add_assoc]`."
  rw [← add_assoc]
  Hint (hidden := true) "This time, we have an `a` on the right of a `(-a)`. How can we cancel them out?"
  Hint (hidden := true) "Since the inverse (negative) is on the left, use `rw [neg_add]`."
  rw [neg_add]
  Hint (hidden := true) "How can we get rid of that pesky zero?"
  Hint (hidden := true) "Use `rw [zero_add]`."
  rw [zero_add]

Conclusion "Congratulations! We finally know that our `0` is a true double-sided identity, and inverses are double sided as well! This means that, for any element and its inverse (or `0`), the commutative property holds! However, this does not mean that commutativity is guaranteed for any pair of elements, as you'll see later."

NewTheorem add_neg
NewTactic apply
