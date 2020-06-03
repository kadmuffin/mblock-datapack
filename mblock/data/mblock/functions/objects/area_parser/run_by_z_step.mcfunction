# > Run by Step
#
# Builds each layer in several ticks
# instead of compressing it to one tick


function mblock:objects/area_parser/step/step_functions/check_tmp_existence

#execute unless entity @s[tag=step] run function mblock:objects/area_parser/step/schedule_z_step