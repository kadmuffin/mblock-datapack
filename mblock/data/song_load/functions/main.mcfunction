
scoreboard players add @e[tag=z_pointer,tag=!preprocessing,tag=!pause_process] sload_tick 1

execute as @e[tag=z_pointer,tag=!preprocessing,tag=!pause_process] at @s if score @s sload_tick >= waitPerRuns sload_tick run function song_load:loop/main
execute if entity @e[tag=z_pointer,tag=initial_moved,scores={sload_run=250..}] run function song_load:utils/loop/fail

execute unless entity @e[tag=z_pointer] if entity @e[tag=y_pointer] run function song_load:utils/loop/fail
execute unless entity @e[tag=z_pointer] if entity @e[tag=z_pointer_extra] run function song_load:utils/loop/fail
execute if score #operation_state sload_run matches 1 unless entity @e[tag=z_pointer] run function song_load:utils/loop/fail

tag @a remove save_question
tag @a remove load_question
tag @a remove sload_menu

execute as @e[tag=asking,limit=1] at @s run function song_load:utils/loop/ask_load
execute as @e[tag=spacing,limit=1] if score @s sload_tmp matches 1.. run function song_load:utils/array/load/timers/spaces
execute as @e[tag=reversing,limit=1] if score #x_length sload_tmp matches 1.. run function song_load:utils/array/load/timers/reverse
execute as @e[tag=fill_event,limit=1] at @s run function song_load:utils/array/load/timers/fill_event
execute as @e[tag=parse_events,limit=1] at @s run function song_load:utils/array/load/timers/parse_events
execute as @e[tag=fill_notes,limit=1] at @s run function song_load:utils/array/save/timers/fill_notes
execute as @e[tag=z_pointer,tag=!asking,limit=1] at @s run tag @p add sload_menu
execute as @e[tag=z_pointer,tag=!asking,limit=1] at @s run tag @p[tag=!debug] add __menu

scoreboard players add @e[tag=load_event] sload_tmp 1
kill @e[tag=load_event,scores={sload_tmp=2..}]