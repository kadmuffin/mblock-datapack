execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/save/x_private/clear

execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp matches ..0 run function song_load:utils/array/save/x_private/clear/end