#
# Called every tick to reset one time use scores (items used, etc.)
#

execute as @a[scores={bow_used=1..}] run scoreboard players set @s bow_used 0
execute as @a[scores={crossbow_used=1..}] run scoreboard players set @s crossbow_used 0
