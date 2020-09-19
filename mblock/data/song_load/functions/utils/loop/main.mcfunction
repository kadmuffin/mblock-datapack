tag @s add initial_moved

execute unless entity @e[tag=y_pointer] run function song_load:utils/summon/y_axis

execute as @e[tag=y_pointer] at @s run function song_load:loop/y_axis

execute as @s at @s if score @e[tag=y_pointer,limit=1] sload >= song_ysize sload run function song_load:utils/tp/move_main_pointer

execute if score @s sload_mov >= song_length sload run function song_load:utils/end_process


#scoreboard players add @s sload_tmp3 1
#execute if score @e[tag=x_pointer,limit=1] sload >= song_xsize sload run function song_load:utils/tp/move_y_pointer
#execute as @s at @s unless score @s sload >= song_length sload if score @s sload_run < maxRuns_x sload_run unless score @s sload_run matches 50.. run function song_load:loop/y_axis