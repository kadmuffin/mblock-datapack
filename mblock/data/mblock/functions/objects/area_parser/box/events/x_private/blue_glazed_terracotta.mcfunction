tag @s[tag=skip_x,scores={_aparse.z=2..}] add force_render
tag @s[tag=skip_x,scores={_aparse.z=2..}] remove skip_x

scoreboard players set @s mbn.sound 0
function mblock:note/utils/get_sound

scoreboard players operation @s mbn.sound = #sound _mbtmp
