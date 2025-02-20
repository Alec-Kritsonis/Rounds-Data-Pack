#
# Execute this as an arrow to scale velocity by @p's arrow_velocity score. 1 = 2%, 50 = 100%
# Also changes damange and pierce level based on @p's respective scoreboard values
# 
# If the arrrow's resulting value is over 10 blocks/tick, the game resets it to zero. 166 seems to be fine for bows, 167 has this happen occasionally. This is about a 3.33 multiplier. Try to stay below 166. I did not test the max value with crossbows.
#

# Get X Y Z motion and store. Scale by 100 because you need decimals
execute store result score x arrow_velocity run data get entity @s Motion[0] 100
execute store result score y arrow_velocity run data get entity @s Motion[1] 100
execute store result score z arrow_velocity run data get entity @s Motion[2] 100

# Multiply by @p's arrow_velocity score
scoreboard players operation x arrow_velocity *= @p arrow_velocity
scoreboard players operation y arrow_velocity *= @p arrow_velocity
scoreboard players operation z arrow_velocity *= @p arrow_velocity

# Make sure velocity isn't out of bounds, set it to max/min if it is
execute if score x arrow_velocity matches 50000.. run scoreboard players set x arrow_velocity 50000
execute if score y arrow_velocity matches 50000.. run scoreboard players set y arrow_velocity 50000
execute if score z arrow_velocity matches 50000.. run scoreboard players set z arrow_velocity 50000
execute if score x arrow_velocity matches ..-50000 run scoreboard players set x arrow_velocity -50000
execute if score y arrow_velocity matches ..-50000 run scoreboard players set y arrow_velocity -50000
execute if score z arrow_velocity matches ..-50000 run scoreboard players set z arrow_velocity -50000

# Store velocity back in the arrow
execute store result entity @s Motion[0] double 0.0002 run scoreboard players get x arrow_velocity
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get y arrow_velocity
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get z arrow_velocity

# Get player's arrow damage score and move it to arrow's damage
execute store result entity @s damage double 1 run scoreboard players get @p arrow_damage
execute store result entity @s PierceLevel byte 1 run scoreboard players get @p arrow_piercing

# Add relevant tags for effects
tag @s add player
execute if data entity @s {weapon:{components:{"minecraft:custom_data":{explode:1}}}} run tag @s add explosivearrow
execute if data entity @s {weapon:{components:{"minecraft:custom_data":{fountain:1}}}} run tag @s add fountainarrow
execute if data entity @s {weapon:{components:{"minecraft:custom_data":{lightning:1}}}} run tag @s add lightningarrow

# Tag it so it doesn't get modified again
tag @s add arrowyeet