scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.zsize = @s mb.length
scoreboard players set @s mb.length 0
function mblock:interface/utils/x_private/update_size
playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75