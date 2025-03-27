#
# Tick runs every tick. Make sure checks are optimized or only as frequent as they need to be.
#

# Game state
# 0 - lobby
# 1 - bout
#

### 0 - match
execute if score game_state Variables matches 0 run function rounds:game_state/match/tick

### 1 - bout
execute if score game_state Variables matches 1 run function rounds:game_state/bout/tick
# TODO: Remove this lol
execute if score game_state Variables matches 1 if score global_delay Global_Delay matches 5 as @a if predicate rounds:checks/is_sneaking run tag @e[tag=alive,sort=random,limit=1] remove alive

### 2 - round
execute if score game_state Variables matches 2 run function rounds:game_state/round/tick

### Global Delay Timer
scoreboard players add global_delay Global_Delay 1
execute if score global_delay Global_Delay matches 20 run scoreboard players set global_delay Global_Delay 0

# When a player is holding a bow, assign their gravity value
execute as @a if items entity @s weapon.mainhand minecraft:bow run function rounds:arrow_modifiers/bow_gravity
execute as @a if items entity @s weapon.mainhand minecraft:crossbow run function rounds:arrow_modifiers/bow_gravity

# Reset scores
function rounds:reset/reset_scores
