#
# Reload player's hand with a loaded gun.
#

execute as @s run item replace entity @s hotbar.0 with crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
execute as @s run scoreboard players operation @s curr_ammo = @s ammo_size
