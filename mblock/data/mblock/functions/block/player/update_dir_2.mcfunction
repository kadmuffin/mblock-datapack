scoreboard players add @s _mbtmp 0

execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players set #dir_tmp _mbtmp1 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players set #dir_gen_tmp _mbtmp1 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players set #dir_tmp _mbtmp1 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players set #dir_gen_tmp _mbtmp1 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players set #dir_tmp _mbtmp1 2
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players set #dir_gen_tmp _mbtmp1 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players set #dir_tmp _mbtmp1 3
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players set #dir_gen_tmp _mbtmp1 1

execute if block ~ ~-1 ~ magenta_glazed_terracotta if score #last_dir _mbtmp1 = #last_dir _mbtmp1 run scoreboard players set #z_travelled _mbtmp1 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta if score #last_dir _mbtmp1 = #last_dir _mbtmp1 run tag @s add ignore_zero

execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 store result score #redirect_x _mbtmp1 run data get entity @s Pos[0] 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 store result score #redirect_z _mbtmp1 run data get entity @s Pos[2] 1

#execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 0 run scoreboard players operation #redirect_x _mbtmp1 -= $.x_size _mbtmp1
#execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 1 run scoreboard players operation #redirect_x _mbtmp1 += $.x_size _mbtmp1
#execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 2 run scoreboard players operation #redirect_z _mbtmp1 -= $.z_size _mbtmp1
#execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 3 run scoreboard players operation #redirect_z _mbtmp1 += $.z_size _mbtmp1

execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 0 run scoreboard players remove #redirect_x _mbtmp1 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 1 run scoreboard players add #redirect_x _mbtmp1 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 2 run scoreboard players remove #redirect_z _mbtmp1 1
execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 if score #dir_tmp _mbtmp1 matches 3 run scoreboard players add #redirect_z _mbtmp1 1

execute if block ~ ~-1 ~ magenta_glazed_terracotta unless score #dir_tmp _mbtmp1 = #last_dir _mbtmp1 run tag @s add wait_for_end

# execute unless block ~ ~-1 ~ magenta_glazed_terracotta if score @s _mbtmp < $.y_size _mbtmp if score #dir _mbtmp1 matches 0 postioned ~-1 ~ ~ run function mblock:block/player/update_dir_2
# execute unless block ~ ~-1 ~ magenta_glazed_terracotta if score @s _mbtmp < $.y_size _mbtmp if score #dir _mbtmp1 matches 1 postioned ~1 ~ ~ run function mblock:block/player/update_dir_2
# execute unless block ~ ~-1 ~ magenta_glazed_terracotta if score @s _mbtmp < $.y_size _mbtmp if score #dir _mbtmp1 matches 2 postioned ~ ~ ~-1 run function mblock:block/player/update_dir_2
# execute unless block ~ ~-1 ~ magenta_glazed_terracotta if score @s _mbtmp < $.y_size _mbtmp if score #dir _mbtmp1 matches 3 postioned ~ ~ ~1 run function mblock:block/player/update_dir_2

# execute if block ~ ~-1 ~ magenta_glazed_terracotta run scoreboard players reset @s _mbtmp
