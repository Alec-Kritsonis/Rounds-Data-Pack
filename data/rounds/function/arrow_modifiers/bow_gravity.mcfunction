#
# Execute this as a player holding a bow to assign gravity to the item given their scoreboard score
#

# Store player's arrow gravity score into storage
execute store result storage rounds:arrows gravity int 1 run scoreboard players get @s arrow_gravity

# Use item modifier to move stored value into custom NBT tag
item modify entity @s weapon.mainhand rounds:bow_assign_gravity