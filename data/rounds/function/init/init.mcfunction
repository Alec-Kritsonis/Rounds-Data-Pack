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

### Health Scale
data modify storage minecraft:rounds temp_scale set value {"AtriScale":0}

### Create necessary scoreboards
scoreboard objectives add Variables dummy
scoreboard objectives add Bout_Variables dummy
scoreboard objectives add Scoreboard dummy
scoreboard objectives add Settings dummy
scoreboard objectives add Player_Scales dummy
scoreboard objectives add carrot_uses minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Global_Delay dummy
scoreboard objectives add bow_used minecraft.used:minecraft.bow
scoreboard objectives add crossbow_used minecraft.used:minecraft.crossbow
scoreboard objectives add arrow_velocity dummy
scoreboard objectives add arrow_damage dummy
scoreboard objectives add arrow_piercing dummy
scoreboard objectives add arrow_gravity dummy
scoreboard objectives add adebug dummy "Arrow debugging"

### Initialize scoreboards
scoreboard players set @a arrow_velocity 50
scoreboard players set @a arrow_damage 100
scoreboard players set @a Player_Scales 100
scoreboard players set @a arrow_gravity 100

scoreboard players set RoundsToWin Settings 3

### Maps
function rounds:maps/spawn_markers

### Effects
function rounds:reset/effects

### Gamerules
function rounds:init/gamerules