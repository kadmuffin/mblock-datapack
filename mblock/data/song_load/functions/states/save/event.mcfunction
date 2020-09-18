function #mb_plugin:save/event

execute as @s[tag=center,tag=floor] if block ~ ~ ~ black_glazed_terracotta run function song_load:states/save/event/stop
execute as @s[tag=center,tag=floor] if block ~ ~ ~ purple_glazed_terracotta run function song_load:states/save/event/repeat
execute as @s[tag=center,tag=floor] if block ~ ~ ~ magenta_glazed_terracotta run function song_load:states/save/event/move
execute as @s[tag=center,tag=floor] if block ~ ~ ~ blue_glazed_terracotta run function song_load:states/save/event/sound

execute if block ~ ~ ~ #mb_plugin:save/event run function song_load:utils/events/x_private/event_in
