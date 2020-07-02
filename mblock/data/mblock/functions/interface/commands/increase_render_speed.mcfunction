scoreboard players add #render_speed _aparse_tmp 1
execute if score #render_speed _aparse_tmp matches 3.. run scoreboard players set #render_speed _aparse_tmp 0

execute if score #render_speed _aparse_tmp matches 0 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Increased Box rendering speed to: ", "hoverEvent":{"action":"show_text", "value": "Increasing this value from slow\nmay cause lag issues while playing."}}, {"text": "Slow", "color": "gold"}]
execute if score #render_speed _aparse_tmp matches 1 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Increased Box rendering speed to: ", "hoverEvent":{"action":"show_text", "value": "Increasing this value from slow\nmay cause lag issues while playing."}}, {"text": "Medium", "color": "gold"}]
execute if score #render_speed _aparse_tmp matches 2 run tellraw @s ["",{"text": "[MBlock - Global] ", "color": "dark_gray"},{"text": "Increased Box rendering speed to: ", "hoverEvent":{"action":"show_text", "value": "Increasing this value from slow\nmay cause lag issues while playing."}}, {"text": "Fast", "color": "gold"}]
