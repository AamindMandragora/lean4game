import Game.Documentation.Group.MyGroup

variable {G : Type} [MyGroup G]

structure IsSubgroup [MyGroup G] (H : G → Prop) : Prop where
  id_mem : H MyGroup.id
  op_mem : ∀ a b, H a → H b → H (MyGroup.op a b)
  inv_mem : ∀ a, H a → H (MyGroup.inv a)

instance : Membership G (G → Prop) where
  mem H a := H a

/-- A **subgroup** is a subset `H` of a group `G` that is itself a group under the same operation. Specifically, `H` must contain the same identity element, be closed under the operation, and for every element `a` in `H`, there must exist an `a^⁻¹` in `H`. -/
DefinitionDoc IsSubgroup as "IsSubgroup"
