scoreboard objectives add sload dummy
scoreboard objectives add sload_tick dummy
scoreboard objectives add sload_run dummy
scoreboard objectives add sload_tmp dummy

# Defines the amount of max call of z loops
scoreboard players set maxRuns_x sload_run 6
scoreboard players set maxRuns_y sload_run -1
scoreboard players set waitPerRuns sload_tick -1
scoreboard players set #2 sload 2
scoreboard players set #4 sload 4

bossbar add song_load:progress "§5Item Reader"
bossbar set song_load:progress players @a