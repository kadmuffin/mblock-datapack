scoreboard players set #sound _mbtmp 0
scoreboard players set .last_sound _mbtmp 0

scoreboard players operation #sound _mbtmp = @s mb_tmp2
scoreboard players operation .last_sound _mbtmp = @s mb_tmp2

execute if score @s mb.dir matches -2 positioned ~ ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 0 positioned ~ ~1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 1 positioned ~ ~-1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 2 positioned ~1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 3 positioned ~-1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 4 positioned ~ ~ ~1 run function mblock:block/xyz_private/is_sound_block
execute if score @s mb.dir matches 5 positioned ~ ~ ~-1 run function mblock:block/xyz_private/is_sound_block
