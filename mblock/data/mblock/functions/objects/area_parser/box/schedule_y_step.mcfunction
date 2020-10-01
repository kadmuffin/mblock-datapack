scoreboard players set schedule_y _aparse.tmp 1

execute as @e[tag=_scheduled] at @s run function mblock:objects/area_parser/box/loop/y_step

execute unless score #render_speed _aparse.tmp matches 1.. run schedule function mblock:objects/area_parser/box/schedule_y_step 5t
execute if score #render_speed _aparse.tmp matches 1 run schedule function mblock:objects/area_parser/box/schedule_y_step 3t
execute if score #render_speed _aparse.tmp matches 2.. run schedule function mblock:objects/area_parser/box/schedule_y_step 2t
