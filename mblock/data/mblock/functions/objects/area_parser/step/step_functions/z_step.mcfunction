scoreboard players add @s _aparse_tmp2 1
tag @s add step_executed

tag @s[tag=!force_render,tag=skip_x] add __skip_x
tag @s[tag=!force_render,tag=skip_x] remove skip_x

tag @s[tag=!force_render,tag=!__skip_x] add skip_x
tag @s remove __skip_x
tag @s remove floor_line
tag @s remove force_render

function mblock_events:get_event
function mblock_events:box/main

scoreboard players operation #x_1 aparse.zsize = @s aparse.zsize
scoreboard players remove #x_1 aparse.zsize 1
execute as @s if score @s _aparse_tmp2 > #x_1 aparse.zsize run tag @s remove skip_x
execute as @s if score @s _aparse_tmp2 >= #x_1 aparse.zsize run tag @s remove step_executed
execute as @s[tag=!floor_line] if score @s _aparse_tmp2 > @s aparse.zsize run kill @s

function mblock:objects/area_parser/lib/utils/set_tags
execute if entity @s[tag=!skip_x,tag=!show_top,tag=!on_center] positioned ~ ~.5 ~ run function mblock:objects/area_parser/step/step_functions/summon_y
execute if entity @s[tag=!skip_x,tag=show_top] positioned ~ ~.5 ~ run function mblock:objects/area_parser/step/step_functions/summon_y

scoreboard players reset @s _aparse_tmp1
execute if entity @s[tag=!skip_x] run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

scoreboard players operation @s[tag=floor_line] _aparse_tmp2 = @s _aparse_tmp7

execute if entity @s[scores={aparse.dir=0},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_x
execute if entity @s[scores={aparse.dir=1},tag=!_not_pos_update] run function mblock:objects/area_parser/step/movement/z_step/depth_z

function mblock:objects/area_parser/lib/on_step_call


tag @s[tag=_not_pos_update] remove _not_pos_update

execute at @s unless entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..50] run kill @s
execute at @s if entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..70] run kill @s