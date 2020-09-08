scoreboard players add #sp_count sload_tmp 1

data modify entity @s ArmorItems[3].tag.data.notes[0] append value []

execute unless score #sp_count sload_tmp >= song_ysize sload run function song_load:utils/array/save/x_private/fill_notes/y