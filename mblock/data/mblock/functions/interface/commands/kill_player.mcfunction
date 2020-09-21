tag @s add killing_last
execute at @s as @e[tag=_note] if score @s mb.id = @e[tag=killing_last,sort=nearest,limit=1] mb.id run kill @s
execute at @s as @e[tag=note_player] if score @s mb.id = @e[tag=killing_last,sort=nearest,limit=1] mb.id run kill @s
tag @s remove playing
tag @s remove killing_last