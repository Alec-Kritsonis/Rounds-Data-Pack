#
# Counts the players in each team.
#

scoreboard players set team_count TeamStats 0
scoreboard players set enough_teams TeamStats 0

scoreboard players set red_players TeamStats 0
scoreboard players set blue_players TeamStats 0
scoreboard players set yellow_players TeamStats 0
scoreboard players set green_players TeamStats 0
scoreboard players set ffa_players TeamStats 0

execute as @e[team=Red] run scoreboard players add red_players TeamStats 1
execute as @e[team=Blue] run scoreboard players add blue_players TeamStats 1
execute as @e[team=Yellow] run scoreboard players add yellow_players TeamStats 1
execute as @e[team=Green] run scoreboard players add green_players TeamStats 1
execute as @e[team=FFA] run scoreboard players add ffa_players TeamStats 1

execute if score red_players TeamStats matches 1.. run scoreboard players add team_count TeamStats 1
execute if score blue_players TeamStats matches 1.. run scoreboard players add team_count TeamStats 1
execute if score yellow_players TeamStats matches 1.. run scoreboard players add team_count TeamStats 1
execute if score green_players TeamStats matches 1.. run scoreboard players add team_count TeamStats 1

execute if score ffa_players TeamStats matches 2.. run scoreboard players set enough_teams TeamStats 1
execute if score team_count TeamStats matches 2.. run scoreboard players set enough_teams TeamStats 1
