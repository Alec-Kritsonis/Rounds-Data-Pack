#
# Detect if player has picked this card
#

execute store result score interaction_time pick_card_data run data get entity @s interaction.timestamp
execute if score interaction_time pick_card_data matches 1.. store result score picked_card pick_card_data run data get entity @s PortalCooldown
execute if score interaction_time pick_card_data matches 1.. run tag @s add picked_card
