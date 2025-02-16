# say This runs every tick!

# Run arrow velocity script whenever someone uses a bow or crossbow
execute as @a[scores={bow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!yeet] run function rounds:gavin/player_arrow_velocity
execute as @a[scores={crossbow_used=1..}] at @s as @e[type=arrow,distance=..2,tag=!yeet] run function rounds:arrow_modifiers/player_arrow_velocity

# Reset scores
function rounds:reset/scores