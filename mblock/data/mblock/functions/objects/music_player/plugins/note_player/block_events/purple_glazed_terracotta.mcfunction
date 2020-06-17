tag @s add restarting_song

#execute as @e[tag=music_player,sort=nearest] if score @s mb_id = @e[tag=restarting_song,sort=nearest,limit=1] mb_id at @s positioned ~ ~-1.2 ~ run tag @s add instant_start
execute as @e[tag=music_player,sort=nearest] if score @s mb_id = @e[tag=restarting_song,sort=nearest,limit=1] mb_id at @s positioned ~ ~-1.2 ~ run function mblock:objects/music_player/plugins/note_player/summon_player
