#
# Checks for a winner
#

# Team winner
execute if score teams_alive Bout_Variables matches ..1 if score red_alive Bout_Variables matches 1.. run tag @a[team=Red] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score blue_alive Bout_Variables matches 1.. run tag @a[team=Blue] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score yellow_alive Bout_Variables matches 1.. run tag @a[team=Yellow] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score green_alive Bout_Variables matches 1.. run tag @a[team=Green] add bout_winner

# FFA winner
execute if score players_alive Bout_Variables matches ..1 run tag @a[tag=alive] add bout_winner
