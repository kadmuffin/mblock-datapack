function mblock:objects/area_parser/lib/block/check_block

execute positioned ~ ~ ~1 as @s[tag=!look_neg] run tp ~ ~ ~
execute positioned ~ ~ ~-1 as @s[tag=look_neg] run tp ~ ~ ~

