scoreboard players remove @s sload_tmp 1

function song_load:utils/array/cycle_x

execute store result score #array_size sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes[0]

execute if score #array_size sload_tmp matches 1.. if score #array_size sload_tmp < song_ysize sload run function song_load:utils/array/fill_spaces
