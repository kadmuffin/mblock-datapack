execute as @s[tag=!counting_air] run scoreboard players remove length _array_tmp 1

setblock ~ ~ ~ air
setblock ~ ~-1 ~ stripped_spruce_wood

particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 5

execute as @s[tag=!counting_air] store result score air_count _array_tmp run data get entity @s Item.tag.data[0].air
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. if entity @s[tag=on_area] if data entity @s Item.tag.data[1].event run data modify entity @s Item.tag.data[0].air set value 1
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. if entity @s[tag=on_area] if data entity @s Item.tag.data[1].event store result score air_count _array_tmp run data get entity @s Item.tag.data[0].air
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. run tag @s add counting_air

execute as @s[tag=!counting_air] store result score #tone _mbtmp run data get entity @s Item.tag.data[0].tone
execute as @s[tag=!counting_air] store result score #sound _mbtmp run data get entity @s Item.tag.data[0].sound

execute as @s[tag=!counting_air,tag=overwrite_protection] if block ~ ~ ~ air run function mblock:sound/tones/set_tone_block
execute as @s[tag=!counting_air,tag=overwrite_protection] positioned ~ ~-1 ~ if block ~ ~ ~ air run function mblock:sound/sounds/set_sound_block
execute as @s[tag=!counting_air,tag=overwrite_protection] positioned ~ ~-1 ~ if block ~ ~ ~ stripped_spruce_wood run function mblock:sound/sounds/set_sound_block
execute as @s[tag=!counting_air,tag=!overwrite_protection] run function mblock:sound/tones/set_tone_block
execute as @s[tag=!counting_air,tag=!overwrite_protection] positioned ~ ~-1 ~ run function mblock:sound/sounds/set_sound_block


execute as @s[tag=counting_air] run scoreboard players remove air_count _array_tmp 1
execute as @s[tag=counting_air] unless score air_count _array_tmp matches 1.. run tag @s remove counting_air

execute as @s[tag=!counting_air] store result score event_type _array_tmp run data get entity @s Item.tag.data[0].event
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 1 run setblock ~ ~ ~ black_glazed_terracotta
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 2 run setblock ~ ~ ~ purple_glazed_terracotta
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 store result score @s _aparse_tmp5 run data get entity @s Item.tag.data[0].dir
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=!on_area] run function mblock:objects/area_parser/lib/block/set_magenta
#execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=direction_protection] positioned ~ ~1 ~ run function mblock:objects/area_parser/lib/block/set_magenta
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=on_area] run setblock ~ ~ ~ pink_glazed_terracotta
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=on_area] run data modify entity @s Item.tag.data[1].air set value 1
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=!on_area] run function mblock:objects/area_parser/lib/block/set_dir_values
execute as @s[tag=!counting_air] if score event_type _array_tmp matches 3 if entity @s[tag=!on_area] run function mblock:objects/area_parser/lib/block/update_dir_values

execute as @s[tag=!counting_air] run data remove entity @s Item.tag.data[0]


execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/loop_in_data

execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/loop_in_data
