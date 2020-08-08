execute unless entity @e[tag=x_pointer,limit=1] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [x_pointer]}
execute as @e[tag=x_pointer] at @s run function song_load:loop/x_axis
#function song_load:utils/array/cycle_x

scoreboard players add @s sload_run 1
execute if score @e[tag=x_pointer,limit=1] sload >= song_xsize sload run function song_load:utils/tp/move_y_pointer
execute as @s at @s unless score @s sload >= song_ysize sload if score @s sload_run < maxRuns_y sload_run unless score @s sload_run matches 100.. run function song_load:loop/y_axis