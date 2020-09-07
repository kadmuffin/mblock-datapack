execute store result score @s _aparse_tmp5 run data get entity @s ArmorItems[3].tag.event.dir

execute if entity @s[tag=!in_box] run function mblock:objects/area_parser/lib/block/set_magenta
execute if entity @s[tag=!in_box] run function mblock:objects/area_parser/lib/block/set_dir_from_score
execute if entity @s[tag=in_box] run setblock ~ ~ ~ pink_glazed_terracotta