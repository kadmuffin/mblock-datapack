execute store result score #count sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].count
scoreboard players remove #count sload_tmp 1

execute if score #count sload_tmp matches 1.. store result entity @s ArmorItems[3].tag.data.notes[0][0][-1].count int 1 run scoreboard players get #count sload_tmp
execute unless score #count sload_tmp matches 1.. run data remove entity @s ArmorItems[3].tag.data.notes[0][0][-1]