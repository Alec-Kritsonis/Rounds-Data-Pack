#
# Called every tick for bout level logic.
#

### Updates
function rounds:arrow_modifiers/arrow_logic

function rounds:game_state/bout/updates/players_alive
function rounds:game_state/bout/updates/teams_alive

function rounds:gun_control/tick

### Checks
execute as @e[tag=gamer] run function rounds:game_state/bout/checks/winner

### Bout over
execute as @e[tag=gamer,tag=bout_winner,limit=1] run function rounds:game_state/bout/end