execute store result score song_length sload run data get entity @s Item.tag.song.zsize
execute store result score song_xsize sload run data get entity @s Item.tag.data.notes
execute store result score song_ysize sload run data get entity @s Item.tag.song.ysize
execute store result score song_bpm sload run data get entity @s Item.tag.song.bpm

function song_load:utils/summon/summon
function song_load:utils/copy_data
execute if entity @s[tag=self_align] run tag @e[tag=new_pointer] add in_box

tag @e[tag=new_pointer,limit=1] add load
tag @e[tag=new_pointer,limit=1] add asking
tag @e[tag=new_pointer] remove new_pointer