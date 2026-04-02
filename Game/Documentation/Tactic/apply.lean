import Game.Metadata

/-- We can use `apply` when the goal is in the form of some lemma's conclusion, replacing it with that lemma's hypothesis, which may be easier to prove. If `lemma` states that `P → Q`, and the goal is `Q`, `apply lemma` will make the goal `P`. Also, if we have an assumption `h : P`, then we can `apply lemma at h` to turn it into `h : Q`. -/
TacticDoc apply
