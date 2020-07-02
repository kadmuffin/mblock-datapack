scoreboard players add @s _mb.floor 1
execute if score @s _mb.floor matches 6.. run scoreboard players set @s _mb.floor 0

execute if score @s _mb.floor matches 0 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Default", "color": "gold"}]
execute if score @s _mb.floor matches 1 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Grass Block", "color": "gold"}]
execute if score @s _mb.floor matches 2 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Smooth Stone", "color": "gold"}]
execute if score @s _mb.floor matches 3 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Stone Bricks", "color": "gold"}]
execute if score @s _mb.floor matches 4 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Dark Prismarine", "color": "gold"}]
execute if score @s _mb.floor matches 5 run tellraw @a[scores={mb.menu.floor=1..}] ["",{"text": "[MBlock - Local] ", "color": "dark_gray"},{"text": "Floor type set to: "}, {"text": "Disabled", "color": "red"}]