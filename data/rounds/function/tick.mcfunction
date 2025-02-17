#
# Tick runs every tick. Make sure checks are optimized or only as frequent as they need to be.
#

# Game state
# 0 - lobby
# 1 - bout
#

### 0 - Lobby
execute if score game_state Variables matches 0 as @a[tag=gamer] run function rounds:checks/ready

### Global Delay Timer
scoreboard players add global_delay Global_Delay 1
execute if score global_delay Global_Delay matches 20 run scoreboard players set global_delay Global_Delay 0