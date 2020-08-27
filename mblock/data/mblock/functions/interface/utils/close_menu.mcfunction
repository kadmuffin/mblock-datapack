function mblock:interface/utils/clear_chat

scoreboard players set @s mb.menu.page 0
tag @s remove __menu

playsound minecraft:block.bamboo_sapling.hit player @s ~ ~ ~ 1 1.3

execute unless entity @e[tag=music_player,sort=nearest] run tellraw @s ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"No MusicPlayer detected, closing menu!","color":"red"}]
