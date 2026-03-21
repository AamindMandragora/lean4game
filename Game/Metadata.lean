import GameServer
import Mathlib.Tactic.Common

/-! Use this file to add things that should be available in all levels.

For example, this demo imports the mathlib tactics

*Note*: As long as `Game.lean` exists and ends with the `MakeGame` command, you are completely free how you structure your lean project, this is merely a suggestion.

*Bug*: However, things are bugged out if the levels of different worlds are imported in a random order. Therefore, you should keep the structure of one file Lean file per world which imports all its levels.
-/

/-- `rfl` stands for reflect. One of the properties of equality (and every equivalence relation, if you know what those are) is reflexivity, which means that every element for which the relation is defined on naturally equals itself. In other words, `∀ x, x = x`. For any goal of that form, this tactic will instantly prove it. -/
TacticDoc rfl

/-- `rw` stands for rewrite. Let `l` and `r` be the left and right hand sides of some `lemma`, then `rw [lemma]` replaces every instance of `l` in the goal with `r`. If the goal instead has `r`s that we want to replace with `l`, we can do `rw [← lemma]` (the arrow is typed using \l). We can also do `rw [lemma] at h` to replace every instance of `l` in the hypothesis `h` with `r`. There actually is a tactic called `Rewrite`, but the difference is that `rw` inherently attemps to use `rfl` at the end, which saves a line of proof and renders the former tactic obsolete. If `lemma`'s hypothesis includes a variable `a`, then instead of letting Lean try and choose the first valid `a` in the proof, we can specify it ourselves using `rw [lemma b]`, where `b` is the variable we wanted to match. If `lemma` has multiple variables, we can specify all of them sequentially using `rw [lemma a b c ...]`. Similarly, if we have multiple `lemma`s we want to replace, we can use `rw [lemma1, lemma2, ...]`. -/

TacticDoc rw

/-- When the goal is in the form `P → Q`, `intro h` will create a hypothesis `h` that is the proposition `P`, turning the goal into `Q`. -/
TacticDoc intro

/-- When the goal is the exact same as some hypothesis `h`, `exact h` will solve it. -/
TacticDoc exact

/-- We can use `have` to introduce a smaller or slightly altered version of the goal which we then prove in one line, and that proof becomes a hypothesis we can use in the future. For example, for some goal of the form `P ∧ Q`, `have h : P := by tactic` will use a tactic to prove `P`, which then becomes a hypothesis `h` we can use to prove `P ∧ Q`. -/
TacticDoc «have»

/-- We can use `apply` when the goal is in the form of some lemma's conclusion, replacing it with that lemma's hypothesis, which may be easier to prove. If `lemma` states that `P → Q`, and the goal is `Q`, `apply lemma` will make the goal `P`. -/
TacticDoc apply
