function song_load:utils/summon/summon
function song_load:utils/copy_data
scoreboard players reset gb_sound sload
execute as @e[tag=z_pointer,limit=1] store result score gb_sound sload run data get entity @s ArmorItems[3].tag.song.gb_sound
execute if entity @s[tag=self_align] run scoreboard players operation @e[tag=z_pointer,limit=1] mbn.sound = gb_sound sload

execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box
execute if entity @s[tag=!self_align] run tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block
