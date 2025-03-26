#
# Checks if anyone has won the amount of rounds needed to win the match.
#

# Team winner
execute if score Red Scoreboard >= RoundsToWin Settings run tag @e[team=Red] add match_winner
execute if score Blue Scoreboard >= RoundsToWin Settings run tag @e[team=Blue] add match_winner
execute if score Green Scoreboard >= RoundsToWin Settings run tag @e[team=Green] add match_winner
execute if score Yellow Scoreboard >= RoundsToWin Settings run tag @e[team=Yellow] add match_winner

# FFA winner
execute as @e[team=] if score @s Scoreboard >= RoundsToWin Settings run tag @s add match_winner