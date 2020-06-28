
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize

scoreboard players add zsize _array_tmp 2


execute if entity @s[tag=!disable_bpm,tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Name set from entity @e[tag=song,sort=nearest,limit=1] Item.tag.display.Name
execute if entity @s[tag=!disable_bpm] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s mb.bpm = bpm _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.zsize = zsize _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.ysize = ysize _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.xsize = xsize _array_tmp

execute if entity @s[tag=self_align] run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Notes loaded!","color":"green"}]

execute if entity @s[tag=!self_align] run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Notes & Settings loaded!","color":"green"}]

data modify entity @e[type=item,tag=_loaded,sort=nearest,limit=1] PickupDelay set value 0s


scoreboard players reset @s _array_tmp2
#tag @s add save_stage_6

scoreboard players operation counted_blocks _array_tmp = #bar_max _array_tmp
bossbar set item_reader:progress visible false

kill @s
