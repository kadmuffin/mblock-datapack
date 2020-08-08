execute store result score @e[tag=z_pointer,limit=1] sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes

execute as @e[tag=z_pointer,limit=1] if score @s sload_tmp matches 1.. run function song_load:utils/array/x_private/cycle_y