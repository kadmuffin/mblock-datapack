scoreboard players set @s _aparse_tmp2 0

execute as @s at @s store result entity @s Pos[0] double 0.1 run scoreboard players get @s _aparse_tmp3
execute as @s at @s store result entity @s Pos[2] double 0.1 run scoreboard players get @s _aparse_tmp4

tag @s add _not_pos_update