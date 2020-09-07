execute store result score #events_length sload_tmp run data get entity @s ArmorItems[3].tag.tmp_events

function song_load:utils/bossbar/events

#function song_load:utils/array/precompute/x_private/parse_events/x_cl@stag @s remove fill_eventebscoreboard players reset @s sload_tmputexecute if score #events_length sload_tmp matches 1.. run tag @s add parse_eventsutexecute unless score #events_length sload_tmp matches 1.. run function song_load:utils/array/precompute/x_private/parse_events/endf #execute if score #events_length sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/parse_eventsore #execute if score #events_length sload_tmp matches 1.. run function song_load:utils/bossbar/eventssc#execute unless score #events_length sload_tmp matches 1.. run 