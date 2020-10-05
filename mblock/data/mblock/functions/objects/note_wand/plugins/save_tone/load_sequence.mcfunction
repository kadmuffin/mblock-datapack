scoreboard players operation #tone _mbtmp = @s _mbtmp1
scoreboard players operation #sound _mbtmp = @s _aparse.tmp3
title @s actionbar {"text": "Tone Block loaded!","color":"green"}
playsound minecraft:block.coral_block.place block @s ~ ~ ~ 1 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.1 3
scoreboard players reset #sound_dir _mbtmp
execute unless score #sound _mbtmp = @s mbn.sound positioned ~ ~1 ~ run function mblock:objects/note_wand/plugins/save_tone/detect_dir
execute positioned ~ ~1 ~ run function mblock:note/tone/set
execute unless score #sound _mbtmp = @s mbn.sound positioned ~ ~1 ~ run function mblock:note/sound/set_dir

execute unless entity @s[tag=sneaking] run scoreboard players reset @s _mbtmp1
execute unless entity @s[tag=sneaking] run tag @s remove holding_block

execute as @s[tag=sneaking,nbt={OnGround:0b}] run scoreboard players reset @s _mbtmp1
execute as @s[tag=sneaking,nbt={OnGround:0b}] run tag @s remove holding_block

#execute positioned ~ ~1 ~ run function mblock:objects/note_wand/plugins/note_get/play_note
