#
# Ready up for match.
#

tag @s remove ready

item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='["",{"text":"Click to Ready","italic":false,"color":"green"}]']

scoreboard players reset @s carrot_uses
