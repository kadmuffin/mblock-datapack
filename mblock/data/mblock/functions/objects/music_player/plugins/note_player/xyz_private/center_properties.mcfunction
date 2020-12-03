scoreboard players operation @e[tag=new_note_player,limit=1] mb.true_bpm = @s mb.true_bpm
scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm = @s mb.bpm
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.zsize = @s aparse.zsize

scoreboard players set @e[tag=new_note_player,limit=1] mb.travel 0
execute as @s[tag=!note_player] run scoreboard players add @e[tag=new_note_player,limit=1] aparse.zsize 4

execute as @s[tag=copy_travel] run scoreboard players operation @e[tag=new_note_player,limit=1] mb.travel = @s mb.travel
execute as @s[tag=compress_bpm] run tag @e[tag=new_note_player,limit=1] add compress_bpm
execute as @s[tag=nbs_bpm] run tag @e[tag=new_note_player,limit=1] add nbs_bpm
