execute if entity @s[tag=!getting_tone,tag=!sneaking,tag=!_off_hand] run scoreboard players add #tone_scaled _mbtmp 1
execute if entity @s[tag=!getting_tone,tag=!sneaking,tag=!_off_hand] run particle minecraft:end_rod ~ ~1.3 ~ 0 0 0 0.05 1
execute if entity @s[tag=!getting_tone,tag=sneaking,tag=!_off_hand] run scoreboard players remove #tone_scaled _mbtmp 1
#execute if entity @s[tag=!getting_tone,tag=sneaking] run particle minecraft:angry_villager ~ ~0.7 ~ 0 0 0 0.1 0

execute if score #octave _mbtmp matches -1 run function mblock:objects/note_wand/plugins/note_changer/-1
execute if score #octave _mbtmp matches 1 run function mblock:objects/note_wand/plugins/note_changer/1
execute unless score #octave _mbtmp matches 1 unless score #octave _mbtmp matches -1 run function mblock:objects/note_wand/plugins/note_changer/0

scoreboard players operation #tone _mbtmp = #tone_scaled _mbtmp
function mblock:note/tone/set

playsound minecraft:block.bamboo.break block @s ~ ~ ~ 1 1.5 1

kill @e[tag=_toneName,distance=0..1]
