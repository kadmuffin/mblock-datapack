scoreboard players operation internal_zsize _array_tmp -= @s aparse.zsize
scoreboard players operation length _array_tmp = @s aparse.zsize

tag @s add magenta_terracotta

execute if entity @s[tag=!on_area] if entity @s[tag=y_zero] run function mblock:objects/area_parser/lib/block/set_magenta
execute if entity @s[tag=!on_area] if entity @s[tag=y_zero] run function mblock:objects/area_parser/lib/block/set_dir_from_score
execute if entity @s[tag=on_area] run setblock ~ ~ ~ pink_glazed_terracotta