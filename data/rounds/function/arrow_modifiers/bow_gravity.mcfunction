#
# Updates ender chest bow with current player gravity value
#

# Store player's arrow gravity score into storage
execute store result storage rounds:arrows gravity int 1 run scoreboard players get @s arrow_gravity

# Use item modifier to move stored value into custom NBT tag
item modify entity @s enderchest.13 rounds:bow_assign_gravity