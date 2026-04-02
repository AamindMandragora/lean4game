import Game.Levels.ReflectionWorld.L01_Commutator
import Game.Levels.ReflectionWorld.L02_Conjugation
import Game.Levels.ReflectionWorld.L03_InverseDistribution
import Game.Levels.ReflectionWorld.L04_Subgroup
import Game.Levels.ReflectionWorld.L05_TrivialSubgroup
import Game.Levels.ReflectionWorld.L06_SubgroupIntersection
import Game.Levels.ReflectionWorld.L07_OneStepIdentity
import Game.Levels.ReflectionWorld.L08_OneStepInverse
import Game.Levels.ReflectionWorld.L09_OneStepClosure
import Game.Levels.ReflectionWorld.L10_OneStepTest
import Game.Levels.ReflectionWorld.L11_NormalSubgroup
import Game.Levels.ReflectionWorld.L12_AbelianSubgroupsAreNormal

World "ReflectionWorld"
Title "Reflection World"

Introduction "
We've established that groups are the molecules of mathematics. Now, let's find our O₂.

In Group World, we worked with a single, general group, and proved everything from three axioms. But what if our group has an extra property? What if the operation is **commutative**? Groups with this property are called **abelian groups**, and you'll find that commutativity makes our lives a lot easier — conjugation becomes trivial, and inverses distribute the way you'd expect them to.

But not all interesting structure comes from adding axioms. Sometimes, the structure is already there, hiding inside the group itself. A **subgroup** is a subset of a group that happens to be a group on its own. We'll formalize this idea, prove some facts about subgroups, and then derive the **one-step subgroup test** — a slick shortcut that lets you verify all three subgroup properties by checking a single condition.

Finally, we'll meet **normal subgroups**: subgroups that play nicely with conjugation. We won't do too much with them here, but they'll become essential in future worlds when we start comparing groups to each other. For now, we'll end with a satisfying result: in an abelian group, every subgroup is automatically normal. (You heard that right! We have an actual boss level this time.)

Let's get started.
"
