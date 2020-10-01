execute as @s[tag=!_not_align,scores={mb.dir=0}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=!_not_align,scores={mb.dir=1}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~-2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=!_not_align,scores={mb.dir=3}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=!_not_align,scores={mb.dir=2}] align xz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~-2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}

execute as @s[tag=_not_align,scores={mb.dir=0}] run summon minecraft:area_effect_cloud ~ ~ ~2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=_not_align,scores={mb.dir=1}] run summon minecraft:area_effect_cloud ~ ~ ~-2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=_not_align,scores={mb.dir=3}] run summon minecraft:area_effect_cloud ~2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}
execute as @s[tag=_not_align,scores={mb.dir=2}] run summon minecraft:area_effect_cloud ~-2 ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_scheduled2", "z_step", "_new_schedule", "box_step"]}

# Direction Table:
# South (z+) = 0
# North (z-) = 1
# West (x-) = 2
# East (x-) = 3

scoreboard players add .global aparse.id 1
scoreboard players operation @s aparse.id = .global aparse.id
scoreboard players operation @e[tag=_new_schedule] aparse.id = .global aparse.id
scoreboard players operation @e[tag=_new_schedule] mb.floor = @s mb.floor

scoreboard players operation @e[tag=_new_schedule] mbn.sound = @s mbn.sound
scoreboard players operation @e[tag=_new_schedule] mb.dir = @s mb.dir

execute as @s[tag=look_neg] run tag @e[tag=_new_schedule] add look_neg
execute as @s[tag=check_air] run tag @e[tag=_new_schedule] add check_air
execute as @s[tag=_ancled] run tag @e[tag=_new_schedule] add _ancled
execute as @s[tag=_ancled_pos] run tag @e[tag=_new_schedule] add _ancled_pos
execute as @s[tag=_show_path] run tag @e[tag=_new_schedule] add _show_path
execute as @s[tag=show_top] run tag @e[tag=_new_schedule] add show_top
tag @e[tag=_new_schedule] add __skip_x

scoreboard players operation @e[tag=_new_schedule] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=_new_schedule] aparse.ysize = @s aparse.ysize
execute if score @s aparse.ysize matches 2.. run scoreboard players remove @e[tag=_new_schedule] aparse.ysize 1

scoreboard players operation @e[tag=_new_schedule] aparse.zsize = @s aparse.zsize
scoreboard players operation @e[tag=_new_schedule] _aparse.x = @s aparse.zsize
scoreboard players set #2 aparse.zsize 2
scoreboard players operation @e[tag=_new_schedule] _aparse.x %= #2 aparse.zsize
scoreboard players set @e[tag=_new_schedule] _aparse.tmp 0
scoreboard players set @e[tag=_new_schedule] _aparse.z 0

tag @e[tag=_new_schedule] remove _new_schedule
