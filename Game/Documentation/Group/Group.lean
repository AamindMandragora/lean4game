import Game.Documentation.Group.MyGroup

variable {Group : Type} [MyGroup Group]

instance : Mul Group where mul := MyGroup.op
instance : One Group where one := MyGroup.id
instance : Inv Group where inv := MyGroup.inv

theorem op_assoc (a b c : Group) : (a * b) * c = a * (b * c) := MyGroup.op_assoc a b c
theorem id_op (g : Group) : 1 * g = g := MyGroup.id_op g
theorem inv_op (g : Group) : g⁻¹ * g = 1 := MyGroup.inv_op g

/-- `op_assoc a b c` says `(a * b) * c = a * (b * c)`. -/
TheoremDoc op_assoc as "op_assoc" in "Group"
/-- `id_op g` says `1 * g = g`. -/
TheoremDoc id_op as "id_op" in "Group"
/-- `inv_op g` says `g⁻¹ * g = 1`. -/
TheoremDoc inv_op as "inv_op" in "Group"
