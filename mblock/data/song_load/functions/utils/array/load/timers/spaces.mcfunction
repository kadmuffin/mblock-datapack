execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/load/x_private/spaces

execute unless score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ","color":"dark_gray"},{"text": "Preprocessing: Spaces finished!", "color":"green"}]
execute as @e[tag=z_pointer,limit=1] unless score @s sload_tmp matches 1.. run function song_load:utils/array/load/fill_event
execute as @e[tag=z_pointer,limit=1] unless score @s sload_tmp matches 1.. run tag @s remove spacing

#execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run schedule function song_load:utils/array/load/timers/spaces 1t