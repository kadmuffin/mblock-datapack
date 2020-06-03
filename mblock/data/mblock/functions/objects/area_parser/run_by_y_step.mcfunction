# > Run by Step
#
# Builds each layer in several ticks
# instead of compressing it to one tick

execute as @s[tag=!_not_align] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled", "_new_schedule"]}
execute as @s[tag=_not_align] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled", "_new_schedule"]}

#execute align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["_scheduled","_new_schedule"],Age:-32760s,Particle:"block air"}

scoreboard players operation @e[tag=_new_schedule] aparse.dir = @s aparse.dir

execute as @s[tag=look_neg] run tag @e[tag=_new_schedule] add look_neg
execute as @s[tag=_ancled] run tag @e[tag=_new_schedule] add _ancled
execute as @s[tag=show_top] run tag @e[tag=_new_schedule] add show_top

execute as @e[tag=_new_schedule] store result score @s _aparse_tmp3 run data get entity @s Pos[0] 1
execute as @e[tag=_new_schedule] store result score @s _aparse_tmp4 run data get entity @s Pos[2] 1

scoreboard players operation @e[tag=_new_schedule] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=_new_schedule] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=_new_schedule] aparse.zsize = @s aparse.zsize
scoreboard players set @e[tag=_new_schedule] _aparse_tmp 0

tag @e[tag=_new_schedule] remove _new_schedule

execute unless entity @s[tag=step] run function mblock:objects/area_parser/step/schedule_y_step