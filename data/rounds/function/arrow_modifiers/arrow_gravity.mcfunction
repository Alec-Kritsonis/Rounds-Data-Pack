#
# Makes arrow gravity finely adjustable. Must be run every tick as all arrows, so it might get expensive to run
# 50 gravity feels about normal
#

# Disable inherent gravity
data merge entity @s {NoGravity:1b}

# Store arrow gravity and 
execute store result score y arrow_velocity run data get entity @s Motion[1] 1000
execute store result score gravity arrow_gravity run data get entity @e[type=arrow,limit=1] weapon.components.minecraft:custom_data.explode
scoreboard players operation y arrow_velocity -= DeepThought77 arrow_gravity
execute if score y arrow_velocity matches 50000.. run scoreboard players set y arrow_velocity 50000
execute if score y arrow_velocity matches ..-50000 run scoreboard players set y arrow_velocity -50000
execute store result entity @s Motion[1] double 0.001 run scoreboard players get y arrow_velocity