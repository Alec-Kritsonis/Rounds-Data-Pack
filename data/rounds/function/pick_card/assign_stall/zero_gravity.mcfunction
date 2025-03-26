#
# Zero gravity card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Zero gravity","color":"#454545"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• Your arrows sail through\\nthe air, uneffected by\\nthe weight of the world","color":"#ffffff"},{"text":"\\n• Does not stack.","color":"#ff0000"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:feather",components:{enchantment_glint_override:false}}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:7}

tag @e remove pick_card_current
