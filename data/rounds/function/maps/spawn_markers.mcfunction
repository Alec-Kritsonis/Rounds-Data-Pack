#
# Resets and spawns map markers.
#

### Reset
kill @e[type=minecraft:marker,tag=map]

### Spawn
summon minecraft:marker 24 57 32 {Tags:["map", "Test_Blue"]}
summon minecraft:marker -28 57 32 {Tags:["map", "Test_Green"]}
summon minecraft:marker 24 57 -20 {Tags:["map", "Test_Red"]}
summon minecraft:marker -28 57 -20 {Tags:["map", "Test_Yellow"]}