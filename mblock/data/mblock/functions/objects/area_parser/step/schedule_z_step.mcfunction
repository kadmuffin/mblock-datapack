execute at @r as @e[tag=_scheduled2,limit=2,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step
execute if entity @a[tag=!schedule_me] run schedule function mblock:objects/area_parser/step/schedule_z_step 1t