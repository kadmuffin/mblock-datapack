title @p actionbar ["",{"text":"[MBlock] ","color":"dark_gray"},{"text":"A Song is already processing, waiting for it.","color":"red"}]
data modify entity @s CustomName set value '"§8[MBlock] §4Waiting for process"'
data modify entity @s CustomNameVisible set value 1b
tag @s add _waiting
