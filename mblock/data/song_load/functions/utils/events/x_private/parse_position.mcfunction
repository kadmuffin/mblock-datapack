tag @s remove fail_at_parse

scoreboard players reset #x_event sload_tmp
scoreboard players reset #y_event sload_tmp
scoreboard players reset #z_event sload_tmp

scoreboard players operation #index sload_tmp = #events_length sload_tmp
scoreboard players operation #index sload_tmp -= @s sload_tmp
tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ", "color": "dark_gray"}, {"text": "Parsing Event Position in data.events[ ","color": "gold"},{"score": {"name": "#index","objective": "sload_tmp"},"color": "blue"},{"text": " ]","color": "gold"}]

tag @s add pop2
execute if data entity @s[tag=pop2] ArmorItems[3].tag.tmp_events[-1].position run function song_load:utils/events/x_private/new_position
execute as @s[tag=pop2] if data entity @s ArmorItems[3].tag.tmp_events[-1].z_pos run function song_load:utils/events/x_private/old_position

execute as @s[tag=pop2] run function song_load:utils/events/x_private/default_positions/pop
execute as @s[tag=pop2] run tellraw @a[tag=debug] ["",{"text": " + ", "color": "red","hoverEvent": {"action": "show_text","value": "Error"}}, {"text": "Event didn't contain position data!"}]

tag @s remove pop2