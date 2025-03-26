#
# Checks for a winner
#

# Team winner
execute if score teams_alive Bout_Variables matches ..1 if score red_alive Bout_Variables matches 1.. run tag @e[team=Red] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score blue_alive Bout_Variables matches 1.. run tag @e[team=Blue] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score yellow_alive Bout_Variables matches 1.. run tag @e[team=Yellow] add bout_winner
execute if score teams_alive Bout_Variables matches ..1 if score green_alive Bout_Variables matches 1.. run tag @e[team=Green] add bout_winner

# FFA winner
execute if score players_alive Bout_Variables matches ..1 run tag @e[tag=alive] add bout_winner
