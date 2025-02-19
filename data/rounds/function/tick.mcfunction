# say This runs every tick!

# Run arrow velocity script whenever someone uses a bow or crossbow. Use distance instead of limit=1 to maintain multishot compatibility
# --------------- This should all get moved to a game tick rather than being in tick.mcfunction ---------------
execute as @a[scores={bow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!arrowyeet] run function rounds:arrow_modifiers/player_arrow_shoot
execute as @a[scores={crossbow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!arrowyeet] run function rounds:arrow_modifiers/player_arrow_shoot
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function rounds:arrow_modifiers/inground_effects
execute as @e[type=arrow,tag=player] run function rounds:arrow_modifiers/arrow_gravity

# When a player is holding a bow, assign their gravity value
execute as @a if items entity @s weapon.mainhand minecraft:bow run function rounds:arrow_modifiers/bow_gravity

# Reset scores
function rounds:reset/reset_scores
