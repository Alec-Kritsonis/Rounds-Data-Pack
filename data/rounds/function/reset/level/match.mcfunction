#
# Reset everything to whats needed for the start of a match.
#

### Attributes
execute as @a run function rounds:reset/attributes

### Tags
tag @a remove spectator
tag @a remove ready

### Scores
scoreboard players set xp_timer Variables -1
scoreboard players set all_ready Variables 0
scoreboard players set countdown_started Variables 0

scoreboard objectives remove Scoreboard
scoreboard objectives add Scoreboard dummy
scoreboard objectives setdisplay sidebar Scoreboard
execute as @e[tag=gamer,team=FFA] run scoreboard players set @s Scoreboard 0
execute as @e[tag=gamer,team=Red] run scoreboard players set Red Scoreboard 0
execute as @e[tag=gamer,team=Blue] run scoreboard players set Blue Scoreboard 0
execute as @e[tag=gamer,team=Yellow] run scoreboard players set Yellow Scoreboard 0
execute as @e[tag=gamer,team=Green] run scoreboard players set Green Scoreboard 0

### Items
item replace entity @a hotbar.8 with carrot_on_a_stick[custom_name='["",{"text":"Click to Ready","italic":false,"color":"green"}]']