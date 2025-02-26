#
# Sets up card picking stalls. Needs to be called AFTER all players have joined
#

# Initialize scoreboards
scoreboard players set @a arrow_gravity 100
scoreboard players set @a arrow_velocity 50
scoreboard players set @a arrow_damage 6
scoreboard players set @a arrow_piercing 0

# Reset bows
item replace entity @a enderchest.13 with minecraft:air
item replace entity @a enderchest.13 with minecraft:bow
execute as @a run function rounds:arrow_modifiers/bow_gravity
clear @a minecraft:bow

####### execute as @a run item replace entity @s hotbar.0 from entity @s enderchest.13 ####### used to give someone their bow from ender chest

# Get rid of any associated entities
kill @e[tag=pick_card]

# Create stalls and tag them
execute positioned ~-4 56 ~ run function rounds:pick_card/create_stall {stall_num:1,yaw:-22,pitch:0}
execute positioned ~-2 56 ~ run function rounds:pick_card/create_stall {stall_num:2,yaw:-11,pitch:0}
execute positioned ~0 056 ~ run function rounds:pick_card/create_stall {stall_num:3,yaw:0,pitch:0}
execute positioned ~2 056 ~ run function rounds:pick_card/create_stall {stall_num:4,yaw:11,pitch:0}
execute positioned ~4 056 ~ run function rounds:pick_card/create_stall {stall_num:5,yaw:22,pitch:0}

# Alternate stall title height for more room
execute as @e[tag=stall_2,tag=!description,type=minecraft:text_display] at @s run tp @s ~ ~0.3 ~
execute as @e[tag=stall_4,tag=!description,type=minecraft:text_display] at @s run tp @s ~ ~0.3 ~

# Shrink items and descriptions
execute as @e[type=item_display,tag=pick_card] run data merge entity @s {transformation:{scale:[0.75f,0.75f,0.75f]}}
execute as @e[tag=description,type=minecraft:text_display] run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]}}

##### TEST CODE #####
tag @e[tag=stall_1] add pick_card_current
function rounds:pick_card/assign_stall/explosive_shots
tag @e[tag=stall_2] add pick_card_current
function rounds:pick_card/assign_stall/fountain_shots
tag @e[tag=stall_3] add pick_card_current
function rounds:pick_card/assign_stall/lightning_shots
tag @e[tag=stall_4] add pick_card_current
function rounds:pick_card/assign_stall/damage_up
tag @e[tag=stall_5] add pick_card_current
function rounds:pick_card/assign_stall/piercing_up

tag @a add pick_needed
execute as @e[tag=pick_card_marker] at @s run tp @a ^ ^3 ^10 facing entity @s
execute as @r run function rounds:pick_card/assign_picking