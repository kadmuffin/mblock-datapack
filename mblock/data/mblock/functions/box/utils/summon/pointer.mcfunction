summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [box_render, new_step]}

scoreboard players set @e[tag=new_step,limit=1] _box.travel 0
scoreboard players operation @e[tag=new_step,limit=1] mb.id = @s mb.id
scoreboard players operation @e[tag=new_step,limit=1] mb.dir = @s mb.dir
