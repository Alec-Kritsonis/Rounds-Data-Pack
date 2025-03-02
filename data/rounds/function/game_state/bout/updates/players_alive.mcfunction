#
# Updates the total number of players alive
#

scoreboard players set players_alive Bout_Variables 0

execute as @a[tag=alive] run scoreboard players add players_alive Bout_Variables 1