scoreboard players reset song_xsize sload
scoreboard players reset song_ysize sload

execute store result score song_length sload run data get entity @s Item.tag.song.zsize
execute store result score song_xsize sload run data get entity @s Item.tag.data.notes
execute store result score song_ysize sload run data get entity @s Item.tag.song.ysize
execute store result score song_bpm sload run data get entity @s Item.tag.song.bpm

scoreboard players operation #middle sload_tmp2 = song_xsize sload
scoreboard players operation #middle sload_tmp2 /= #2 sload

function song_load:utils/summon/summon
function song_load:utils/copy_data
scoreboard players reset gb_sound sload
execute if entity @s[tag=self_align] store result score @e[tag=z_pointer,limit=1] mb_tmp2 run data get entity @s Item.tag.song.gb_sound
execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box
execute if entity @s[tag=!self_align] run tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block

tag @e[tag=z_pointer,limit=1] add mb_menu
tag @e[tag=z_pointer,limit=1] add load
tag @e[tag=z_pointer,limit=1] add asking
