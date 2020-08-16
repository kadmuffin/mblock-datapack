scoreboard players set @s sload_tick 0
scoreboard players add @s sload_run 1

execute unless entity @a[distance=..35] run title @a actionbar {"text": "Teleporting to Pointer Position", "color": "gold"}
execute unless entity @a[distance=..35] at @s run gamemode spectator
execute unless entity @a[distance=..35] at @s run tp @p ~ ~2 ~

#execute unless entity @e[tag=x_pointer] run function song_load:utils/summon/x_axis

execute unless score @s[tag=!initial_moved] sload_run >= #min_mov sload_tick as @s at @s run function song_load:utils/tp/move_main_pointer
execute if score @s[tag=!initial_moved] sload_run >= #min_mov sload_tick run function song_load:utils/loop/main
execute if entity @s[tag=initial_moved] run function song_load:utils/loop/main
