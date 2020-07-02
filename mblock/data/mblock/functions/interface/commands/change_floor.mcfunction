scoreboard players add #floor_type _aparse_tmp 1
execute if score #floor_type _aparse_tmp matches 6.. run scoreboard players set #floor_type _aparse_tmp 0

execute if score #floor_type _aparse_tmp matches 0 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Default", "color": "gold"}]
execute if score #floor_type _aparse_tmp matches 1 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Grass Block", "color": "gold"}]
execute if score #floor_type _aparse_tmp matches 2 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Smooth Stone", "color": "gold"}]
execute if score #floor_type _aparse_tmp matches 3 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Stone Bricks", "color": "gold"}]
execute if score #floor_type _aparse_tmp matches 4 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Dark Prismarine", "color": "gold"}]
execute if score #floor_type _aparse_tmp matches 5 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Disabled", "color": "red"}]