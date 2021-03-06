
function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/set

scoreboard players operation .x_1 _mbtmp = @s mb_x_pos
scoreboard players operation .x_1 _mbtmp /= #decimals _mbtmp
scoreboard players operation .z_1 _mbtmp = @s mb_z_pos
scoreboard players operation .z_1 _mbtmp /= #decimals _mbtmp

# Increase travel distance on position change
execute unless score @s _aparse.x = .x_1 _mbtmp run scoreboard players add @s mb.travel 1
execute unless score @s _aparse.z = .z_1 _mbtmp run scoreboard players add @s mb.travel 1

scoreboard players operation @s _aparse.x = .x_1 _mbtmp
scoreboard players operation @s _aparse.z = .z_1 _mbtmp

function mblock:objects/music_player/plugins/note_player/utils/monitor_accuracy

execute if score @s mb.travel >= @s aparse.zsize run function mblock:objects/music_player/plugins/note_player/utils/stop