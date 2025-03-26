#
# Start the card picking process. Call once, then call tick repeatedly
#

# Teleport all players to the box
execute as @e[tag=pick_card_marker] at @s run tp @a ^ ^3 ^10 facing entity @s

# Reset tags
tag @a add pick_needed
tag @a remove picking_card
tag @a[tag=winner] remove pick_needed
