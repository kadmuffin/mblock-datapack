function song_load:utils/summon/summon
function song_load:utils/copy_data
scoreboard players reset gb_sound sload
execute store result score @e[tag=z_pointer,limit=1] mb_tmp2 run data get entity @s Item.tag.song.gb_sound
execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box
execute if entity @s[tag=!self_align] run tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block
