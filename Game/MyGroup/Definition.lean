import GameServer.Commands

class MyGroup (G : Type) :=
  (add : G → G → G)
  (zero : G)
  (neg : G → G)
  (add_assoc : ∀ a b c : G, add (add a b) c = add a (add b c))
  (zero_add : ∀ g : G, add zero g = g)
  (neg_add : ∀ g : G, add (neg g) g = zero)

variable {G : Type} [MyGroup G]

instance : Add G where add := MyGroup.add
instance : Zero G where zero := MyGroup.zero
instance : Neg G where neg := MyGroup.neg

theorem add_assoc (a b c : G) : (a + b) + c = a + (b + c) := MyGroup.add_assoc a b c
theorem zero_add (g : G) : 0 + g = g := MyGroup.zero_add g
theorem neg_add (g : G) : (-g) + g = 0 := MyGroup.neg_add g

/-- `add_assoc a b c` says `(a + b) + c = a + (b + c)`. -/
TheoremDoc add_assoc as "add_assoc" in "Group"
/-- `zero_add g` says `0 + g = g`. -/
TheoremDoc zero_add as "zero_add" in "Group"
/-- `neg_add g` says `(-g) + g = 0`. -/
TheoremDoc neg_add as "neg_add" in "Group"
