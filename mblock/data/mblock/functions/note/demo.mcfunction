scoreboard players set @s _aparse.z 0
scoreboard players operation @s _aparse.tmp2 = #sound _mbtmp

tag @s add _schedule_tone
function mblock:note/utils/x_private/schedules/demo_sound