function mblock:note/utils/get_tone

execute if score @s mb.dir matches 0..5 run function mblock:note/utils/get_sound_dir
execute unless score @s mb.dir matches 0..5 run function mblock:note/utils/get_sound

scoreboard players set #block_is_valid _mbtmp 1