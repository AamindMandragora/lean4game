import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 2

Title "Simplification Practice"

Introduction "Welcome to level two! We are finally going to use some of our group axioms: left identity and left inverse. For this game, we're calling them `zero_add` and `neg_add`. You can learn more about them, and future theorems, by clicking on the `Theorems` section on the right and choosing the `Group` subsection.

We've also unlocked a new tactic: `rw`, which stands for rewrite. Think of this like performing a substitution. If we know from an assumption or theorem that something in our goal `a` is equivalent to another thing `b`, we can call `rw [theorem]` to replace an instance of `a` with `b`. `rw` also implicitly calls `rfl` at the end to save you a step of proof! You can (and should!) learn more by checking the documentation."

Statement (a : G) : ((-a) + a) + a = a := by
  Hint (hidden := true) "It might be a good idea to work from inside the parentheses. Is there an axiom we have that can simplify that expression?`."
  Hint (hidden := true) "Use `rw [neg_add]` to replace an instance of `(-a) + a` with `0`."
  rw [neg_add]
  Hint (hidden := true) "Now, do we have anything that can help us prove that `0 + a = a`?."
  Hint (hidden := true) "Use `rw [zero_addd]` to replace an instance of `0 + a` with `a` and implicitly call `rfl` to instantly prove that `a = a`."
  rw [zero_add]

Conclusion "Congrats! You just used your first group axioms! We're at the stage of proofs where we have to know things about groups to prove more things about groups, so we'll be using `rw` a lot."

NewTactic rw
NewTheorem zero_add neg_add
