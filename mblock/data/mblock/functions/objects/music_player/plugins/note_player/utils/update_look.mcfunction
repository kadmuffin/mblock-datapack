function mblock:objects/area_parser/lib/block/cast_dir_to_mbdir

execute as @s[scores={mb.dir=0}] at @s facing ~ ~ ~1 run tp ~ ~ ~
execute as @s[scores={mb.dir=3}] at @s facing ~1 ~ ~ run tp ~ ~ ~

execute as @s[scores={mb.dir=1}] at @s facing ~ ~ ~-1 run tp ~ ~ ~
execute as @s[scores={mb.dir=2}] at @s facing ~-1 ~ ~ run tp ~ ~ ~
