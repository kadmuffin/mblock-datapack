scoreboard players operation #tone _mbtmp = @s _mbtmp1
title @s actionbar {"text": "Tone Block loaded!","color":"green"}
playsound minecraft:block.coral_block.place block @s ~ ~ ~ 1 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.1 3
function mblock:sound/tones/set_tone_block
scoreboard players reset @s[tag=!sneaking] _mbtmp1
tag @s[tag=!sneaking] remove holding_block