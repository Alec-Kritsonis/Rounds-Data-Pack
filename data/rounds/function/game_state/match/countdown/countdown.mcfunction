#
# Countdown start of match.
#

function rounds:ux/xp_countdown

execute if score xp_timer Variables matches 0 run scoreboard players set xp_timer Variables -1
execute if score xp_timer Variables matches -1 run scoreboard players add game_state Variables 1

execute if score xp_timer Variables matches -1 run function rounds:game_state/match/start

execute if score xp_timer Variables matches 0.. run schedule function rounds:game_state/match/countdown/countdown 1s