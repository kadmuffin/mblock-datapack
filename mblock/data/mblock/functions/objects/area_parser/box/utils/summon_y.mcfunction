execute as @s align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled", "y_step", "z_step", "_disable_z", "_new_schedule", "box_step"]}

scoreboard players operation @e[tag=_new_schedule] aparse.id = @s aparse.id

scoreboard players operation @e[tag=_new_schedule] mb.dir = @s mb.dir
scoreboard players operation @e[tag=_new_schedule] aparse.dir = @s aparse.dir
execute as @s[tag=!floor_line] run scoreboard players operation @e[tag=_new_schedule] mb.event = @s mb.event
execute as @s[tag=floor_line] run scoreboard players set @e[tag=_new_schedule] mb.event 0

execute as @s[tag=look_neg] run tag @e[tag=_new_schedule] add look_neg
execute as @s[tag=check_air] run tag @e[tag=_new_schedule] add check_air
execute as @s[tag=_ancled] run tag @e[tag=_new_schedule] add _ancled
execute as @s[tag=_ancled_pos] run tag @e[tag=_new_schedule] add _ancled_pos
execute as @s[tag=_show_path] run tag @e[tag=_new_schedule] add _show_path
execute as @s[tag=show_top] run tag @e[tag=_new_schedule] add show_top
execute as @s[tag=playing] run tag @e[tag=_new_schedule] add playing

scoreboard players operation @e[tag=_new_schedule] _aparse.tmp3 = @s aparse.ysize
scoreboard players remove @e[tag=_new_schedule] _aparse.tmp3 4

scoreboard players operation @e[tag=_new_schedule] mbn.sound = @s mbn.sound
scoreboard players operation @e[tag=_new_schedule] aparse.id = @s aparse.id
scoreboard players operation @e[tag=_new_schedule] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=_new_schedule] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=_new_schedule] aparse.zsize = @s aparse.zsize
scoreboard players operation @e[tag=_new_schedule] aparse.dir = @s aparse.dir
scoreboard players operation @e[tag=_new_schedule] _aparse.z = @s _aparse.z
execute as @s[tag=floor_line] run scoreboard players operation @e[tag=_new_schedule] _aparse.z = @s _aparse_tmp7
execute as @s[tag=!floor_line] run scoreboard players operation @e[tag=_new_schedule] _aparse.z = @s _aparse.z

scoreboard players set @e[tag=_new_schedule] _aparse.tmp 0
scoreboard players set @e[tag=_new_schedule] _aparse.x 0

execute if entity @s[tag=instant_y] as @e[tag=_new_schedule] at @s positioned ~ ~-1 ~ run function mblock:objects/area_parser/box/movement/z_box/vertical

tag @s remove instant_y
tag @e[tag=_new_schedule] remove _new_schedule

