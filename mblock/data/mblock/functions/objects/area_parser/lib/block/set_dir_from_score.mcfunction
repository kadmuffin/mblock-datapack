tag @s remove _look_neg
tag @s[tag=look_neg] add _look_neg


execute if score @s _aparse_tmp5 matches 0 run scoreboard players set .new_direction aparse.dir 0
execute if score @s _aparse_tmp5 matches 0 run tag @s remove _look_neg

execute if score @s _aparse_tmp5 matches 2 run scoreboard players set .new_direction aparse.dir 0
execute if score @s _aparse_tmp5 matches 2 run tag @s add _look_neg

execute if score @s _aparse_tmp5 matches 3 run scoreboard players set .new_direction aparse.dir 1
execute if score @s _aparse_tmp5 matches 3 run tag @s remove _look_neg

execute if score @s _aparse_tmp5 matches 1 run scoreboard players set .new_direction aparse.dir 1
execute if score @s _aparse_tmp5 matches 1 run tag @s add _look_neg

tag @s add dir_end
tag @s add disable_redraw
function mblock:objects/area_parser/lib/block/dir_update

# Clean tags
tag @s remove dir_end
tag @s remove _look_neg
tag @s remove direction_changed
tag @s remove disable_redirection
