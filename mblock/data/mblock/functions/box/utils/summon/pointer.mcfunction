summon armor_stand ~ ~ ~ {Tags: [box_render, new_step]}

scoreboard players set @e[tag=new_step,limit=1] _box.travel 0
scoreboard players operation @e[tag=new_step,limit=1] mb.id = @s mb.id
scoreboard players operation @e[tag=new_step,limit=1] mb.dir = @s mb.dir