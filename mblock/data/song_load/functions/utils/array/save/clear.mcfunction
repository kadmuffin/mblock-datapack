scoreboard players set #last_size sload_tmp 0
execute store result score @s sload_tmp run data get entity @s ArmorItems[3].tag.data.notes
function song_load:utils/array/save/x_private/clear