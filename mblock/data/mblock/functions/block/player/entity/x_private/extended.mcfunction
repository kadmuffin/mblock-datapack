scoreboard players set @s[tag=!custom_dir,scores={mb.dir=0..}] mb.dir -1

function mblock:objects/music_player/xyz_private/parse_player_direction
execute positioned ~ ~2 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute as @s[scores={mb.dir=0..1}] at @s run function mblock:objects/music_player/plugins/entity_play/dir_0
execute as @s[scores={mb.dir=2..3}] at @s run function mblock:objects/music_player/plugins/entity_play/dir_1