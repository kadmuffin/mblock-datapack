data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.tmp_events set value []
execute as @e[tag=z_pointer,limit=1] run data modify entity @s ArmorItems[3].tag.tmp_events set from entity @s ArmorItems[3].tag.data.events
data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.events set value []

#function song_load:utils/array/cycle_x

tag @s remove spacing
tag @s add fill_event
scoreboard players set #sp_count sload_tmp 0
function song_load:utils/array/precompute/x_private/fill_event/x
scoreboard players operation @s sload_tmp = song_xsize sload
#scoreboard players remove @s sload_tmp 1
scoreboard players set @s sload_tmp 0