tag @s add restarting_song

#execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb_id = @e[tag=restarting_song,sort=nearest,limit=1] mb_id as @s at @s positioned ~ ~-1.2 ~ run tag @s add instant_start
execute as @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=restarting_song,limit=1] if score @s mb_id = @e[tag=restarting_song,limit=1] mb_id as @s at @s positioned ~ ~-1.2 ~ run function mblock:objects/music_player/plugins/note_player/block_events/x_private/purple_tags
