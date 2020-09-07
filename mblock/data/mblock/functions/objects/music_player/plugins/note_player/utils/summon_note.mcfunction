#execute if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..1.2,limit=1] run tellraw @a {"text": " "}
#execute if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..1.2,limit=1] run tellraw @a ["",{"score": {"objective":"mb_tmp2", "name": "@s"}},{"text":": "},{"score": {"objective":"mb_x_pos", "name": "@s"}},{"text":" "},{"score": {"objective":"mb_z_pos", "name": "@s"}}]
execute if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.7,limit=1] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves

#execute as @s[tag=south] positioned ~ ~ ~-0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.6] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
#execute as @s[tag=north] positioned ~ ~ ~0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.6] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
#execute as @s[tag=east] positioned ~-0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.6] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
#execute as @s[tag=west] positioned ~0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.6] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves

execute as @s[tag=south] positioned ~ ~ ~-0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.8] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=north] positioned ~ ~ ~0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.8] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=east] positioned ~-0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.8] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=west] positioned ~0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.8] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
