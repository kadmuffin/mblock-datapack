
function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/set

scoreboard players operation .x_1 _mbtmp = @s mb_x_pos
scoreboard players operation .x_1 _mbtmp /= #decimals _mbtmp
scoreboard players operation .z_1 _mbtmp = @s mb_z_pos
scoreboard players operation .z_1 _mbtmp /= #decimals _mbtmp

# Increase travel distance on position change
execute unless score @s mb_tmpx = .x_1 _mbtmp run scoreboard players add @s mb_ztravel 1
execute unless score @s mb_tmpz = .z_1 _mbtmp run scoreboard players add @s mb_ztravel 1

scoreboard players operation @s mb_tmpx = .x_1 _mbtmp
scoreboard players operation @s mb_tmpz = .z_1 _mbtmp

execute if score @s mb_ztravel >= @s aparse.zsize run tag @s add updating_playing_state
execute if score @s mb_ztravel >= @s aparse.zsize as @e[tag=music_player,tag=playing,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run tag @s remove playing
execute if score @s mb_ztravel >= @s aparse.zsize as @e[tag=note_player,tag=!updating_playing_state,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run kill @s
execute if score @s mb_ztravel >= @s aparse.zsize run kill @s
