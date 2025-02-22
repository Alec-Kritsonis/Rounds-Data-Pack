#
# Resets and spawns map markers.
#

### Reset
kill @e[type=minecraft:marker,tag=map]

### Spawn
summon minecraft:marker 50.42 58.00 -138.46 {Tags:["map", "Test_Blue"]}
summon minecraft:marker -6.47 58.00 -138.67 {Tags:["map", "Test_Green"]}
summon minecraft:marker -6.49 58.00 -82.42 {Tags:["map", "Test_Red"]}
summon minecraft:marker 50.47 58.00 -82.57 {Tags:["map", "Test_Yellow"]}