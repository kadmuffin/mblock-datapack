execute store result score song_length sload run data get entity @s Item.tag.song.zsize
execute store result score song_xsize sload run data get entity @s Item.tag.data.notes
execute store result score song_ysize sload run data get entity @s Item.tag.song.ysize
execute store result score song_bpm sload run data get entity @s Item.tag.song.bpm

scoreboard players operation #middle sload_tmp2 = song_xsize sload
scoreboard players operation #middle sload_tmp2 /= #2 sload
#scoreboard players remove #middle sload_tmp2 1


function song_load:utils/summon/summon
function song_load:utils/copy_data
execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box

tag @e[tag=z_pointer,limit=1] add load
tag @e[tag=z_pointer,limit=1] add asking
