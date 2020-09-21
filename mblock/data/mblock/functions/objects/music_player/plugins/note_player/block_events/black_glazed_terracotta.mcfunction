tag @s add forcing_end

execute as @e[tag=note_player,tag=!forcing_end] if score @s mb.id = @e[tag=forcing_end,sort=nearest,limit=1] mb.id run kill @s

kill @s