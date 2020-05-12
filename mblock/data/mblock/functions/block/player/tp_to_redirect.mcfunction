tag @s remove wait_for_end
tag @s add wait_for_update

execute store result entity @s Pos[0] double 1 run scoreboard players get #redirect_x _mbtmp1
execute store result entity @s Pos[2] double 1 run scoreboard players get #redirect_z _mbtmp1

scoreboard players operation #dir _mbtmp1 = #dir_tmp _mbtmp1
scoreboard players operation #dir_gen _mbtmp1 = #dir_gen_tmp _mbtmp1
tag @s remove wait_for_update

execute as @s at @s if score #dir _mbtmp1 matches 0 facing ~-1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute as @s at @s if score #dir _mbtmp1 matches 1 facing ~1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute as @s at @s if score #dir _mbtmp1 matches 2 facing ~ ~ ~-1 align xyz run tp ~.5 ~ ~.5
execute as @s at @s if score #dir _mbtmp1 matches 3 facing ~ ~ ~1 align xyz run tp ~.5 ~ ~.5
execute as @s at @s run scoreboard players set #z_travelled _mbtmp1 0
execute as @s at @s unless score #last_dir _mbtmp1 = #dir _mbtmp1 run scoreboard players add #particle _mbtmp1 1
execute as @s at @s if score #particle _mbtmp1 matches 4.. run scoreboard players set #particle _mbtmp1 -1

#scoreboard players operation #dir_gen _mbtmp1 = #dir_gen_tmp _mbtmp1
scoreboard players operation #last_dir _mbtmp1 = #dir _mbtmp1
