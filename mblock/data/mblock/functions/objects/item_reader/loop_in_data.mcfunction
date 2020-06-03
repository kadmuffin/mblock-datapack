execute as @s[tag=!counting_air] run scoreboard players remove length _array_tmp 1

setblock ~ ~ ~ air
setblock ~ ~-1 ~ stripped_spruce_wood

particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 5

execute as @s[tag=!counting_air] store result score air_count _array_tmp run data get entity @s Item.tag.data[0].air
execute as @s[tag=!counting_air] if score air_count _array_tmp matches 1.. run tag @s add counting_air

execute as @s[tag=!counting_air] store result score #tone _mbtmp run data get entity @s Item.tag.data[0].tone
execute as @s[tag=!counting_air] store result score #sound _mbtmp run data get entity @s Item.tag.data[0].sound

execute as @s[tag=!counting_air] run function mblock:sound/tones/set_tone_block
execute as @s[tag=!counting_air] positioned ~ ~-1 ~ run function mblock:sound/sounds/set_sound_block

execute as @s[tag=counting_air] run scoreboard players remove air_count _array_tmp 1
execute as @s[tag=counting_air] unless score air_count _array_tmp matches 1.. run tag @s remove counting_air
execute as @s[tag=!counting_air] run data remove entity @s Item.tag.data[0]


execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/loop_in_data

execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/loop_in_data
execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/loop_in_data
