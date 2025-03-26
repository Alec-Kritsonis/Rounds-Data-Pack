#
# Explosive arrow card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Explosive shots","color":"#df1111"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• Arrows explode on\\ncontact with the ground\\n\\n• -3 damage","color":"#ffffff"},{"text":"\\n• Does not stack.","color":"#ff0000"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:tnt",components:{enchantment_glint_override:false}}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:1}

tag @e remove pick_card_current
