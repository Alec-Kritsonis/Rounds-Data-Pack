#
# Makes arrow gravity finely adjustable. Must be run every tick as all arrows, so it might get expensive to run
# 50 gravity feels about normal
#

# Use the air tag to give the arrows a timer. Using air instead of scoreboard so it doesn't flood a scoreboard
execute store result score timer arrow_gravity run data get entity @s Air
execute if score timer arrow_gravity matches ..0 run kill @s
scoreboard players remove timer arrow_gravity 1
execute store result entity @s Air short 1 run scoreboard players get timer arrow_gravity

# Disable inherent gravity
data merge entity @s {NoGravity:1b}

# Store arrow Y velocity and weapon gravity value into scoreboard
execute store result score y arrow_velocity run data get entity @s Motion[1] 1000
execute store result score gravity arrow_gravity run data get entity @s weapon.components.minecraft:custom_data.gravity

# Adjust Y velocity by gravity value, verify it's between the game speed limits
scoreboard players operation y arrow_velocity -= gravity arrow_gravity
execute if score y arrow_velocity matches 50000.. run scoreboard players set y arrow_velocity 50000
execute if score y arrow_velocity matches ..-50000 run scoreboard players set y arrow_velocity -50000

# Save new velocity back into the arrow
execute store result entity @s Motion[1] double 0.001 run scoreboard players get y arrow_velocity