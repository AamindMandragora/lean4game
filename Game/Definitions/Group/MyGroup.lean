import GameServer.Commands

class MyGroup (G : Type) :=
  (op : G → G → G)
  (id : G)
  (inv : G → G)
  (op_assoc : ∀ a b c : G, op (op a b) c = op a (op b c))
  (id_op : ∀ g : G, op id g = g)
  (inv_op : ∀ g : G, op (inv g) g = id)

/-- A **group** is a set `G` equipped with an operation `*`, an identity element `1`, and an inverse operation `⁻¹`, satisfying three axioms:

- **Associativity** (`op_assoc`): `(a * b) * c = a * (b * c)`
- **Left identity** (`id_op`): `1 * g = g`
- **Left inverse** (`inv_op`): `g⁻¹ * g = 1`

All other group properties — right identity, right inverse, uniqueness, cancellation — are derived from these three axioms in Group World. -/
DefinitionDoc MyGroup as "MyGroup"
