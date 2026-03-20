import GameServer
import Mathlib.Tactic.Common

/-! Use this file to add things that should be available in all levels.

For example, this demo imports the mathlib tactics

*Note*: As long as `Game.lean` exists and ends with the `MakeGame` command, you are completely free how you structure your lean project, this is merely a suggestion.

*Bug*: However, things are bugged out if the levels of different worlds are imported in a random order. Therefore, you should keep the structure of one file Lean file per world which imports all its levels.
-/

/-- `rfl` stands for reflect. One of the properties of equality (and every equivalence relation, if you know what those are) is reflexivity, which means that every element for which the relation is defined on naturally equals itself. In other words, `∀ x, x = x`. For any goal of that form, this tactic will instantly prove it. -/
TacticDoc rfl

/-- `rw` stands for rewrite. Let `l` and `r` be the left and right hand sides of some `lemma`, then `rw [lemma]` replaces every instance of `l` in the goal with `r`. We can also do `rw [lemma] at h` to replace every instance of `l` in the hypothesis `h` with `r`. -/
TacticDoc rw

/-- When the goal is in the form `P → Q`, `intro h` will create a hypothesis `h` that is the proposition `P`, turning the goal into `Q`. -/
TacticDoc intro

/-- When the goal is the exact same as some hypothesis `h`, `exact h` will solve it. -/
TacticDoc exact

/-- We can use `have` to introduce a smaller or slightly altered version of the goal which we then prove in one line, and that proof becomes a hypothesis we can use in the future. For example, for some goal of the form `P ∧ Q`, `have h : P := by tactic` will use a tactic to prove `P`, which then becomes a hypothesis `h`. -/
TacticDoc «have»
