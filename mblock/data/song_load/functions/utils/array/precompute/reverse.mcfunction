execute store result score #x_length sload_tmp run data get entity @s ArmorItems[3].tag.data.notes
scoreboard players reset #y_length sload_tmp
scoreboard players reset #length sload_tmp
scoreboard players reset #xsize_tmp sload_tmp


#data modify entity @s ArmorItems[3].tag.tmp set from entity @s ArmorItems[3].tag.data.notes[0][0]
data modify entity @s ArmorItems[3].tag.tmp2 set value []

execute if score #x_length sload_tmp matches 1.. run tag @s add reversing
execute if score #x_length sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/reverse