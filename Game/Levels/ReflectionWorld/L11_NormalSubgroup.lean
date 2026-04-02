import Game.Metadata
import Game.Documentation.Group.NormalSubgroup
import Game.Levels.ReflectionWorld.L10_OneStepTest

World "ReflectionWorld"
Level 11

Title "Normal Subgroups"

Introduction "A **normal subgroup** is a subgroup that's closed under conjugation. That is, if `a ∈ H`, then `g * a * g⁻¹ ∈ H` for every `g` in the group. We've bundled this into a structure called `IsNormalSubgroup`, which has all four properties: the three from `IsSubgroup`, plus conjugation closure.

Why do we care? Normal subgroups are the *only* subgroups you can take quotients with. They're the key to breaking groups into simpler pieces, which we'll explore in future worlds. For now, let's just get comfortable with the definition.

Same drill as Level 4: let's prove the easiest case first. `Univ` — the whole group — is a normal subgroup. Every element is in `Univ`, so conjugation can't kick anything out."

variable {G : Type} [MyGroup G]

Statement : IsNormalSubgroup (G := G) Univ := by
  Hint (hidden := true) "We need to prove four things now: the three subgroup properties plus conjugation closure. Use `constructor` to get started."
  Hint (hidden := true) "Use `constructor`."
  constructor
  Hint (hidden := true) "The first case asks for the `IsSubgroup` part. This is a structure too, so you'll need another `constructor` inside."
  Hint (hidden := true) "Use `case toIsSubgroup =>`."
  case toIsSubgroup =>
    Hint (hidden := true) "Split into the three subgroup properties."
    Hint (hidden := true) "Use `constructor`."
    constructor
    Hint (hidden := true) "Everything is in `Univ`, so all three are trivial."
    Hint (hidden := true) "Use `case id_mem => trivial`."
    case id_mem => trivial
    Hint (hidden := true) "Same for closure."
    Hint (hidden := true) "Use `case op_mem => intro a b _ _; trivial`."
    case op_mem => intro a b _ _; trivial
    Hint (hidden := true) "And inverses."
    Hint (hidden := true) "Use `case inv_mem => intro a _; trivial`."
    case inv_mem => intro a _; trivial
  Hint (hidden := true) "Now the new part: conjugation closure. Still trivial for `Univ`, since everything is in it."
  Hint (hidden := true) "Use `case conj_mem => intro g a _; trivial`."
  case conj_mem => intro g a _; trivial

Conclusion "The whole group is a normal subgroup. No surprises there. But here's a question that *is* surprising: are there groups where *every* subgroup is normal? The answer is yes, and you already know what they're called."

NewTheorem one_step_test
NewDefinition IsNormalSubgroup
