import Game.Metadata
import Game.Definitions.Group.Group
import Game.Levels.GroupWorld.L03_LeftInverseCancellation

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 4

Title "Left Cancellation"

Introduction "It should now be apparent that I'm not clever with names. Unfortunately, I'm also not clever with level design, which means that you have to learn three new tactics in one level. We're trying to prove that, if `a * b = a * c`, then `b = c` by force. In other words, left cancellation.

The first new tactic to learn is `intro`. If our goal is in the form `hypothesis → conclusion`, then we can `intro h` to make `hypothesis` one of our assumptions, labelled `h`. Our goal then becomes `conclusion`. If you use `intro`, it's very likely you'll use the next two tactics as well.

The second new tactic to learn is `exact`. If our goal looks exactly like one of our assumptions `h`, then we can use `exact h` to prove it in one step.

The final new tactic is called `have`. This tactic creates a new subgoal, which you then have to prove. Once you do, you can use it as an assumption to prove the main goal. `have` and `rw` are two of the most important and useful tactics in Lean. Here is a sample use of `have`: `have ha : 1 * a = a := by rw [id_op]`. What this does is: create a subgoal called `ha` where we must prove `1 * a = a`; proves it by using `rw [id_op]`, which replaces the `1 * a` with an `a` and implicitly calling `rfl` on the remaining `a = a`.

It might also be useful for you to be able to rewrite things inside an assumption `h`. We can do this by using `rw [lemma] at assumption`.

You can read the documentation for these three tactics in the `Tactics` section on the right. Good luck!"

/-- `op_left_cancel a b c` says `a * b = a * c → b = c`. -/
TheoremDoc op_left_cancel as "op_left_cancel" in "Group"

Statement op_left_cancel (a b c : Group) : a * b = a * c → b = c := by
  Hint (hidden := true) "This goal is in a specific form that makes it easy to move the left side into the assumptions using a specific tactic, which might be useful."
  Hint (hidden := true) "Use `intro h` to move `a * b = a * c` into the assumptions category and make the goal `b = c`."
  intro h
  Hint (hidden := true) "This step is a complicated one. If we want to go from `a * b = a * c` to `b = c`, what do we have to do to the `a`s on the left?"
  Hint (hidden := true) "We'll have to multiply by `a⁻¹` on both left sides to cancel out. But then, how do we know that that's equivalent? We'll need to create a new subgoal that will give us that fact, then prove it in one line. Our assumption `{h}` might be useful for that."
  Hint (hidden := true) "Our subgoal will look like `a⁻¹ * (a * b) = a⁻¹ * (a * c)`. Is there a way we can prove that true in a single line?"
  Hint (hidden := true) "Use `have h1 : a⁻¹ * (a * b) = a⁻¹ * (a * c) := by rw [{h}]`. This creates a subgoal of the form we specified earlier, then proves it by substituting `(a * b)` for `(a * c)` using the assumption `{h}`."
  have h1 : a⁻¹ * (a * b) = a⁻¹ * (a * c) := by rw [h]
  Hint (hidden := true) "Now that we have `{h1}`, its left and right sides should be simplifiable. Have we proved anything in the past that proves something about expressions of the form `a⁻¹ * (a * b)`?"
  Hint (hidden := true) "We proved `inv_op_cancel` last level! You can look at the docs to remind yourself what it does. Use `rw [inv_op_cancel] at {h1}`."
  rw [inv_op_cancel] at h1
  Hint (hidden := true) "That simplified the left side. Now, how do we simplify the right?"
  Hint (hidden := true) "Use `rw [inv_op_cancel] at {h1}` again! Alternatively, you could have used `rw [inv_op_cancel, inv_op_cancel] at {h1}` to begin with."
  rw [inv_op_cancel] at h1
  Hint (hidden := true) "Now, {h1} should look like our goal. What tactic can we use to prove the goal using the assumption?"
  Hint (hidden := true) "Use `exact {h1}`."
  exact h1

Conclusion "You've just proved left cancellation, another really useful lemma! Now, onto something even more exciting!"

NewTactic intro exact «have»
NewTheorem inv_op_cancel
