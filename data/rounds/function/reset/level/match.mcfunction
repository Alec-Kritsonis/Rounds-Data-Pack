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
scoreboard players set xp_timer Variables -1
scoreboard players set all_ready Variables 0
scoreboard players set countdown_started Variables 0

### Items
item replace entity @a hotbar.8 with carrot_on_a_stick[custom_name='["",{"text":"Click to Ready","italic":false,"color":"green"}]']