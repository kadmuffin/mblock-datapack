scoreboard players remove #length sload_tmp 1
scoreboard players add #iter_count sload_tmp 1

execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].count run function song_load:utils/array/precompute/x_private/reverse/add_count_note
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].air run function song_load:utils/array/precompute/x_private/reverse/add_count_air

data modify entity @s ArmorItems[3].tag.tmp2 append from entity @s ArmorItems[3].tag.data.notes[0][0][-1]
data remove entity @s ArmorItems[3].tag.data.notes[0][0][-1]

execute unless score #iter_count sload_tmp matches 50.. if score #length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/reverse