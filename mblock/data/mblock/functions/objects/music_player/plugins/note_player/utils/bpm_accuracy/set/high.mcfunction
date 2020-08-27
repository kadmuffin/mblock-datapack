execute as @s store result score @s mb_x_pos run data get entity @s Pos[0] 100000
execute as @s store result score @s mb_z_pos run data get entity @s Pos[2] 100000

function mblock:objects/music_player/plugins/note_player/utils/add_bpm

execute store result entity @s Pos[0] double 0.00001 run scoreboard players get @s mb_x_pos
execute store result entity @s Pos[2] double 0.00001 run scoreboard players get @s mb_z_pos

scoreboard players set #decimals _mbtmp 100000
