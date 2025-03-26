#
# Card picking logic
#

execute if score pick_state pick_card_data matches 1..5 run function rounds:pick_card/assign_stall_card
execute if score pick_state pick_card_data matches 0 run function rounds:pick_card/picking_logic
execute as @e[type=minecraft:item_display,tag=pick_card] at @s run tp @s ~ ~ ~ ~3 ~