scoreboard players reset #x_pos sload_tmp
execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/precompute/x_private/parse_events

execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp >= #events_length sload_tmp run function song_load:utils/array/precompute/x_private/parse_events/end