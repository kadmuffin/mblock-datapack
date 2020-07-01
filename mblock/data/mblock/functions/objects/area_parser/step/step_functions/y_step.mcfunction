function mblock:objects/area_parser/lib/utils/set_tags

execute if entity @s[tag=!show_top,tag=on_center] run kill @s
execute if entity @s[tag=!show_top,tag=!on_center] run tp ~ ~2 ~
execute if entity @s[tag=show_top] run tp ~ ~2 ~

#function mblock:objects/area_parser/lib/on_step_call
function mblock:objects/area_parser/step/movement/y_step/vertical