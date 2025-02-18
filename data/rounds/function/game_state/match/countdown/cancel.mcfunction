#
# Cancel countdown.
#

scoreboard players set countdown_started Variables 0

xp set @a 0 levels
scoreboard players set xp_timer Variables 0

schedule clear rounds:game_state/match/countdown/countdown