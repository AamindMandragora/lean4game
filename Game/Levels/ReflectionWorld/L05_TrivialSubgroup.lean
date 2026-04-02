import Game.Metadata
import Game.Documentation.Tactic.show
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L04_Subgroup

World "ReflectionWorld"
Level 5

Title "Trivial Subgroup"

Introduction "Every group has at least two subgroups: the group itself, and the **trivial subgroup**, the subset containing only the identity element. We define `Trivial g` as the predicate `g = 1`. (I'm also bad at naming, apparently! Lucky me, Lean is case-sensitive.)

This one's trickier than `Univ`. Membership in `Trivial` means *being equal to `1`*, so to show closure under the operation, you'll need to show that `1 * 1 = 1`. To show closure under inverses, you'll need `1⁻¹ = 1`. These aren't trivially `True` — they're facts we proved in Group World.

We're introducing the `show` tactic here. When your goal is buried under a definition (like `Trivial (a * b)`), `show` lets you unfold it into something readable. `show a * b = 1` replaces the goal with the unfolded version, making it clear what you actually need to prove."

variable {G : Type} [MyGroup G]

def Trivial (g : G) : Prop := (g = 1)

Statement : IsSubgroup (G := G) Trivial := by
  Hint (hidden := true) "Same first step as last time."
  Hint (hidden := true) "Use `constructor`."
  constructor
  Hint (hidden := true) "The identity is in the trivial subgroup because... it's the identity. Lean can figure this one out."
  Hint (hidden := true) "Use `case id_mem => trivial`."
  case id_mem => trivial
  Hint (hidden := true) "What's another property we need to prove? Maybe that the operation is closed."
  Hint (hidden := true) "Use `case op_mem =>`."
  case op_mem =>
    Hint (hidden := true) "For `op_mem`, we need to show that if `a = 1` and `b = 1`, then `a * b = 1`. Start by introducing the variables and hypotheses."
    Hint (hidden := true) "Use `case op_mem =>` then `intro a b ha hb` to bring `a`, `b`, and their membership proofs into scope."
    intro a b ha hb
    Hint (hidden := true) "The goal might look opaque. Use `show` to unfold `Trivial`."
    Hint (hidden := true) "Use `show {a} * {b} = 1`."
    show a * b = 1
    Hint (hidden := true) "Now `{ha} : a = 1` and `{hb} : b = 1`. Substitute them in and simplify."
    Hint (hidden := true) "Use `rw [{ha}, {hb}, op_id]`."
    rw [ha, hb, op_id]
  Hint (hidden := true) "We just need to prove one more property! If we have an element in a subgroup, then its inverse better be in there as well."
  Hint (hidden := true) "Use `case inv_mem =>`"
  case inv_mem =>
    Hint (hidden := true) "For `inv_mem`, we need `a = 1` to imply `a⁻¹ = 1`."
    Hint (hidden := true) "Use `intro a ha`."
    intro a ha
    Hint (hidden := true) "Unfold the definition again."
    Hint (hidden := true) "Use `show {a}⁻¹ = 1`."
    show a⁻¹ = 1
    Hint (hidden := true) "Substitute `{a} = 1`, then use the fact that the identity is its own inverse."
    Hint (hidden := true) "Use `rw [{ha}, ← id_is_inv_id]`."
    rw [ha, ← id_is_inv_id]

Conclusion "Two subgroups down. Every group, no matter what, has these two. But the interesting subgroups are the ones in between — and proving *those* are subgroups is where the one-step test will come in handy. First, though, let's prove one more structural fact. It'll be easy, I promise."

NewTactic «show»
