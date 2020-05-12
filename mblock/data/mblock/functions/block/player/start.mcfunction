kill @e[tag=mb_player]
kill @e[tag=player_child]
scoreboard players operation #dir _mbtmp = #dir_g _mbtmp
scoreboard players operation #dir_gen _mbtmp = #dir_gen_g _mbtmp
scoreboard players set #z_travelled _mbtmp 0
execute if score #dir_g _mbtmp matches 0 run summon minecraft:armor_stand ~-1 ~-0.5 ~ {Tags:["mb_player","player"],NoGravity:1b,Invisible:1b}
execute if score #dir_g _mbtmp matches 1 run summon minecraft:armor_stand ~1 ~-0.5 ~ {Tags:["mb_player","player"],NoGravity:1b,Invisible:1b}
execute if score #dir_g _mbtmp matches 2 run summon minecraft:armor_stand ~ ~-0.5 ~-1 {Tags:["mb_player","player"],NoGravity:1b,Invisible:1b}
execute if score #dir_g _mbtmp matches 3 run summon minecraft:armor_stand ~ ~-0.5 ~1 {Tags:["mb_player","player"],NoGravity:1b,Invisible:1b}