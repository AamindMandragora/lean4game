import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L09_OneStepClosure

World "ReflectionWorld"
Level 10

Title "One Step Test"

Introduction "Here it is: the payoff. We've proved that the one-step condition (`H` is closed under `a * b⁻¹`) implies all three subgroup properties individually. Now we just... put them together.

This level is less about mathematical insight and more about assembly. You have the parts — `one_step_id`, `one_step_inv`, `one_step_op` — and you need to wire them into the `IsSubgroup` structure. Think of it like snapping LEGO bricks into place."

variable {G : Type} [MyGroup G]

/-- `one_step_test H hx h` says that if `H` is nonempty and closed under `a * b⁻¹`, then `H` is a subgroup. -/
TheoremDoc one_step_test as "one_step_test" in "Subgroup"

Statement one_step_test (H : G → Prop) (h : ∀ a b, H a → H b → H (a * b⁻¹)) (hx : ∃ x, H x) : IsSubgroup (G := G) H := by
  Hint (hidden := true) "Before we split into cases, it'll be useful to have `H 1` ready to go, since two of the three subgroup properties need it. We proved this in Level 7."
  Hint (hidden := true) "Use `have hε : H 1 := by exact one_step_id H h hx`."
  have hε : H 1 := by exact one_step_id H h hx
  Hint (hidden := true) "Now split into the three subgroup obligations."
  Hint (hidden := true) "Use `constructor`."
  constructor
  Hint (hidden := true) "Identity membership — we literally just proved this."
  Hint (hidden := true) "Use `case id_mem => exact {hε}`."
  case id_mem => exact hε
  Hint (hidden := true) "Closure under the operation. Introduce the elements and their membership proofs, then cite Level 9."
  Hint (hidden := true) "Use `case op_mem =>`."
  case op_mem =>
    Hint (hidden := true) "Bring `a`, `b`, and their proofs into scope."
    Hint (hidden := true) "Use `intro a b ha hb`."
    intro a b ha hb
    Hint (hidden := true) "This is exactly `one_step_op`. Cite it with all its arguments."
    Hint (hidden := true) "Use `exact one_step_op H h {hε} {a} {b} {ha} {hb}`."
    exact one_step_op H h hε a b ha hb
  Hint (hidden := true) "Closure under inverses. Same pattern."
  Hint (hidden := true) "Use `case inv_mem =>`."
  case inv_mem =>
    Hint (hidden := true) "Introduce the element and its membership proof."
    Hint (hidden := true) "Use `intro a ha`."
    intro a ha
    Hint (hidden := true) "Cite Level 8."
    Hint (hidden := true) "Use `exact one_step_inv H h {hε} {a} {ha}`."
    exact one_step_inv H h hε a ha

Conclusion "The one-step subgroup test is complete. One condition to check instead of three. Not bad.

Now, let's shift gears one more time. We've been looking at subgroups that behave well under the group operation. What about subgroups that behave well under *conjugation*?"

NewTheorem one_step_op
