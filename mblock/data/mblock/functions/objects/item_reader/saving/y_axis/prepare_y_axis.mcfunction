data modify entity @s Item.tag.y_data set value []

scoreboard players operation ylength _array_tmp = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize

#scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/y_axis_loop
execute store result score length _array_tmp run data get entity @s Item.tag.y_data
execute store result score length _array_tmp if score length _array_tmp matches 1 if data entity @s Item.tag.y_data[0] run data get entity @s Item.tag.y_data[0]

execute if score length _array_tmp matches 1.. run data modify entity @s[tag=!store_on_tmp_2] Item.tag.data.notes append from entity @s Item.tag.y_data
execute if score length _array_tmp matches 1.. run data modify entity @s[tag=store_on_tmp_2] Item.tag.tmp_2 append from entity @s Item.tag.y_data
