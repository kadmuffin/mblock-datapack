tag @s add sound_updated
scoreboard players set @s mb_tmp2 0
function mblock:block/get_sound

tag @s add change_sound
execute as @e[tag=note_player,tag=!change_sound] if score @s mb.id = @e[tag=change_sound,limit=1] mb.id run scoreboard players operation @s mb_tmp2 = #sound _mbtmp
execute as @e[tag=note_player,tag=!change_sound] if score @s mb.id = @e[tag=change_sound,limit=1] mb.id run tag @s add sound_updated
tag @s remove change_sound

scoreboard players operation @s mb_tmp2 = #sound _mbtmp
