scoreboard players add @s sload_run 1
execute as @e[tag=z_pointer,limit=1] run function song_load:states/load/main

function song_load:utils/tp/move_x_pointer

particle witch ~ ~ ~ 0 0 0 0 1

execute as @s at @s unless score @s sload >= song_xsize sload if score @s sload_run < maxRuns_x sload_run unless score @s sload_run matches 100.. run function song_load:loop/x_axis