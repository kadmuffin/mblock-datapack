

execute if score #y_pos sload_tmp = #y_event sload_tmp run function song_load:utils/array/precompute/x_private/parse_events/push

scoreboard players add #y_pos sload_tmp 1
data modify entity @s ArmorItems[3].tag.data.events[0] append from entity @s ArmorItems[3].tag.data.events[0][0]
data remove entity @s ArmorItems[3].tag.data.events[0][0]
execute unless score #y_pos sload_tmp >= song_ysize sload run function song_load:utils/array/precompute/x_private/parse_events/cycle_y