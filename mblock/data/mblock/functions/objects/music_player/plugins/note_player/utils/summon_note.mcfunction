execute at @s positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves

execute as @s[tag=south] positioned ~ ~ ~-0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=north] positioned ~ ~ ~0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=east] positioned ~-0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=west] positioned ~0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves

execute as @s[tag=south] positioned ~ ~ ~-0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=north] positioned ~ ~ ~0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=east] positioned ~-0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
execute as @s[tag=west] positioned ~0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run function mblock:objects/music_player/plugins/note_player/block_events/mblock_octaves
