#
# Damage up card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Damage up","color":"#ae7578"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• More damage, more better!\\n\\n• +1 damage","color":"#ffffff"},{"text":"\\n• Stacks!","color":"#00ff00"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:arrow",components:{enchantment_glint_override:true}}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:4}

tag @e remove pick_card_current