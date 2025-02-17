#
# This initializes all that is needed for Rounds.
#

### Teams
team add Red
team add Blue
team add Yellow
team add Green

team modify Red color dark_red
team modify Blue color dark_blue
team modify Yellow color yellow
team modify Green color green

team modify Red friendlyFire false
team modify Blue friendlyFire false
team modify Yellow friendlyFire false
team modify Green friendlyFire false

## Heath Scale 
scoreboard objectives add Player_Scales dummy
scoreboard players set @a Player_Scales 1
data modify storage minecraft:rounds temp set value {"AtriScale":0}
### Scoreboards
scoreboard objectives add Variables dummy

### Maps
function rounds:maps/spawn_markers