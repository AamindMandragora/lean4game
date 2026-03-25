import Game.Definitions.Group.MyGroup

variable {G : Type} [MyGroup G]

structure IsSubgroup [MyGroup G] (S : G → Prop) : Prop where
  id_mem : S MyGroup.id
  op_mem : ∀ a b, S a → S b → S (MyGroup.op a b)
  inv_mem : ∀ a, S a → S (MyGroup.inv a)

instance : Membership G (G → Prop) where
  mem S a := S a

/-- A **subgroup** is a subset `S` of a group `G` that is itself a group under the same operation. Concretely, `S` must contain the identity, be closed under the group operation, and be closed under inverses. -/
DefinitionDoc IsSubgroup as "IsSubgroup"
