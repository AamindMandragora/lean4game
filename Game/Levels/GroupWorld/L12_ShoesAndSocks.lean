import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L11_DoubleInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 12

Title "Shoes and Socks"

Introduction "Now, this one will look a little weird. Why isn't `(-(a + b)) = (-a) + (-b)`? Two reasons. The first is that we don't have commutativity, so we can't say that `(-a) + (-b) = (-b) + (-a)`.

The second will take some imagination. Pretend `a` is the action of putting your socks on, and `b` is the action of putting your shoes on. Then, `a + b` would mean putting your socks on first, then putting your shoes on. How would you then take them off?

Obviously, you can't take your socks off while your shoes are still on, so you take your shoes off first (which is `(-b)`), then take your socks off (which is `(-a)`). Therefore, `(-(a + b)) = (-b) + (-a)`.

Unfortunately, that argument isn't good enough for Lean. Try and make one that is."

/-- `shoes_and_socks (a b : G)` says `(-(a + b)) = (-b) + (-a)`. -/
TheoremDoc shoes_and_socks as "shoes_and_socks" in "Group"

Statement shoes_and_socks (a b : G) : (-(a + b)) = (-b) + (-a) := by
  Hint (hidden := true) "`(-(a + b))` is a nasty term. Is there a lemma we can use to create something that will cancel with it?"
  Hint (hidden := true) "Use `apply add_cancel (a + b)` to add an `(a + b)` term to the right of both sides."
  apply add_cancel (a + b)
  Hint (hidden := true) "Is `(a + b)` the inverse of anything? Can we use it to cancel out with anything?"
  Hint (hidden := true) "Use `rw [neg_add]`."
  rw [neg_add]
  Hint (hidden := true) "On the right side, fix the parentheses so we can do some more cancellation."
  Hint (hidden := true) "Use `rw [add_assoc]`."
  rw [add_assoc]
  Hint (hidden := true) "Have we proven anything about expressions that look like the one in the parentheses?"
  Hint (hidden := true) "Use `rw [neg_add_cancel]` to simplify it to `b`."
  rw [neg_add_cancel]
  Hint (hidden := true) "Finally, cancel out the `(-b)` and `b`."
  Hint (hidden := true) "Use `rw [neg_add]`."
  rw [neg_add]

Conclusion "You've reached the end of Group World! Congratulations! I hope now you have a better understanding of this molecular mathematical structure and its power. In future worlds, we will explore different types of groups and their properties, and what happens when we give a group a second operator."

NewTheorem neg_of_neg_is_g
