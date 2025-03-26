#
# End of round logic.
#

### Update scores
execute as @e[tag=gamer,tag=bout_winner,team=Red,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Red Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Blue,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Blue Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Yellow,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Yellow Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=Green,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add Green Scoreboard 1
execute as @e[tag=gamer,tag=bout_winner,team=,limit=1] if entity @s[tag=won_bout_once] run scoreboard players add @s Scoreboard 1

### Next round or end of match?
function rounds:game_state/match/checks/match_winner

execute as @e[tag=match_winner] run scoreboard players set game_state Variables 0
execute as @e[tag=match_winner] run function rounds:game_state/match/end
execute unless entity @e[tag=match_winner] run function rounds:game_state/round/next_round
