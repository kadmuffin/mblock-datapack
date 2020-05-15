# > Clean and run depth
#
# Cleans the operation at start and end,
# files are split up depending on specified direction.

scoreboard players reset @s _aparse_tmp2

execute if entity @s[tag=x_axis] run function mblock:objects/area_parser/lib/movement/depth_x
execute if entity @s[tag=z_axis] run function mblock:objects/area_parser/lib/movement/depth_z

scoreboard players reset @s _aparse_tmp2
