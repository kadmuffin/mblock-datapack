tag @s add not_update
tag @s add changing_direction

function mblock:objects/area_parser/lib/block/check_direc

execute as @s[tag=direction_changed] as @e[tag=note_player,tag=!changing_direction] if score @s mb.id = @e[sort=nearest,limit=1] mb.id run kill @s
execute as @s[tag=!direction_changed] as @e[tag=note_player,tag=!changing_direction] if score @s mb.id = @e[sort=nearest,limit=1] mb.id run scoreboard players set @s mb_ztravel 1

scoreboard players set @s mb_ztravel 1

tag @s remove changing_direction
tag @s[tag=!direction_changed] remove not_update