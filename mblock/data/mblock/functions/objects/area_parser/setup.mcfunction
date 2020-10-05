scoreboard objectives add _aparse.tmp dummy
scoreboard objectives add _aparse.x dummy
scoreboard objectives add _aparse.z dummy

scoreboard objectives add aparse.xsize dummy
scoreboard objectives add aparse.ysize dummy
scoreboard objectives add aparse.zsize dummy
scoreboard objectives add aparse.id dummy

# Extras
scoreboard objectives add _aparse.tmp1 dummy
scoreboard objectives add _aparse.tmp2 dummy
scoreboard objectives add _aparse.tmp3 dummy

# Schedules functions at start
scoreboard players set schedule_y _aparse.tmp 0
scoreboard players set schedule_z _aparse.tmp 0

scoreboard players set #render_speed _aparse.tmp 1
scoreboard players set #-1 _aparse.tmp -1
scoreboard players set #2 _aparse.tmp 2
scoreboard players set #4 _aparse.tmp 4
scoreboard players set #5 _aparse.tmp 5