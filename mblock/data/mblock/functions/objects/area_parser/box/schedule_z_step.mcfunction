scoreboard players set schedule_z _aparse.tmp 1

execute at @r if entity @e[tag=_scheduled2] run function mblock:objects/area_parser/box/utils/run_on_mblocks

execute unless score #render_speed _aparse.tmp matches 1.. run schedule function mblock:objects/area_parser/box/schedule_z_step 4t
execute if score #render_speed _aparse.tmp matches 1 run schedule function mblock:objects/area_parser/box/schedule_z_step 2t
execute if score #render_speed _aparse.tmp matches 2.. run schedule function mblock:objects/area_parser/box/schedule_z_step 1t
