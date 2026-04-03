import Game.Metadata
import Game.Documentation.Tactic.constructor
import Game.Documentation.Tactic.trivial
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L03_InverseDistribution

World "ReflectionWorld"
Level 4

Title "Subgroup"

Introduction "Time for a new concept. A **subgroup** is a subset of a group that is itself a group under the same operation. Formally, a subset `H` of a group `G` is a subgroup if it satisfies three properties: it contains the identity, it's closed under the group operation, and it's closed under inverses. (Sound familiar? Those are the group axioms, minus associativity — which is inherited for free.)

We've defined a structure called `IsSubgroup` that bundles these three properties together. To prove something is a subgroup, you'll need to prove all three. The `constructor` tactic will split the goal into three separate `case`s, one for each property. Then, for each subgoal, you prove it individually, either as a single line by `case c => proof` or by writing `case c => `, entering a new line, and then a multi-step proof.

For our first subgroup proof, let's go with the easiest possible case. We define `Univ` as the predicate that accepts *every* element of the group — `Univ g` is always `True`, regardless of `g`. Is the entire group a subgroup of itself? Obviously. But let's make Lean believe us.

The `trivial` tactic proves goals that are... well, trivial. If the goal is `True` or obviously equivalent to it, `trivial` handles it."

variable {G : Type} [MyGroup G]

def Univ (g : G) : Prop := True

Statement : IsSubgroup (G := G) Univ := by
  Hint (hidden := true) "We need to prove three things: identity membership, closure under the operation, and closure under inverses. Is there a tactic that can split this up?"
  Hint (hidden := true) "Use `constructor` to split the `IsSubgroup` goal into its three components."
  constructor
  Hint (hidden := true) "The first case asks you to show that the identity is in `Univ`. But `Univ` accepts everything..."
  Hint (hidden := true) "Use `case id_mem => trivial`."
  case id_mem => trivial
  Hint (hidden := true) "Same idea for closure under the operation. No matter what `a` and `b` are, `a * b` is in `Univ`."
  Hint (hidden := true) "Use `case op_mem => intro a b _ _; trivial`."
  case op_mem => intro a b _ _; trivial
  Hint (hidden := true) "And inverses."
  Hint (hidden := true) "Use `case inv_mem => intro a _; trivial`."
  case inv_mem => intro a _; trivial

Conclusion "The whole group is a subgroup of itself. Not exactly groundbreaking, but it was a pretty good warmup for what's going to happen next."

NewTheorem inv_dist
NewDefinition IsSubgroup
NewTactic constructor trivial
