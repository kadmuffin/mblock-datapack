scoreboard players operation #sound mbn.sound = @s mbn.sound
scoreboard players set @s mbn.sound 0
execute positioned ~ ~-1 ~ run function mblock:note/utils/get_sound

execute unless score #sound mbn.sound = #sound _mbtmp run particle firework ^ ^.7 ^.7 0.1 0.1 0.1 0.1 4
scoreboard players operation @s mbn.sound = #sound _mbtmp
title @s[tag=manual_gb_sound,scores={mbn.sound=1..}] actionbar {"text":"Sound Updated!","color": "gold"}
tag @s[scores={mbn.sound=1..}] add manual_gb_sound

title @s[tag=manual_gb_sound,scores={mbn.sound=0}] actionbar {"text":"Sound Restarted!","color": "green"}
tag @s[scores={mbn.sound=0}] remove manual_gb_sound
