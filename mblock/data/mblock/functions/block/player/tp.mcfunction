execute if block ~ ~-1 ~ black_glazed_terracotta run kill @e[tag=player_child]
execute if block ~ ~-1 ~ black_glazed_terracotta run kill @s

execute if entity @s run function mblock:block/player/update_dir

execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 0 facing ~-1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 1 facing ~1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 2 facing ~ ~ ~-1 align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 3 facing ~ ~ ~1 align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp run tag @s remove child_updated

execute if block ~ ~ ~ air run particle sneeze ~ ~ ~ 0 0 0 0 2 force

scoreboard players operation #dir_last _mbtmp = #dir _mbtmp

scoreboard players set @s _mbtmp 0

execute as @s[tag=!child_updated] at @s run kill @e[tag=player_child]
execute as @s[tag=!child_updated] at @s run function mblock:block/player/get_all_blocks

execute as @e[tag=player_child,nbt=!{ArmorItems:[{},{},{},{id:"air"}]}] at @s unless block ~ ~ ~ air run data modify entity @s ArmorItems[3] set value {}
execute as @e[tag=player_child,nbt={ArmorItems:[{},{},{},{id:"air"}]}] at @s if block ~ ~ ~ air run data modify entity @s ArmorItems[3] set value {id: "light_blue_concrete",Count:1b}

execute as @e[tag=player] at @s run function mblock:block/player/update_pos

execute as @e[tag=player] at @s run function mblock:block/player/play_block