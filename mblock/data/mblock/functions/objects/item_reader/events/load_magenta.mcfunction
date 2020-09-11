execute store result score @s _aparse_tmp5 run data get entity @s ArmorItems[3].tag.event.dir

execute if score @s _aparse_tmp5 matches 0 if entity @s[tag=west] run scoreboard players add @s _aparse_tmp5 1
execute if score @s _aparse_tmp5 matches 1 if entity @s[tag=south] run scoreboard players add @s _aparse_tmp5 1
execute if score @s _aparse_tmp5 matches 2 if entity @s[tag=east] run scoreboard players add @s _aparse_tmp5 1
execute if score @s _aparse_tmp5 matches 3 if entity @s[tag=north] run scoreboard players remove @s _aparse_tmp5 1

execute if entity @s[tag=!in_box] run function mblock:objects/area_parser/lib/block/set_magenta
execute if entity @s[tag=!in_box] run function mblock:objects/area_parser/events/update_direction
execute if entity @s[tag=in_box] run setblock ~ ~ ~ pink_glazed_terracotta