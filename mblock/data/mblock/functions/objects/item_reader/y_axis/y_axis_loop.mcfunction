execute if score ylength _array_tmp = @s _array_tmp run tag @s add on_y_zero

scoreboard players remove ylength _array_tmp 1
execute store result score length _array_tmp run data get entity @s Item.tag.data[0]

tag @s remove look_neg
tag @s remove counting_air

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set @s aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set @s aparse.dir 1

data modify entity @s Item.tag.z_data set from entity @s Item.tag.data[0]

execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~3 ~ ~ run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-3 ~ ~ run function mblock:objects/item_reader/loop_in_data


execute if entity @s[tag=self_align] if score @s _array_tmp matches 1.. as @s run function mblock:objects/item_reader/loop_in_data

data remove entity @s Item.tag.data[0]

tag @s remove on_y_zero

execute positioned ~ ~1 ~ if score ylength _array_tmp matches 1.. run function mblock:objects/item_reader/y_axis/y_axis_loop