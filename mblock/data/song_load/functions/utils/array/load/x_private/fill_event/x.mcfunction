scoreboard players add #sp_count sload_tmp 1

data modify entity @s ArmorItems[3].tag.data.events append value []

execute unless score #sp_count sload_tmp >= song_xsize sload run function song_load:utils/array/load/x_private/fill_event/x