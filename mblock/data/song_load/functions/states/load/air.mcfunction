execute store result score #length sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0]

execute store result score #air sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][0].air

scoreboard players remove #air sload_tmp 1

execute unless score #air sload_tmp matches 0.. run data remove entity @s ArmorItems[3].tag.data.notes[0][0][0]

execute if score #air sload_tmp matches 0.. unless score #length sload_tmp matches 0..1 store result entity @s ArmorItems[3].tag.data.notes[0][0][0].air int 1 run scoreboard players get #air sload_tmp

execute if score #air sload_tmp matches 0.. if score #length sload_tmp matches 0..1 run data remove entity @s ArmorItems[3].tag.data.notes[0][0][0]
