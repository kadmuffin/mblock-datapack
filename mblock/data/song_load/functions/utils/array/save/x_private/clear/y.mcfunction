scoreboard players remove @s sload_tmp2 1

execute store result score #array_size sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0]
execute if score #array_size sload_tmp matches 0 unless score #last_size sload_tmp2 matches 1 run tag @s add no_skip
execute if score #array_size sload_tmp matches 0 unless score #last_size sload_tmp2 matches 1 run data remove entity @s ArmorItems[3].tag.data.notes[0][0]
execute if score #array_size sload_tmp matches 0 unless score #last_size sload_tmp2 matches 1 run scoreboard players remove #x_size sload_tmp 1

scoreboard players operation #last_size sload_tmp2 = #array_size sload_tmp

execute as @s[tag=!no_skip] run data modify entity @s ArmorItems[3].tag.data.notes[0] append from entity @s ArmorItems[3].tag.data.notes[0][0]
execute as @s[tag=!no_skip] run data remove entity @s ArmorItems[3].tag.data.notes[0][0]

tag @s remove no_skip

execute unless score @s sload_tmp2 matches 0 run function song_load:utils/array/save/x_private/clear/y