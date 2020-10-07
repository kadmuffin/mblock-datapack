scoreboard players operation #tone _mbtmp = @s _aparse.z
scoreboard players operation #sound _mbtmp = @s _aparse.tmp2

function mblock:note/play

scoreboard players add @s _aparse.z 1
execute unless score #tone _mbtmp matches 0..11 run tag @s remove _schedule_tone