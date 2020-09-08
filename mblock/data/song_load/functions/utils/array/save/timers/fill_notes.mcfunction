execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/save/x_private/fill_notes

execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp >= song_xsize sload run tag @s remove preprocessing
execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp >= song_xsize sload run tag @s remove fill_notes