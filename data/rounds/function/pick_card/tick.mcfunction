#
# Card picking logic
#


execute as @e[type=minecraft:interaction,tag=pick_card] run function rounds:pick_card/detect_interaction
execute as @e[tag=picked_card,limit=1] run function rounds:pick_card/assign_card

execute as @e[type=interaction,tag=pick_card] run data merge entity @s {interaction:{timestamp:0}}
tag @e[type=interaction] remove picked_card
