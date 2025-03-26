#
# Assign player their picked card
#

# Assign card
execute if score picked_card pick_card_data matches 1 as @a[tag=picking_card] run function rounds:pick_card/assign_player/explosive_shots
execute if score picked_card pick_card_data matches 2 as @a[tag=picking_card] run function rounds:pick_card/assign_player/fountain_shots
execute if score picked_card pick_card_data matches 3 as @a[tag=picking_card] run function rounds:pick_card/assign_player/lightning_shots
execute if score picked_card pick_card_data matches 4 as @a[tag=picking_card] run function rounds:pick_card/assign_player/damage_up
execute if score picked_card pick_card_data matches 5 as @a[tag=picking_card] run function rounds:pick_card/assign_player/piercing_up
execute if score picked_card pick_card_data matches 6 as @a[tag=picking_card] run function rounds:pick_card/assign_player/airburst_shots
execute if score picked_card pick_card_data matches 7 as @a[tag=picking_card] run function rounds:pick_card/assign_player/zero_gravity

# Teleport player back into the box
execute as @e[tag=pick_card_marker] at @s run tp @a[tag=picking_card] ^ ^3 ^10 facing entity @s

# Prepare for next picker
tag @a[tag=picking_card] remove pick_needed
tag @a remove picking_card
tag @e[type=interaction] remove picked_card
scoreboard players set pick_state pick_card_data 1
execute as @e[tag=pick_card,type=minecraft:interaction] run data merge entity @s {PortalCooldown:0}