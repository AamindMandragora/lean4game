import Game.Levels.GroupWorld.L01_OneEqualsOne
import Game.Levels.GroupWorld.L02_SimplificationPractice
import Game.Levels.GroupWorld.L03_LeftInverseCancellation
import Game.Levels.GroupWorld.L04_LeftCancellation
import Game.Levels.GroupWorld.L05_RightInverse
import Game.Levels.GroupWorld.L06_RightIdentity
import Game.Levels.GroupWorld.L07_UniqueIdentity
import Game.Levels.GroupWorld.L08_UniqueInverse
import Game.Levels.GroupWorld.L09_InverseOfIdentity
import Game.Levels.GroupWorld.L10_RightCancellation
import Game.Levels.GroupWorld.L11_DoubleInverse
import Game.Levels.GroupWorld.L12_ShoesAndSocks

World "GroupWorld"
Title "Group World"

Introduction "
The first mathematical structure most encounter first is a set, an unordered collection of unique elements. The only problem is, elements in a set don't inherently do anything. They just... *exist*. Let's change that.

Let $S$ be a set, then define some operation $+$ on the elements of $S$ (and assume an arbitrary element $0$) such that the following three axioms are satisfied:
1. **Associativity**: $\\forall a,b,c\\in S, (a+b)+c=a+(b+c)$
2. **Left Identity**: $\\forall a\\in S, 0+a=a$
3. **Left Inverse**: $\\forall a\\in S, \\exists (-a)\\in S, (-a)+a=0$

Then the set $S$ and the operation $+$ form a group $G$. In other words, $G=(S, +)$.

Notice how few axioms there are. We don't even have commutativity or a right identity! Until now, we've gotten used to blindly assuming those facts in the integers and real numbers. But not anymore.

In this world, we will use the three group axioms to prove several other facts we've taken for granted, and learn that, if sets are the atoms of mathematics, groups are the molecules.

However, before we can do that, we should talk about Lean. Lean is an interactive theorem prover. Each step in a proof is called a `tactic`, and each proven or given statement is called a theorem. Lemmas will also be referred to as theorems as there's no difference between the two except size.

Interestingly, axioms will also be referred to as theorems. This is because, while axioms are the building blocks and cannot be proven, the choice of which statements to use as axioms is entirely up to the person making the system.

For example, some people choose to use right identity and inverse as their group axioms, and some choose to use double-sided inverses. All three choices produce the exact same group structure, but if you choose to assume right inverses, you will then have to prove left inverses. Just because a statement is an axiom doesn't mean that it isn't provable in a slightly different but functionally identitcal system.

You'll see later that some `tactics` stand on their own to prove statements of a specific form, while some rely on already-proven `theorems` to simplify the problem.

When you attempt a proof in Lean, think of it the same way we do regular algebra problems: if we needed to show that `x^2 + y = 5` given `x = 2, y = 1`, we would first substitute `x` for `2`, then `y` for `1`, then use an algebra rule to simplify, ending up with `5 = 5`, which we know is true. Similarly, we will have to use a sequence of tactics to slowly get our goal to be of a form that we know is inherently true from our assumptions, like `5 = 5`."
