scoreboard players remove #length sload_tmp 1
scoreboard players add #iter_count sload_tmp 1

data modify entity @s ArmorItems[3].tag.tmp2 append from entity @s ArmorItems[3].tag.data.notes[0][0][-1]
data remove entity @s ArmorItems[3].tag.data.notes[0][0][-1]

execute unless score #iter_count sload_tmp matches 50.. if score #length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse