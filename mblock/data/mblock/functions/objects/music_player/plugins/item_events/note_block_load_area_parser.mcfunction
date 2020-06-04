tag @s add disable_bpm
tag @s add disable_size
execute as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add self_align
execute as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/music_player/plugins/item_events/note_block_load
tag @s remove disable_bpm
tag @s remove disable_size
