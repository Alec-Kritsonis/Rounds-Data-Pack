#
# Called every tick to reset one time use scores (items used, etc.)
#

execute as @a[scores={bow_used=1..}] run scoreboard players set @s bow_used 0
execute as @a[scores={crossbow_used=1..}] run scoreboard players set @s crossbow_used 0

# Sync scores on arrow debugging scoreboard with whoever is tagged with arrow_debugger at the time
scoreboard players operation Velocity adebug = @a[tag=arrow_debugger] arrow_velocity
scoreboard players operation Damage adebug = @a[tag=arrow_debugger] arrow_damage
scoreboard players operation Piercing adebug = @a[tag=arrow_debugger] arrow_piercing
scoreboard players operation Gravity adebug = @a[tag=arrow_debugger] arrow_gravity
