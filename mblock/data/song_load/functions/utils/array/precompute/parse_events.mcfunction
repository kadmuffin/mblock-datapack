execute store result score #events_length sload_tmp run data get entity @s ArmorItems[3].tag.tmp_events

function song_load:utils/bossbar/events

#function song_load:utils/array/precompute/x_private/parse_events/x_cl
tag @s remove fill_event
scoreboard players reset @s sload_tmp
execute if score #events_length sload_tmp matches 1.. run tag @s add parse_events
execute unless score #events_length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/parse_events/end
#execute if score #events_length sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/parse_events

#execute if score #events_length sload_tmp matches 1.. run function song_load:utils/bossbar/events
#execute unless score #events_length sload_tmp matches 1.. run 
