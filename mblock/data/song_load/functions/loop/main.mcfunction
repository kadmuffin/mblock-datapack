scoreboard players set waitNextTick sload_tick 0
scoreboard players set @s sload_tick 0
scoreboard players add @s sload_run 1


execute if entity @s[tag=initial_moved] run function song_load:utils/loop/main
execute if score @s[tag=!initial_moved] sload_run >= #min_mov sload_tick run function song_load:utils/loop/main
execute unless score @s[tag=!initial_moved] sload_run >= #min_mov sload_tick as @s at @s run function song_load:utils/tp/x_private/main_movement
