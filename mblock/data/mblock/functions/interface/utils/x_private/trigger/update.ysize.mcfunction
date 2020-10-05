scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.ysize = @s mb.height
scoreboard players set @s mb.height 0
function mblock:interface/utils/x_private/update_size
playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75