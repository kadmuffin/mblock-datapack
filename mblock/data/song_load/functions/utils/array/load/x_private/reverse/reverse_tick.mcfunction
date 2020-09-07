execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/load/timers/reverse
execute if entity @e[tag=z_pointer,limit=1] if score #x_length sload_tmp matches 1.. run schedule function song_load:utils/array/load/x_private/reverse/reverse_tick 1t
