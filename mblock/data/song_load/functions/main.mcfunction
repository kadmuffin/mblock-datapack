scoreboard players add @e[tag=z_pointer,tag=!space_precompute] sload_tick 1

execute as @e[tag=z_pointer,tag=!space_precompute] at @s if score @s sload_tick >= waitPerRuns sload_tick run function song_load:loop/main
execute as @e[tag=z_pointer,tag=!space_precompute] run scoreboard players set @s sload_run 0