scoreboard players add @s _aparse_tmp2 1
tag @s add step_runned

tag @s[tag=skip_x] add __skip_x
tag @s[tag=skip_x] remove skip_x

tag @s[tag=!__skip_x] add skip_x
tag @s remove __skip_x

function mblock:objects/area_parser/step/step_functions/detect_event
execute if block ~ ~ ~ #mblock:event_block run tag @s add event_block

#execute as @s[tag=_ancled] unless score @s _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/step/reverse
#execute as @s[tag=_ancled_pos] at @s unless score @s _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/step/reverse_pos
scoreboard players operation #x_1 aparse.zsize = @s aparse.zsize
scoreboard players remove #x_1 aparse.zsize 1
execute as @s if score @s _aparse_tmp2 >= #x_1 aparse.zsize run tag @s remove skip_x
execute as @s unless score @s _aparse_tmp2 < @s aparse.zsize run kill @s

function mblock:objects/area_parser/lib/utils/set_tags
execute if entity @s[tag=!skip_x,tag=!show_top,tag=!on_center] run function mblock:objects/area_parser/step/step_functions/summon_y
execute if entity @s[tag=!skip_x,tag=show_top] run function mblock:objects/area_parser/step/step_functions/summon_y

execute if entity @s[tag=!skip_x] run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute if entity @s[scores={aparse.dir=0},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_x
execute if entity @s[scores={aparse.dir=1},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_z


function mblock:objects/area_parser/lib/on_step_call

tag @s[tag=_not_pos_update] remove _not_pos_update
tag @s remove event_block