import Game.Metadata
import Game.Documentation.Group.NormalSubgroup
import Game.Levels.ReflectionWorld.L11_NormalSubgroup

World "ReflectionWorld"
Level 12

Title "Abelian Subgroups are Normal"

Introduction "Here's the grand finale of Reflection World. Remember conjugation from Level 2? We proved that in an abelian group, `a * b * a⁻¹ = b`. Conjugation does nothing. It follows, then, that conjugation can never kick an element out of a subgroup — because conjugation doesn't change the element at all.

In other words: in an abelian group, *every* subgroup is normal. This is a big deal. It means abelian groups are, in a sense, maximally well-behaved — you can quotient by any subgroup you like. No restrictions.

This level ties together everything from this world: abelian groups, subgroups, conjugation, and normal subgroups. One theorem to rule them all. Let's finish this."

variable {A : Type} [MyAbelianGroup A]

Statement (H : A → Prop) (h : IsSubgroup H) : IsNormalSubgroup H := by
  Hint (hidden := true) "We need to prove `IsNormalSubgroup H`, which has two parts: the underlying `IsSubgroup` and conjugation closure. But we already *have* the subgroup proof — it's `h`."
  Hint (hidden := true) "Use `constructor`."
  constructor
  Hint (hidden := true) "The conjugation case is the interesting one. Let's do that first. We need to show that for any `g` and any `a ∈ H`, the conjugate `g * a * g⁻¹` is also in `H`."
  Hint (hidden := true) "Use `case conj_mem =>`."
  case conj_mem =>
    Hint (hidden := true) "Introduce the conjugating element `g`, the element `a`, and its membership proof `ha`."
    Hint (hidden := true) "Use `intro g a ha`."
    intro g a ha
    Hint (hidden := true) "The goal might be wrapped in the raw `MyGroup.op` notation. Let's make it readable."
    Hint (hidden := true) "Use `show H ({g} * {a} * {g}⁻¹)`."
    show H (g * a * g⁻¹)
    Hint (hidden := true) "Now here's the punchline. We proved in Level 2 that `{g} * {a} * {g}⁻¹ = {a}` in an abelian group. If we rewrite with that..."
    Hint (hidden := true) "Use `rw [op_conj]`."
    rw [op_conj]
    Hint (hidden := true) "The goal is now just `H a`. And we already know that."
    Hint (hidden := true) "Use `exact {ha}`."
    exact ha
  Hint (hidden := true) "Now for the subgroup part. We were *given* this as a hypothesis. No work needed."
  Hint (hidden := true) "Use `case toIsSubgroup => exact h`."
  case toIsSubgroup => exact h

Conclusion "And that's Reflection World. We started with an abstract question — what if the operation commutes? — and ended up proving that commutativity implies every subgroup is normal. Along the way, we formalized subgroups, derived a one-step shortcut for checking the subgroup axioms, and introduced normal subgroups.

In the next world, we'll start looking at maps *between* groups: homomorphisms and isomorphisms. See you there."
