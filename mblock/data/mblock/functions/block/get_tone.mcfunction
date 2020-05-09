scoreboard players set #tone _mbtmp -1

execute if score #tone _mbtmp matches -1 if block ~ ~ ~ orange_concrete run scoreboard players set #tone _mbtmp 0
execute if score #tone _mbtmp matches -1 if block ~ ~ ~ magenta_concrete run scoreboard players set #tone _mbtmp 1
execute if score #tone _mbtmp matches -1 if block ~ ~ ~ light_blue_concrete run scoreboard players set #tone _mbtmp 2
