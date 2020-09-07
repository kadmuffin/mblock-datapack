execute store result score #count sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].air
scoreboard players remove #count sload_tmp 1
scoreboard players operation song_length_tmp sload_tmp += #count sload_tmp