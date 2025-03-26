#
# Assign next stall as current
#

tag @e remove pick_card_current
$tag @e[tag=stall_$(PortalCooldown)] add pick_card_current