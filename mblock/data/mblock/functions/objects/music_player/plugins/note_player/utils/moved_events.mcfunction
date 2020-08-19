function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=south] positioned ~ ~ ~-0.2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=north] positioned ~ ~ ~0.2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=east] positioned ~-0.2 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=west] positioned ~0.2 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=south] positioned ~ ~ ~-0.6 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=north] positioned ~ ~ ~0.6 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=east] positioned ~-0.6 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=west] positioned ~0.6 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=south,tag=!compress_bpm,scores={mb.bpm=665..}] positioned ~ ~ ~-1.2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=north,tag=!compress_bpm,scores={mb.bpm=665..}] positioned ~ ~ ~1.2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=east,tag=!compress_bpm,scores={mb.bpm=665..}] positioned ~-1.2 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=west,tag=!compress_bpm,scores={mb.bpm=665..}] positioned ~1.2 ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
