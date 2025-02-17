#
# Reset everything to whats needed for the start of the game.
#

### Tags
tag @a remove gamer

### Scores
scoreboard players reset global_delay Variables

### Many resets are needed for start of match as well.
function rounds:reset/level/match
