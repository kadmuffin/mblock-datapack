scoreboard players add internal_zsize _array_tmp 1

setblock ~ ~ ~ air
execute if entity @s[tag=on_ground] run setblock ~ ~-1 ~ stripped_spruce_wood

execute as @s[tag=!counting_air] store result score air_count _array_tmp run data get entity @s Item.tag.z_data[0].air
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. run tag @s add counting_air

execute as @s[tag=!counting_air,tag=!counting_tone] run function mblock:objects/item_reader/utils/load_note_data

execute as @s[tag=!counting_air] run function mblock:sound/tones/set_tone_block
execute as @s[tag=!counting_air] run function mblock:sound/sounds/xyz_private/set_sound_block_dir

execute as @s[tag=counting_air] run scoreboard players remove air_count _array_tmp 1
execute as @s[tag=counting_air] unless score air_count _array_tmp matches 1.. run tag @s remove counting_air

execute as @s[tag=counting_tone] run scoreboard players remove tone_count _array_tmp 1
execute as @s[tag=counting_tone] unless score tone_count _array_tmp matches 1.. run tag @s remove counting_tone

execute as @s[tag=!counting_air,tag=!counting_tone] run function mblock:objects/item_reader/utils/not_counting

execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/utils/move_z
