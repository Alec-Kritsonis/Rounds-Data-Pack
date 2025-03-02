#Setup Boards
scoreboard objectives add reload_time dummy
scoreboard objectives add reload_time_remaining dummy
scoreboard objectives add fire_rate dummy
scoreboard objectives add curr_ammo dummy
scoreboard objectives add ammo_size dummy
scoreboard objectives add weapon_tick dummy
scoreboard objectives add crossbow_uses minecraft.used:minecraft.crossbow

#Set to default Value
scoreboard players set @a reload_time 50
scoreboard players set @a reload_time_remaining 50
scoreboard players set @a fire_rate 10
scoreboard players set @a curr_ammo 5
scoreboard players set @a ammo_size 5
scoreboard players set @a weapon_tick 0
scoreboard players set @a crossbow_uses 0
