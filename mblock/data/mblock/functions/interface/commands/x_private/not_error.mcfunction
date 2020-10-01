execute as @e[tag=music_player,sort=nearest,limit=1] at @s if score @s mb.id = @e[tag=target_note_player,limit=1] mb.id run function mblock:interface/commands/kill_player
execute as @e[tag=target_note_player,limit=1] run scoreboard players operation @s _aparse.z = @s aparse.zsize
