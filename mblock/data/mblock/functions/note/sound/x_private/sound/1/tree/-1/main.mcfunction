scoreboard players operation #t_tone _mbtmp = #tone _mbtmp
scoreboard players add #t_tone _mbtmp 24

execute if score #t_tone _mbtmp matches 0..12 run function mblock:note/sound/x_private/sound/1/tree/-1/0-12/main
execute if score #t_tone _mbtmp matches 13..24 run function mblock:note/sound/x_private/sound/1/tree/-1/13-24/main