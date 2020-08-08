scoreboard players set @s sload_tick 0

function song_load:utils/summon/y_axis

#execute unless entity @e[tag=x_pointer] run function song_load:utils/summon/x_axis

execute as @e[tag=y_pointer] at @s run function song_load:loop/y_axis

execute as @s at @s if score @e[tag=y_pointer,limit=1] sload >= song_ysize sload run function song_load:utils/tp/move_main_pointer

execute if score @s sload >= song_length sload run function song_load:utils/end_process