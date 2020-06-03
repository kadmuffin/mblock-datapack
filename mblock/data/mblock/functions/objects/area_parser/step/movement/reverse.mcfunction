tag @s[tag=!look_neg] add _look_neg
tag @s[tag=!look_neg] add look_neg
tag @s[tag=look_neg,tag=!_look_neg] remove look_neg
tag @s remove _look_neg

scoreboard players set @s _aparse_tmp2 1