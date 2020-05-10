scoreboard players add #tone _mbtmp 1

execute if score #tone _mbtmp matches 25.. run scoreboard players set #tone _mbtmp 0

function mblock:sound/tones/get_tone_block

playsound minecraft:block.bamboo.break block @a[distance=0..5] ~ ~ ~ 1 1.5 1

scoreboard players set @s carrot 0
kill @e[tag=_toneName,distance=0..1]