execute as @e[tag=music_player] at @s if entity @a[distance=0..4] run function mblock:objects/music_player/xyz_private/parameters_update_loop

function mblock:objects/music_player/plugins/tellraw_menu/main