tag @s remove _octave_found
execute if block ~ ~ ~ #mblock:octaves run tag @s add _octave_found
execute as @s[tag=_octave_found] run function mblock:block/get_tone