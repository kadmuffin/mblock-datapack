#function mblock:objects/area_parser/lib/block/al
#function mblock:objects/area_parser/lib/block/check_direc

function mblock:objects/area_parser/lib/block/check_direc

tag @s add _new_change
tag @s add not_update
execute as @s[tag=_new_change,tag=direction_changed] at @s as @e[tag=note_player,tag=!_new_change] if score @s mb_id = @e[tag=_new_change,sort=nearest,limit=1] mb_id run kill @s
execute as @s[tag=_new_change,tag=!direction_changed] at @s as @e[tag=note_player,tag=!_new_change] if score @s mb_id = @e[tag=_new_change,sort=nearest,limit=1] mb_id run scoreboard players set @s mb_ztravel 1
execute as @s[tag=_new_change,tag=!direction_changed] at @s run scoreboard players set @s mb_ztravel 1
execute as @s[tag=_new_change,tag=!direction_changed] at @s run tag @s remove not_update

#execute as @s[tag=not_update,tag=!direction_changed] at @s positioned ~ ~1 ~ run scoreboard players set @s mb_ztravel 0

tag @s remove _new_change