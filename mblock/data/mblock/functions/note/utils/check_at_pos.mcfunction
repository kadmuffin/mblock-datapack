scoreboard players set #block_is_valid _mbtmp 0

execute if block ~ ~ ~ #mblock:octaves unless block ~ ~-1 ~ bedrock run function mblock:note/utils/x_private/process_block

execute if score #block_is_valid _mbtmp matches 1 run function mblock:note/play
