#
# Provides an xp bar countdown for players to unready before match starts.
# Set xp_timer AND player xp level to what you want outside this function.
# Manually control how fast to countdown using global_delay outside this function.
#

# TODO: Add a proper xp library for better xp bar control. Some people have datapacks that we might be able to use. Its not trivial.
xp add @a -1 levels
scoreboard players remove xp_timer Variables 1