tag @s add dir_change

execute if score @s mb.dir = @s _aparse.tmp1 run tag @s remove dir_change

scoreboard players set @s[tag=save] sload_mov -1

scoreboard players operation @s mb.dir = @s _aparse.tmp1

scoreboard players reset @s _aparse.tmp1
scoreboard players operation @s _aparse.tmp2 = song_xsize sload
execute if entity @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/align_z

scoreboard players reset @s _aparse.tmp1
scoreboard players operation @s _aparse.tmp2 = #middle sload_tmp2
scoreboard players remove @s _aparse.tmp2 1
execute if entity @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/align_x

scoreboard players reset @e[tag=z_pointer_extra,limit=1] _aparse.tmp1
scoreboard players operation @e[tag=z_pointer_extra,limit=1] _aparse.tmp2 = song_xsize sload
scoreboard players remove @e[tag=z_pointer_extra,limit=1] _aparse.tmp2 2
execute if entity @s[tag=dir_change] at @s as @e[tag=z_pointer_extra,limit=1] run tp ~ ~ ~
execute if entity @s[tag=dir_change] as @e[tag=z_pointer_extra,limit=1] run function song_load:utils/events/x_private/built_in/align_extra_pointer

tag @s add valid_dir
tag @s remove dir_change