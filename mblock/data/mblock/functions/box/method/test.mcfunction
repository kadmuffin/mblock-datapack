execute unless entity @e[tag=test] run summon minecraft:armor_stand ~ ~ ~ {Tags:[test]}
scoreboard players operation @e[tag=test,limit=1] box.x = @s box.x
scoreboard players operation @e[tag=test,limit=1] box.y = @s box.y
scoreboard players operation @e[tag=test,limit=1] box.z = @s box.z
scoreboard players set @e[tag=test,limit=1] mb.dir 0
execute as @e[tag=test,limit=1] at @s unless entity @e[tag=box_render] run function mblock:box/utils/summon/z_pointer
