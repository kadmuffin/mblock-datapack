scoreboard players set #y_pos sload_tmp 0
#execute if score #x_pos sload_tmp = #x_event sload_tmp run tag @s add cycle_y
execute if score #x_pos sload_tmp = #x_event sload_tmp run function song_load:utils/array/precompute/x_private/parse_events/cycle_y
#execute as @s[tag=cycle_y] run function song_load:utils/array/precompute/x_private/parse_events/y_cl

scoreboard players add #x_pos sload_tmp 1
data modify entity @s ArmorItems[3].tag.data.events append from entity @s ArmorItems[3].tag.data.events[0]
data remove entity @s ArmorItems[3].tag.data.events[0]
execute unless score #x_pos sload_tmp >= song_xsize sload run function song_load:utils/array/precompute/x_private/parse_events/cycle_x