#
# Reset everything to whats needed for the start of the game.
#

### Tags
tag @a remove alive
tag @a remove won_bout_once

### Scores
scoreboard players reset global_delay Global_Delay
scoreboard players set game_state Variables 0

### Many resets are needed for start of match as well.
function rounds:reset/level/match
