scoreboard players add @s _aparse_tmp2 1
execute unless score @s _aparse_tmp2 < @s aparse.zsize run kill @s

function mblock:objects/area_parser/step/movement/z_step/vertical
scoreboard players reset @s _aparse_tmp

execute if entity @s[tag=x_axis] run function mblock:objects/area_parser/step/movement/z_step/depth_x
execute if entity @s[tag=z_axis] run function mblock:objects/area_parser/step/movement/z_step/depth_z

