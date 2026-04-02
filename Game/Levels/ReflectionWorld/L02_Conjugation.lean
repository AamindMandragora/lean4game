import Game.Metadata
import Game.Documentation.Group.AbelianGroup
import Game.Levels.ReflectionWorld.L01_Commutator

variable {AbelianGroup : Type} [MyAbelianGroup AbelianGroup]

World "ReflectionWorld"
Level 2

Title "Conjugation"

Introduction "An **abelian group** is a group with one extra axiom: commutativity. That is, `a * b = b * a` for all elements. We call this axiom `op_comm`.

You should know by now that adding one axiom is more than a minor upgrade. Adding 33% more to our total axioms changes *everything*. Properties that required careful multi-step proofs in Group World suddenly become trivial.

Case in point: **conjugation**. The expression `a * b * a⁻¹` shows up constantly in group theory — it's used to define normal subgroups, study symmetry, and classify groups. In a general group, conjugation can scramble elements in unpredictable ways. But in an abelian group? Conjugation does nothing. `a * b * a⁻¹ = b`. Always."

/-- `op_conj (a b : AbelianGroup)` says `a * b * a⁻¹ = b`. -/
TheoremDoc op_conj as "op_conj" in "AbelianGroup"

Statement op_conj (a b : AbelianGroup) : a * b * a⁻¹ = b := by
  Hint (hidden := true) "The `a` is on the wrong side of `b`. We have a new axiom that lets us fix that..."
  Hint (hidden := true) "Use `rw [op_comm a]` to swap `a * b` to `b * a`. Note that specifying `a` tells Lean which `*` to target."
  rw [op_comm a]
  Hint (hidden := true) "Now we have `b * a * a⁻¹`. The `a` and `a⁻¹` need to be grouped together."
  Hint (hidden := true) "Use `rw [op_assoc b]` to regroup."
  rw [op_assoc b]
  Hint (hidden := true) "Cancel `a * a⁻¹`."
  Hint (hidden := true) "Use `rw [op_inv]`."
  rw [op_inv]
  Hint (hidden := true) "Clean up the identity on the right."
  Hint (hidden := true) "Use `rw [op_id]`."
  rw [op_id]

Conclusion "Conjugation is trivial in abelian groups. We'll name this `op_conj`. It will be key to defeating the boss."

NewTheorem op_comm
