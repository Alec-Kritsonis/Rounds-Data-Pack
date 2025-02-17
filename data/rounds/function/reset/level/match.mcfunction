#
# Reset everything to whats needed for the start of a match.
#

### Attributes
execute as @a run function rounds:reset/attributes

### Tags
tag @a remove spectator
tag @a remove ready

### Scores
scoreboard players set game_state Variables 0
scoreboard players reset ready_players Variables