tag @s remove save_stage_3

data modify entity @s CustomName set value "\"§8[MusicBlocks] §9Saving Blocks on Center\""

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/prepare_y_axis

playsound minecraft:block.anvil.land block @a[distance=0..10] ~ ~ ~ 0.2 1.8
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 5

scoreboard players set @s _array_tmp2 0
tag @s add save_stage_4

scoreboard players set #xsize aparse.xsize -1
