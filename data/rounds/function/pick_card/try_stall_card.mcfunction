#
# 
#

# Roll random number from 1 to [amount of cards], try to tag the current stall with it
execute store result score next_card pick_card_data run random value 1..7
execute if score next_card pick_card_data matches 1 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:1}] run function rounds:pick_card/assign_stall/explosive_shots
execute if score next_card pick_card_data matches 2 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:2}] run function rounds:pick_card/assign_stall/fountain_shots
execute if score next_card pick_card_data matches 3 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:3}] run function rounds:pick_card/assign_stall/lightning_shots
execute if score next_card pick_card_data matches 4 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:4}] run function rounds:pick_card/assign_stall/damage_up
execute if score next_card pick_card_data matches 5 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:5}] run function rounds:pick_card/assign_stall/piercing_up
execute if score next_card pick_card_data matches 6 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:6}] run function rounds:pick_card/assign_stall/airburst_shots
execute if score next_card pick_card_data matches 7 unless entity @e[type=minecraft:interaction,nbt={PortalCooldown:7}] run function rounds:pick_card/assign_stall/zero_gravity

execute unless entity @e[tag=pick_card_current] run scoreboard players add pick_state pick_card_data 1