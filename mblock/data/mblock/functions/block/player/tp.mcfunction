execute if block ~ ~-1 ~ black_glazed_terracotta run kill @e[tag=player_child]
execute if block ~ ~-1 ~ black_glazed_terracotta run kill @s
execute if score #z_travelled _mbtmp > $.z_size _mbtmp run function mblock:block/player/end

execute if entity @s run function mblock:block/player/update_dir

execute unless score $.x_size _mbtmp = #last_x _mbtmp run tag @s remove child_updated
execute unless score $.y_size _mbtmp = #last_y _mbtmp run tag @s remove child_updated
#execute unless score $.z_size _mbtmp = #last_z _mbtmp run tag @s remove child_updated

scoreboard players operation #last_x _mbtmp = $.x_size _mbtmp
scoreboard players operation #last_y _mbtmp = $.y_size _mbtmp
#scoreboard players operation #last_z _mbtmp = $.z_size _mbtmp

execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 0 facing ~-1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 1 facing ~1 ~ ~ align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 2 facing ~ ~ ~-1 align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp if score #dir _mbtmp matches 3 facing ~ ~ ~1 align xyz run tp ~.5 ~ ~.5
execute unless score #dir _mbtmp = #dir_last _mbtmp run scoreboard players set #z_travelled _mbtmp 0
execute unless score #dir _mbtmp = #dir_last _mbtmp run tag @s add skip_play
execute unless score #dir _mbtmp = #dir_last _mbtmp run tag @s remove child_updated

execute if block ~ ~ ~ air run particle sneeze ~ ~ ~ 0 0 0 0 2 force

scoreboard players operation #dir_last _mbtmp = #dir _mbtmp

scoreboard players set @s _mbtmp 0

execute as @s[tag=!child_updated] at @s run kill @e[tag=player_child]
execute as @s[tag=!child_updated] at @s run function mblock:block/player/get_all_blocks

execute as @e[tag=player_child,nbt=!{ArmorItems:[{},{},{},{id:"light_blue_concrete"}]}] at @s if block ~ ~ ~ air run data modify entity @s ArmorItems[3] set value {id: "light_blue_concrete",Count:1b}
execute as @e[tag=player_child,nbt=!{ArmorItems:[{},{},{},{id:"air"}]}] at @s unless block ~ ~ ~ air run data modify entity @s ArmorItems[3] set value {}

execute as @e[tag=player] at @s run function mblock:block/player/update_pos

execute if entity @s[tag=!skip_play] as @e[tag=player,sort=random] at @s if block ~ ~ ~ #mblock:octaves run function mblock:block/player/play_block

execute if entity @s[tag=skip_play] if score #z_travelled _mbtmp matches 1.. run tag @s remove skip_play