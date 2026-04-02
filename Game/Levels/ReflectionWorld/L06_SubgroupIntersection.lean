import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L05_TrivialSubgroup

World "ReflectionWorld"
Level 6

Title "Intersection of Subgroups"

Introduction "TODO"

variable {G : Type} [MyGroup G]

/-- `subgroup_intersection H₁ H₂ hH₁ hH₂` says the intersection of two subgroups is a subgroup. -/
TheoremDoc subgroup_intersection as "subgroup_intersection" in "Subgroup"

Statement subgroup_intersection (H₁ H₂ : G → Prop) (hH₁ : IsSubgroup (G := G) H₁) (hH₂ : IsSubgroup (G := G) H₂) : IsSubgroup (fun g => H₁ g ∧ H₂ g) := by
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  constructor
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case id_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    constructor
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case left =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₁.id_mem
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case right =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₂.id_mem
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case op_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    intro a b ha hb
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    constructor
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case left =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₁.op_mem a b
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply ha.left
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hb.left
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case right =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₂.op_mem a b
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply ha.right
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hb.right
  Hint (hidden := true) "TODO"
  Hint (hidden := true) "TODO"
  case inv_mem =>
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    intro a ha
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    constructor
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case left =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₁.inv_mem a
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply ha.left
    Hint (hidden := true) "TODO"
    Hint (hidden := true) "TODO"
    case right =>
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply hH₂.inv_mem a
      Hint (hidden := true) "TODO"
      Hint (hidden := true) "TODO"
      apply ha.right

Conclusion "TODO"
