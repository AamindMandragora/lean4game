import Game.Metadata
import Game.MyGroup.Definition
import Game.Levels.GroupWorld.L11_DoubleInverse

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 12

Title "Shoes and Socks"

Introduction "TODO"

/-- `shoes_and_socks (a b : G)` says `(-(a + b)) = (-b) + (-a)`. -/
TheoremDoc shoes_and_socks as "shoes_and_socks" in "Group"

Statement shoes_and_socks (a b : G) : (-(a + b)) = (-b) + (-a) := by
  Hint "TODO"
  rw [← cancel_add (a + b) (-(a + b)) ((-b) + (-a))]
  rw [add_neg]
  rw [add_assoc]
  rw [← add_assoc b]
  rw [add_neg]
  rw [zero_add]
  rw [add_neg]

Conclusion "TODO"

NewTheorem neg_of_neg_is_g
