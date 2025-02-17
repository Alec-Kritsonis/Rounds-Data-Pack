#
# Execute this as an arrow to run any inground effects we might want
# 

# Example explosive arrow (no actual explosion)
execute if entity @s[tag=explosivearrow] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=explosivearrow] run playsound minecraft:entity.generic.explode master @a ~ ~ ~

# Example bouncing arrow that launches explosive arrows
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.0d,0.8d,0.0d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,-0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,-0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}

execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.0d,1.0d,0.0d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.9d,0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.9d,-0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.9d,0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.9d,-0.1d],Tags:["explosivearrow","arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~
kill @s