import Game.Definitions.Group.MyGroup

class MyAbelianGroup (G : Type) extends MyGroup G :=
  (op_comm : ∀ a b : G, op a b = op b a)

/-- An **abelian group** is a group where the operation is commutative. That is, in addition to the three group axioms, it satisfies:

- **Commutativity** (`op_comm`): `a * b = b * a`

This extra axiom has powerful consequences: conjugation becomes trivial, the commutator vanishes, and inverses distribute symmetrically. -/
DefinitionDoc MyAbelianGroup as "MyAbelianGroup"
