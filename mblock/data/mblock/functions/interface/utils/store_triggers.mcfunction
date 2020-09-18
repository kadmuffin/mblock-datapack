scoreboard players operation @s mb_id = @e[tag=target_player,limit=1] mb_id

scoreboard players operation @s mb.width = @e[tag=target_player,limit=1] aparse.xsize
scoreboard players operation @s mb.height = @e[tag=target_player,limit=1] aparse.ysize
scoreboard players operation @s mb.length = @e[tag=target_player,limit=1] aparse.zsize
scoreboard players operation @s mb.tempo = @e[tag=target_player,limit=1] mb.bpm
