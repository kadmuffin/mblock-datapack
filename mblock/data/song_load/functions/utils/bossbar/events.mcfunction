bossbar set song_load:progress name "§7Parsing Events"
bossbar set song_load:progress value 0
execute store result bossbar song_load:progress max run scoreboard players get #events_length sload_tmp
bossbar set song_load:progress visible true
bossbar set song_load:progress color purple
