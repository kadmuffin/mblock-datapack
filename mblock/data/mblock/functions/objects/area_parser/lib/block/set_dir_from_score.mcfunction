scoreboard players reset @s aparse.dir
tag @s remove look_neg

execute if score @s _aparse_tmp5 matches 0 run scoreboard players set @s aparse.dir 1
execute if score @s _aparse_tmp5 matches 0 run tag @s remove look_neg

execute if score @s _aparse_tmp5 matches 2 run scoreboard players set @s aparse.dir 1
execute if score @s _aparse_tmp5 matches 2 run tag @s add look_neg

execute if score @s _aparse_tmp5 matches 3 run scoreboard players set @s aparse.dir 0
execute if score @s _aparse_tmp5 matches 3 run tag @s remove look_neg

execute if score @s _aparse_tmp5 matches 1 run scoreboard players set @s aparse.dir 0
execute if score @s _aparse_tmp5 matches 1 run tag @s add look_neg
