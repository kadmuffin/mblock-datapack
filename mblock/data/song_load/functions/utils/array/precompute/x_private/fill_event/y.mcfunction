scoreboard players add #sp_count sload_tmp 1

data modify entity @s ArmorItems[3].tag.data.events[0] append value []

execute if score #sp_count sload_tmp < song_ysize sload run function song_load:utils/array/precompute/x_private/fill_event/y