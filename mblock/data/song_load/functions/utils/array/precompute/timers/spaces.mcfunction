execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/precompute/x_private/spaces

execute as @e[tag=z_pointer,limit=1] unless score @s sload_tmp matches 1.. run tag @s remove space_precompute
execute unless score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run tellraw @a [{"text": "[MusicBlocks] ","color":"gray"},{"text": "PreCompute: Spaces finished!", "color":"green"}]

execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run schedule function song_load:utils/array/precompute/timers/spaces 1t