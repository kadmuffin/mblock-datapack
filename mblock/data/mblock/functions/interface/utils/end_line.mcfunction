#tellraw @s ["",{"text":"[<<]","color":"dark_gray", "hoverEvent":{"action":"show_text","value":"Last Language (temporal button)"},"clickEvent":{"action":"run_command","value":"/execute if score @s mb.menu.lang matches 1.. run scoreboard players remove @s mb.menu.lang 1"}},{"text":"-","color":"dark_gray"},{"text":"[>>]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/execute unless score @s mb.menu.lang >= #max_lang mb.menu.lang run scoreboard players add @s mb.menu.lang 1"}, "hoverEvent":{"action":"show_text","value":"Change to Language (temporal button)"}},{"text":"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550","color":"dark_gray"}]
execute unless score @s mb.menu.page matches 1.. run tellraw @s ["",{"text": "[x] More Settings","color": "blue", "hoverEvent": {"action": "show_text","value": "§5Click to Open!"},"clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/open_settings"}},{"text":" \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550","color":"dark_gray"}]
execute if score @s mb.menu.page matches 1 run tellraw @s ["",{"text": "[-] Close Settings","color": "aqua", "hoverEvent": {"action": "show_text","value": "§6Click to Close!"},"clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/close_settings"}},{"text":" \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550","color":"dark_gray"}]