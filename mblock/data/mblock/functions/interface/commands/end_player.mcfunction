tag @e[tag=note_player_center,sort=nearest,limit=1] add target_note_player

execute as @e[tag=music_player,sort=nearest,limit=1] at @s if score @s mb_id = @e[tag=target_note_player,limit=1] mb_id run function mblock:interface/commands/kill_player
execute as @e[tag=target_note_player,limit=1] run scoreboard players operation @s mb_ztravel = @s aparse.zsize

playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.4 1.4