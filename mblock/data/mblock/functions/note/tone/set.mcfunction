scoreboard players operation #tmp _mbtmp = #tone _mbtmp

execute if score #tone _mbtmp matches -24..-1 run setblock ~ ~1 ~ green_glazed_terracotta
execute if score #tone _mbtmp matches 25..48 run setblock ~ ~1 ~ red_glazed_terracotta

execute if score #tone _mbtmp matches -24..-1 run scoreboard players add #tone _mbtmp 25
execute if score #tone _mbtmp matches 25..48 run scoreboard players remove #tone _mbtmp 25

function mblock:note/tone/x_private/tree/set/main

scoreboard players operation #tone _mbtmp = #tmp _mbtmp