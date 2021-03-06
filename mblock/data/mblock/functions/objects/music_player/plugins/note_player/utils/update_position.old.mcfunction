execute as @s store result score .x _mbtmp run data get entity @s Pos[0] 1000
execute as @s store result score .z _mbtmp run data get entity @s Pos[2] 1000

execute as @s[tag=!look_neg,scores={mb.dir=0..1}] run scoreboard players operation .z _mbtmp += @s mb.true_bpm
execute as @s[tag=look_neg,scores={mb.dir=0..1}] run scoreboard players operation .z _mbtmp -= @s mb.true_bpm
execute as @s[tag=!look_neg,scores={mb.dir=2..3}] run scoreboard players operation .x _mbtmp += @s mb.true_bpm
execute as @s[tag=look_neg,scores={mb.dir=2..3}] run scoreboard players operation .x _mbtmp -= @s mb.true_bpm

execute store result entity @s Pos[0] double 0.001 run scoreboard players get .x _mbtmp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get .z _mbtmp

execute as @s store result score .x _mbtmp run data get entity @s Pos[0] 1
execute as @s store result score .z _mbtmp run data get entity @s Pos[2] 1

execute as @s unless score @s _aparse.x = .x _mbtmp run scoreboard players add @s _aparse.z 1
execute as @s unless score @s _aparse.z = .z _mbtmp run scoreboard players add @s _aparse.z 1

scoreboard players operation @s _aparse.x = .x _mbtmp
scoreboard players operation @s _aparse.z = .z _mbtmp

execute if score @s _aparse.z >= @s aparse.zsize run tag @s add updating_playing_state
execute if score @s _aparse.z >= @s aparse.zsize as @e[tag=music_player,tag=playing,sort=nearest] if score @s mb.id = @e[tag=updating_playing_state,limit=1] mb.id run tag @s remove playing
execute if score @s _aparse.z >= @s aparse.zsize run kill @s
