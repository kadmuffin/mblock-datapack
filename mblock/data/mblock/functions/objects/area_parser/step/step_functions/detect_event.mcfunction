execute as @s at @s if block ~ ~ ~ magenta_glazed_terracotta if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s remove skip_x
execute as @s at @s if block ~ ~ ~ magenta_glazed_terracotta if score @s _aparse_tmp2 >= @s aparse.zsize run tag @s add disable_redirection
execute as @s at @s if block ~ ~ ~ magenta_glazed_terracotta if score @s _aparse_tmp2 >= @s aparse.zsize run function mblock:objects/area_parser/lib/block/check_direc

execute as @s if block ~ ~ ~ black_glazed_terracotta run tag @s remove skip_x
execute as @s if block ~ ~ ~ black_glazed_terracotta run tag @s add forced_end
execute as @s if block ~ ~ ~ black_glazed_terracotta run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize

execute as @s if block ~ ~ ~ purple_glazed_terracotta run tag @s remove skip_x
execute as @s if block ~ ~ ~ purple_glazed_terracotta run tag @s add repeating_end
execute as @s if block ~ ~ ~ purple_glazed_terracotta run scoreboard players operation @s _aparse_tmp2 = @s aparse.zsize

#tp ~ ~ ~