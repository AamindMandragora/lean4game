import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L04_LeftCancellation

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 5

Title "Right Inverse"

Introduction "What? A boss level? Already?? Whoops... This level is going to be hard. Originally, we only gave left inverses as a group axiom. It turns out that we can use those left inverses as right inverses too! So every inverse of an element, however many there are, can act as both a left and a right inverse. Feel free to use a hint or two to get started if you need to."

/-- `add_neg (a : G)` says `a + (-a) = 0`. -/
TheoremDoc add_neg as "add_neg" in "Group"

Statement add_neg (a : G) : a + (-a) = 0 := by
  Hint (hidden := true) "The trick here is to insert something that can eventually cancel out with something on the left. But to do that, we need an extra term to manipulate. How can we add an extra term to the left that doesn't change the value of the expression?"
  Hint (hidden := true) "Use `rw [← zero_add (a + (-a))]` to put a `0` in front."
  rw [← zero_add (a + (-a))]
  Hint (hidden := true) "Now that we have that extra term, let's replace it with something. What cancels out with `a`?"
  Hint (hidden := true) "Use `rw [← neg_add (-a)]` to replace the `0` with `(-(-a)) + (-a)`."
  rw [← neg_add (-a)]
  Hint (hidden := true) "We know we'd like to cancel out the `(-a)` and the `(a)`, but the parentheses aren't letting us. How can we fix that?"
  Hint (hidden := true) "Use `rw [add_assoc]`."
  rw [add_assoc]
  Hint (hidden := true) "The expression in the parentheses should look very familliar. We can use a lemma from a past level to solve this."
  Hint (hidden := true) "Use `rw [neg_add_cancel a]` from level three!"
  rw [neg_add_cancel a]

Conclusion "That was tough! You've just proved that left inverses are also right inverses, which many textbooks simply assume. In the future, you can cite this using `add_neg`.

Recall that the left-inverse lemma is called `neg_add`; this is because of Lean naming convention to put the operand (neg) on the correct side of the operator (add)."

NewTheorem cancel_add
