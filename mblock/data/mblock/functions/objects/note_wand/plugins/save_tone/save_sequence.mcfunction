scoreboard players operation @s _mbtmp1 = #tone _mbtmp
title @s actionbar {"text": "Tone Block saved!","color":"blue"}
playsound minecraft:block.coral_block.hit block @s ~ ~ ~ 1 1.2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.1 3
tag @s add holding_block

function mblock:objects/note_wand/plugins/note_get/play_note
