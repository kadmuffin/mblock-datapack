scoreboard players add @s _aparse.z 1
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
execute as @s if score @s _aparse.z > #x_1 aparse.zsize run tag @s remove skip_x
execute as @s if score @s _aparse.z >= #x_1 aparse.zsize run tag @s remove step_executed
execute as @s[tag=!floor_line] if score @s _aparse.z > @s aparse.zsize run kill @s

tag @s remove on_center
execute unless score @s _aparse.z matches 0..1 unless score @s _aparse.z >= @s aparse.zsize run tag @s add on_center

execute if entity @s[tag=!skip_x,tag=!show_top,tag=!on_center] positioned ~ ~.5 ~ run function mblock:objects/area_parser/box/step_functions/summon_y
execute if entity @s[tag=!skip_x,tag=show_top] positioned ~ ~.5 ~ run function mblock:objects/area_parser/box/step_functions/summon_y

scoreboard players reset @s _aparse.x
execute if entity @s[tag=!skip_x] if entity @a[distance=0..25] run function mblock:objects/area_parser/box/movement/run_x

scoreboard players operation @s[tag=floor_line] _aparse.z = @s _aparse_tmp7

execute if entity @s[scores={mb.dir=0..1},tag=!_not_pos_update] run function mblock:objects/area_parser/box/movement/z_box/depth_x
execute if entity @s[scores={mb.dir=2..3},tag=!_not_pos_update] run function mblock:objects/area_parser/box/movement/z_box/depth_z

####### Step Call
execute as @s[tag=_show_path] run particle sweep_attack ~ ~ ~

execute as @s[tag=!look_neg,scores={mb.dir=0..1}] positioned ~ ~ ~1 if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/checks/block/check_direc
execute as @s[tag=look_neg,scores={mb.dir=0..1}] positioned ~ ~ ~-1 if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/checks/block/check_direc
execute as @s[tag=!look_neg,scores={mb.dir=2..3}] positioned ~1 ~ ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/checks/block/check_direc
execute as @s[tag=look_neg,scores={mb.dir=2..3}] positioned ~-1 ~ ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/checks/block/check_direc
#############

tag @s[tag=_not_pos_update] remove _not_pos_update

execute at @s unless entity @e[tag=music_player,distance=0..60] unless entity @a[distance=0..90] run kill @s
execute at @s if entity @e[tag=music_player,distance=0..60] unless entity @a[distance=0..120] run kill @s