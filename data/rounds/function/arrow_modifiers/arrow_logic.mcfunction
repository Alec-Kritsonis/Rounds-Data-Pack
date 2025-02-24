#
# Arrow/bow/crossbow logic for bouts
#

# Run arrow velocity script whenever someone uses a bow or crossbow. Use distance instead of limit=1 to maintain multishot compatibility
execute as @a[scores={bow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!modified_arrow] run function rounds:arrow_modifiers/player_arrow_shoot
execute as @a[scores={crossbow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!modified_arrow] run function rounds:arrow_modifiers/player_arrow_shoot

# Run inground effects on all inground arrows, run gravity function on all arrows shot by players
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function rounds:arrow_modifiers/inground_effects
execute as @e[type=arrow,tag=player] run function rounds:arrow_modifiers/arrow_gravity
