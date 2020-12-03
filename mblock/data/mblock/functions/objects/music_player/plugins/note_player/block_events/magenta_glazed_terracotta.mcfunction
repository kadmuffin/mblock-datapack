summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [_play_event_kill]}

tag @s add not_update
tag @s add changing_direction

function mblock:objects/area_parser/events/magenta/from_block

execute as @s[tag=light_render_center] at @s run tp ~ ~-0.6 ~.6
execute if entity @s[tag=direction_changed,tag=!light_render_center] as @e[tag=note_player,tag=!changing_direction] if score @s mb.id = @e[tag=changing_direction,limit=1] mb.id run kill @s
tag @s remove changing_direction
tag @s[tag=!direction_changed] remove not_update
