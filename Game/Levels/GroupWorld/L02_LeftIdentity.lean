import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 2

Title "Left Identity"

Introduction "Welcome to level two! We are finally going to use one of our group axioms: left identity. For this game, we're calling it `zero_add`. You can learn more about it, and future theorems, by clicking on the `Theorems` section on the right and choosing the `Group` subsection. We've also unlocked a new tactic: `rw`, which stands for rewrite. If our goal looks exactly like one of the theorems we've proved, we can replace every instance of the left side of the theorem in the goal with the right side of the theorem, making both sides of the goal the same and proving it. You can learn more by checking the documentation."

Statement (a : G) : (0 : G) + a = a := by
  Hint (hidden := true) "Remember, we just need to cite the `zero_add` axiom, which we can do using `rw [zero_add]`."
  rw [zero_add]

Conclusion "Congrats! You just used your first group axiom! Here's to many more..."

NewTactic rw
NewTheorem zero_add
