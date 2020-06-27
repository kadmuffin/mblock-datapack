execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes[0]

tag @s add on_ground
execute if score events_length _array_tmp matches 1.. run tag @s add _contains_events

scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp

execute if score ylength _array_tmp matches 1.. positioned ~ ~-1 ~ run function mblock:objects/item_reader/y_axis/y_axis_loop

data remove entity @s Item.tag.data.notes[0]
