scoreboard players operation #new_tone _mbtmp = #tone _mbtmp
scoreboard players add #new_tone _mbtmp 12

execute if score #new_tone _mbtmp matches 25.. run scoreboard players remove #new_tone _mbtmp 24
execute if score #tone _mbtmp matches 24 run scoreboard players set #new_tone _mbtmp 0

scoreboard players operation #tone _mbtmp = #new_tone _mbtmp

function mblock:sound/tones/set_tone_block

playsound minecraft:block.bamboo.break block @s ~ ~ ~ 1 1.5 1

kill @e[tag=_toneName,distance=0..1]