execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/precompute/x_private/fill_event

execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp >= song_xsize sload run tag @s remove fill_event
execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp >= song_xsize sload run function song_load:utils/array/precompute/parse_events