# > On Step Air
# Put here any code that should be run 
# when a step function is call, for example,
# when the z axis is updated, we could 
# show a particle in the middle position.
#

# Example (show the path that the code is going through)
execute as @s[tag=_show_path] run particle sweep_attack ~ ~ ~

execute as @s if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/check_direc

