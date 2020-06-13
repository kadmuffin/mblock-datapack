data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on X+\""

scoreboard players add #xsize aparse.xsize 1

scoreboard players set @s _aparse_tmp1 0

execute if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_x
execute if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_z

execute if score #xsize aparse.xsize >= @s aparse.xsize run scoreboard players reset @s _aparse_tmp1

scoreboard players set @s _array_tmp2 0
execute if score #xsize aparse.xsize >= @s aparse.xsize run tag @s add save_stage_3
execute if score #xsize aparse.xsize >= @s aparse.xsize run tag @s remove save_stage_2
