#
# Example explosive arrow
#

execute if entity @s[tag=explosivearrow] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=explosivearrow] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1