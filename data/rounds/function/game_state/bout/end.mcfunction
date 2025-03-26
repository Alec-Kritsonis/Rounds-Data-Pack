#
# End of bout logic.
#

### Next Bout or End of Round?
execute as @e[tag=gamer,tag=bout_winner,limit=1] if entity @s[tag=won_bout_once] run say I win! Next Round!
execute as @e[tag=gamer,tag=bout_winner,limit=1] if entity @s[tag=won_bout_once] run scoreboard players set game_state Variables 2
execute as @e[tag=gamer,tag=bout_winner,limit=1] if entity @s[tag=won_bout_once] run function rounds:game_state/round/end
execute as @e[tag=gamer,tag=bout_winner,limit=1] if entity @s[tag=!won_bout_once] run say I win! Next Bout!
execute as @e[tag=gamer,tag=bout_winner,limit=1] if entity @s[tag=!won_bout_once] run function rounds:game_state/bout/next_bout