#
# Execute this as an arrow to run any inground effects we might want
# 

# Example explosive arrow (no actual explosion)
execute if entity @s[tag=explosivearrow] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=explosivearrow] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1

# Example bouncing arrow that launches explosive arrows - this should probably get moved to a seprate .mcfunction to skip having so many tag checks
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.0d, 0.8d, 0.0d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}

execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.0d,1.0d,0.0d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.9d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[0.1d,0.9d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.9d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run summon arrow ~ ~ ~ {Motion:[-0.1d,0.9d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}
execute if entity @s[tag=launcharrow] run playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 2

# Example lightning arrow
execute if entity @s[tag=lightningarrow] run summon minecraft:lightning_bolt ~ ~ ~

kill @s