#execute as @s[tag=!_not_align,tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule"]}
#execute as @s[tag=!_not_align,tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~-2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule"]}
#execute as @s[tag=!_not_align,tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule"]}
#execute as @s[tag=!_not_align,tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~-2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule"]}

execute as @s align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled", "y_step", "z_step", "_disable_z", "_new_schedule"]}

scoreboard players operation @e[tag=_new_schedule] aparse.id = @s aparse.id

scoreboard players operation @e[tag=_new_schedule] aparse.dir = @s aparse.dir

execute as @s[tag=look_neg] run tag @e[tag=_new_schedule] add look_neg
execute as @s[tag=check_air] run tag @e[tag=_new_schedule] add check_air
execute as @s[tag=_ancled] run tag @e[tag=_new_schedule] add _ancled
execute as @s[tag=_ancled_pos] run tag @e[tag=_new_schedule] add _ancled_pos
execute as @s[tag=_show_path] run tag @e[tag=_new_schedule] add _show_path
execute as @s[tag=show_top] run tag @e[tag=_new_schedule] add show_top
execute as @s[tag=playing] run tag @e[tag=_new_schedule] add playing
execute as @s[tag=repeating_end] run tag @e[tag=_new_schedule] add repeating_end
execute as @s[tag=dir_end] run tag @e[tag=_new_schedule] add dir_end

#execute as @e[tag=_new_schedule] at @s store result score @s _aparse_tmp3 run data get entity @s Pos[0] 10
#execute as @e[tag=_new_schedule] at @s store result score @s _aparse_tmp4 run data get entity @s Pos[2] 10

scoreboard players operation @e[tag=_new_schedule] aparse.id = @s aparse.id
scoreboard players operation @e[tag=_new_schedule] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=_new_schedule] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=_new_schedule] aparse.zsize = @s aparse.zsize
scoreboard players operation @e[tag=_new_schedule] aparse.dir = @s aparse.dir
scoreboard players operation @e[tag=_new_schedule] _aparse_tmp2 = @s _aparse_tmp2
scoreboard players set @e[tag=_new_schedule] _aparse_tmp 0
scoreboard players set @e[tag=_new_schedule] _aparse_tmp1 0

execute if entity @s[tag=instant_y] as @e[tag=_new_schedule] at @s positioned ~ ~-1 ~ run function mblock:objects/area_parser/step/movement/z_step/vertical

tag @s remove instant_y
tag @e[tag=_new_schedule] remove _new_schedule

