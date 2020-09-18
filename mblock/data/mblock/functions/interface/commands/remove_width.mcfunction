scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] aparse.xsize 1
playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.5

scoreboard players operation @s mb.width = @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
