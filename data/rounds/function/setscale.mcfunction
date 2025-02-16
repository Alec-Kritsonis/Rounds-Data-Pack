data modify storage minecraft:rounds AtriScale set value {"AtriScale":0}
execute as @a store result storage minecraft:rounds AtriScale.AtriScale int 1 run scoreboard players get @s MacroTest
function rounds:setscalemac with storage minecraft:rounds AtriScale