scoreboard players operation #tmp_sig mb.menu.tmp = @e[tag=music_player,sort=nearest,limit=1] mb.sig.b

execute if score #tmp_sig mb.menu.tmp matches 4 run scoreboard players set @e[tag=music_player,sort=nearest,limit=1] mb.sig.b 8
execute if score #tmp_sig mb.menu.tmp matches 2 run scoreboard players set @e[tag=music_player,sort=nearest,limit=1] mb.sig.b 4
execute if score #tmp_sig mb.menu.tmp matches 1 run scoreboard players set @e[tag=music_player,sort=nearest,limit=1] mb.sig.b 2

playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75
