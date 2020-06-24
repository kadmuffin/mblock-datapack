execute as @s[scores={aparse.dir=0}] positioned ~1 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=0}] positioned ~-1 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=1}] positioned ~ ~1 ~1 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=1}] positioned ~ ~1 ~-1 run function mblock:objects/music_player/plugins/note_player/utils/block_events


execute as @s[scores={aparse.dir=0},tag=middle_layer] positioned ~-2 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=0},tag=middle_layer] positioned ~2 ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=1},tag=middle_layer] positioned ~ ~1 ~-2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[scores={aparse.dir=1},tag=middle_layer] positioned ~ ~1 ~2 run function mblock:objects/music_player/plugins/note_player/utils/block_events
