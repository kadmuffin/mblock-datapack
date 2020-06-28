execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/loop_in_data
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/loop_in_data

execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/loop_in_data
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/loop_in_data
