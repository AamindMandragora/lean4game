import Game.Metadata

/-- If there's a complex goal that can easily be divided into several subgoals (for example, `P ∧ Q` can easily be split into proving `P`, then proving `Q`) we can use `constructor` to create an environment where we can write `case`s for each subgoal. Using the example, calling `constructor`, then `case P => ` will make the environment ask us to prove `P` however we can, and once we're done, we can enter the `case Q => ` environment and prove that, at which point we're done. -/
TacticDoc constructor
