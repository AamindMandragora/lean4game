import Game.Metadata
import Game.Documentation.Tactic.rfl
import Game.Documentation.Group.Group

variable {Group : Type} [MyGroup Group]

World "GroupWorld"
Level 1

Title "One Equals One"

Introduction "Welcome to level one! Our goal is to prove that, inside some group `Group`, `1 = 1`. Seems pretty simple, right? Yeah, there's no trick here. Since groups are based off sets, each element in the group will be unique and thus an equality operator is defined. The property that every element equals itself is called **reflexivity**.

In Lean, we can cite the property using the `rfl` tactic. You can learn more about it, and future other tactics, by clicking on the `Tactics` section on the right and selecting it. (I say can, but you really should, as there's extra information in the docs that will be necessary.)"

Statement : (1 : Group) = 1 := by
  Hint (hidden := true) "Remember, we're just trying to prove that `1 = 1`. We just introduced the `rfl` tactic that proves any goal of the form `X = X`."
  rfl

Conclusion "Good job! We can use this exact same tactic to prove that any element of a group equals itself. In future proofs, try and manipulate the goal to be in the form `X = X`, then a call to `rfl` will prove it!"

NewDefinition MyGroup
NewTactic rfl
