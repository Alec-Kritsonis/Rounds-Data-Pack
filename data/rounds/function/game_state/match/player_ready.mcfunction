#
# Ready up for match.
#

tag @s add ready

item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='["",{"text":"Click to Unready","italic":false,"color":"red"}]']

scoreboard players reset @s carrot_uses
