import Game.Levels.GroupWorld
import Game.Levels.ReflectionWorld

-- Here's what we'll put on the title screen
Title "Abstract Algebra, the Game"
Introduction
"
# Welcome to Abstract Algebra, the Game!

This course is a basic introduction of undergraduate-level Abstract Algebra in Lean. We will cover structures such as groups, rings, integral domains, and fields, as well as relations between them like homomorphisms and isomorphisms.

**Important**: Please note that this course is unfinished and made by [an undergraduate](https://www.linkedin.com/in/advayth-pashupati/), and should be taken with a grain of salt. If you want to submit a request for anything, make an issue [here](https://github.com/AamindMandragora/lean4game/issues). You'll need a GitHub account.
"

Info "
*Abstract Algebra, The Game*
## Credits
- **Game Design**: [Advayth Pashupati](https://github.com/AamindMandragora)
- **Department**: [Mathematics at the University of Illinois](https://math.illinois.edu)
- **Many Thanks To**: The lean4game team and their wonderful system!
"

/-! Information to be displayed on the servers landing page. -/
Languages "en"
CaptionShort "Abstract Algebra, the Game!"
CaptionLong "This course is a basic introduction of undergraduate-level Abstract Algebra in Lean."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

Dependency GroupWorld → ReflectionWorld

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
