#
# Go to next round
#

### Update scores
execute as @e[tag=gamer,tag=bout_winner,team=Red,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Red Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Blue,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Blue Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Yellow,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Yellow Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Green,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Green Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add @s Scoreboard 1

### TODO: put card selection logic here. Will prob need to switch game state in main/tick.mcfunction then figure out how to get back into the game loop.

### Next Round
function rounds:game_state/round/start