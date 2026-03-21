import Game.Levels.GroupWorld.L01_ZeroEqualsZero
import Game.Levels.GroupWorld.L02_LeftIdentity
import Game.Levels.GroupWorld.L03_LeftInverseCancellation
import Game.Levels.GroupWorld.L04_LeftCancellation
import Game.Levels.GroupWorld.L05_RightInverse
import Game.Levels.GroupWorld.L06_RightIdentity
import Game.Levels.GroupWorld.L07_UniqueIdentity
import Game.Levels.GroupWorld.L08_UniqueInverse
import Game.Levels.GroupWorld.L09_InverseOfZero
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
"
