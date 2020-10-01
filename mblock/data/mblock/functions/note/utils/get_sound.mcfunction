scoreboard players set #sound_dir _mbtmp -1
scoreboard players operation #sound _mbtmp = @s mbn.sound

execute positioned ~ ~-1 ~ if block ~ ~ ~ #mblock:soundable run function mblock:note/utils/x_private/sound/bottom/main
execute unless block ~ ~-1 ~ #mblock:soundable run function mblock:note/utils/x_private/sound/bottom/next