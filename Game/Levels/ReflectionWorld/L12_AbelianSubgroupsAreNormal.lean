import Game.Metadata
import Game.Documentation.Group.NormalSubgroup
import Game.Levels.ReflectionWorld.L11_NormalSubgroup

World "ReflectionWorld"
Level 12

Title "Abelian Subgroups are Normal"

Introduction "TODO"

variable {A : Type} [MyAbelianGroup A]

Statement (H : A → Prop) (h : IsSubgroup H) : IsNormalSubgroup H := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case conj_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    intro g a ha
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    show H (g * a * g⁻¹)
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    rw [op_conj]
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    exact ha
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case toIsSubgroup =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    exact h

Conclusion "TODO"
