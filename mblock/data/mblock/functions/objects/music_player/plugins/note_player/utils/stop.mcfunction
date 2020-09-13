tag @s add updating_playing_state
execute as @e[tag=music_player,tag=playing,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run tag @s remove playing
execute as @e[tag=note_player,tag=!updating_playing_state,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run kill @s
kill @s