tag @s remove _octave_found
execute if block ~ ~ ~ #mblock:octaves run tag @s add _octave_found
execute as @s[tag=_octave_found] run function mblock:note/utils/get_tone
execute as @s[tag=_octave_found] run function mblock:note/utils/get_sound
execute as @s[tag=_octave_found] unless score #tone _mbtmp matches -100 run function mblock:note/utils/limit_tone
