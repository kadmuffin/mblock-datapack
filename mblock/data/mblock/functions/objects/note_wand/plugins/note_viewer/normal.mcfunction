execute as @s[tag=!_off_hand,tag=!sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:note/play
execute as @s[tag=!_off_hand,tag=sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:note/play