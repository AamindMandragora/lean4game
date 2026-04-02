import Game.Documentation.Group.Subgroup

variable {G : Type} [MyGroup G]

structure IsNormalSubgroup [MyGroup G] (H : G → Prop) : Prop extends IsSubgroup H where
  conj_mem : ∀ g a, H a → H (MyGroup.op (MyGroup.op g a) (MyGroup.inv g))

/-- A **normal subgroup** is a subgroup `S` that is closed under conjugation: if `a ∈ S`, then `g * a * g⁻¹ ∈ S` for all `g` in the group. -/
DefinitionDoc IsNormalSubgroup as "IsNormalSubgroup"
