#
# Allows players to select their card
#

# If nobody is picking a card, assign a new picker
execute unless entity @a[tag=picking_card] as @r[tag=pick_needed] run function rounds:pick_card/assign_picking

# Detect when a card interaction is made, assign card
execute as @e[type=minecraft:interaction,tag=pick_card] run function rounds:pick_card/detect_interaction
execute as @e[tag=picked_card,limit=1] run function rounds:pick_card/assign_card

# Count how many players remain to pick cards using picks_remaining
scoreboard players set picks_remaining pick_card_data 0
execute as @a[tag=pick_needed] run scoreboard players add picks_remaining pick_card_data 1
