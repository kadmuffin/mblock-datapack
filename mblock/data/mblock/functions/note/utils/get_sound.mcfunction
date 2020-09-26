scoreboard players set #sound_dir _mbtmp -1
scoreboard players operation #sound _mbtmp = @s mb_tmp2

execute positioned ~ ~-1 ~ if block ~ ~ ~ #mblock:soundable run function mblock:note/utils/x_private/sound/bottom/main
execute unless block ~ ~-1 ~ #mblock:soundable run function mblock:note/utils/x_private/sound/bottom/next