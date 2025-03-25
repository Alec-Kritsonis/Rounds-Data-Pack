#
# Checks if all gamers are ready.
#

scoreboard players set all_ready Variables 1

execute as @a[tag=gamer] unless entity @s[tag=ready] run scoreboard players set all_ready Variables 0