tag @s add killing_last
execute at @s as @e[tag=note_player] if score @s mb_id = @e[tag=killing_last,sort=nearest,limit=1] mb_id run kill @s
tag @s remove playing
tag @s remove killing_last