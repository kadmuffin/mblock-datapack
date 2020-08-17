function mblock:block/get_sound

tag @s add change_sound
execute as @e[tag=note_player,tag=!change_sound] if score @s mb_id = @e[tag=change_sound,sort=nearest,limit=1] mb_id run scoreboard players operation @s mb_tmp2 = #sound _mbtmp
tag @s remove change_sound

scoreboard players operation @s mb_tmp2 = #sound _mbtmp
