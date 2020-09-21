tag @s add forcing
execute at @s as @e[tag=note_player,tag=note_player_center] if score @s mb.id = @e[tag=forcing,sort=nearest,limit=1] mb.id run function mblock:objects/music_player/plugins/tellraw_menu/force_update_entity
tag @s remove forcing