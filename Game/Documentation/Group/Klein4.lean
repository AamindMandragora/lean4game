import Game.Documentation.Group.MyAbelianGroup

inductive Klein4 : Type
  | e | a | b | c

namespace Klein4

def mul : Klein4 → Klein4 → Klein4
  | e, x => x
  | x, e => x
  | a, a => e
  | b, b => e
  | c, c => e
  | a, b => c
  | b, a => c
  | a, c => b
  | c, a => b
  | b, c => a
  | c, b => a

def inv : Klein4 → Klein4
  | e => e
  | a => a
  | b => b
  | c => c

instance : MyAbelianGroup Klein4 where
  op := mul
  id := e
  inv := inv
  op_assoc := by
    intro x y z
    cases x <;> cases y <;> cases z <;> rfl
  id_op := by
    intro g
    cases g <;> rfl
  inv_op := by
    intro g
    cases g <;> rfl
  op_comm := by
    intro x y
    cases x <;> cases y <;> rfl

instance : Mul Klein4 where mul := MyAbelianGroup.op
instance : One Klein4 where one := MyAbelianGroup.id
instance : Inv Klein4 where inv := MyAbelianGroup.inv

end Klein4
