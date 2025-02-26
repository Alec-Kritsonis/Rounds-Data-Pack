#
# Create displays for card picking stalls
#

$summon minecraft:interaction ~ ~ ~ {Tags:["stall_$(stall_num)","pick_card"],response:true,height:4f}
$summon minecraft:item_display ~ ~0.75 ~0.25 {Tags:["stall_$(stall_num)","pick_card"],Rotation:[180f,0f],item:{id:"minecraft:smooth_stone"},teleport_duration:5}
$summon minecraft:text_display ~ ~3 ~ {Tags:["stall_$(stall_num)","pick_card"],Rotation:[$(yaw)f,$(pitch)f],text:"Temp",transformation:{scale:[0.5f,0.5f,0.5f]}}
$summon minecraft:text_display ~ ~1.5 ~ {Tags:["stall_$(stall_num)","pick_card","description"],Rotation:[$(yaw)f,$(pitch)f],text:"Temp",transformation:{scale:[0.5f,0.5f,0.5f]},alignment:"left"}
