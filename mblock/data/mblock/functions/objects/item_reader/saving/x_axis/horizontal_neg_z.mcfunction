scoreboard players add @s _aparse_tmp1 1

execute unless score @s _aparse_tmp1 <= #xsize aparse.xsize positioned ~ ~-1 ~ run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 5
execute unless score @s _aparse_tmp1 <= #xsize aparse.xsize positioned ~ ~-1 ~ run playsound minecraft:block.anvil.land block @a[distance=0..10] ~ ~ ~ 0.2 1.8
execute unless score @s _aparse_tmp1 <= #xsize aparse.xsize positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/prepare_y_axis

execute positioned ~ ~ ~-1 if entity @s if score @s _aparse_tmp1 <= #xsize aparse.xsize run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_z
