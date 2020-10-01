
execute store result score @s _aparse.tmp3 run data get entity @s ItemRotation

execute if score @s _aparse.tmp3 matches 0 run function mblock:objects/area_parser/box/utils/kill_last
execute if score @s _aparse.tmp3 matches 0 run data merge entity @s {ItemRotation: 1b}
execute if score @s _aparse.tmp3 matches 0 run scoreboard players add @s _aparse.tmp3 1
execute if score @s _aparse.tmp3 matches 2 run function mblock:objects/area_parser/box/utils/kill_last
execute if score @s _aparse.tmp3 matches 2 run data merge entity @s {ItemRotation: 3b}
execute if score @s _aparse.tmp3 matches 2 run scoreboard players add @s _aparse.tmp3 1
execute if score @s _aparse.tmp3 matches 4 run function mblock:objects/area_parser/box/utils/kill_last
execute if score @s _aparse.tmp3 matches 4 run data merge entity @s {ItemRotation: 5b}
execute if score @s _aparse.tmp3 matches 4 run scoreboard players add @s _aparse.tmp3 1
execute if score @s _aparse.tmp3 matches 6 run function mblock:objects/area_parser/box/utils/kill_last
execute if score @s _aparse.tmp3 matches 6 run data merge entity @s {ItemRotation: 7b}
execute if score @s _aparse.tmp3 matches 6 run scoreboard players add @s _aparse.tmp3 1

execute if score @s _aparse.tmp3 matches 1 run scoreboard players set @s mb.dir 3
execute if score @s _aparse.tmp3 matches 3 run scoreboard players set @s mb.dir 0
execute if score @s _aparse.tmp3 matches 5 run scoreboard players set @s mb.dir 2
execute if score @s _aparse.tmp3 matches 7 run scoreboard players set @s mb.dir 1

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

execute as @s[tag=update_box] run function mblock:objects/music_player/plugins/box_display/main

tag @s remove _show_path
tag @s remove update_box