function mblock:block/get_tone

execute if score #direction _mbtmp matches 0..5 run function mblock:block/get_sound_dir
execute unless score #direction _mbtmp matches 0..5 run function mblock:block/get_sound
#function mblock:block/get_sound

scoreboard players set #block_is_valid _mbtmp 1