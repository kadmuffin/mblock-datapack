tag @s remove save_stage_3

data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on Center\""

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/prepare_y_axis

scoreboard players set @s _array_tmp2 0
tag @s add save_stage_4
