import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L07_OneStepIdentity

World "ReflectionWorld"
Level 8

Title "One Step Test: Inverses"

Introduction "Second piece of the one-step test. We know `H` contains `1` (we just proved that). Now, if `H` contains some element `a`, does it contain `a⁻¹`?"

variable {G : Type} [MyGroup G]

/-- `one_step_inv H h hε a ha` says that if `H` is closed under `a * b⁻¹` by `h` and contains the identity by `hε`, then `a ∈ H` implies `a⁻¹ ∈ H`. -/
TheoremDoc one_step_inv as "one_step_inv" in "Subgroup"

Statement one_step_inv (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hε : H 1) (a : G) (ha : H a) : H (a⁻¹) := by
  Hint (hidden := true) "We want `a⁻¹ ∈ H`. Our closure condition gives us elements of the form `a * b⁻¹`. How do we get just `a⁻¹` out of that? What should `a` and `b` be in the closure condition?"
  Hint (hidden := true) "Use `have h1 := h 1 a` to set up `1 * a⁻¹`."
  have h1 := h 1 a
  Hint (hidden := true) "Now `{h1}` needs proof that `1 ∈ H`. We have that — it's `hε`."
  Hint (hidden := true) "Use `have h2 := {h1} hε`."
  have h2 := h1 hε
  Hint (hidden := true) "And it needs proof that `a ∈ H`. We have that too — it's `ha`."
  Hint (hidden := true) "Use `have h3 := {h2} ha`."
  have h3 := h2 ha
  Hint (hidden := true) "Now `{h3} : H (1 * a⁻¹)`. But `1 * a⁻¹ = a⁻¹` by left identity."
  Hint (hidden := true) "Use `rw [id_op] at {h3}`."
  rw [id_op] at h3
  Hint (hidden := true) "And there it is."
  Hint (hidden := true) "Use `exact {h3}`."
  exact h3

Conclusion "Inverses are in. One more piece: closure under the operation itself."

NewTheorem one_step_id
