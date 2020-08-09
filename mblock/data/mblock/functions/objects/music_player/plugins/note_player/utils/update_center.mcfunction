execute as @s store result score @s mb_x_pos run data get entity @s Pos[0] 10000
execute as @s store result score @s mb_z_pos run data get entity @s Pos[2] 10000

execute as @s[tag=!look_neg,scores={aparse.dir=0}] run scoreboard players operation @s mb_z_pos += @s mb.true_bpm
execute as @s[tag=look_neg,scores={aparse.dir=0}] run scoreboard players operation @s mb_z_pos -= @s mb.true_bpm
execute as @s[tag=!look_neg,scores={aparse.dir=1}] run scoreboard players operation @s mb_x_pos += @s mb.true_bpm
execute as @s[tag=look_neg,scores={aparse.dir=1}] run scoreboard players operation @s mb_x_pos -= @s mb.true_bpm

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s mb_x_pos
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s mb_z_pos

# Starting from here, the block movement gets tracked
#execute as @s store result score .x_1 _mbtmp run data get entity @s Pos[0] 1
#execute as @s store result score .z_1 _mbtmp run data get entity @s Pos[2] 1

scoreboard players set #1000 _mbtmp 10000

scoreboard players operation .x_1 _mbtmp = @s mb_x_pos
scoreboard players operation .x_1 _mbtmp /= #1000 _mbtmp
scoreboard players operation .z_1 _mbtmp = @s mb_z_pos
scoreboard players operation .z_1 _mbtmp /= #1000 _mbtmp

# Increase travel distance on position change
execute unless score @s mb_tmpx = .x_1 _mbtmp run scoreboard players add @s mb_ztravel 1
execute unless score @s mb_tmpz = .z_1 _mbtmp run scoreboard players add @s mb_ztravel 1

scoreboard players operation @s mb_tmpx = .x_1 _mbtmp
scoreboard players operation @s mb_tmpz = .z_1 _mbtmp

execute if score @s mb_ztravel >= @s aparse.zsize run tag @s add updating_playing_state
execute if score @s mb_ztravel >= @s aparse.zsize as @e[tag=music_player,tag=playing,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run tag @s remove playing
execute if score @s mb_ztravel >= @s aparse.zsize as @e[tag=note_player,tag=!updating_playing_state,sort=nearest] if score @s mb_id = @e[tag=updating_playing_state,limit=1] mb_id run kill @s
execute if score @s mb_ztravel >= @s aparse.zsize run kill @s
