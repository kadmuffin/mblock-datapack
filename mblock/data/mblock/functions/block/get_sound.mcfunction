scoreboard players set #sound _mbtmp 0

execute if score #sound _mbtmp matches 0 positioned ~ ~-1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp matches 0 positioned ~ ~1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp matches 0 positioned ~1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp matches 0 positioned ~-1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp matches 0 positioned ~ ~ ~1 run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp matches 0 positioned ~ ~ ~-1 run function mblock:block/xyz_private/is_sound_block
