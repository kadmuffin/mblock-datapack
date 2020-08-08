
execute if entity @e[tag=music_player,tag=look_neg,scores={aparse.dir=0}] positioned ~1 ~ ~ run function song_load:utils/summon/z_axis
execute if entity @e[tag=music_player,tag=look_neg,scores={aparse.dir=1}] positioned ~ ~ ~1 run function song_load:utils/summon/z_axis

execute if entity @e[tag=music_player,tag=!look_neg,scores={aparse.dir=0}] positioned ~-1 ~ ~ run function song_load:utils/summon/z_axis
execute if entity @e[tag=music_player,tag=!look_neg,scores={aparse.dir=1}] positioned ~ ~ ~-1 run function song_load:utils/summon/z_axis
