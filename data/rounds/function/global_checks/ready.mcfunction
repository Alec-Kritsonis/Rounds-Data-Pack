#
# Checks if players click ready/unready.
#

execute as @a[scores={carrot_uses=1..}] if predicate rounds:holding/ready run function rounds:game_state/match/player_ready
execute as @a[scores={carrot_uses=1..}] if predicate rounds:holding/unready run function rounds:game_state/match/player_unready

scoreboard players reset @s carrot_uses

### Update all_ready
function rounds:global_checks/all_ready