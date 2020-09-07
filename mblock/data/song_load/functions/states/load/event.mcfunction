function #mb_plugin:load/event

execute if data entity @s ArmorItems[3].tag.event run function song_load:states/load/events/built_in

execute if data entity @s ArmorItems[3].tag.event run function song_load:utils/events/x_private/event_out