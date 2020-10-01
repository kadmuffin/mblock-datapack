scoreboard players reset song_xsize sload
scoreboard players reset song_ysize sload

execute store result score song_length sload run data get entity @s Item.tag.song.zsize
execute store result score song_xsize sload run data get entity @s Item.tag.data.notes
execute store result score song_ysize sload run data get entity @s Item.tag.song.ysize
execute store result score song_bpm sload run data get entity @s Item.tag.song.bpm

scoreboard players operation #middle sload_tmp2 = song_xsize sload
scoreboard players operation #middle sload_tmp2 /= #2 sload

execute if score song_xsize sload matches 1.. run function song_load:method/x_private/load
execute unless score song_xsize sload matches 1.. run title @p actionbar {"text":"Can't Load, Data.notes is empty!", "color": "red"}

tag @e[tag=z_pointer,limit=1] add mb_menu
tag @e[tag=z_pointer,limit=1] add load
tag @e[tag=z_pointer,limit=1] add asking
