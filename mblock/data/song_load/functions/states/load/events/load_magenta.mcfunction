execute store result score @s _aparse.tmp1 run data get entity @s ArmorItems[3].tag.event.dir

scoreboard players operation @s _aparse.tmp1 += @s mb.dir
execute if score @s _aparse.tmp1 matches ..-1 run function song_load:states/load/events/x_private/mb_dir
execute if score @s _aparse.tmp1 matches 4.. run function song_load:states/load/events/x_private/mb_dir

execute if entity @s[tag=!in_box] run function mblock:objects/area_parser/events/magenta/set
execute if entity @s[tag=!in_box] run function song_load:utils/events/x_private/built_in/update_direction
execute if entity @s[tag=in_box] run setblock ~ ~ ~ pink_glazed_terracotta