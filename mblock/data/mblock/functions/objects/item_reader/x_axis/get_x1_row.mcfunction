#data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Loading Blocks on X-\""

scoreboard players remove #xsize aparse.xsize 1

scoreboard players set @s _aparse_tmp1 0
function mblock:objects/item_reader/utils/load_dir

execute if score @s aparse.xsize matches 2.. unless score #xsize aparse.xsize matches ..-1 if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/schedules/xyz_private/load/x_axis/horizontal_neg_x
execute if score @s aparse.xsize matches 2.. unless score #xsize aparse.xsize matches ..-1 if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/schedules/xyz_private/load/x_axis/horizontal_plus_z

execute if score @s aparse.xsize matches 2.. unless score #xsize aparse.xsize matches ..-1 run function mblock:objects/item_reader/x_axis/get_x1_row
