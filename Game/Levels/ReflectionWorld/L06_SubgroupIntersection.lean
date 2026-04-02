import Game.Metadata
import Game.Documentation.Group.Subgroup
import Game.Levels.ReflectionWorld.L05_TrivialSubgroup

World "ReflectionWorld"
Level 6

Title "Intersection of Subgroups"

Introduction "Here's a natural question: if you take two subgroups and intersect them, do you get another subgroup? The answer is yes, and the proof is essentially 'do everything twice.'

Given `H₁` and `H₂`, both subgroups, we define their intersection as the set of elements that belong to *both*. In Lean, that's `fun g => H₁ g ∧ H₂ g`, where `∧` is logical 'and.' To prove a conjunction `P ∧ Q`, you use `constructor` (which you already know!) to split it into two subgoals: prove `P`, then prove `Q`. To *use* a conjunction from an assumption `h : P ∧ Q`, you can access the left part with `h.left` and the right part with `h.right`.

This level is longer than most, but the pattern repeats three times. By the third case, you should be on autopilot. That's why, for the first (and last) time ever, I'll slack on the hints. Lock in."

variable {G : Type} [MyGroup G]

/-- `subgroup_intersection H₁ H₂ hH₁ hH₂` says the intersection of two subgroups is a subgroup. -/
TheoremDoc subgroup_intersection as "subgroup_intersection" in "Subgroup"

Statement subgroup_intersection (H₁ H₂ : G → Prop) (hH₁ : IsSubgroup (G := G) H₁) (hH₂ : IsSubgroup (G := G) H₂) : IsSubgroup (fun g => H₁ g ∧ H₂ g) := by
  Hint (hidden := true) "Three subgroup properties to prove, same as before."
  Hint (hidden := true) "Use `constructor`."
  constructor
  Hint (hidden := true) "The first and easiest case to prove is that the identity is in the intersection."
  Hint (hidden := true) "Use `case id_mem =>`."
  case id_mem =>
    Hint (hidden := true) "Two subgoals: show the identity is in `H₁`, then in `H₂`. You can access the subgroup proofs with `hH₁.id_mem` and `hH₂.id_mem`. But before that, how do we split these goals?"
    Hint (hidden := true) "Use `constructor`."
    constructor
    Hint (hidden := true) "For the left side, cite `H₁`'s identity membership."
    Hint (hidden := true) "Use `case left => apply hH₁.id_mem`."
    case left =>
      apply hH₁.id_mem
    Hint (hidden := true) "Same for `H₂`."
    Hint (hidden := true) "Use `case right => apply hH₂.id_mem`."
    case right =>
      apply hH₂.id_mem
  Hint (hidden := true) "The next thing to prove is that the operation is closed inside the intersection."
  Hint (hidden := true) "Use `case op_mem =>`."
  case op_mem =>
    Hint (hidden := true) "For `op_mem`: given `a ∈ H₁ ∩ H₂` and `b ∈ H₁ ∩ H₂`, show `a * b ∈ H₁ ∩ H₂`. Start by introducing everything."
    Hint (hidden := true) "Use `intro a b ha hb`."
    intro a b ha hb
    Hint (hidden := true) "Split the conjunction, then for each side, use the corresponding subgroup's closure. `{ha}.left` gives you `H₁ {a}`, and `{hb}.left` gives you `H₁ {b}`."
    Hint (hidden := true) "Use `constructor`."
    constructor
    case left =>
      Hint (hidden := true) "Use `apply hH₁.op_mem {a} {b}`, then provide the membership proofs."
      apply hH₁.op_mem a b
      Hint (hidden := true) "Use `apply {ha}.left`."
      apply ha.left
      Hint (hidden := true) "Use `apply {hb}.left`."
      apply hb.left
    case right =>
      Hint (hidden := true) "Same pattern, but for `H₂`."
      Hint (hidden := true) "Use `apply hH₂.op_mem {a} {b}`."
      apply hH₂.op_mem a b
      Hint (hidden := true) "Use `apply {ha}.right`."
      apply ha.right
      Hint (hidden := true) "Use `apply {hb}.right`."
      apply hb.right
  Hint (hidden := true) "Last case: closure under inverses. You know the drill by now."
  Hint (hidden := true) "Use `case inv_mem =>`."
  case inv_mem =>
    Hint (hidden := true) "Use `intro a ha`."
    intro a ha
    Hint (hidden := true) "Split and apply."
    Hint (hidden := true) "Use `constructor`."
    constructor
    case left =>
      Hint (hidden := true) "Use `apply hH₁.inv_mem {a}` then `apply {ha}.left`."
      apply hH₁.inv_mem a
      apply ha.left
    case right =>
      Hint (hidden := true) "Use `apply hH₂.inv_mem {a}` then `apply {ha}.right`."
      apply hH₂.inv_mem a
      apply ha.right

Conclusion "Subgroups are closed under intersection. (They're *not* closed under union, by the way — try and prove that on your own!) Next up: let's start collecting theorems to assemble the shortcut that'll save you from having to prove all three subgroup properties separately."
