
execute store result score @s mb_tmp run data get entity @s ItemRotation

execute if score @s mb_tmp matches 0 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 0 run data merge entity @s {ItemRotation: 1b}
execute if score @s mb_tmp matches 0 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 2 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 2 run data merge entity @s {ItemRotation: 3b}
execute if score @s mb_tmp matches 2 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 4 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 4 run data merge entity @s {ItemRotation: 5b}
execute if score @s mb_tmp matches 4 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 6 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 6 run data merge entity @s {ItemRotation: 7b}
execute if score @s mb_tmp matches 6 run scoreboard players add @s mb_tmp 1

execute if score @s mb_tmp matches 1 run scoreboard players set @s aparse.dir 1
execute if score @s mb_tmp matches 1 run tag @s remove look_neg
execute if score @s mb_tmp matches 3 run scoreboard players set @s aparse.dir 0
execute if score @s mb_tmp matches 3 run tag @s remove look_neg
execute if score @s mb_tmp matches 5 run scoreboard players set @s aparse.dir 1
execute if score @s mb_tmp matches 5 run tag @s add look_neg
execute if score @s mb_tmp matches 7 run scoreboard players set @s aparse.dir 0
execute if score @s mb_tmp matches 7 run tag @s add look_neg

execute as @s[tag=update_box] run function mblock:objects/music_player/plugins/box_display/main

tag @s remove _show_path
tag @s remove update_box