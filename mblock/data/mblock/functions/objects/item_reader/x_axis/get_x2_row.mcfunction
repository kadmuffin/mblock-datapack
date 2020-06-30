data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Loading Blocks on X+\""

scoreboard players add #xsize aparse.xsize 1

scoreboard players set @s _aparse_tmp1 0

execute if score @s aparse.xsize matches 2.. if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/schedules/xyz_private/load/x_axis/horizontal_neg_x
execute if score @s aparse.xsize matches 2.. if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/schedules/xyz_private/load/x_axis/horizontal_neg_z

execute if score @s aparse.xsize matches 2.. if score #xsize aparse.xsize < @s aparse.xsize run function mblock:objects/item_reader/x_axis/get_x2_row
