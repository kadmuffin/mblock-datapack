data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on X+\""

scoreboard players add #xsize aparse.xsize 1

scoreboard players set @s _aparse_tmp1 0

execute if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
execute if score #xsize aparse.xsize < @s aparse.xsize if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_z

execute if score #xsize aparse.xsize >= @s aparse.xsize run scoreboard players reset @s _aparse_tmp1

scoreboard players set @s _array_tmp2 0
execute if score #xsize aparse.xsize >= @s aparse.xsize run scoreboard players set @s _array_tmp2 15
execute if score #xsize aparse.xsize >= @s aparse.xsize run tag @s add save_stage_5
execute if score #xsize aparse.xsize >= @s aparse.xsize run tag @s remove save_stage_4

execute if score #xsize aparse.xsize >= @s aparse.xsize run particle minecraft:cloud ~ ~-.3 ~ 0.1 0.1 0.1 0.1 20
execute if score #xsize aparse.xsize >= @s aparse.xsize run playsound minecraft:block.lava.extinguish block @a[distance=0..25] ~ ~ ~ 0.7 1.65

execute if score #xsize aparse.xsize >= @s aparse.xsize run scoreboard players operation counted_blocks _array_tmp = #bar_max _array_tmp
