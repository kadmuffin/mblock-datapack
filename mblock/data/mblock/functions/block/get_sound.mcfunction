scoreboard players set #sound _mbtmp 0
scoreboard players set .last_sound _mbtmp 0

scoreboard players operation #sound _mbtmp = @s mb_tmp2
scoreboard players operation .last_sound _mbtmp = @s mb_tmp2

execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~ ~-1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~ ~1 ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~-1 ~ ~ run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~ ~ ~1 run function mblock:block/xyz_private/is_sound_block
execute if score #sound _mbtmp = .last_sound _mbtmp positioned ~ ~ ~-1 run function mblock:block/xyz_private/is_sound_block
