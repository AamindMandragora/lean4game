import Game.Metadata
import Game.Documentation.Group.Group
import Game.Levels.GroupWorld.L08_UniqueInverse

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 9

Title "Inverse of Identity"

Introduction "In the last level, we proved that every element has a unique double-sided inverse. Naturally, that includes the identity element. So what's the inverse of `1`? And what's `1` the inverse of?"

/-- `id_is_inv_id` says `1 = 1⁻¹`. -/
TheoremDoc id_is_inv_id as "id_is_inv_id" in "Group"

Statement id_is_inv_id : (1 : Group) = 1⁻¹ := by
  Hint (hidden := true) "We want to show that `1` is an inverse of `1`. Have we proven a lemma in the past that might be applicable here?"
  Hint (hidden := true) "Use `apply is_inverse` to turn the goal into `1 * 1 = 1`, the corresponding hypothesis."
  apply is_inverse
  Hint (hidden := true) "Now, we can simply multiply `1` by itself."
  Hint (hidden := true) "Use `rw [op_id]`."
  rw [op_id]

Conclusion "We now know that `1` is its own inverse, which begs the question: can any element be its own inverse? Yes! We've been working with the arbitrary group, but choosing a specific one can allow you to find more properties specific to it."

NewTheorem is_inverse
