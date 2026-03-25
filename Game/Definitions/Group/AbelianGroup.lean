import Game.Definitions.Group.MyAbelianGroup

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

instance : Mul AbelianGroup where mul := MyGroup.op
instance : One AbelianGroup where one := MyGroup.id
instance : Inv AbelianGroup where inv := MyGroup.inv

theorem op_comm (a b : AbelianGroup) : a * b = b * a := MyAbelianGroup.op_comm a b

/-- `op_comm a b` says `a * b = b * a`. -/
TheoremDoc op_comm as "op_comm" in "AbelianGroup"
