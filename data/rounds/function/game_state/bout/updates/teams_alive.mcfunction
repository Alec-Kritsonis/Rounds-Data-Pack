#
# Updates the total number of teams alive.
#

# Reset total alive
scoreboard players set red_alive Bout_Variables 0
scoreboard players set blue_alive Bout_Variables 0
scoreboard players set yellow_alive Bout_Variables 0
scoreboard players set green_alive Bout_Variables 0
scoreboard players set teams_alive Bout_Variables 0

# Set number of players alive on each team
execute as @a[tag=alive,team=Red] run scoreboard players add red_alive Bout_Variables 1
execute as @a[tag=alive,team=Blue] run scoreboard players add blue_alive Bout_Variables 1
execute as @a[tag=alive,team=Yellow] run scoreboard players add yellow_alive Bout_Variables 1
execute as @a[tag=alive,team=Green] run scoreboard players add green_alive Bout_Variables 1

# Add up total teams alive
execute if score red_alive Bout_Variables matches 1.. run scoreboard players add teams_alive Bout_Variables 1
execute if score blue_alive Bout_Variables matches 1.. run scoreboard players add teams_alive Bout_Variables 1
execute if score yellow_alive Bout_Variables matches 1.. run scoreboard players add teams_alive Bout_Variables 1
execute if score green_alive Bout_Variables matches 1.. run scoreboard players add teams_alive Bout_Variables 1

# Add FFA players as their own team
execute as @a[tag=alive,team=] run scoreboard players add teams_alive Bout_Variables 1