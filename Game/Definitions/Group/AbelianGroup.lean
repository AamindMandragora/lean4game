import Game.Definitions.Group.MyAbelianGroup

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

instance : Mul AbelianGroup where mul := MyAbelianGroup.op
instance : One AbelianGroup where one := MyAbelianGroup.id
instance : Inv AbelianGroup where inv := MyAbelianGroup.inv

theorem op_assoc (a b c : AbelianGroup) : (a * b) * c = a * (b * c) := MyAbelianGroup.op_assoc a b c
theorem id_op (g : AbelianGroup) : 1 * g = g := MyAbelianGroup.id_op g
theorem inv_op (g : AbelianGroup) : g⁻¹ * g = 1 := MyAbelianGroup.inv_op g
theorem op_comm (a b : AbelianGroup) : a * b = b * a

/-- `op_assoc a b c` says `(a * b) * c = a * (b * c)`. -/
TheoremDoc op_assoc as "op_assoc" in "AbelianGroup"
/-- `id_op g` says `1 * g = g`. -/
TheoremDoc id_op as "id_op" in "AbelianGroup"
/-- `inv_op g` says `g⁻¹ * g = 1`. -/
TheoremDoc inv_op as "inv_op" in "AbelianGroup"
