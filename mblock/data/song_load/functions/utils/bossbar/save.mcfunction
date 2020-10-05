bossbar set song_load:progress visible false
bossbar set song_load:progress name "§aSaving Song!"
bossbar set song_load:progress value 0
execute store result bossbar song_load:progress max run scoreboard players get song_length sload
bossbar set song_load:progress color blue
bossbar set song_load:progress visible true
