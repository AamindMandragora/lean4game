import Game.Metadata

/-- `rfl` stands for reflect. One of the properties of equality (and every equivalence relation, if you know what those are) is reflexivity, which means that every element for which the relation is defined on naturally equals itself. In other words, `∀ x, x = x`. For any goal of that form, this tactic will instantly prove it. -/
TacticDoc rfl
