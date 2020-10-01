scoreboard players add @s sload 1

execute as @e[tag=z_pointer,limit=1] if entity @s[tag=load] run function song_load:states/load/main
execute as @e[tag=z_pointer,limit=1] if entity @s[tag=save] run function song_load:states/save/main

function song_load:utils/tp/move_x_pointer

scoreboard players add @s sload_run 1
execute as @s at @s unless score @s sload >= song_xsize sload if score @s sload_run < maxRuns_x sload_run unless score @s sload_run matches 50.. run function song_load:loop/x_axis