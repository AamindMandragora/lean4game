import Game.Metadata

/-- If an assumption is in the form `h : ∃ x, Prop x`, then we can write `obtain ⟨x, hx⟩ := h` to create an object `x` and an assumption `hx : Prop x` on that object. -/
TacticDoc obtain
