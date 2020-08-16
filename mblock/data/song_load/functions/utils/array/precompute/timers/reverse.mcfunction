execute unless score #y_length sload_tmp matches 1.. store result score #y_length sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0]
execute unless score #length sload_tmp matches 1.. store result score #length sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0]


scoreboard players reset #iter_count sload_tmp
execute if score #length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse


execute unless score #length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse/length_is_zero
execute unless score #length sload_tmp matches 1.. unless score #y_length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse/y_length_is_zero

execute unless score #x_length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse/end_operation