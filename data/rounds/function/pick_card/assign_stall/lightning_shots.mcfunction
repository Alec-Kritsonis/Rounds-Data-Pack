#
# Lighting arrow card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Lightning shots","color":"#ffff00"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• Arrows call down lightning\\non contact with the ground\\n\\n• -2 damage","color":"#ffffff"},{"text":"\\n• Does not stack.","color":"#ff0000"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:lightning_rod"}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:3}

tag @e remove pick_card_current