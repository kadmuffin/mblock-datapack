execute as @s[tag=show_area,tag=force_render] positioned ~ ~-0.6 ~ run function mblock:objects/area_parser/run_by_z_step
execute as @s[tag=show_area,tag=!playing,tag=!force_render] positioned ~ ~-0.6 ~ run function mblock:objects/area_parser/run_by_z_step
execute as @s[tag=show_area,tag=playing,tag=!force_render,scores={aparse.xsize=..8,aparse.ysize=..8}] positioned ~ ~-0.6 ~ run function mblock:objects/area_parser/run_by_z_step
