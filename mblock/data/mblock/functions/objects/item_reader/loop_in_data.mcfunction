scoreboard players add internal_zsize _array_tmp 1
execute as @s[tag=!counting_air,tag=!counting_tone] run scoreboard players remove length _array_tmp 1

#scoreboard players reset #sound_dir _mbtmp


setblock ~ ~ ~ air
execute if entity @s[tag=on_y_zero] run setblock ~ ~-1 ~ stripped_spruce_wood

particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 5

execute as @s[tag=!counting_air] store result score air_count _array_tmp run data get entity @s Item.tag.z_data[0].air
#execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. if entity @s[tag=on_area] if data entity @s Item.tag.z_data[1].event run data modify entity @s Item.tag.z_data[0].air set value 1
#execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. if entity @s[tag=on_area] if data entity @s Item.tag.z_data[1].event store result score air_count _array_tmp run data get entity @s Item.tag.z_data[0].air
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. run tag @s add counting_air

scoreboard players reset #sound_dir _mbtmp

execute as @s[tag=!counting_air,tag=!counting_tone] store result score #tone _mbtmp run data get entity @s Item.tag.z_data[0].tone
execute as @s[tag=!counting_air,tag=!counting_tone] store result score #sound _mbtmp run data get entity @s Item.tag.z_data[0].sound
execute as @s[tag=!counting_air,tag=!counting_tone] store result score #sound_dir _mbtmp if data entity @s Item.tag.z_data[0].sound_dir run data get entity @s Item.tag.z_data[0].sound_dir
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. if block ~ ~-1 ~ #mblock:replace_enabled_blocks run scoreboard players set #sound_dir _mbtmp 0
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. run scoreboard players set #sound_dir _mbtmp 1
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir if score #sound_dir _mbtmp matches 0 if score #sound _mbtmp matches 2 if block ~ ~-2 ~ air run setblock ~ ~-2 ~ stripped_spruce_wood
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. if block ~1 ~ ~ #mblock:replace_enabled_blocks run scoreboard players set #sound_dir _mbtmp 2
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. if block ~-1 ~ ~ #mblock:replace_enabled_blocks run scoreboard players set #sound_dir _mbtmp 3
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. if block ~ ~ ~1 #mblock:replace_enabled_blocks run scoreboard players set #sound_dir _mbtmp 4
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. if block ~ ~ ~-1 #mblock:replace_enabled_blocks run scoreboard players set #sound_dir _mbtmp 5
execute as @s[tag=!counting_air,tag=!counting_tone] unless data entity @s Item.tag.z_data[0].sound_dir unless score #sound_dir _mbtmp matches 0.. run scoreboard players set #sound_dir _mbtmp 0
execute as @s[tag=!counting_air,tag=!counting_tone] store result score tone_count _array_tmp run data get entity @s Item.tag.z_data[0].count
execute as @s[tag=!counting_air,tag=!counting_tone] if score tone_count _array_tmp matches 1.. run tag @s add counting_tone
execute as @s[tag=!counting_air,tag=!counting_tone] if score tone_count _array_tmp matches 1.. run scoreboard players remove @s _

execute as @s[tag=!counting_air,tag=!overwrite_protection] run function mblock:sound/tones/set_tone_block
execute as @s[tag=!counting_air,tag=!overwrite_protection] run function mblock:sound/sounds/xyz_private/set_sound_block_dir


execute as @s[tag=counting_air] run scoreboard players remove air_count _array_tmp 1
execute as @s[tag=counting_air] unless score air_count _array_tmp matches 1.. run tag @s remove counting_air

execute as @s[tag=counting_tone] run scoreboard players remove tone_count _array_tmp 1
execute as @s[tag=counting_tone] unless score tone_count _array_tmp matches 1.. run tag @s remove counting_tone


execute as @s[tag=!counting_air,tag=!counting_tone,tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/events/load_events
execute as @s[tag=!counting_air,tag=!counting_tone,tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/events/load_events

execute as @s[tag=!counting_air,tag=!counting_tone,tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/events/load_events
execute as @s[tag=!counting_air,tag=!counting_tone,tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/events/load_events


execute as @s[tag=!counting_air,tag=!counting_tone] run data remove entity @s Item.tag.z_data[0]

execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/loop_in_data

execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/loop_in_data
