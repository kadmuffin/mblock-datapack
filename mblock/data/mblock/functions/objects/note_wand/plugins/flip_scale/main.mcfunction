tag @s add switch_scale
execute if block ~ ~ ~ red_glazed_terracotta run function mblock:objects/note_wand/plugins/flip_scale/1
execute as @s[tag=switch_scale] if block ~ ~ ~ green_glazed_terracotta run setblock ~ ~ ~ red_glazed_terracotta
tag @s remove switch_scale
