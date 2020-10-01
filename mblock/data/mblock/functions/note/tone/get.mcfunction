execute if block ~ ~ ~ #mblock:octave_1 run function mblock:note/tone/x_private/tree/get/0-12/main
execute if block ~ ~ ~ #mblock:octave_2 run function mblock:note/tone/x_private/tree/get/13-23/main
execute if block ~ ~ ~ #mblock:octave_3 run scoreboard players set #tone _mbtmp 24

execute if block ~ ~1 ~ #mblock:octaves/extra run function mblock:note/tone/x_private/top_extra
execute unless block ~ ~1 ~ #mblock:octaves/extra if block ~ ~-1 ~ #mblock:octaves/extra run function mblock:note/tone/x_private/bottom_extra
