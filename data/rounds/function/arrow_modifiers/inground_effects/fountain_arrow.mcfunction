#
# Example arrow that launches multiple arrows when it hits the ground
#

summon arrow ~ ~ ~ {Motion:[0.0d, 0.8d, 0.0d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[0.1d,0.7d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[-0.1d,0.7d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}

summon arrow ~ ~ ~ {Motion:[0.0d,1.0d,0.0d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[0.1d,0.9d,0.0d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[-0.1d,0.9d,0.0d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[0.0d,0.9d,0.1d],Tags:["arrowyeet"],PierceLevel:3b}
summon arrow ~ ~ ~ {Motion:[0.0d,0.9d,-0.1d],Tags:["arrowyeet"],PierceLevel:3b}
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 2