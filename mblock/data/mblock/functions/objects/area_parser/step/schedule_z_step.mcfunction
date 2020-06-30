tag @e[tag=step_runned] remove step_runned
scoreboard players set schedule_z _aparse_tmp 1

execute at @a[limit=2,sort=random] run function mblock:objects/area_parser/step/step_functions/z_step

schedule function mblock:objects/area_parser/step/schedule_z_step 4t
