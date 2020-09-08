execute store result score #count sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].count
scoreboard players add #count sload_tmp 1
execute store result entity @s ArmorItems[3].tag.data.notes[0][0][-1].count int 1 run scoreboard players get #count sload_tmp