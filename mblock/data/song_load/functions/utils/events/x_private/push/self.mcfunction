scoreboard players operation #x_pos sload_tmp = @s sload
scoreboard players operation #y_pos sload_tmp = @s sload_tmp
scoreboard players operation #z_pos sload_tmp = @s sload_tmp2

execute if entity @s[tag=use_zpos] as @e[tag=z_pointer,limit=1] run function song_load:utils/events/x_private/push/old_pos
execute if entity @s[tag=!use_zpos] as @e[tag=z_pointer,limit=1] run function song_load:utils/events/x_private/push/new_pos
