#data modify entity @s Item.tag.data
tag @s remove _in_wait_for_save

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Saving Song...","color":"gray"}]

execute store result score bpm _array_tmp run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.bpm int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.xsize int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
execute store result entity @s Item.tag.song.ysize int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
execute store result score @s aparse.zsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
execute store result score @s aparse.ysize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
execute store result score @s aparse.xsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize

scoreboard players add @s aparse.ysize 1
scoreboard players remove @s aparse.zsize 2

scoreboard players set counted_blocks _array_tmp 0

scoreboard players operation ylength _array_tmp = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
scoreboard players add ylength _array_tmp 1

scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp
scoreboard players set array_size _array_tmp 0

#scoreboard players reset total_air _array_tmp
#scoreboard players operation zsize _array_tmp = length _array_tmp

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"BPM: ","color":"gray"},{"score":{"objective":"mb.bpm","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color":"blue"}]
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Data Optimization: ","color":"gray"},{"text":"Enabled (by default)","color":"blue"}]
#execute if entity @s[tag=!optimize_data] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Data Optimization: ","color":"gray"},{"text":"Disabled","color":"red"}]

data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Storing Events...\""

tag @s add middle
tag @s add on_y_zero
tag @s add y_zero
execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/y_axis_loop
tag @s remove middle

tag @s add save_stage_2
tag @s add _save_scheduled

scoreboard players set @s _array_tmp2 0
scoreboard players reset counted_blocks _array_tmp
scoreboard players reset #bar_max _array_tmp
scoreboard players set #xsize aparse.xsize -1
