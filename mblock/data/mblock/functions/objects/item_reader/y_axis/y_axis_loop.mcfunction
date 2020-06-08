# Notes: [ X: [ Z - Y0: [ ... ], Z - Y1: ... ] ]

scoreboard players remove ylength _array_tmp 1
execute store result score length _array_tmp run data get entity @s Item.tag.data.notes[0][0]

#scoreboard players add length _array_tmp 1

tag @s remove look_neg
tag @s remove counting_air

scoreboard players reset internal_zsize

tag @s[tag=_contains_events] add contains_events

data modify entity @s Item.tag.tmp_events set from entity @s Item.tag.data.events

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set @s aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set @s aparse.dir 1

data modify entity @s Item.tag.z_data set from entity @s Item.tag.data.notes[0][0]

execute if entity @s[tag=!self_align] if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~3 ~ ~ run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-3 ~ ~ run function mblock:objects/item_reader/loop_in_data


execute if entity @s[tag=self_align] if score length _array_tmp matches 1.. as @s run function mblock:objects/item_reader/loop_in_data

data remove entity @s Item.tag.data.notes[0][0]

#execute if entity @s[tag=on_y_zero] run scoreboard players operation estimated_zsize _array_tmp = internal_zsize _array_tmp
execute if entity @s[tag=on_y_zero] store result score events_length _array_tmp run data get entity @s Item.tag.data.events
execute if entity @s[tag=on_y_zero] if score events_length _array_tmp matches 1.. run tag @s add _contains_events

tag @s remove on_y_zero
tag @s remove y_zero

execute positioned ~ ~1 ~ if score ylength _array_tmp matches 1.. run function mblock:objects/item_reader/y_axis/y_axis_loop