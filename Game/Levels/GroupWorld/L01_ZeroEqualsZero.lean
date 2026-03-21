import Game.Metadata
import Game.MyGroup.Definition

variable {G : Type} [MyGroup G]

World "GroupWorld"
Level 1

Title "Zero Equals Zero"

Introduction "Welcome to level one! Our goal is to prove that, inside some group `G`, `0 = 0`. Seems pretty simple, right? Yeah, there's no trick here. Since groups are based off sets, each element in the group will be unique and thus an equality operator is defined. The property that every element equals itself is called **reflexivity**. In Lean, we can cite the property using the `rfl` tactic. You can learn more about it, and future other tactics, by clicking on the `Tactics` section on the right and selecting it."

Statement : (0 : G) = 0 := by
  Hint (hidden := true) "Remember, we're just trying to prove that `0 = 0`. We just introduced the `rfl` tactic that proves any goal of the form `X = X`."
  rfl

Conclusion "Good job! We can use this exact same tactic to prove that any element of a group equals itself. This will be very useful in the levels to come."

NewTactic rfl
