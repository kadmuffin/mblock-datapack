scoreboard players set #sound_dir _mbtmp -1
scoreboard players operation #sound _mbtmp = @s mbn.sound

execute if score @s mbn.dir matches -2 run function mblock:note/sound/get
execute if score @s mbn.dir matches 0..2 run function mblock:note/utils/x_private/tree/0-2
execute if score @s mbn.dir matches 3..5 run function mblock:note/utils/x_private/tree/3-5