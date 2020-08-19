tag @e[tag=music_player,sort=nearest,limit=1] add kill_area
execute as @e[tag=z_step] if score @s aparse.id = @e[tag=kill_area,limit=1] aparse.id run kill @s
tag @e[tag=kill_area,limit=1] remove kill_area
