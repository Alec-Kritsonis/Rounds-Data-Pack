#
# Assigns player as picking player
#

tag @s add picking_card
execute at @e[tag=pick_card_marker] run tp @s ^ ^ ^3 180 0
title @s actionbar "Pick a card"