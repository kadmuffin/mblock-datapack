execute as @e[tag=z_pointer,limit=1] run function song_load:utils/array/precompute/x_private/spaces

execute unless score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run tellraw @a [{"text": "[MusicBlocks] ","color":"gray"},{"text": "Preprocessing: Spaces finished!", "color":"green"}]
execute as @e[tag=z_pointer,limit=1] unless score @s sload_tmp matches 1.. run tag @s remove spacing
execute as @e[tag=z_pointer,limit=1] unless score @s sload_tmp matches 1.. run tag @s remove preprocessing

#execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run schedule function song_load:utils/array/precompute/timers/spaces 1t