tag @s add musicplayer_activation
#execute as @e[type=item_frame,tag=music_player,tag=!playing,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 if score @s mb.id = @e[tag=musicplayer_activation,limit=1] mb.id run scoreboard players add global mb.id 1
execute as @e[type=item_frame,tag=music_player,tag=!mp_activated,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 unless score @s mb.id = @e[tag=musicplayer_activation,limit=1] mb.id run tag @s add play_next_tick
execute as @e[type=item_frame,tag=music_player,tag=!mp_activated,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 unless score @s mb.id = @e[tag=musicplayer_activation,limit=1] mb.id run tag @s add mp_activated
tag @s remove musicplayer_activation
