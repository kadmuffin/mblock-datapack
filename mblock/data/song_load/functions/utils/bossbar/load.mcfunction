bossbar set song_load:progress name "§6Loading Song!"
bossbar set song_load:progress value 0
execute store result bossbar song_load:progress max run scoreboard players get song_length sload
bossbar set song_load:progress visible true
bossbar set song_load:progress color green
