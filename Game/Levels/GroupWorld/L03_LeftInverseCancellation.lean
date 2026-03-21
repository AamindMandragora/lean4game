import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 3

Title "Left Inverse Cancellation"

Introduction "For this level, you'll have to use all three group axioms. As always, click on `Theorems` -> `Group` to see what you've unlocked. After this level, you'll be able to use this fact in all future proofs without redoing the steps. We will attempt to prove that, if we have an expression `a + b`, we can add `(-a)` to the left to cancel out the `a`.

For the rest of the levels in this world, I'll provide a complete set of steps given to you behind hints in case you get stuck. However, I'd like it if you used them as little as possible, because it's not great for learning if you're just copying down my proof without thinking about it first."

/-- `neg_add_cancel a b` says `(-a) + (a + b) = b`. -/
TheoremDoc neg_add_cancel as "neg_add_cancel" in "Group"

Statement neg_add_cancel (a b : G) : (-a) + (a + b) = b := by
  Hint (hidden := true) "We want to cancel out the `(a)` with the `(-a)`, but they're not grouped together. Currently, the expression dictates that we must first add `a + b`, and then only add `(-a)`. Do we have a theorem that can regroup terms?"
  Hint (hidden := true) "We can use `rw [← add_assoc]` to regroup the terms on the left to `((-a) + a) + b`."
  rw [← add_assoc]
  Hint (hidden := true) "Now that `(-a)` and `(a)` are grouped together, we can use another group axiom to cancel them out."
  Hint (hidden := true) "Use `rw [neg_add]` to replace `(-a) + a` with `0`."
  rw [neg_add]
  Hint (hidden := true) "We're now left with `0 + b = b`. What group axiom can we use to remove the `0`?"
  Hint (hidden := true) "Use `rw [zero_add]`."
  rw [zero_add]

Conclusion "You've just proved your first derived lemma! We're slowly regaining the properties we used to take for granted. In the future, you'll be able to cite `neg_add_cancel`, bundling three steps into one! You'll use this a lot in the future."

NewTheorem add_assoc neg_add
