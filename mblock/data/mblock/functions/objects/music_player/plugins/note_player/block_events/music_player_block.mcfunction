tag @s add musicplayer_activation
execute as @e[type=item_frame,tag=music_player,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 unless score @s mb_tmp = @e[tag=musicplayer_activation,limit=1] mb_id run tag @s add instant_start
execute as @e[type=item_frame,tag=music_player,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 unless score @s mb_tmp = @e[tag=musicplayer_activation,limit=1] mb_id run function mblock:objects/music_player/plugins/note_player/summon_player
tag @s remove musicplayer_activation
