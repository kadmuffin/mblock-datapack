execute store result score #x_size sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0]
execute if score #x_size sload_tmp matches 1.. run function song_load:utils/array/save/x_private/clear/run_y
execute if score #x_size sload_tmp matches 0 if score #last_size sload_tmp matches 0 run tag @s add remove_item
execute if score #x_size sload_tmp matches 0 if score #last_size sload_tmp matches 1 if score @s sload_tmp matches 0 run tag @s add remove_item

execute as @s[tag=!remove_item] run data modify entity @s ArmorItems[3].tag.data.notes append from entity @s ArmorItems[3].tag.data.notes[0]
data remove entity @s ArmorItems[3].tag.data.notes[0]
tag @s remove remove_item

scoreboard players operation #last_size sload_tmp = #x_size sload_tmp

scoreboard players remove @s sload_tmp 1
execute unless score @s sload_tmp matches 0 run function song_load:utils/array/save/x_private/clear