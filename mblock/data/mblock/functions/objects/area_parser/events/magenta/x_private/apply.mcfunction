execute as @s[tag=!disable_redraw,tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/events/magenta/x_private/redraw

# Save Changes
execute as @s[tag=note_player] run function mblock:objects/area_parser/events/magenta/x_private/note_player
execute as @s[tag=!note_player] run function mblock:objects/area_parser/events/magenta/x_private/box
scoreboard players operation @s[tag=!disable_redirection] mb.dir = .new_direction _aparse.tmp1

# Move entity outside of the old box and align

execute if entity @s[tag=!disable_redirection,tag=direction_changed] run tp ~ ~ ~
scoreboard players operation @s _aparse.tmp2 = @s aparse.xsize
scoreboard players add @s[tag=note_player] _aparse.tmp2 1

scoreboard players reset @s _aparse.tmp1
execute if entity @s[tag=!disable_redirection,tag=direction_changed] run function mblock:objects/area_parser/events/magenta/x_private/redirect

tag @s add __skip_x