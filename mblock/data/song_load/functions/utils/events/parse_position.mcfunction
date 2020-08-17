scoreboard players reset #x_event sload_tmp
scoreboard players reset #y_event sload_tmp
scoreboard players reset #z_event sload_tmp

execute if data entity @s ArmorItems[3].tag.data.events[0].position run function song_load:utils/events/x_private/new_position
execute unless data entity @s ArmorItems[3].tag.data.events[0].position unless data entity @s ArmorItems[3].tag.data.events[0].z_pos run function song_load:utils/events/x_private/old_position