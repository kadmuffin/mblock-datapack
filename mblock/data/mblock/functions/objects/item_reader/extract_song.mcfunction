tag @s add _loaded

execute if entity @s[tag=!disable_bpm] at @e[tag=music_player,sort=nearest,limit=1] run tp ~ ~ ~
execute align xyz run tp ~.5 ~.5 ~.5

execute if entity @e[tag=z_pointer] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"A Song is already loading, waiting for it.","color":"red"}]
execute if entity @e[tag=z_pointer] run data modify entity @s CustomName set value '"§8[MBlock] §4Waiting for process"'
execute if entity @e[tag=z_pointer] run data modify entity @s CustomNameVisible set value 1b
data modify entity @s PickupDelay set value -32760s
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]

tag @s add load_sequence