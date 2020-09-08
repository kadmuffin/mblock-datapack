scoreboard players add @s sload_tmp 1

data modify entity @s ArmorItems[3].tag.data.notes append from entity @s ArmorItems[3].tag.data.notes[0]
data remove entity @s ArmorItems[3].tag.data.notes[0]

scoreboard players set #sp_count sload_tmp 0
function song_load:utils/array/save/x_private/fill_notes/y
