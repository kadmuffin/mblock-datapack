tag @s remove load_stage_3

data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on Center\""
scoreboard players add counted_blocks _array_tmp 1

tag @s add on_y_zero
tag @s add y_zero
execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/y_axis/prepare_y_axis
tag @s remove on_y_zero
tag @s remove y_zero

playsound minecraft:block.anvil.land block @a[distance=0..10] ~ ~ ~ 0.2 1.8
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 5

scoreboard players set @s _array_tmp2 0
tag @s add load_stage_4

scoreboard players set #xsize aparse.xsize -1
