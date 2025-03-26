#
# Tries to assign a random card to a stall
#

# Tag the current stall
execute store result entity @e[tag=pick_card_marker,limit=1] PortalCooldown int 1 run scoreboard players get pick_state pick_card_data
function rounds:pick_card/tag_stall with entity @e[tag=pick_card_marker,limit=1]


execute if entity @e[tag=pick_card_current] run function rounds:pick_card/try_stall_card

execute if score pick_state pick_card_data matches 6 run scoreboard players set pick_state pick_card_data 0
