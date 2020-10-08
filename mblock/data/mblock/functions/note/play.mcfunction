function #mb_plugin:play

execute if score #sound _mbtmp matches 0..7 run function mblock:note/sound/x_private/tree/play/0-7/main
execute if score #sound _mbtmp matches 8..15 run function mblock:note/sound/x_private/tree/play/8-15/main