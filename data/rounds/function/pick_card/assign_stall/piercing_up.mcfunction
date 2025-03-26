#
# Piercing up card
#

data merge entity @e[tag=pick_card_current,tag=!description,type=minecraft:text_display,limit=1] {text:'{"text":"Piercing up","color":"#ff9efc"}'}
data merge entity @e[tag=pick_card_current,tag=description,type=minecraft:text_display,limit=1] {text:'[{"text":"• n+1 birds with n stone(s)\\n\\n• +1 piercing","color":"#ffffff"},{"text":"\\n• Stacks!","color":"#00ff00"}]'}
data merge entity @e[type=minecraft:item_display,tag=pick_card_current,limit=1] {item:{id:"minecraft:spectral_arrow",components:{enchantment_glint_override:false}}}
data merge entity @e[type=interaction,tag=pick_card_current,limit=1] {PortalCooldown:5}

tag @e remove pick_card_current
