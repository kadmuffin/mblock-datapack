tag @s add killing_player
tag @s remove note_player
execute as @e[tag=note_player] if score @s mb.id = @e[tag=killing_player,limit=1] mb.id run kill @s
kill @s