execute if score ylength _array_tmp >= @s aparse.ysize run tag @s add on_y_zero

scoreboard players remove ylength _array_tmp 1
scoreboard players operation length _array_tmp = @s aparse.zsize

scoreboard players reset interal_zsize _array_tmp
scoreboard players reset air_count _array_tmp
scoreboard players reset total_air _array_tmp

execute store result score @s aparse.zsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
execute store result score @s aparse.ysize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
execute store result score @s aparse.xsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize


data modify entity @s Item.tag.z_data set value []

tag @s remove look_neg
tag @s remove skip_z_save
tag @s remove counting_air

execute if entity @e[tag=music_player,tag=look_neg,distance=0..1,limit=1] run tag @s add look_neg
execute if entity @e[tag=music_player,scores={aparse.dir=0},distance=0..1,limit=1] run scoreboard players set @s aparse.dir 0
execute if entity @e[tag=music_player,scores={aparse.dir=1},distance=0..1,limit=1] run scoreboard players set @s aparse.dir 1

execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~3 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~3 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks

execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-3 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-3 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks


execute store result score z_length _array_tmp run data get entity @s Item.tag.z_data
execute if score z_length _array_tmp matches 0..1 if data entity @s Item.tag.z_data[0].air unless data entity @s Item.tag.z_data[0].has_soundable run tag @s add skip_z_save
data modify entity @s[tag=!skip_z_save] Item.tag.data append from entity @s Item.tag.z_data

execute if entity @s[tag=!skip_z_save] run scoreboard players operation array_size _array_tmp += z_length _array_tmp

execute if entity @s[tag=on_y_zero] run scoreboard players operation estimated_zsize _array_tmp = interal_zsize _array_tmp
tag @s remove on_y_zero

execute positioned ~ ~1 ~ if score ylength _array_tmp matches 1.. run function mblock:objects/item_reader/saving/y_axis/y_axis_loop