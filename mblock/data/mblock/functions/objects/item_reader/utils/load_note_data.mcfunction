scoreboard players reset #sound_dir _mbtmp

execute store result score #tone _mbtmp run data get entity @s Item.tag.z_data[0].tone
execute store result score #sound _mbtmp run data get entity @s Item.tag.z_data[0].sound
execute store result score #sound_dir _mbtmp if data entity @s Item.tag.z_data[0].sound_dir run data get entity @s Item.tag.z_data[0].sound_dir

execute unless data entity @s Item.tag.z_data[0].sound_dir run function mblock:objects/item_reader/utils/xyz_private/sound_dir_not_specified

execute store result score tone_count _array_tmp run data get entity @s Item.tag.z_data[0].count
execute if score tone_count _array_tmp matches 1.. run tag @s add counting_tone
