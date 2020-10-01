tag @e[tag=note_player,sort=nearest,limit=1] add error_target
execute as @e[tag=note_player,tag=!error_target] if score @s mb.id = @e[tag=error_target,limit=1] mb.id run kill @s
kill @e[tag=error_target]