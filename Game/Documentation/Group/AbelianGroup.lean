import Game.Documentation.Group.Group
import Game.Documentation.Group.MyAbelianGroup

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

theorem op_comm (a b : AbelianGroup) : a * b = b * a := MyAbelianGroup.op_comm a b

/-- `op_comm a b` says `a * b = b * a`. -/
TheoremDoc op_comm as "op_comm" in "AbelianGroup"
