scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] mb.bpm 5
playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.5

scoreboard players operation @s mb.tempo = @e[tag=music_player,sort=nearest,limit=1] mb.bpm
