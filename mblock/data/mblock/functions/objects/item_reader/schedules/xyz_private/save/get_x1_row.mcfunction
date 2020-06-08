tag @s remove save_stage_2

data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on X-\""

execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_z

scoreboard players reset @s _aparse_tmp1
scoreboard players set @s _array_tmp2 0

tag @s add save_stage_3
