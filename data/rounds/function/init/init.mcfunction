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

# Create necessary scoreboards
scoreboard objectives add bow_used minecraft.used:minecraft.bow
scoreboard objectives add crossbow_used minecraft.used:minecraft.crossbow
scoreboard objectives add arrow_velocity dummy
scoreboard objectives add arrow_damage dummy
scoreboard objectives add arrow_piercing dummy
scoreboard objectives add arrow_gravity dummy
scoreboard objectives add adebug dummy "Arrow debugging"
