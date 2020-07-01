execute as @s[tag=!disable_redirection,tag=direction_changed] run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize
#execute as @s[tag=!disable_redirection,tag=direction_changed] run tag @s add instant_y
execute as @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/step/step_functions/summon_y
execute as @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz