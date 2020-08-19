execute if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s remove skip_x
execute if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add disable_redirection
execute if score @s _aparse_tmp2 >= @s aparse.zsize run function mblock:objects/area_parser/lib/block/check_direc