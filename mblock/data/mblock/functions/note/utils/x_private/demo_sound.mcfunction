scoreboard players operation #tone _mbtmp = @s mb.tone
scoreboard players operation #sound _mbtmp = @s mb.sound

function mblock:note/play

scoreboard players add @s mb.tone 1
execute unless score #tone _mbtmp matches 0..11 run tag @s remove _schedule_tone