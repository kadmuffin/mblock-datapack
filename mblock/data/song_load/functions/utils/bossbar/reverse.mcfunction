bossbar add song_load:progress "§5Item Reader"
bossbar set song_load:progress players @a

bossbar set song_load:progress visible false
bossbar set song_load:progress name "§7Running Array.reverse()"
bossbar set song_load:progress value 0
execute store result bossbar song_load:progress max run scoreboard players get song_xsize sload
bossbar set song_load:progress visible true
bossbar set song_load:progress color blue
