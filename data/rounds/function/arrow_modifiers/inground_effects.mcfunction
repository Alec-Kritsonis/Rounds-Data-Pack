#
# Execute this as an arrow to run any inground effects it has
# 

# Multiline effects are broken out into sub-functions
execute if entity @s[tag=explosivearrow] run function rounds:arrow_modifiers/inground_effects/explosive_arrow
execute if entity @s[tag=fountainarrow] run function rounds:arrow_modifiers/inground_effects/fountain_arrow

# Single line effects stay here
execute if entity @s[tag=lightningarrow] run summon minecraft:lightning_bolt ~ ~ ~

kill @s