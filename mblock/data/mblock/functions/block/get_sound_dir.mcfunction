scoreboard players set #sound _mbtmp 0

execute if score #direction _mbtmp matches -2 positioned ~ ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 0 positioned ~ ~1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 1 positioned ~ ~-1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 2 positioned ~1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 3 positioned ~-1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 4 positioned ~ ~ ~1 run function mblock:block/xyz_private/is_sound_block
execute if score #direction _mbtmp matches 5 positioned ~ ~ ~-1 run function mblock:block/xyz_private/is_sound_block
