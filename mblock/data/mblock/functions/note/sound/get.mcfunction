scoreboard players set #done _mbtmp 0

function #mb_plugin:sound/get

execute if score #done _mbtmp matches 0 if block ~ ~ ~ #mblock:sounds/0-7 run function mblock:note/sound/x_private/tree/get/0-7/main
execute if score #done _mbtmp matches 0 if block ~ ~ ~ #mblock:sounds/8-14 run function mblock:note/sound/x_private/tree/get/8-14/main
