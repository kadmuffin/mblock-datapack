scoreboard players operation #tone _mbtmp = @s _mbtmp1
scoreboard players operation #sound _mbtmp = @s _aparse_tmp4
title @s actionbar {"text": "Tone Block loaded!","color":"green"}
playsound minecraft:block.coral_block.place block @s ~ ~ ~ 1 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.1 3
scoreboard players reset #sound_dir _mbtmp
execute positioned ~ ~1 ~ run function mblock:objects/note_wand/plugins/save_tone/detect_dir
execute positioned ~ ~1 ~ run function mblock:sound/sounds/xyz_private/set_sound_block_dir
execute positioned ~ ~1 ~ run function mblock:sound/tones/set_tone_block
scoreboard players reset @s[tag=!sneaking] _mbtmp1
tag @s[tag=!sneaking] remove holding_block

execute positioned ~ ~1 ~ run function mblock:objects/note_wand/plugins/note_get/play_note
