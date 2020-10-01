scoreboard players operation @s mb_tpm2 = @e[tag=forcing,sort=nearest,limit=1] mbn.sound
scoreboard players operation @s mb.bpm = @e[tag=forcing,sort=nearest,limit=1] mb.bpm
scoreboard players operation @s aparse.xsize = @e[tag=forcing,sort=nearest,limit=1] aparse.xsize
scoreboard players operation @s aparse.ysize = @e[tag=forcing,sort=nearest,limit=1] aparse.ysize
scoreboard players operation @s aparse.zsize = @e[tag=forcing,sort=nearest,limit=1] aparse.zsize

tag @s add center_player
tag @s add copy_travel
execute at @s as @e[tag=note_player,tag=!center_block] if score @s mb.id = @e[tag=center_player,sort=nearest,limit=1] mb.id run kill @s

execute at @s positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/summon_new_player

kill @s