execute if entity @s[tag=!getting_tone,tag=!sneaking,tag=!_off_hand] run scoreboard players add #tone _mbtmp 1
execute if entity @s[tag=!getting_tone,tag=!sneaking,tag=!_off_hand] run particle minecraft:end_rod ~ ~1.3 ~ 0 0 0 0.05 1
execute if entity @s[tag=!getting_tone,tag=sneaking,tag=!_off_hand] run scoreboard players remove #tone _mbtmp 1
#execute if entity @s[tag=!getting_tone,tag=sneaking] run particle minecraft:angry_villager ~ ~0.7 ~ 0 0 0 0.1 0

execute if score #tone _mbtmp matches ..0 run scoreboard players set #tone _mbtmp 24
execute if score #tone _mbtmp matches 25.. run scoreboard players set #tone _mbtmp 0

function mblock:sound/tones/set_tone_block

playsound minecraft:block.bamboo.break block @s ~ ~ ~ 1 1.5 1

kill @e[tag=_toneName,distance=0..1]
#function mblock:objects/note_wand/plugins/note_get/play_note
