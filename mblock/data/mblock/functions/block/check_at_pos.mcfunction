scoreboard players set #block_is_valid _mbtmp 0

execute if block ~ ~ ~ #mblock:octaves run function mblock:block/process_block

execute if score #block_is_valid _mbtmp matches 1 run function mblock:sound/play