#
# Tick runs every tick. Make sure checks are optimized or only as frequent as they need to be.
#

# Game state
# 0 - lobby
# 1 - bout
#

### 0 - Lobby
execute if score game_state Variables matches 0 as @a[tag=gamer] run function rounds:checks/ready
execute if score game_state Variables matches 0 if score all_ready Variables matches 1 if score countdown_started Variables matches 0 run function rounds:game_state/match/countdown/start
execute if score game_state Variables matches 0 if score all_ready Variables matches 1 run scoreboard players set countdown_started Variables 1

### 1 - bout
execute if score game_state Variables matches 1 run say WEEEEEEEEEEEE

### Global Delay Timer
scoreboard players add global_delay Global_Delay 1
execute if score global_delay Global_Delay matches 20 run scoreboard players set global_delay Global_Delay 0