scoreboard players set #done _mbtmp 0

function #mb_plugin:sound/set

execute if score #done _mbtmp matches 0 if score #sound _mbtmp matches 0..7 run function mblock:note/sound/x_private/tree/set/0-7/main
execute if score #done _mbtmp matches 0 if score #sound _mbtmp matches 8..15 run function mblock:note/sound/x_private/tree/set/8-15/main