data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on X-\""

scoreboard players remove #xsize aparse.xsize 1
scoreboard players add counted_blocks _array_tmp 1


scoreboard players set @s _aparse_tmp1 0

execute unless score #xsize aparse.xsize matches ..-1 if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
execute unless score #xsize aparse.xsize matches ..-1 if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_z

execute if score #xsize aparse.xsize matches ..-1 run scoreboard players reset @s _aparse_tmp1

scoreboard players set @s _array_tmp2 0
execute if score #xsize aparse.xsize matches ..-1 run tag @s add save_stage_3
execute if score #xsize aparse.xsize matches ..-1 run tag @s remove save_stage_2
