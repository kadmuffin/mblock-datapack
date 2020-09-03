
scoreboard players add @e[tag=z_pointer,tag=!preprocessing,tag=!pause_load] sload_tick 1

execute as @e[tag=z_pointer,tag=!preprocessing,tag=!pause_load] at @s if score @s sload_tick >= waitPerRuns sload_tick run function song_load:loop/main
execute if entity @e[tag=z_pointer,tag=initial_moved,scores={sload_run=250..}] run function song_load:utils/loop/fail

execute unless entity @e[tag=z_pointer] if entity @e[tag=y_pointer] run function song_load:utils/loop/fail
execute unless entity @e[tag=z_pointer] if entity @e[tag=z_pointer_extra] run function song_load:utils/loop/fail
execute if score #operation_state sload_run matches 1 unless entity @e[tag=z_pointer] run function song_load:utils/loop/fail

tag @a remove load_question
tag @a remove load_menu

execute as @e[tag=asking,limit=1] at @s run function song_load:utils/loop/ask_load
execute as @e[tag=spacing,limit=1] if score @s sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/spaces
execute as @e[tag=reversing,limit=1] if score #x_length sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/reverse
execute as @e[tag=z_pointer,tag=!asking,limit=1] at @s run tag @p add load_menu
execute as @e[tag=z_pointer,tag=!asking,limit=1] at @s run tag @p add __menu