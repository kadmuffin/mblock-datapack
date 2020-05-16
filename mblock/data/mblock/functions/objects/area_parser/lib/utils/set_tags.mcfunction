tag @s remove on_side
tag @s remove on_side_center
tag @s remove on_center
tag @s remove on_corner
tag @s remove on_start
tag @s remove on_end
tag @s remove on_top
tag @s remove on_bottom
tag @s remove on_x_end
tag @s remove is_air

execute as @s[tag=check_air] if block ~ ~ ~ air run tag @s add is_air

tag @s[scores={_aparse_tmp2=0..1}] add on_start
tag @s[scores={_aparse_tmp=0..1}] add on_bottom
execute if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add on_end
execute if score @s _aparse_tmp1 >= @s aparse.xsize run tag @s add on_x_end
execute if score @s _aparse_tmp >= @s aparse.ysize run tag @s add on_top


tag @s[tag=on_end] add on_side
tag @s[tag=on_start] add on_side
tag @s[tag=on_x_end] add on_side

tag @s[tag=on_start,tag=on_x_end] add on_corner
tag @s[tag=on_end,tag=on_x_end] add on_corner

tag @s[tag=on_side,tag=!on_corner,tag=!on_bottom,tag=!on_top] add on_side_center