#
# Fountain arrow card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Fountain shots","color":"#43d7ea"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• Arrows create a\\nfountain of arrows on\\ncontact with the ground\\n\\n• -1 damage","color":"#ffffff"},{"text":"\\n• Does not stack.","color":"#ff0000"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:splash_potion"}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:2}

tag @e remove pick_card_current