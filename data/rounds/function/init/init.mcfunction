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
scoreboard objectives add pick_card_data dummy "Pick card data"

### Initialize scoreboards
scoreboard players set @a Player_Scales 100

### Maps
function rounds:maps/spawn_markers

### Card picking area
kill @e[tag=pick_card_marker]
execute positioned 0 56 0 run summon minecraft:marker 0 56 0 {Tags:["pick_card_marker"]}
execute at @e[tag=pick_card_marker] run function rounds:pick_card/load

### Effects
function rounds:reset/effects