#function song_load:utils/array/cycle_y
#function song_load:utils/array/cycle_x
scoreboard players reset #length sload_tmp
scoreboard players remove #x_length sload_tmp 1
scoreboard players reset #y_length sload_tmp

scoreboard players add #xsize_tmp sload_tmp 1
execute store result bossbar song_load:progress value run scoreboard players get #xsize_tmp sload_tmp

function song_load:utils/array/cycle_x