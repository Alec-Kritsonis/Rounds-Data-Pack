#
# Airburst card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Airburst shots","color":"#cfd0f7"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• Launches an array of\\narrows near your target\\n\\n• +1 damage","color":"#ffffff"},{"text":"\\n• Does not stack.","color":"#ff0000"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:fire_charge",components:{enchantment_glint_override:false}}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:6}

tag @e remove pick_card_current
