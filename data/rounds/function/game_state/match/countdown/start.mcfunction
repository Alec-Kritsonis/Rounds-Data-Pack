#
# Kickoff countdown
#

xp set @a 5 levels
scoreboard players set xp_timer Variables 5

schedule function rounds:game_state/match/countdown/countdown 1s