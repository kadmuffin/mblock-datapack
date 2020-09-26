execute if score @s mb.dir matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #mblock:soundable run function mblock:note/utils/x_private/sound/bottom/main

execute if score @s mb.dir matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ #mblock:soundable run function mblock:note/utils/x_private/sound/top/main

execute if score @s mb.dir matches 2 positioned ~1 ~ ~ if block ~ ~ ~ #mblock:soundable run function mblock:note/utils/x_private/sound/x/main
