tag @s add _no_block
execute as @s at @s anchored eyes positioned ^ ^ ^.5 align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/item/note_viewer_proc 
execute as @s at @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/item/note_viewer_proc
execute as @s at @s anchored eyes positioned ^ ^ ^1.5 align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/item/note_viewer_proc
execute as @s at @s anchored eyes positioned ^ ^ ^2 align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/item/note_viewer_proc
execute as @s at @s anchored eyes positioned ^ ^ ^2.5 align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/item/note_viewer_proc
tag @s remove _no_block
#execute anchored eyes align xyz positioned ~.5 ~.5 ~.5 run particle note ~ ~ ~ 0 0 0 0 1
#execute anchored eyes align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ air run function mblock:block/player/item/note_viewer_proc
#execute if block ~ ~ ~ air if score @s _mbtmp matches ..6 positioned ~ ~-1.35 ~ positioned ^ ^ ^0.5 positioned ~ ~1.35 ~ run function mblock:block/player/item/note_viewer_func