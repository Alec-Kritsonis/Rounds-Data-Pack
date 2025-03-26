#
# Tick runs every tick. Make sure checks are optimized or only as frequent as they need to be.
#

# Game state
# 0 - lobby
# 1 - bout
#

# Count players and teams
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

### 0 - Lobby
execute if score game_state Variables matches 0 if score enough_teams TeamStats matches 1 run function rounds:game_state/match/tick

### 1 - bout
execute if score game_state Variables matches 1 if score enough_teams TeamStats matches 1 run function rounds:game_state/bout/tick
# TODO: Remove this lol
execute if score game_state Variables matches 1 if score global_delay Global_Delay matches 5 as @a if predicate rounds:checks/is_sneaking run tag @r[tag=alive] remove alive

### Global Delay Timer
scoreboard players add global_delay Global_Delay 1
execute if score global_delay Global_Delay matches 20 run scoreboard players set global_delay Global_Delay 0

# When a player is holding a bow, assign their gravity value
execute as @a if items entity @s weapon.mainhand minecraft:bow run function rounds:arrow_modifiers/bow_gravity
execute as @a if items entity @s weapon.mainhand minecraft:crossbow run function rounds:arrow_modifiers/bow_gravity

# Reset scores
function rounds:reset/reset_scores