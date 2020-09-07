scoreboard players add @s sload_tmp 1

data modify entity @s ArmorItems[3].tag.data.events append from entity @s ArmorItems[3].tag.data.events[0]
data remove entity @s ArmorItems[3].tag.data.events[0]

scoreboard players set #sp_count sload_tmp 0
function song_load:utils/array/load/x_private/fill_event/y
