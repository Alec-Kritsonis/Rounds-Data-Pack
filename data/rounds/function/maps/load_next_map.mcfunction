#
# Picks a random next map and loads the players into it.
#

# Select random map marker and spread players on it
# NOTE: Spread distance and radius are hardcoded to fit limited players and 30x30 map size. We might need S/M/L maps and
# checks for if the spread of X players is possible.
execute as @e[sort=random,tag=map,limit=1] at @s run spreadplayers ~ ~ 10 15 false @e[tag=gamer]