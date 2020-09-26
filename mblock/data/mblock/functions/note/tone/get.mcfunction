execute if block ~ ~ ~ #mblock:octave_1 run function mblock:note/tone/x_private/tree/get/0-12/main
execute if block ~ ~ ~ #mblock:octave_2 run function mblock:note/tone/x_private/tree/get/13-23/main
execute if block ~ ~ ~ #mblock:octave_3 run scoreboard players set #tone _mbtmp 24

execute if block ~ ~1 ~ red_glazed_terracotta run scoreboard players add #tone _mbtmp 25
execute if block ~ ~1 ~ green_glazed_terracotta run scoreboard players remove #tone _mbtmp 25