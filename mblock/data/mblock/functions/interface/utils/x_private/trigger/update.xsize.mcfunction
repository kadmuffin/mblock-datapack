scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.xsize = @s mb.width
scoreboard players set @s mb.width 0
function mblock:interface/utils/x_private/update_size
playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75