scoreboard players add @s[scores={_aparse_tmp2=1..}] _aparse_tmp2 1
scoreboard players add @s _aparse_tmp2 1

execute as @s at @s if block ~ ~ ~ magenta_glazed_terracotta if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add disable_redirection
execute as @s at @s if block ~ ~ ~ magenta_glazed_terracotta if score @s _aparse_tmp2 >= @s aparse.zsize run function mblock:objects/area_parser/lib/block/check_direc
execute as @s if block ~ ~ ~ black_glazed_terracotta run tag @s add forced_end
execute as @s if block ~ ~ ~ black_glazed_terracotta run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize
execute as @s if block ~ ~ ~ purple_glazed_terracotta run tag @s add repeating_end
execute as @s if block ~ ~ ~ purple_glazed_terracotta run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize
#execute as @s if block ~ ~ ~ black_glazed_terracotta run scoreboard players add @s _aparse_tmp2 1

execute as @s[tag=_ancled] unless score @s _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/step/reverse
execute as @s[tag=_ancled_pos] at @s unless score @s _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/step/reverse_pos
execute as @s[tag=!_ancled,tag=!_ancled_pos] unless score @s _aparse_tmp2 < @s aparse.zsize run kill @s

#function mblock:objects/area_parser/lib/block/check_for_dir

#execute as @s[tag=!look_neg,scores={aparse.dir=0}] at @s positioned ~ ~ ~1 if block ~ ~ ~ magenta_glazed_terracotta
#execute as @s[tag=look_neg,scores={aparse.dir=0}] at @s positioned ~ ~ ~-1
#execute as @s[tag=!look_neg,scores={aparse.dir=1}] at @s positioned ~1 ~ ~
#execute as @s[tag=look_neg,scores={aparse.dir=1}] at @s positioned ~-1 ~ ~

function mblock:objects/area_parser/lib/utils/set_tags
execute if entity @s[tag=!show_top,tag=!on_center] run function mblock:objects/area_parser/step/step_functions/summon_y
execute if entity @s[tag=show_top] run function mblock:objects/area_parser/step/step_functions/summon_y
#scoreboard players reset @s _aparse_tmp

function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute if entity @s[scores={aparse.dir=0},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_x
execute if entity @s[scores={aparse.dir=1},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_z


function mblock:objects/area_parser/lib/on_step_call

tag @s[tag=_not_pos_update] remove _not_pos_update
