scoreboard objectives add sload dummy
scoreboard objectives add sload_mov dummy
scoreboard objectives add sload_tick dummy
scoreboard objectives add sload_run dummy
scoreboard objectives add sload_tmp dummy
scoreboard objectives add sload_tmp2 dummy
scoreboard objectives add sload_tmp3 dummy

# Defines the amount of max call of z loops
#scoreboard players set maxRuns_x sload_run 6
scoreboard players set maxRuns_y sload_run -1
scoreboard players set maxRuns_z sload_run -1
scoreboard players set waitPerRuns sload_tick -1

# Constants
scoreboard players set #20 sload 20
scoreboard players set #2 sload 2
scoreboard players set #3 sload 3
scoreboard players set #4 sload 4
scoreboard players set #-1 sload -1

bossbar add song_load:progress "§5Item Reader"
bossbar set song_load:progress players @a
