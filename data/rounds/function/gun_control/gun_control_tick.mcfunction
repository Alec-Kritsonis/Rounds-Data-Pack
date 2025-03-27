#Timer Tick
execute as @a[tag=gamer] run scoreboard players add @s weapon_tick 1
#Reset Timer Tick If arrow is shot
execute as @a if score @s crossbow_uses matches 1.. run scoreboard players set @s weapon_tick 0
execute as @a if score @s crossbow_uses matches 1.. run scoreboard players remove @s curr_ammo 1 
execute as @a if score @s crossbow_uses matches 1.. run scoreboard players set @s crossbow_uses 0

#Give Crossbow
execute as @a if score @s curr_ammo matches 1.. if items entity @s weapon *[charged_projectiles=[]] if score @s weapon_tick = @s fire_rate run item replace entity @s hotbar.0 with crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
execute as @a if score @s curr_ammo matches ..0 if items entity @s weapon *[charged_projectiles=[]] if score @s weapon_tick = @s reload_time run function rounds:gun_control/gun_reload


