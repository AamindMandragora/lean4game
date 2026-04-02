import Game.Metadata

/-- We can use `have` to introduce a smaller or slightly altered version of the goal which we then prove in one line, and that proof becomes a hypothesis we can use in the future. For example, for some goal of the form `P ∧ Q`, `have h : P := by tactic` will use a tactic to prove `P`, which then becomes a hypothesis `h` we can use to prove `P ∧ Q`. -/
TacticDoc «have»
