execute if entity @s[tag=!_offhand,tag=!getting_tone,scores={sneak=..0}] run scoreboard players add #tone _mbtmp 1
execute if entity @s[tag=!_offhand,tag=!getting_tone,scores={sneak=1..}] run scoreboard players remove #tone _mbtmp 1

execute if score #tone _mbtmp matches ..0 run scoreboard players set #tone _mbtmp 24
execute if score #tone _mbtmp matches 25.. run scoreboard players set #tone _mbtmp 0

function mblock:sound/tones/set_tone_block

playsound minecraft:block.bamboo.break block @a[distance=0..5] ~ ~ ~ 1 1.5 1

scoreboard players set @s carrot 0
kill @e[tag=_toneName,distance=0..1]
scoreboard players operation #last_direction _mbtmp = #direction _mbtmp
scoreboard players set #direction _mbtmp 1
function mblock:block/get_sound
scoreboard players operation #direction _mbtmp = #last_direction _mbtmp
function mblock:sound/play

scoreboard players set @s sneak 0