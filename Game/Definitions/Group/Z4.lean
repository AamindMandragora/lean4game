import Game.Definitions.Group.MyAbelianGroup

inductive Z4 : Type
  | zero | one | two | three

namespace Z4

def add : Z4 → Z4 → Z4
  | zero, x => x
  | x, zero => x
  | one, one => two
  | one, two => three
  | one, three => zero
  | two, one => three
  | two, two => zero
  | two, three => one
  | three, one => zero
  | three, two => one
  | three, three => two

def neg : Z4 → Z4
  | zero => zero
  | one => three
  | two => two
  | three => one

instance : MyAbelianGroup Z4 where
  op := add
  id := zero
  inv := neg
  op_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl
  id_op := by
    intro g
    cases g <;> rfl
  inv_op := by
    intro g
    cases g <;> rfl
  op_comm := by
    intro a b
    cases a <;> cases b <;> rfl

instance : Add Z4 where add := MyAbelianGroup.op
instance : Zero Z4 where zero := MyAbelianGroup.id
instance : Neg Z4 where neg := MyAbelianGroup.inv

instance : OfNat Z4 0 where ofNat := Z4.zero
instance : OfNat Z4 1 where ofNat := Z4.one
instance : OfNat Z4 2 where ofNat := Z4.two
instance : OfNat Z4 3 where ofNat := Z4.three

end Z4
