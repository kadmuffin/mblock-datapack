scoreboard players set #block_is_valid _mbtmp 0

execute at @s if block ~ ~ ~ #mblock:octaves unless block ~ ~-1 ~ bedrock run function mblock:objects/music_player/plugins/note_player/utils/note_process

execute if score #block_is_valid _mbtmp matches 1 run function mblock:note/play
