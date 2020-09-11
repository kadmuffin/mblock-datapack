tag @s add dir_change
#scoreboard players set waitNextTick sload_tick 2

execute if score @s mb.dir = @s _aparse_tmp5 run tag @s remove dir_change

scoreboard players set @s[tag=save] sload_mov -1

scoreboard players operation @s mb.dir = @s _aparse_tmp5

scoreboard players reset @s _aparse_tmp5
scoreboard players operation @s _aparse_tmp6 = #middle sload_tmp2
scoreboard players remove @s _aparse_tmp6 1
execute if entity @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/align_x

scoreboard players reset @s _aparse_tmp5
scoreboard players operation @s _aparse_tmp6 = song_xsize sload
scoreboard players remove @s[tag=save] _aparse_tmp6 1

execute if entity @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/align_z

scoreboard players reset @e[tag=z_pointer_extra,limit=1] _aparse_tmp5
scoreboard players operation @e[tag=z_pointer_extra,limit=1] _aparse_tmp6 = song_xmiddle sload
execute at @s as @e[tag=z_pointer_extra,limit=1] run tp ~ ~ ~
execute if entity @s[tag=dir_change] as @e[tag=z_pointer_extra,limit=1] run function song_load:utils/events/x_private/built_in/align_extra_pointer

tag @s remove dir_change
