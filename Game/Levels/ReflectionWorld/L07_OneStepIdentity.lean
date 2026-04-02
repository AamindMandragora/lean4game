import Game.Metadata
import Game.Documentation.Tactic.obtain
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L06_SubgroupIntersection

World "ReflectionWorld"
Level 7

Title "One Step Test: Identity"

Introduction "Proving something is a subgroup requires checking three properties. That's... kind of a lot. What if there was a shortcut?

It turns out there is. The **one-step subgroup test** says that a nonempty subset `H` is a subgroup if and only if it's closed under the single operation `a * b⁻¹`. One condition instead of three. We'll build up to this over the next four levels.

First, we need to show that if `H` is nonempty and closed under `a * b⁻¹`, then the identity is in `H`. The trick? If `H` contains some element `x`, then it contains `x * x⁻¹`, which is just `1`.

We're introducing `obtain` here. If you have a hypothesis `h : ∃ x, H x` (which reads 'there exists an `x` such that `H x`'), you can use `obtain ⟨x, hx⟩ := h` to extract the actual element `x` and its proof `hx : H x`. The angle brackets `⟨⟩` are typed with `\\<` and `\\>`."

variable {G : Type} [MyGroup G]

/-- `one_step_id H h hx` says that if `H` is closed under `a * b⁻¹` by `h` and nonempty by `hx`, then `1 ∈ H`. -/
TheoremDoc one_step_id as "one_step_id" in "Subgroup"

Statement one_step_id (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hx : ∃ x, H x) : H 1 := by
  Hint (hidden := true) "We know `H` is nonempty — there's some `x` in it. But `hx` is wrapped in an `∃`. We need to unwrap it to get our hands on the actual element."
  Hint (hidden := true) "Use `obtain ⟨x, hx⟩ := hx` to extract `x : G` and `hx : H x`."
  obtain ⟨x, hx⟩ := hx
  Hint (hidden := true) "Now we have `{x}` and we know `H {x}`. Our closure hypothesis `h` says that if two elements are in `H`, then their 'quotient' `a * b⁻¹` is in `H`. What happens if we use the same element twice?"
  Hint (hidden := true) "Use `have h1 := h {x} {x}` to specialize `h` with `a = {x}` and `b = {x}`."
  have h1 := h x x
  Hint (hidden := true) "Now `{h1}` says `H {x} → H {x} → H ({x} * {x}⁻¹)`. We know `H {x}` — that's `{hx}`. Feed it in."
  Hint (hidden := true) "Use `have h2 := {h1} {hx}`."
  have h2 := h1 hx
  Hint (hidden := true) "One more time."
  Hint (hidden := true) "Use `have h3 := {h2} {hx}`."
  have h3 := h2 hx
  Hint (hidden := true) "Now `{h3} : H ({x} * {x}⁻¹)`. But `{x} * {x}⁻¹ = 1` by right inverse. If we rewrite, we get `H 1`."
  Hint (hidden := true) "Use `rw [op_inv] at {h3}`."
  rw [op_inv] at h3
  Hint (hidden := true) "And `{h3}` is now exactly our goal."
  Hint (hidden := true) "Use `exact {h3}`."
  exact h3

Conclusion "One down, two to go. We now know the identity is in `H`. Next, we'll show inverses are in there too."

NewTheorem subgroup_intersection
NewTactic obtain
