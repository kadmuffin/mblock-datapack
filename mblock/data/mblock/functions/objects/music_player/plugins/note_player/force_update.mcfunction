tag @s add forcing
execute at @s as @e[tag=note_player,tag=note_player_center] if score @s mb_id = @e[tag=forcing,sort=nearest,limit=1] mb_id run function mblock:objects/music_player/plugins/note_player/force_update_entity

tag @s remove forcing