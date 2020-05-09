execute if entity @a[tag=!_schedule] run scoreboard players set #sound _mbtmp 0
execute if entity @a[tag=!_schedule] run scoreboard players set #tone _mbtmp 0
tag @a[tag=!_schedule] add _schedule

execute at @a[tag=_schedule] run function mblock:sound/play

scoreboard players add #tone _mbtmp 1

execute if score #tone _mbtmp matches ..24 run schedule function mblock:sound/play_test 3t
execute unless score #tone _mbtmp matches ..24 run tag @a remove _schedule