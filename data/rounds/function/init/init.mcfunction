#
# This initializes all that is needed for Rounds.
#

### Teams

team add Red
team add Blue

team modify Red color dark_red
team modify Blue color dark_blue

team modify Red friendlyFire false
team modify Blue friendlyFire false

## Heath Scale 
scoreboard objectives add Player_Scales dummy
scoreboard players set @a Player_Scales 1
data modify storage minecraft:rounds temp set value {"AtriScale":0}