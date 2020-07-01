tag @s add restarting_song

execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb_id = @e[tag=restarting_song,sort=nearest,limit=1] mb_id as @s at @s positioned ~ ~-1.2 ~ run tag @s add play_next_tick

execute as @e[tag=note_player,tag=!restarting_song,sort=nearest] if score @s mb_id = @e[tag=restarting_song,limit=1] mb_id run kill @s
kill @s
