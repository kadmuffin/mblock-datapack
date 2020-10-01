function mblock:objects/area_parser/box/utils/tags

execute if entity @s[tag=!show_top,tag=!on_center] run tp ~ ~2 ~
execute if entity @s[tag=!show_top,tag=!on_center] unless score @s _aparse.tmp < @s _aparse.tmp3 run kill @s
execute if entity @s[tag=!show_top,tag=on_center] run kill @s
execute if entity @s[tag=show_top] unless score @s _aparse.tmp >= @s _aparse.tmp3 run tp ~ ~2 ~
execute if entity @s[tag=show_top] if score @s _aparse.tmp >= @s _aparse.tmp3 run tp ~ ~1 ~

function mblock:objects/area_parser/box/movement/y/vertical