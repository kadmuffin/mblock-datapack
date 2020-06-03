execute as @s[tag=!disable_redirection,tag=direction_changed] run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize
execute as @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/step/movement/z_step/vertical
execute as @s[tag=!disable_redirection,tag=direction_changed] run scoreboard players reset @s _aparse_tmp
