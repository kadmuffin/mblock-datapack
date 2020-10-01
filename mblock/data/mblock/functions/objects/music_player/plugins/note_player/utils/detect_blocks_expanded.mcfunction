execute as @s[scores={mb.dir=0..1}] positioned ~1 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=0..1}] positioned ~-1 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=2..3}] positioned ~ ~1 ~1 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=2..3}] positioned ~ ~1 ~-1 run function mblock:objects/music_player/plugins/note_player/utils/block_events


execute as @s[scores={mb.dir=0..1},tag=middle_layer] positioned ~-2 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=0..1},tag=middle_layer] positioned ~2 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=2..3},tag=middle_layer] positioned ~ ~1 ~-2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={mb.dir=2..3},tag=middle_layer] positioned ~ ~1 ~2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
