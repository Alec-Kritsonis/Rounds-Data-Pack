#
# Go to next bout
#

execute as @e[tag=gamer,tag=bout_winner] run tag @s add won_bout_once

# Visually show teams/players that are about to win the round
execute as @e[tag=won_bout_once] run effect give @s glowing infinite 1 true

function rounds:game_state/bout/start