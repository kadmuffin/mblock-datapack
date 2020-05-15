tag @s remove on_side
tag @s remove on_side_center
tag @s remove on_center
tag @s remove on_corner
tag @s remove on_start
tag @s remove on_end

tag @s[scores={_aparse_tmp2=0..1}] add on_start
execute if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add on_end

execute if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add on_side
execute if score @s _aparse_tmp2 matches 0..1 run tag @s add on_side
execute if score @s[tag=running_x] _aparse_tmp1 >= @s aparse.xsize run tag @s add on_side

execute if score @s[tag=on_start] _aparse_tmp1 >= @s aparse.xsize run tag @s add on_corner
execute if score @s[tag=on_end] _aparse_tmp1 >= @s aparse.xsize run tag @s add on_corner

execute if score @s[tag=on_side,tag=!on_corner] _aparse_tmp matches 2.. if score @s _aparse_tmp < @s aparse.ysize run tag @s add on_side_center

