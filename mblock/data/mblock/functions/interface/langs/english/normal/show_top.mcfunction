tag @s add _bpm_player
execute as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=show_top] run tag @e[tag=_bpm_player] add show_top

execute if entity @e[tag=music_player,sort=nearest,limit=1] run tellraw @s[tag=!show_top] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": " "}, {"text": "Show Ceiling", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Shows the Ceiling of the box.\n\n§9Performance Impact: §6Medium."}}]
tellraw @s[tag=show_top] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "◆", "color": "green", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": " "}, {"text": "Show Ceiling", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Shows the Ceiling of the box.\n\n§9Performance Impact: §6Medium."}}]

tag @s remove _bpm_player
tag @s remove show_top
