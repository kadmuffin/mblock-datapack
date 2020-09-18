
scoreboard players operation song_xmiddle sload = song_xsize sload
scoreboard players add song_xmiddle sload 1
scoreboard players operation song_xmiddle sload /= #2 sload

scoreboard players operation maxRuns_x sload_run = song_xsize sload
scoreboard players remove maxRuns_x sload_run 1
scoreboard players operation #maxDefault sload_run = maxRuns_x sload_run
scoreboard players operation #maxMin sload_run = song_xsize sload
scoreboard players remove #maxMin sload_run 5

scoreboard players reset #middle sload_tmp
execute as @e[tag=mplayer_block,limit=1] run function song_load:utils/summon/z_axis_2
scoreboard players reset #middle sload_tmp
execute as @e[tag=mplayer_block,limit=1] run function song_load:utils/summon/z_axis

execute as @e[tag=new_pointer] at @s facing entity @e[tag=z_pointer_extra,limit=1] eyes run tp ~ ~ ~
execute as @e[tag=z_pointer_extra] at @s facing entity @e[tag=z_pointer,limit=1] eyes run tp ~ ~ ~

execute as @e[tag=new_pointer] run function song_load:utils/load_dir
execute as @e[tag=z_pointer_extra] run function song_load:utils/load_dir

scoreboard players set @e[tag=new_pointer,limit=1] sload 0
tag @e[tag=__z_step,limit=1] remove __z_step