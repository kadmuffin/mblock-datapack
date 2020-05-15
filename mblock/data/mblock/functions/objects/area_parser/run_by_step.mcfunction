# > Run by Step
#
# Builds each layer in several ticks
# instead of compressing it to one tick

execute align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["_scheduled","_new_schedule"],Age:-32760s,Particle:"block air"}

execute as @s[tag=x_axis] run tag @e[tag=_new_schedule] add x_axis
execute as @s[tag=z_axis] run tag @e[tag=_new_schedule] add z_axis
execute as @s[tag=!x_axis,tag=!z_axis] run tag @e[tag=_new_schedule] add x_axis
execute as @s[tag=x_axis,tag=z_axis] run tag @e[tag=_new_schedule] remove x_axis
execute as @s[tag=look_neg] run tag @e[tag=_new_schedule] add look_neg

scoreboard players operation @e[tag=_new_schedule] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=_new_schedule] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=_new_schedule] aparse.zsize = @s aparse.zsize
scoreboard players set @e[tag=_new_schedule] _aparse_tmp 0

tag @e[tag=_new_schedule] remove _new_schedule

function mblock:objects/area_parser/step/schedule