function #mb_plugin:sound/play

execute unless score #skip_play _mbtmp matches 1.. if score #sound _mbtmp matches 0..7 run function mblock:note/sound/x_private/tree/play/0-7/main
execute unless score #skip_play _mbtmp matches 1.. if score #sound _mbtmp matches 8..15 run function mblock:note/sound/x_private/tree/play/8-15/main

scoreboard players set #skip_play _mbtmp 0