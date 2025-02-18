#
# Ready up for match.
#

tag @s remove ready

item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='["",{"text":"Click to Ready","italic":false,"color":"green"}]']

scoreboard players reset @s carrot_uses

execute if score all_ready Variables matches 1 if score countdown_started Variables matches 1 run function rounds:game_state/match/countdown/cancel
