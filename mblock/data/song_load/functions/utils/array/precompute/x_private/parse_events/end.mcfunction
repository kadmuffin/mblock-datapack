
tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ","color":"dark_gray"},{"text": "Preprocessing: Event Parsing finished!", "color":"green"}]

execute as @s[tag=copy_settings] run function song_load:utils/method/copy_settings_to_player

#execute as @s[tag=parse_events] run function song_load:utils/array/precompute/x_private/parse_events/x_cl
tag @s remove parse_events
tag @s remove preprocessing

function song_load:utils/bossbar/load
