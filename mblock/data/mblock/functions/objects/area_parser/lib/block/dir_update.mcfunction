
# Compare last and new direction
execute unless score .new_direction _aparse_tmp5 = @s aparse.dir run tag @s add direction_changed

# Force End Line Redraw (if needed)
execute as @s[tag=!disable_redraw,tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/area_parser/lib/block/redraw_box
execute as @s[tag=!disable_redraw,tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/area_parser/lib/block/redraw_box
execute as @s[tag=!disable_redraw,tag=!look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/area_parser/lib/block/redraw_box
execute as @s[tag=!disable_redraw,tag=look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/area_parser/lib/block/redraw_box


# Save Changes
scoreboard players set @s[tag=!disable_redirection] _aparse_tmp2 0
scoreboard players set @s[tag=disable_redirection,tag=!direction_changed] _aparse_tmp2 2
scoreboard players operation @s[tag=!disable_redirection] aparse.dir = .new_direction _aparse_tmp5
scoreboard players reset @s _aparse_tmp5
scoreboard players reset .new_direction _aparse_tmp5
tag @s[tag=!disable_redirection,tag=direction_changed,tag=look_neg,tag=!_look_neg] remove look_neg
tag @s[tag=!disable_redirection,tag=direction_changed,tag=!look_neg,tag=_look_neg] add look_neg

# Move entity outside of the old box and align
execute if entity @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/lib/block/align_direc
scoreboard players operation @s _aparse_tmp6 = @s aparse.xsize

execute if entity @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/lib/redirect
