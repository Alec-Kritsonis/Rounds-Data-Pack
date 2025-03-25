#
# Called every tick for match level logic.
#

### Lobby ready up
execute if score game_state Variables matches 0 as @a[tag=gamer] run function rounds:global_checks/ready

### Countdown display and cancel
execute if score game_state Variables matches 0 if score all_ready Variables matches 1 if score countdown_started Variables matches 0 run function rounds:game_state/match/countdown/start
execute if score game_state Variables matches 0 if score all_ready Variables matches 1 run scoreboard players set countdown_started Variables 1