scoreboard players operation #x_pos sload_tmp = @e[tag=x_pointer,limit=1] sload
scoreboard players operation #y_pos sload_tmp = @e[tag=y_pointer,limit=1] sload
scoreboard players operation #z_pos sload_tmp = @s sload

execute if entity @s[tag=use_zpos] run function song_load:utils/events/x_private/push/old_pos
execute if entity @s[tag=!use_zpos] run function song_load:utils/events/x_private/push/new_pos
